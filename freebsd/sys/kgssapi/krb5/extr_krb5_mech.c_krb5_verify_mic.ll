; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kgssapi/krb5/extr_krb5_mech.c_krb5_verify_mic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kgssapi/krb5/extr_krb5_mech.c_krb5_verify_mic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.krb5_context = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@GSS_C_QOP_DEFAULT = common dso_local global i32 0, align 4
@time_uptime = common dso_local global i64 0, align 8
@GSS_S_CONTEXT_EXPIRED = common dso_local global i64 0, align 8
@sgn_alg_des_md5 = common dso_local global i32 0, align 4
@sgn_alg_hmac_md5 = common dso_local global i32 0, align 4
@sgn_alg_des3_sha1 = common dso_local global i32 0, align 4
@GSS_S_FAILURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64*, %struct.mbuf*, %struct.mbuf*, i32*)* @krb5_verify_mic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @krb5_verify_mic(i64 %0, i64* %1, %struct.mbuf* %2, %struct.mbuf* %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.mbuf*, align 8
  %10 = alloca %struct.mbuf*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.krb5_context*, align 8
  store i64 %0, i64* %7, align 8
  store i64* %1, i64** %8, align 8
  store %struct.mbuf* %2, %struct.mbuf** %9, align 8
  store %struct.mbuf* %3, %struct.mbuf** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load i64, i64* %7, align 8
  %14 = inttoptr i64 %13 to %struct.krb5_context*
  store %struct.krb5_context* %14, %struct.krb5_context** %12, align 8
  %15 = load i64*, i64** %8, align 8
  store i64 0, i64* %15, align 8
  %16 = load i32*, i32** %11, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %5
  %19 = load i32, i32* @GSS_C_QOP_DEFAULT, align 4
  %20 = load i32*, i32** %11, align 8
  store i32 %19, i32* %20, align 4
  br label %21

21:                                               ; preds = %18, %5
  %22 = load i64, i64* @time_uptime, align 8
  %23 = load %struct.krb5_context*, %struct.krb5_context** %12, align 8
  %24 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %22, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i64, i64* @GSS_S_CONTEXT_EXPIRED, align 8
  store i64 %28, i64* %6, align 8
  br label %60

29:                                               ; preds = %21
  %30 = load %struct.krb5_context*, %struct.krb5_context** %12, align 8
  %31 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %55 [
    i32 128, label %37
    i32 131, label %43
    i32 130, label %43
    i32 129, label %49
  ]

37:                                               ; preds = %29
  %38 = load %struct.krb5_context*, %struct.krb5_context** %12, align 8
  %39 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %40 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %41 = load i32, i32* @sgn_alg_des_md5, align 4
  %42 = call i64 @krb5_verify_mic_old(%struct.krb5_context* %38, %struct.mbuf* %39, %struct.mbuf* %40, i32 %41)
  store i64 %42, i64* %6, align 8
  br label %60

43:                                               ; preds = %29, %29
  %44 = load %struct.krb5_context*, %struct.krb5_context** %12, align 8
  %45 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %46 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %47 = load i32, i32* @sgn_alg_hmac_md5, align 4
  %48 = call i64 @krb5_verify_mic_old(%struct.krb5_context* %44, %struct.mbuf* %45, %struct.mbuf* %46, i32 %47)
  store i64 %48, i64* %6, align 8
  br label %60

49:                                               ; preds = %29
  %50 = load %struct.krb5_context*, %struct.krb5_context** %12, align 8
  %51 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %52 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %53 = load i32, i32* @sgn_alg_des3_sha1, align 4
  %54 = call i64 @krb5_verify_mic_old(%struct.krb5_context* %50, %struct.mbuf* %51, %struct.mbuf* %52, i32 %53)
  store i64 %54, i64* %6, align 8
  br label %60

55:                                               ; preds = %29
  %56 = load %struct.krb5_context*, %struct.krb5_context** %12, align 8
  %57 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %58 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %59 = call i64 @krb5_verify_mic_new(%struct.krb5_context* %56, %struct.mbuf* %57, %struct.mbuf* %58)
  store i64 %59, i64* %6, align 8
  br label %60

60:                                               ; preds = %55, %49, %43, %37, %27
  %61 = load i64, i64* %6, align 8
  ret i64 %61
}

declare dso_local i64 @krb5_verify_mic_old(%struct.krb5_context*, %struct.mbuf*, %struct.mbuf*, i32) #1

declare dso_local i64 @krb5_verify_mic_new(%struct.krb5_context*, %struct.mbuf*, %struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
