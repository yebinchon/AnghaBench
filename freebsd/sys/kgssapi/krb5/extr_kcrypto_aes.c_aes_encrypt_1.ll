; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kgssapi/krb5/extr_kcrypto_aes.c_aes_encrypt_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kgssapi/krb5/extr_kcrypto_aes.c_aes_encrypt_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.krb5_key_state = type { %struct.aes_state* }
%struct.aes_state = type { i32, i32 }
%struct.cryptop = type { i32, i32, i8*, i8*, i32, %struct.cryptodesc* }
%struct.cryptodesc = type { i64, i64, i32, i32, i32*, i32 }

@CRD_F_IV_EXPLICIT = common dso_local global i32 0, align 4
@CRD_F_IV_PRESENT = common dso_local global i32 0, align 4
@CRYPTO_AES_CBC = common dso_local global i32 0, align 4
@CRYPTO_F_CBIFSYNC = common dso_local global i32 0, align 4
@aes_crypto_cb = common dso_local global i32 0, align 4
@CRYPTOCAP_F_SYNC = common dso_local global i32 0, align 4
@CRYPTO_F_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"gssaes\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.krb5_key_state*, i32, i8*, i64, i64, i8*, i32)* @aes_encrypt_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aes_encrypt_1(%struct.krb5_key_state* %0, i32 %1, i8* %2, i64 %3, i64 %4, i8* %5, i32 %6) #0 {
  %8 = alloca %struct.krb5_key_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.aes_state*, align 8
  %16 = alloca %struct.cryptop*, align 8
  %17 = alloca %struct.cryptodesc*, align 8
  %18 = alloca i32, align 4
  store %struct.krb5_key_state* %0, %struct.krb5_key_state** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i8* %5, i8** %13, align 8
  store i32 %6, i32* %14, align 4
  %19 = load %struct.krb5_key_state*, %struct.krb5_key_state** %8, align 8
  %20 = getelementptr inbounds %struct.krb5_key_state, %struct.krb5_key_state* %19, i32 0, i32 0
  %21 = load %struct.aes_state*, %struct.aes_state** %20, align 8
  store %struct.aes_state* %21, %struct.aes_state** %15, align 8
  %22 = call %struct.cryptop* @crypto_getreq(i32 1)
  store %struct.cryptop* %22, %struct.cryptop** %16, align 8
  %23 = load %struct.cryptop*, %struct.cryptop** %16, align 8
  %24 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %23, i32 0, i32 5
  %25 = load %struct.cryptodesc*, %struct.cryptodesc** %24, align 8
  store %struct.cryptodesc* %25, %struct.cryptodesc** %17, align 8
  %26 = load i64, i64* %11, align 8
  %27 = load %struct.cryptodesc*, %struct.cryptodesc** %17, align 8
  %28 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load i64, i64* %12, align 8
  %30 = load %struct.cryptodesc*, %struct.cryptodesc** %17, align 8
  %31 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %30, i32 0, i32 1
  store i64 %29, i64* %31, align 8
  %32 = load i32, i32* @CRD_F_IV_EXPLICIT, align 4
  %33 = load i32, i32* @CRD_F_IV_PRESENT, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* %14, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.cryptodesc*, %struct.cryptodesc** %17, align 8
  %38 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load i8*, i8** %13, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %7
  %42 = load i8*, i8** %13, align 8
  %43 = load %struct.cryptodesc*, %struct.cryptodesc** %17, align 8
  %44 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @bcopy(i8* %42, i32 %45, i32 16)
  br label %52

47:                                               ; preds = %7
  %48 = load %struct.cryptodesc*, %struct.cryptodesc** %17, align 8
  %49 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @bzero(i32 %50, i32 16)
  br label %52

52:                                               ; preds = %47, %41
  %53 = load %struct.cryptodesc*, %struct.cryptodesc** %17, align 8
  %54 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %53, i32 0, i32 4
  store i32* null, i32** %54, align 8
  %55 = load i32, i32* @CRYPTO_AES_CBC, align 4
  %56 = load %struct.cryptodesc*, %struct.cryptodesc** %17, align 8
  %57 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  %58 = load %struct.aes_state*, %struct.aes_state** %15, align 8
  %59 = getelementptr inbounds %struct.aes_state, %struct.aes_state* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.cryptop*, %struct.cryptop** %16, align 8
  %62 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @CRYPTO_F_CBIFSYNC, align 4
  %65 = or i32 %63, %64
  %66 = load %struct.cryptop*, %struct.cryptop** %16, align 8
  %67 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = load %struct.cryptop*, %struct.cryptop** %16, align 8
  %70 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %69, i32 0, i32 3
  store i8* %68, i8** %70, align 8
  %71 = load %struct.aes_state*, %struct.aes_state** %15, align 8
  %72 = bitcast %struct.aes_state* %71 to i8*
  %73 = load %struct.cryptop*, %struct.cryptop** %16, align 8
  %74 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %73, i32 0, i32 2
  store i8* %72, i8** %74, align 8
  %75 = load i32, i32* @aes_crypto_cb, align 4
  %76 = load %struct.cryptop*, %struct.cryptop** %16, align 8
  %77 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load %struct.cryptop*, %struct.cryptop** %16, align 8
  %79 = call i32 @crypto_dispatch(%struct.cryptop* %78)
  store i32 %79, i32* %18, align 4
  %80 = load %struct.aes_state*, %struct.aes_state** %15, align 8
  %81 = getelementptr inbounds %struct.aes_state, %struct.aes_state* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @crypto_ses2caps(i32 %82)
  %84 = load i32, i32* @CRYPTOCAP_F_SYNC, align 4
  %85 = and i32 %83, %84
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %109

87:                                               ; preds = %52
  %88 = load %struct.aes_state*, %struct.aes_state** %15, align 8
  %89 = getelementptr inbounds %struct.aes_state, %struct.aes_state* %88, i32 0, i32 0
  %90 = call i32 @mtx_lock(i32* %89)
  %91 = load i32, i32* %18, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %105, label %93

93:                                               ; preds = %87
  %94 = load %struct.cryptop*, %struct.cryptop** %16, align 8
  %95 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @CRYPTO_F_DONE, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %93
  %101 = load %struct.cryptop*, %struct.cryptop** %16, align 8
  %102 = load %struct.aes_state*, %struct.aes_state** %15, align 8
  %103 = getelementptr inbounds %struct.aes_state, %struct.aes_state* %102, i32 0, i32 0
  %104 = call i32 @msleep(%struct.cryptop* %101, i32* %103, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %104, i32* %18, align 4
  br label %105

105:                                              ; preds = %100, %93, %87
  %106 = load %struct.aes_state*, %struct.aes_state** %15, align 8
  %107 = getelementptr inbounds %struct.aes_state, %struct.aes_state* %106, i32 0, i32 0
  %108 = call i32 @mtx_unlock(i32* %107)
  br label %109

109:                                              ; preds = %105, %52
  %110 = load %struct.cryptop*, %struct.cryptop** %16, align 8
  %111 = call i32 @crypto_freereq(%struct.cryptop* %110)
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
