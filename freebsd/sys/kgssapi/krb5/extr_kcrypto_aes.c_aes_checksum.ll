; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kgssapi/krb5/extr_kcrypto_aes.c_aes_checksum.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kgssapi/krb5/extr_kcrypto_aes.c_aes_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.krb5_key_state = type { %struct.aes_state* }
%struct.aes_state = type { i32, i32 }
%struct.mbuf = type { i32 }
%struct.cryptop = type { i64, i32, i32, i32, i8*, i8*, i64, i32, %struct.cryptodesc* }
%struct.cryptodesc = type { i64, i64, i64, i32, i32*, i64 }

@CRYPTO_SHA1_HMAC = common dso_local global i32 0, align 4
@CRYPTO_F_IMBUF = common dso_local global i32 0, align 4
@CRYPTO_F_CBIFSYNC = common dso_local global i32 0, align 4
@aes_crypto_cb = common dso_local global i32 0, align 4
@CRYPTOCAP_F_SYNC = common dso_local global i32 0, align 4
@CRYPTO_F_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"gssaes\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.krb5_key_state*, i32, %struct.mbuf*, i64, i64, i64)* @aes_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aes_checksum(%struct.krb5_key_state* %0, i32 %1, %struct.mbuf* %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.krb5_key_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mbuf*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.aes_state*, align 8
  %14 = alloca %struct.cryptop*, align 8
  %15 = alloca %struct.cryptodesc*, align 8
  %16 = alloca i32, align 4
  store %struct.krb5_key_state* %0, %struct.krb5_key_state** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.mbuf* %2, %struct.mbuf** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %17 = load %struct.krb5_key_state*, %struct.krb5_key_state** %7, align 8
  %18 = getelementptr inbounds %struct.krb5_key_state, %struct.krb5_key_state* %17, i32 0, i32 0
  %19 = load %struct.aes_state*, %struct.aes_state** %18, align 8
  store %struct.aes_state* %19, %struct.aes_state** %13, align 8
  %20 = call %struct.cryptop* @crypto_getreq(i32 1)
  store %struct.cryptop* %20, %struct.cryptop** %14, align 8
  %21 = load %struct.cryptop*, %struct.cryptop** %14, align 8
  %22 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %21, i32 0, i32 8
  %23 = load %struct.cryptodesc*, %struct.cryptodesc** %22, align 8
  store %struct.cryptodesc* %23, %struct.cryptodesc** %15, align 8
  %24 = load i64, i64* %10, align 8
  %25 = load %struct.cryptodesc*, %struct.cryptodesc** %15, align 8
  %26 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load i64, i64* %11, align 8
  %28 = load %struct.cryptodesc*, %struct.cryptodesc** %15, align 8
  %29 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  %30 = load i64, i64* %10, align 8
  %31 = load i64, i64* %11, align 8
  %32 = add i64 %30, %31
  %33 = load %struct.cryptodesc*, %struct.cryptodesc** %15, align 8
  %34 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %33, i32 0, i32 2
  store i64 %32, i64* %34, align 8
  %35 = load %struct.cryptodesc*, %struct.cryptodesc** %15, align 8
  %36 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %35, i32 0, i32 5
  store i64 0, i64* %36, align 8
  %37 = load %struct.cryptodesc*, %struct.cryptodesc** %15, align 8
  %38 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %37, i32 0, i32 4
  store i32* null, i32** %38, align 8
  %39 = load i32, i32* @CRYPTO_SHA1_HMAC, align 4
  %40 = load %struct.cryptodesc*, %struct.cryptodesc** %15, align 8
  %41 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 8
  %42 = load %struct.aes_state*, %struct.aes_state** %13, align 8
  %43 = getelementptr inbounds %struct.aes_state, %struct.aes_state* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.cryptop*, %struct.cryptop** %14, align 8
  %46 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %45, i32 0, i32 7
  store i32 %44, i32* %46, align 8
  %47 = load i64, i64* %11, align 8
  %48 = load %struct.cryptop*, %struct.cryptop** %14, align 8
  %49 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load %struct.cryptop*, %struct.cryptop** %14, align 8
  %51 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %50, i32 0, i32 1
  store i32 12, i32* %51, align 8
  %52 = load %struct.cryptop*, %struct.cryptop** %14, align 8
  %53 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %52, i32 0, i32 6
  store i64 0, i64* %53, align 8
  %54 = load i32, i32* @CRYPTO_F_IMBUF, align 4
  %55 = load i32, i32* @CRYPTO_F_CBIFSYNC, align 4
  %56 = or i32 %54, %55
  %57 = load %struct.cryptop*, %struct.cryptop** %14, align 8
  %58 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  %59 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %60 = bitcast %struct.mbuf* %59 to i8*
  %61 = load %struct.cryptop*, %struct.cryptop** %14, align 8
  %62 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %61, i32 0, i32 5
  store i8* %60, i8** %62, align 8
  %63 = load %struct.aes_state*, %struct.aes_state** %13, align 8
  %64 = bitcast %struct.aes_state* %63 to i8*
  %65 = load %struct.cryptop*, %struct.cryptop** %14, align 8
  %66 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %65, i32 0, i32 4
  store i8* %64, i8** %66, align 8
  %67 = load i32, i32* @aes_crypto_cb, align 4
  %68 = load %struct.cryptop*, %struct.cryptop** %14, align 8
  %69 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 8
  %70 = load %struct.cryptop*, %struct.cryptop** %14, align 8
  %71 = call i32 @crypto_dispatch(%struct.cryptop* %70)
  store i32 %71, i32* %16, align 4
  %72 = load %struct.aes_state*, %struct.aes_state** %13, align 8
  %73 = getelementptr inbounds %struct.aes_state, %struct.aes_state* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @crypto_ses2caps(i32 %74)
  %76 = load i32, i32* @CRYPTOCAP_F_SYNC, align 4
  %77 = and i32 %75, %76
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %101

79:                                               ; preds = %6
  %80 = load %struct.aes_state*, %struct.aes_state** %13, align 8
  %81 = getelementptr inbounds %struct.aes_state, %struct.aes_state* %80, i32 0, i32 0
  %82 = call i32 @mtx_lock(i32* %81)
  %83 = load i32, i32* %16, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %97, label %85

85:                                               ; preds = %79
  %86 = load %struct.cryptop*, %struct.cryptop** %14, align 8
  %87 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @CRYPTO_F_DONE, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %85
  %93 = load %struct.cryptop*, %struct.cryptop** %14, align 8
  %94 = load %struct.aes_state*, %struct.aes_state** %13, align 8
  %95 = getelementptr inbounds %struct.aes_state, %struct.aes_state* %94, i32 0, i32 0
  %96 = call i32 @msleep(%struct.cryptop* %93, i32* %95, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %96, i32* %16, align 4
  br label %97

97:                                               ; preds = %92, %85, %79
  %98 = load %struct.aes_state*, %struct.aes_state** %13, align 8
  %99 = getelementptr inbounds %struct.aes_state, %struct.aes_state* %98, i32 0, i32 0
  %100 = call i32 @mtx_unlock(i32* %99)
  br label %101

101:                                              ; preds = %97, %6
  %102 = load %struct.cryptop*, %struct.cryptop** %14, align 8
  %103 = call i32 @crypto_freereq(%struct.cryptop* %102)
  ret void
}

declare dso_local %struct.cryptop* @crypto_getreq(i32) #1

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
