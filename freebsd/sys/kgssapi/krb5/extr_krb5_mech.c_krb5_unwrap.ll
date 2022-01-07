; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kgssapi/krb5/extr_krb5_mech.c_krb5_unwrap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kgssapi/krb5/extr_krb5_mech.c_krb5_unwrap.c"
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
@seal_alg_des = common dso_local global i32 0, align 4
@sgn_alg_hmac_md5 = common dso_local global i32 0, align 4
@seal_alg_rc4 = common dso_local global i32 0, align 4
@sgn_alg_des3_sha1 = common dso_local global i32 0, align 4
@seal_alg_des3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64*, %struct.mbuf**, i32*, i32*)* @krb5_unwrap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @krb5_unwrap(i64 %0, i64* %1, %struct.mbuf** %2, i32* %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.mbuf**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.krb5_context*, align 8
  %13 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i64* %1, i64** %8, align 8
  store %struct.mbuf** %2, %struct.mbuf*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load i64, i64* %7, align 8
  %15 = inttoptr i64 %14 to %struct.krb5_context*
  store %struct.krb5_context* %15, %struct.krb5_context** %12, align 8
  %16 = load i64*, i64** %8, align 8
  store i64 0, i64* %16, align 8
  %17 = load i32*, i32** %11, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load i32, i32* @GSS_C_QOP_DEFAULT, align 4
  %21 = load i32*, i32** %11, align 8
  store i32 %20, i32* %21, align 4
  br label %22

22:                                               ; preds = %19, %5
  %23 = load i32*, i32** %10, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32*, i32** %10, align 8
  store i32 0, i32* %26, align 4
  br label %27

27:                                               ; preds = %25, %22
  %28 = load i64, i64* @time_uptime, align 8
  %29 = load %struct.krb5_context*, %struct.krb5_context** %12, align 8
  %30 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %28, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i64, i64* @GSS_S_CONTEXT_EXPIRED, align 8
  store i64 %34, i64* %6, align 8
  br label %80

35:                                               ; preds = %27
  %36 = load %struct.krb5_context*, %struct.krb5_context** %12, align 8
  %37 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %64 [
    i32 128, label %43
    i32 131, label %50
    i32 130, label %50
    i32 129, label %57
  ]

43:                                               ; preds = %35
  %44 = load %struct.krb5_context*, %struct.krb5_context** %12, align 8
  %45 = load %struct.mbuf**, %struct.mbuf*** %9, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = load i32, i32* @sgn_alg_des_md5, align 4
  %48 = load i32, i32* @seal_alg_des, align 4
  %49 = call i64 @krb5_unwrap_old(%struct.krb5_context* %44, %struct.mbuf** %45, i32* %46, i32 %47, i32 %48)
  store i64 %49, i64* %13, align 8
  br label %69

50:                                               ; preds = %35, %35
  %51 = load %struct.krb5_context*, %struct.krb5_context** %12, align 8
  %52 = load %struct.mbuf**, %struct.mbuf*** %9, align 8
  %53 = load i32*, i32** %10, align 8
  %54 = load i32, i32* @sgn_alg_hmac_md5, align 4
  %55 = load i32, i32* @seal_alg_rc4, align 4
  %56 = call i64 @krb5_unwrap_old(%struct.krb5_context* %51, %struct.mbuf** %52, i32* %53, i32 %54, i32 %55)
  store i64 %56, i64* %13, align 8
  br label %69

57:                                               ; preds = %35
  %58 = load %struct.krb5_context*, %struct.krb5_context** %12, align 8
  %59 = load %struct.mbuf**, %struct.mbuf*** %9, align 8
  %60 = load i32*, i32** %10, align 8
  %61 = load i32, i32* @sgn_alg_des3_sha1, align 4
  %62 = load i32, i32* @seal_alg_des3, align 4
  %63 = call i64 @krb5_unwrap_old(%struct.krb5_context* %58, %struct.mbuf** %59, i32* %60, i32 %61, i32 %62)
  store i64 %63, i64* %13, align 8
  br label %69

64:                                               ; preds = %35
  %65 = load %struct.krb5_context*, %struct.krb5_context** %12, align 8
  %66 = load %struct.mbuf**, %struct.mbuf*** %9, align 8
  %67 = load i32*, i32** %10, align 8
  %68 = call i64 @krb5_unwrap_new(%struct.krb5_context* %65, %struct.mbuf** %66, i32* %67)
  store i64 %68, i64* %13, align 8
  br label %69

69:                                               ; preds = %64, %57, %50, %43
  %70 = load i64, i64* %13, align 8
  %71 = call i64 @GSS_ERROR(i64 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = load %struct.mbuf**, %struct.mbuf*** %9, align 8
  %75 = load %struct.mbuf*, %struct.mbuf** %74, align 8
  %76 = call i32 @m_freem(%struct.mbuf* %75)
  %77 = load %struct.mbuf**, %struct.mbuf*** %9, align 8
  store %struct.mbuf* null, %struct.mbuf** %77, align 8
  br label %78

78:                                               ; preds = %73, %69
  %79 = load i64, i64* %13, align 8
  store i64 %79, i64* %6, align 8
  br label %80

80:                                               ; preds = %78, %33
  %81 = load i64, i64* %6, align 8
  ret i64 %81
}

declare dso_local i64 @krb5_unwrap_old(%struct.krb5_context*, %struct.mbuf**, i32*, i32, i32) #1

declare dso_local i64 @krb5_unwrap_new(%struct.krb5_context*, %struct.mbuf**, i32*) #1

declare dso_local i64 @GSS_ERROR(i64) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
