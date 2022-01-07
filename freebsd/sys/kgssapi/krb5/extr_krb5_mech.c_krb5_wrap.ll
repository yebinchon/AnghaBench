; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kgssapi/krb5/extr_krb5_mech.c_krb5_wrap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kgssapi/krb5/extr_krb5_mech.c_krb5_wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.krb5_context = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@GSS_C_QOP_DEFAULT = common dso_local global i64 0, align 8
@GSS_S_BAD_QOP = common dso_local global i64 0, align 8
@time_uptime = common dso_local global i64 0, align 8
@GSS_S_CONTEXT_EXPIRED = common dso_local global i64 0, align 8
@sgn_alg_des_md5 = common dso_local global i32 0, align 4
@seal_alg_des = common dso_local global i32 0, align 4
@sgn_alg_hmac_md5 = common dso_local global i32 0, align 4
@seal_alg_rc4 = common dso_local global i32 0, align 4
@sgn_alg_des3_sha1 = common dso_local global i32 0, align 4
@seal_alg_des3 = common dso_local global i32 0, align 4
@GSS_S_FAILURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64*, i32, i64, %struct.mbuf**, i32*)* @krb5_wrap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @krb5_wrap(i64 %0, i64* %1, i32 %2, i64 %3, %struct.mbuf** %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.mbuf**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.krb5_context*, align 8
  store i64 %0, i64* %8, align 8
  store i64* %1, i64** %9, align 8
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store %struct.mbuf** %4, %struct.mbuf*** %12, align 8
  store i32* %5, i32** %13, align 8
  %15 = load i64, i64* %8, align 8
  %16 = inttoptr i64 %15 to %struct.krb5_context*
  store %struct.krb5_context* %16, %struct.krb5_context** %14, align 8
  %17 = load i64*, i64** %9, align 8
  store i64 0, i64* %17, align 8
  %18 = load i32*, i32** %13, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %6
  %21 = load i32*, i32** %13, align 8
  store i32 0, i32* %21, align 4
  br label %22

22:                                               ; preds = %20, %6
  %23 = load i64, i64* %11, align 8
  %24 = load i64, i64* @GSS_C_QOP_DEFAULT, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i64, i64* @GSS_S_BAD_QOP, align 8
  store i64 %27, i64* %7, align 8
  br label %74

28:                                               ; preds = %22
  %29 = load i64, i64* @time_uptime, align 8
  %30 = load %struct.krb5_context*, %struct.krb5_context** %14, align 8
  %31 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %29, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i64, i64* @GSS_S_CONTEXT_EXPIRED, align 8
  store i64 %35, i64* %7, align 8
  br label %74

36:                                               ; preds = %28
  %37 = load %struct.krb5_context*, %struct.krb5_context** %14, align 8
  %38 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %37, i32 0, i32 1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  switch i32 %43, label %68 [
    i32 128, label %44
    i32 131, label %52
    i32 130, label %52
    i32 129, label %60
  ]

44:                                               ; preds = %36
  %45 = load %struct.krb5_context*, %struct.krb5_context** %14, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load %struct.mbuf**, %struct.mbuf*** %12, align 8
  %48 = load i32*, i32** %13, align 8
  %49 = load i32, i32* @sgn_alg_des_md5, align 4
  %50 = load i32, i32* @seal_alg_des, align 4
  %51 = call i64 @krb5_wrap_old(%struct.krb5_context* %45, i32 %46, %struct.mbuf** %47, i32* %48, i32 %49, i32 %50)
  store i64 %51, i64* %7, align 8
  br label %74

52:                                               ; preds = %36, %36
  %53 = load %struct.krb5_context*, %struct.krb5_context** %14, align 8
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.mbuf**, %struct.mbuf*** %12, align 8
  %56 = load i32*, i32** %13, align 8
  %57 = load i32, i32* @sgn_alg_hmac_md5, align 4
  %58 = load i32, i32* @seal_alg_rc4, align 4
  %59 = call i64 @krb5_wrap_old(%struct.krb5_context* %53, i32 %54, %struct.mbuf** %55, i32* %56, i32 %57, i32 %58)
  store i64 %59, i64* %7, align 8
  br label %74

60:                                               ; preds = %36
  %61 = load %struct.krb5_context*, %struct.krb5_context** %14, align 8
  %62 = load i32, i32* %10, align 4
  %63 = load %struct.mbuf**, %struct.mbuf*** %12, align 8
  %64 = load i32*, i32** %13, align 8
  %65 = load i32, i32* @sgn_alg_des3_sha1, align 4
  %66 = load i32, i32* @seal_alg_des3, align 4
  %67 = call i64 @krb5_wrap_old(%struct.krb5_context* %61, i32 %62, %struct.mbuf** %63, i32* %64, i32 %65, i32 %66)
  store i64 %67, i64* %7, align 8
  br label %74

68:                                               ; preds = %36
  %69 = load %struct.krb5_context*, %struct.krb5_context** %14, align 8
  %70 = load i32, i32* %10, align 4
  %71 = load %struct.mbuf**, %struct.mbuf*** %12, align 8
  %72 = load i32*, i32** %13, align 8
  %73 = call i64 @krb5_wrap_new(%struct.krb5_context* %69, i32 %70, %struct.mbuf** %71, i32* %72)
  store i64 %73, i64* %7, align 8
  br label %74

74:                                               ; preds = %68, %60, %52, %44, %34, %26
  %75 = load i64, i64* %7, align 8
  ret i64 %75
}

declare dso_local i64 @krb5_wrap_old(%struct.krb5_context*, i32, %struct.mbuf**, i32*, i32, i32) #1

declare dso_local i64 @krb5_wrap_new(%struct.krb5_context*, i32, %struct.mbuf**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
