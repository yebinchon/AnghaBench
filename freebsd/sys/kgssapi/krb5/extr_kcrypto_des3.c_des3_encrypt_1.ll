; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kgssapi/krb5/extr_kcrypto_des3.c_des3_encrypt_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kgssapi/krb5/extr_kcrypto_des3.c_des3_encrypt_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.krb5_key_state = type { %struct.des3_state* }
%struct.des3_state = type { i32, i32 }
%struct.mbuf = type { i32 }
%struct.cryptop = type { i32, i32, i8*, i8*, i32, %struct.cryptodesc* }
%struct.cryptodesc = type { i64, i64, i32, i32, i32*, i32 }

@CRD_F_IV_EXPLICIT = common dso_local global i32 0, align 4
@CRD_F_IV_PRESENT = common dso_local global i32 0, align 4
@CRYPTO_3DES_CBC = common dso_local global i32 0, align 4
@CRYPTO_F_IMBUF = common dso_local global i32 0, align 4
@CRYPTO_F_CBIFSYNC = common dso_local global i32 0, align 4
@des3_crypto_cb = common dso_local global i32 0, align 4
@CRYPTOCAP_F_SYNC = common dso_local global i32 0, align 4
@CRYPTO_F_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"gssdes3\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.krb5_key_state*, %struct.mbuf*, i64, i64, i8*, i32)* @des3_encrypt_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @des3_encrypt_1(%struct.krb5_key_state* %0, %struct.mbuf* %1, i64 %2, i64 %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.krb5_key_state*, align 8
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.des3_state*, align 8
  %14 = alloca %struct.cryptop*, align 8
  %15 = alloca %struct.cryptodesc*, align 8
  %16 = alloca i32, align 4
  store %struct.krb5_key_state* %0, %struct.krb5_key_state** %7, align 8
  store %struct.mbuf* %1, %struct.mbuf** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %17 = load %struct.krb5_key_state*, %struct.krb5_key_state** %7, align 8
  %18 = getelementptr inbounds %struct.krb5_key_state, %struct.krb5_key_state* %17, i32 0, i32 0
  %19 = load %struct.des3_state*, %struct.des3_state** %18, align 8
  store %struct.des3_state* %19, %struct.des3_state** %13, align 8
  %20 = call %struct.cryptop* @crypto_getreq(i32 1)
  store %struct.cryptop* %20, %struct.cryptop** %14, align 8
  %21 = load %struct.cryptop*, %struct.cryptop** %14, align 8
  %22 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %21, i32 0, i32 5
  %23 = load %struct.cryptodesc*, %struct.cryptodesc** %22, align 8
  store %struct.cryptodesc* %23, %struct.cryptodesc** %15, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load %struct.cryptodesc*, %struct.cryptodesc** %15, align 8
  %26 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load i64, i64* %10, align 8
  %28 = load %struct.cryptodesc*, %struct.cryptodesc** %15, align 8
  %29 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  %30 = load i32, i32* @CRD_F_IV_EXPLICIT, align 4
  %31 = load i32, i32* @CRD_F_IV_PRESENT, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* %12, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.cryptodesc*, %struct.cryptodesc** %15, align 8
  %36 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %6
  %40 = load i8*, i8** %11, align 8
  %41 = load %struct.cryptodesc*, %struct.cryptodesc** %15, align 8
  %42 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @bcopy(i8* %40, i32 %43, i32 8)
  br label %50

45:                                               ; preds = %6
  %46 = load %struct.cryptodesc*, %struct.cryptodesc** %15, align 8
  %47 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @bzero(i32 %48, i32 8)
  br label %50

50:                                               ; preds = %45, %39
  %51 = load %struct.cryptodesc*, %struct.cryptodesc** %15, align 8
  %52 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %51, i32 0, i32 4
  store i32* null, i32** %52, align 8
  %53 = load i32, i32* @CRYPTO_3DES_CBC, align 4
  %54 = load %struct.cryptodesc*, %struct.cryptodesc** %15, align 8
  %55 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 4
  %56 = load %struct.des3_state*, %struct.des3_state** %13, align 8
  %57 = getelementptr inbounds %struct.des3_state, %struct.des3_state* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.cryptop*, %struct.cryptop** %14, align 8
  %60 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* @CRYPTO_F_IMBUF, align 4
  %62 = load i32, i32* @CRYPTO_F_CBIFSYNC, align 4
  %63 = or i32 %61, %62
  %64 = load %struct.cryptop*, %struct.cryptop** %14, align 8
  %65 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %67 = bitcast %struct.mbuf* %66 to i8*
  %68 = load %struct.cryptop*, %struct.cryptop** %14, align 8
  %69 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %68, i32 0, i32 3
  store i8* %67, i8** %69, align 8
  %70 = load %struct.des3_state*, %struct.des3_state** %13, align 8
  %71 = bitcast %struct.des3_state* %70 to i8*
  %72 = load %struct.cryptop*, %struct.cryptop** %14, align 8
  %73 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %72, i32 0, i32 2
  store i8* %71, i8** %73, align 8
  %74 = load i32, i32* @des3_crypto_cb, align 4
  %75 = load %struct.cryptop*, %struct.cryptop** %14, align 8
  %76 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load %struct.cryptop*, %struct.cryptop** %14, align 8
  %78 = call i32 @crypto_dispatch(%struct.cryptop* %77)
  store i32 %78, i32* %16, align 4
  %79 = load %struct.des3_state*, %struct.des3_state** %13, align 8
  %80 = getelementptr inbounds %struct.des3_state, %struct.des3_state* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @crypto_ses2caps(i32 %81)
  %83 = load i32, i32* @CRYPTOCAP_F_SYNC, align 4
  %84 = and i32 %82, %83
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %108

86:                                               ; preds = %50
  %87 = load %struct.des3_state*, %struct.des3_state** %13, align 8
  %88 = getelementptr inbounds %struct.des3_state, %struct.des3_state* %87, i32 0, i32 0
  %89 = call i32 @mtx_lock(i32* %88)
  %90 = load i32, i32* %16, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %104, label %92

92:                                               ; preds = %86
  %93 = load %struct.cryptop*, %struct.cryptop** %14, align 8
  %94 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @CRYPTO_F_DONE, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %104, label %99

99:                                               ; preds = %92
  %100 = load %struct.cryptop*, %struct.cryptop** %14, align 8
  %101 = load %struct.des3_state*, %struct.des3_state** %13, align 8
  %102 = getelementptr inbounds %struct.des3_state, %struct.des3_state* %101, i32 0, i32 0
  %103 = call i32 @msleep(%struct.cryptop* %100, i32* %102, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %103, i32* %16, align 4
  br label %104

104:                                              ; preds = %99, %92, %86
  %105 = load %struct.des3_state*, %struct.des3_state** %13, align 8
  %106 = getelementptr inbounds %struct.des3_state, %struct.des3_state* %105, i32 0, i32 0
  %107 = call i32 @mtx_unlock(i32* %106)
  br label %108

108:                                              ; preds = %104, %50
  %109 = load %struct.cryptop*, %struct.cryptop** %14, align 8
  %110 = call i32 @crypto_freereq(%struct.cryptop* %109)
  ret void
}

declare dso_local %struct.cryptop* @crypto_getreq(i32) #1

declare dso_local i32 @bcopy(i8*, i32, i32) #1

declare dso_local i32 @bzero(i32, i32) #1

declare dso_local i32 @crypto_dispatch(%struct.cryptop*) #1

declare dso_local i32 @crypto_ses2caps(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @msleep(%struct.cryptop*, i32*, i32, i8*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @crypto_freereq(%struct.cryptop*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
