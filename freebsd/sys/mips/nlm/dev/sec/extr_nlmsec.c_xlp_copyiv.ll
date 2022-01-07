; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/sec/extr_nlmsec.c_xlp_copyiv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/sec/extr_nlmsec.c_xlp_copyiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlp_sec_softc = type { i32 }
%struct.xlp_sec_command = type { i32, %struct.TYPE_2__*, %struct.cryptop* }
%struct.TYPE_2__ = type { i32 }
%struct.cryptop = type { i32, i32 }
%struct.cryptodesc = type { i64, i32, i32, i32 }

@CRYPTO_ARC4 = common dso_local global i64 0, align 8
@CRYPTO_AES_CBC = common dso_local global i64 0, align 8
@XLP_SEC_AES_IV_LENGTH = common dso_local global i32 0, align 4
@XLP_SEC_DES_IV_LENGTH = common dso_local global i32 0, align 4
@CRD_F_ENCRYPT = common dso_local global i32 0, align 4
@CRD_F_IV_EXPLICIT = common dso_local global i32 0, align 4
@CRD_F_IV_PRESENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xlp_sec_softc*, %struct.xlp_sec_command*, %struct.cryptodesc*)* @xlp_copyiv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlp_copyiv(%struct.xlp_sec_softc* %0, %struct.xlp_sec_command* %1, %struct.cryptodesc* %2) #0 {
  %4 = alloca %struct.xlp_sec_softc*, align 8
  %5 = alloca %struct.xlp_sec_command*, align 8
  %6 = alloca %struct.cryptodesc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cryptop*, align 8
  store %struct.xlp_sec_softc* %0, %struct.xlp_sec_softc** %4, align 8
  store %struct.xlp_sec_command* %1, %struct.xlp_sec_command** %5, align 8
  store %struct.cryptodesc* %2, %struct.cryptodesc** %6, align 8
  store i32 0, i32* %7, align 4
  store %struct.cryptop* null, %struct.cryptop** %8, align 8
  %9 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %5, align 8
  %10 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %9, i32 0, i32 2
  %11 = load %struct.cryptop*, %struct.cryptop** %10, align 8
  store %struct.cryptop* %11, %struct.cryptop** %8, align 8
  %12 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %13 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @CRYPTO_ARC4, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %118

17:                                               ; preds = %3
  %18 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %19 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @CRYPTO_AES_CBC, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* @XLP_SEC_AES_IV_LENGTH, align 4
  br label %27

25:                                               ; preds = %17
  %26 = load i32, i32* @XLP_SEC_DES_IV_LENGTH, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  store i32 %28, i32* %7, align 4
  %29 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %30 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @CRD_F_ENCRYPT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %85

35:                                               ; preds = %27
  %36 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %37 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @CRD_F_IV_EXPLICIT, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %35
  %43 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %44 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %5, align 8
  %47 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @bcopy(i32 %45, i32 %48, i32 %49)
  br label %62

51:                                               ; preds = %35
  %52 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %5, align 8
  %53 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %5, align 8
  %58 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @bcopy(i32 %56, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %51, %42
  %63 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %64 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @CRD_F_IV_PRESENT, align 4
  %67 = and i32 %65, %66
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %84

69:                                               ; preds = %62
  %70 = load %struct.cryptop*, %struct.cryptop** %8, align 8
  %71 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.cryptop*, %struct.cryptop** %8, align 8
  %74 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %77 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %7, align 4
  %80 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %5, align 8
  %81 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @crypto_copyback(i32 %72, i32 %75, i32 %78, i32 %79, i32 %82)
  br label %84

84:                                               ; preds = %69, %62
  br label %117

85:                                               ; preds = %27
  %86 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %87 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @CRD_F_IV_EXPLICIT, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %85
  %93 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %94 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %5, align 8
  %97 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @bcopy(i32 %95, i32 %98, i32 %99)
  br label %116

101:                                              ; preds = %85
  %102 = load %struct.cryptop*, %struct.cryptop** %8, align 8
  %103 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.cryptop*, %struct.cryptop** %8, align 8
  %106 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %109 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %7, align 4
  %112 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %5, align 8
  %113 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @crypto_copydata(i32 %104, i32 %107, i32 %110, i32 %111, i32 %114)
  br label %116

116:                                              ; preds = %101, %92
  br label %117

117:                                              ; preds = %116, %84
  br label %118

118:                                              ; preds = %117, %3
  ret i32 0
}

declare dso_local i32 @bcopy(i32, i32, i32) #1

declare dso_local i32 @crypto_copyback(i32, i32, i32, i32, i32) #1

declare dso_local i32 @crypto_copydata(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
