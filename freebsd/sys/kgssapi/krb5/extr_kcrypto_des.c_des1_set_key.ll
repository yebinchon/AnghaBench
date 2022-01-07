; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kgssapi/krb5/extr_kcrypto_des.c_des1_set_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kgssapi/krb5/extr_kcrypto_des.c_des1_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.krb5_key_state = type { i8*, %struct.TYPE_2__*, %struct.des1_state* }
%struct.TYPE_2__ = type { i32 }
%struct.des1_state = type { i64 }
%struct.cryptoini = type { i32, i32*, i8*, i64, i32 }

@CRYPTO_DES_CBC = common dso_local global i32 0, align 4
@CRYPTOCAP_F_HARDWARE = common dso_local global i32 0, align 4
@CRYPTOCAP_F_SOFTWARE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.krb5_key_state*, i8*)* @des1_set_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @des1_set_key(%struct.krb5_key_state* %0, i8* %1) #0 {
  %3 = alloca %struct.krb5_key_state*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.des1_state*, align 8
  %7 = alloca [1 x %struct.cryptoini], align 16
  store %struct.krb5_key_state* %0, %struct.krb5_key_state** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.krb5_key_state*, %struct.krb5_key_state** %3, align 8
  %9 = getelementptr inbounds %struct.krb5_key_state, %struct.krb5_key_state* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %5, align 8
  %11 = load %struct.krb5_key_state*, %struct.krb5_key_state** %3, align 8
  %12 = getelementptr inbounds %struct.krb5_key_state, %struct.krb5_key_state* %11, i32 0, i32 2
  %13 = load %struct.des1_state*, %struct.des1_state** %12, align 8
  store %struct.des1_state* %13, %struct.des1_state** %6, align 8
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
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @bcopy(i8* %18, i8* %19, i32 %24)
  br label %26

26:                                               ; preds = %17, %2
  %27 = load %struct.des1_state*, %struct.des1_state** %6, align 8
  %28 = getelementptr inbounds %struct.des1_state, %struct.des1_state* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.des1_state*, %struct.des1_state** %6, align 8
  %33 = getelementptr inbounds %struct.des1_state, %struct.des1_state* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @crypto_freesession(i64 %34)
  br label %36

36:                                               ; preds = %31, %26
  %37 = getelementptr inbounds [1 x %struct.cryptoini], [1 x %struct.cryptoini]* %7, i64 0, i64 0
  %38 = call i32 @bzero(%struct.cryptoini* %37, i32 40)
  %39 = load i32, i32* @CRYPTO_DES_CBC, align 4
  %40 = getelementptr inbounds [1 x %struct.cryptoini], [1 x %struct.cryptoini]* %7, i64 0, i64 0
  %41 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 16
  %42 = getelementptr inbounds [1 x %struct.cryptoini], [1 x %struct.cryptoini]* %7, i64 0, i64 0
  %43 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %42, i32 0, i32 0
  store i32 64, i32* %43, align 16
  %44 = getelementptr inbounds [1 x %struct.cryptoini], [1 x %struct.cryptoini]* %7, i64 0, i64 0
  %45 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %44, i32 0, i32 3
  store i64 0, i64* %45, align 8
  %46 = load %struct.krb5_key_state*, %struct.krb5_key_state** %3, align 8
  %47 = getelementptr inbounds %struct.krb5_key_state, %struct.krb5_key_state* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds [1 x %struct.cryptoini], [1 x %struct.cryptoini]* %7, i64 0, i64 0
  %50 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 16
  %51 = getelementptr inbounds [1 x %struct.cryptoini], [1 x %struct.cryptoini]* %7, i64 0, i64 0
  %52 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %51, i32 0, i32 1
  store i32* null, i32** %52, align 8
  %53 = load %struct.des1_state*, %struct.des1_state** %6, align 8
  %54 = getelementptr inbounds %struct.des1_state, %struct.des1_state* %53, i32 0, i32 0
  %55 = getelementptr inbounds [1 x %struct.cryptoini], [1 x %struct.cryptoini]* %7, i64 0, i64 0
  %56 = load i32, i32* @CRYPTOCAP_F_HARDWARE, align 4
  %57 = load i32, i32* @CRYPTOCAP_F_SOFTWARE, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @crypto_newsession(i64* %54, %struct.cryptoini* %55, i32 %58)
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
