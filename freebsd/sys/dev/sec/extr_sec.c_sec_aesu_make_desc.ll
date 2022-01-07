; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sec/extr_sec.c_sec_aesu_make_desc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sec/extr_sec.c_sec_aesu_make_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sec_softc = type { i32 }
%struct.sec_session = type { i32 }
%struct.sec_desc = type { %struct.sec_hw_desc* }
%struct.sec_hw_desc = type { i32, i32, i32 }
%struct.cryptop = type { i32 }
%struct.cryptodesc = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SEC_EU_AESU = common dso_local global i32 0, align 4
@SEC_AESU_MODE_CBC = common dso_local global i32 0, align 4
@CRYPTO_AES_CBC = common dso_local global i64 0, align 8
@CRD_F_ENCRYPT = common dso_local global i32 0, align 4
@SEC_AESU_MODE_ED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sec_softc*, %struct.sec_session*, %struct.sec_desc*, %struct.cryptop*, i32)* @sec_aesu_make_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sec_aesu_make_desc(%struct.sec_softc* %0, %struct.sec_session* %1, %struct.sec_desc* %2, %struct.cryptop* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sec_softc*, align 8
  %8 = alloca %struct.sec_session*, align 8
  %9 = alloca %struct.sec_desc*, align 8
  %10 = alloca %struct.cryptop*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sec_hw_desc*, align 8
  %13 = alloca %struct.cryptodesc*, align 8
  %14 = alloca %struct.cryptodesc*, align 8
  %15 = alloca i32, align 4
  store %struct.sec_softc* %0, %struct.sec_softc** %7, align 8
  store %struct.sec_session* %1, %struct.sec_session** %8, align 8
  store %struct.sec_desc* %2, %struct.sec_desc** %9, align 8
  store %struct.cryptop* %3, %struct.cryptop** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load %struct.sec_desc*, %struct.sec_desc** %9, align 8
  %17 = getelementptr inbounds %struct.sec_desc, %struct.sec_desc* %16, i32 0, i32 0
  %18 = load %struct.sec_hw_desc*, %struct.sec_hw_desc** %17, align 8
  store %struct.sec_hw_desc* %18, %struct.sec_hw_desc** %12, align 8
  %19 = load %struct.cryptop*, %struct.cryptop** %10, align 8
  %20 = call i32 @sec_split_crp(%struct.cryptop* %19, %struct.cryptodesc** %13, %struct.cryptodesc** %14)
  store i32 %20, i32* %15, align 4
  %21 = load i32, i32* %15, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = load i32, i32* %15, align 4
  store i32 %24, i32* %6, align 4
  br label %84

25:                                               ; preds = %5
  %26 = load %struct.cryptodesc*, %struct.cryptodesc** %13, align 8
  %27 = icmp ne %struct.cryptodesc* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %6, align 4
  br label %84

30:                                               ; preds = %25
  %31 = load i32, i32* @SEC_EU_AESU, align 4
  %32 = load %struct.sec_hw_desc*, %struct.sec_hw_desc** %12, align 8
  %33 = getelementptr inbounds %struct.sec_hw_desc, %struct.sec_hw_desc* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @SEC_AESU_MODE_CBC, align 4
  %35 = load %struct.sec_hw_desc*, %struct.sec_hw_desc** %12, align 8
  %36 = getelementptr inbounds %struct.sec_hw_desc, %struct.sec_hw_desc* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.cryptodesc*, %struct.cryptodesc** %13, align 8
  %38 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @CRYPTO_AES_CBC, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %30
  %43 = load i32, i32* @EINVAL, align 4
  store i32 %43, i32* %6, align 4
  br label %84

44:                                               ; preds = %30
  %45 = load %struct.cryptodesc*, %struct.cryptodesc** %13, align 8
  %46 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @CRD_F_ENCRYPT, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %44
  %52 = load i32, i32* @SEC_AESU_MODE_ED, align 4
  %53 = load %struct.sec_hw_desc*, %struct.sec_hw_desc** %12, align 8
  %54 = getelementptr inbounds %struct.sec_hw_desc, %struct.sec_hw_desc* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 4
  %57 = load %struct.sec_hw_desc*, %struct.sec_hw_desc** %12, align 8
  %58 = getelementptr inbounds %struct.sec_hw_desc, %struct.sec_hw_desc* %57, i32 0, i32 0
  store i32 0, i32* %58, align 4
  br label %62

59:                                               ; preds = %44
  %60 = load %struct.sec_hw_desc*, %struct.sec_hw_desc** %12, align 8
  %61 = getelementptr inbounds %struct.sec_hw_desc, %struct.sec_hw_desc* %60, i32 0, i32 0
  store i32 1, i32* %61, align 4
  br label %62

62:                                               ; preds = %59, %51
  %63 = load %struct.cryptodesc*, %struct.cryptodesc** %14, align 8
  %64 = icmp ne %struct.cryptodesc* %63, null
  br i1 %64, label %65, label %74

65:                                               ; preds = %62
  %66 = load %struct.sec_softc*, %struct.sec_softc** %7, align 8
  %67 = load %struct.sec_desc*, %struct.sec_desc** %9, align 8
  %68 = load %struct.sec_session*, %struct.sec_session** %8, align 8
  %69 = load %struct.cryptop*, %struct.cryptop** %10, align 8
  %70 = load %struct.cryptodesc*, %struct.cryptodesc** %13, align 8
  %71 = load %struct.cryptodesc*, %struct.cryptodesc** %14, align 8
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @sec_build_common_s_desc(%struct.sec_softc* %66, %struct.sec_desc* %67, %struct.sec_session* %68, %struct.cryptop* %69, %struct.cryptodesc* %70, %struct.cryptodesc* %71, i32 %72)
  store i32 %73, i32* %15, align 4
  br label %82

74:                                               ; preds = %62
  %75 = load %struct.sec_softc*, %struct.sec_softc** %7, align 8
  %76 = load %struct.sec_desc*, %struct.sec_desc** %9, align 8
  %77 = load %struct.sec_session*, %struct.sec_session** %8, align 8
  %78 = load %struct.cryptop*, %struct.cryptop** %10, align 8
  %79 = load %struct.cryptodesc*, %struct.cryptodesc** %13, align 8
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @sec_build_common_ns_desc(%struct.sec_softc* %75, %struct.sec_desc* %76, %struct.sec_session* %77, %struct.cryptop* %78, %struct.cryptodesc* %79, i32 %80)
  store i32 %81, i32* %15, align 4
  br label %82

82:                                               ; preds = %74, %65
  %83 = load i32, i32* %15, align 4
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %82, %42, %28, %23
  %85 = load i32, i32* %6, align 4
  ret i32 %85
}

declare dso_local i32 @sec_split_crp(%struct.cryptop*, %struct.cryptodesc**, %struct.cryptodesc**) #1

declare dso_local i32 @sec_build_common_s_desc(%struct.sec_softc*, %struct.sec_desc*, %struct.sec_session*, %struct.cryptop*, %struct.cryptodesc*, %struct.cryptodesc*, i32) #1

declare dso_local i32 @sec_build_common_ns_desc(%struct.sec_softc*, %struct.sec_desc*, %struct.sec_session*, %struct.cryptop*, %struct.cryptodesc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
