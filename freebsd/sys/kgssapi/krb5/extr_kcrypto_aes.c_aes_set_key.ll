; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kgssapi/krb5/extr_kcrypto_aes.c_aes_set_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kgssapi/krb5/extr_kcrypto_aes.c_aes_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.krb5_key_state = type { i8*, %struct.TYPE_2__*, %struct.aes_state* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.aes_state = type { i64, i64 }
%struct.cryptoini = type { i32, i32*, i8*, i32, i32 }

@CRYPTO_SHA1_HMAC = common dso_local global i32 0, align 4
@CRYPTOCAP_F_HARDWARE = common dso_local global i32 0, align 4
@CRYPTOCAP_F_SOFTWARE = common dso_local global i32 0, align 4
@CRYPTO_AES_CBC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.krb5_key_state*, i8*)* @aes_set_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aes_set_key(%struct.krb5_key_state* %0, i8* %1) #0 {
  %3 = alloca %struct.krb5_key_state*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.aes_state*, align 8
  %7 = alloca %struct.cryptoini, align 8
  store %struct.krb5_key_state* %0, %struct.krb5_key_state** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.krb5_key_state*, %struct.krb5_key_state** %3, align 8
  %9 = getelementptr inbounds %struct.krb5_key_state, %struct.krb5_key_state* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %5, align 8
  %11 = load %struct.krb5_key_state*, %struct.krb5_key_state** %3, align 8
  %12 = getelementptr inbounds %struct.krb5_key_state, %struct.krb5_key_state* %11, i32 0, i32 2
  %13 = load %struct.aes_state*, %struct.aes_state** %12, align 8
  store %struct.aes_state* %13, %struct.aes_state** %6, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = icmp ne i8* %14, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %2
  %18 = load i8*, i8** %4, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = load %struct.krb5_key_state*, %struct.krb5_key_state** %3, align 8
  %21 = getelementptr inbounds %struct.krb5_key_state, %struct.krb5_key_state* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @bcopy(i8* %18, i8* %19, i32 %24)
  br label %26

26:                                               ; preds = %17, %2
  %27 = load %struct.aes_state*, %struct.aes_state** %6, align 8
  %28 = getelementptr inbounds %struct.aes_state, %struct.aes_state* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.aes_state*, %struct.aes_state** %6, align 8
  %33 = getelementptr inbounds %struct.aes_state, %struct.aes_state* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @crypto_freesession(i64 %34)
  br label %36

36:                                               ; preds = %31, %26
  %37 = load %struct.aes_state*, %struct.aes_state** %6, align 8
  %38 = getelementptr inbounds %struct.aes_state, %struct.aes_state* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load %struct.aes_state*, %struct.aes_state** %6, align 8
  %43 = getelementptr inbounds %struct.aes_state, %struct.aes_state* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @crypto_freesession(i64 %44)
  br label %46

46:                                               ; preds = %41, %36
  %47 = call i32 @bzero(%struct.cryptoini* %7, i32 32)
  %48 = load i32, i32* @CRYPTO_SHA1_HMAC, align 4
  %49 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %7, i32 0, i32 4
  store i32 %48, i32* %49, align 4
  %50 = load %struct.krb5_key_state*, %struct.krb5_key_state** %3, align 8
  %51 = getelementptr inbounds %struct.krb5_key_state, %struct.krb5_key_state* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %7, i32 0, i32 3
  store i32 %54, i32* %55, align 8
  %56 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %7, i32 0, i32 0
  store i32 12, i32* %56, align 8
  %57 = load %struct.krb5_key_state*, %struct.krb5_key_state** %3, align 8
  %58 = getelementptr inbounds %struct.krb5_key_state, %struct.krb5_key_state* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %7, i32 0, i32 2
  store i8* %59, i8** %60, align 8
  %61 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %7, i32 0, i32 1
  store i32* null, i32** %61, align 8
  %62 = load %struct.aes_state*, %struct.aes_state** %6, align 8
  %63 = getelementptr inbounds %struct.aes_state, %struct.aes_state* %62, i32 0, i32 1
  %64 = load i32, i32* @CRYPTOCAP_F_HARDWARE, align 4
  %65 = load i32, i32* @CRYPTOCAP_F_SOFTWARE, align 4
  %66 = or i32 %64, %65
  %67 = call i32 @crypto_newsession(i64* %63, %struct.cryptoini* %7, i32 %66)
  %68 = call i32 @bzero(%struct.cryptoini* %7, i32 32)
  %69 = load i32, i32* @CRYPTO_AES_CBC, align 4
  %70 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %7, i32 0, i32 4
  store i32 %69, i32* %70, align 4
  %71 = load %struct.krb5_key_state*, %struct.krb5_key_state** %3, align 8
  %72 = getelementptr inbounds %struct.krb5_key_state, %struct.krb5_key_state* %71, i32 0, i32 1
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %7, i32 0, i32 3
  store i32 %75, i32* %76, align 8
  %77 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %7, i32 0, i32 0
  store i32 0, i32* %77, align 8
  %78 = load %struct.krb5_key_state*, %struct.krb5_key_state** %3, align 8
  %79 = getelementptr inbounds %struct.krb5_key_state, %struct.krb5_key_state* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %7, i32 0, i32 2
  store i8* %80, i8** %81, align 8
  %82 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %7, i32 0, i32 1
  store i32* null, i32** %82, align 8
  %83 = load %struct.aes_state*, %struct.aes_state** %6, align 8
  %84 = getelementptr inbounds %struct.aes_state, %struct.aes_state* %83, i32 0, i32 0
  %85 = load i32, i32* @CRYPTOCAP_F_HARDWARE, align 4
  %86 = load i32, i32* @CRYPTOCAP_F_SOFTWARE, align 4
  %87 = or i32 %85, %86
  %88 = call i32 @crypto_newsession(i64* %84, %struct.cryptoini* %7, i32 %87)
  ret void
}

declare dso_local i32 @bcopy(i8*, i8*, i32) #1

declare dso_local i32 @crypto_freesession(i64) #1

declare dso_local i32 @bzero(%struct.cryptoini*, i32) #1

declare dso_local i32 @crypto_newsession(i64*, %struct.cryptoini*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
