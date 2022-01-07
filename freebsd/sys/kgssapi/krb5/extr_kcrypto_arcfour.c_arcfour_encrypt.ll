; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kgssapi/krb5/extr_kcrypto_arcfour.c_arcfour_encrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kgssapi/krb5/extr_kcrypto_arcfour.c_arcfour_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.krb5_key_state = type { i32 }
%struct.mbuf = type { i32 }
%struct.rc4_state = type { i32 }

@rc4_crypt_int = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.krb5_key_state*, %struct.mbuf*, i64, i64, i8*, i64)* @arcfour_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arcfour_encrypt(%struct.krb5_key_state* %0, %struct.mbuf* %1, i64 %2, i64 %3, i8* %4, i64 %5) #0 {
  %7 = alloca %struct.krb5_key_state*, align 8
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.rc4_state, align 4
  %14 = alloca [16 x i32], align 16
  %15 = alloca [16 x i32], align 16
  store %struct.krb5_key_state* %0, %struct.krb5_key_state** %7, align 8
  store %struct.mbuf* %1, %struct.mbuf** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  store i64 %5, i64* %12, align 8
  %16 = load %struct.krb5_key_state*, %struct.krb5_key_state** %7, align 8
  %17 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 0
  %18 = call i32 @arcfour_derive_key(%struct.krb5_key_state* %16, i32 0, i32* %17)
  %19 = load i8*, i8** %11, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %6
  %22 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 0
  %23 = load i8*, i8** %11, align 8
  %24 = load i64, i64* %12, align 8
  %25 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 0
  %26 = call i32 @arcfour_hmac(i32* %22, i8* %23, i64 %24, i32* %25)
  %27 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 0
  %28 = call i32 @rc4_init(%struct.rc4_state* %13, i32* %27, i32 16)
  br label %32

29:                                               ; preds = %6
  %30 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 0
  %31 = call i32 @rc4_init(%struct.rc4_state* %13, i32* %30, i32 16)
  br label %32

32:                                               ; preds = %29, %21
  %33 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* %10, align 8
  %36 = load i32, i32* @rc4_crypt_int, align 4
  %37 = call i32 @m_apply(%struct.mbuf* %33, i64 %34, i64 %35, i32 %36, %struct.rc4_state* %13)
  ret void
}

declare dso_local i32 @arcfour_derive_key(%struct.krb5_key_state*, i32, i32*) #1

declare dso_local i32 @arcfour_hmac(i32*, i8*, i64, i32*) #1

declare dso_local i32 @rc4_init(%struct.rc4_state*, i32*, i32) #1

declare dso_local i32 @m_apply(%struct.mbuf*, i64, i64, i32, %struct.rc4_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
