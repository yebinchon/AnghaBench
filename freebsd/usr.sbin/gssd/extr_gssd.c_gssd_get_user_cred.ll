; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/gssd/extr_gssd.c_gssd_get_user_cred.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/gssd/extr_gssd.c_gssd_get_user_cred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8* }
%struct.passwd = type { i64 }

@GSS_S_FAILURE = common dso_local global i64 0, align 8
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@GSS_KRB5_MECH_OID_X = common dso_local global i32 0, align 4
@GSS_C_NT_USER_NAME = common dso_local global i32 0, align 4
@GSS_C_INITIATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, i32, i32*)* @gssd_get_user_cred to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @gssd_get_user_cred(i64* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.passwd*, align 8
  store i64* %0, i64** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call %struct.passwd* @getpwuid(i32 %14)
  store %struct.passwd* %15, %struct.passwd** %13, align 8
  %16 = load %struct.passwd*, %struct.passwd** %13, align 8
  %17 = icmp eq %struct.passwd* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i64*, i64** %5, align 8
  store i64 0, i64* %19, align 8
  %20 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %20, i64* %4, align 8
  br label %69

21:                                               ; preds = %3
  %22 = load i64*, i64** %5, align 8
  %23 = call i64 @gss_create_empty_oid_set(i64* %22, i32* %12)
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* @GSS_S_COMPLETE, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i64, i64* %10, align 8
  store i64 %28, i64* %4, align 8
  br label %69

29:                                               ; preds = %21
  %30 = load i64*, i64** %5, align 8
  %31 = load i32, i32* @GSS_KRB5_MECH_OID_X, align 4
  %32 = call i64 @gss_add_oid_set_member(i64* %30, i32 %31, i32* %12)
  store i64 %32, i64* %10, align 8
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* @GSS_S_COMPLETE, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = call i32 @gss_release_oid_set(i64* %11, i32* %12)
  %38 = load i64, i64* %10, align 8
  store i64 %38, i64* %4, align 8
  br label %69

39:                                               ; preds = %29
  %40 = load %struct.passwd*, %struct.passwd** %13, align 8
  %41 = getelementptr inbounds %struct.passwd, %struct.passwd* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i8*
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  store i8* %43, i8** %44, align 8
  %45 = load %struct.passwd*, %struct.passwd** %13, align 8
  %46 = getelementptr inbounds %struct.passwd, %struct.passwd* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @strlen(i64 %47)
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store i32 %48, i32* %49, align 8
  %50 = load i64*, i64** %5, align 8
  %51 = load i32, i32* @GSS_C_NT_USER_NAME, align 4
  %52 = call i64 @gss_import_name(i64* %50, %struct.TYPE_3__* %8, i32 %51, i32* %9)
  store i64 %52, i64* %10, align 8
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* @GSS_S_COMPLETE, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %39
  %57 = call i32 @gss_release_oid_set(i64* %11, i32* %12)
  %58 = load i64, i64* %10, align 8
  store i64 %58, i64* %4, align 8
  br label %69

59:                                               ; preds = %39
  %60 = load i64*, i64** %5, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* @GSS_C_INITIATE, align 4
  %64 = load i32*, i32** %7, align 8
  %65 = call i64 @gss_acquire_cred(i64* %60, i32 %61, i32 0, i32 %62, i32 %63, i32* %64, i32* null, i32* null)
  store i64 %65, i64* %10, align 8
  %66 = call i32 @gss_release_name(i64* %11, i32* %9)
  %67 = call i32 @gss_release_oid_set(i64* %11, i32* %12)
  %68 = load i64, i64* %10, align 8
  store i64 %68, i64* %4, align 8
  br label %69

69:                                               ; preds = %59, %56, %36, %27, %18
  %70 = load i64, i64* %4, align 8
  ret i64 %70
}

declare dso_local %struct.passwd* @getpwuid(i32) #1

declare dso_local i64 @gss_create_empty_oid_set(i64*, i32*) #1

declare dso_local i64 @gss_add_oid_set_member(i64*, i32, i32*) #1

declare dso_local i32 @gss_release_oid_set(i64*, i32*) #1

declare dso_local i32 @strlen(i64) #1

declare dso_local i64 @gss_import_name(i64*, %struct.TYPE_3__*, i32, i32*) #1

declare dso_local i64 @gss_acquire_cred(i64*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @gss_release_name(i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
