; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_uclparse.c_uclparse_target_portal_group.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_uclparse.c_uclparse_target_portal_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.target = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.portal_group = type { i32 }
%struct.auth_group = type { i32 }
%struct.port = type { %struct.auth_group* }

@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@UCL_STRING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [65 x i8] c"portal-group section in target \22%s\22 is missing \22name\22 string key\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"auth-group-name\00", align 1
@.str.3 = private unnamed_addr constant [76 x i8] c"portal-group section in target \22%s\22 is missing \22auth-group-name\22 string key\00", align 1
@conf = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"unknown portal-group \22%s\22 for target \22%s\22\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"unknown auth-group \22%s\22 for target \22%s\22\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"can't link portal-group \22%s\22 to target \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.target*, %struct.TYPE_6__*)* @uclparse_target_portal_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uclparse_target_portal_group(%struct.target* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.target*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.portal_group*, align 8
  %7 = alloca %struct.auth_group*, align 8
  %8 = alloca %struct.port*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  store %struct.target* %0, %struct.target** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store %struct.auth_group* null, %struct.auth_group** %7, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %12 = call %struct.TYPE_6__* @ucl_object_find_key(%struct.TYPE_6__* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %9, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %14 = icmp ne %struct.TYPE_6__* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @UCL_STRING, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %15, %2
  %22 = load %struct.target*, %struct.target** %4, align 8
  %23 = getelementptr inbounds %struct.target, %struct.target* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (i8*, i32, ...) @log_warnx(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  store i32 1, i32* %3, align 4
  br label %92

26:                                               ; preds = %15
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %28 = call %struct.TYPE_6__* @ucl_object_find_key(%struct.TYPE_6__* %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** %10, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %30 = icmp ne %struct.TYPE_6__* %29, null
  br i1 %30, label %31, label %42

31:                                               ; preds = %26
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @UCL_STRING, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = load %struct.target*, %struct.target** %4, align 8
  %39 = getelementptr inbounds %struct.target, %struct.target* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i8*, i32, ...) @log_warnx(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.3, i64 0, i64 0), i32 %40)
  store i32 1, i32* %3, align 4
  br label %92

42:                                               ; preds = %31, %26
  %43 = load i32, i32* @conf, align 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %45 = call i32 @ucl_object_tostring(%struct.TYPE_6__* %44)
  %46 = call %struct.portal_group* @portal_group_find(i32 %43, i32 %45)
  store %struct.portal_group* %46, %struct.portal_group** %6, align 8
  %47 = load %struct.portal_group*, %struct.portal_group** %6, align 8
  %48 = icmp eq %struct.portal_group* %47, null
  br i1 %48, label %49, label %56

49:                                               ; preds = %42
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %51 = call i32 @ucl_object_tostring(%struct.TYPE_6__* %50)
  %52 = load %struct.target*, %struct.target** %4, align 8
  %53 = getelementptr inbounds %struct.target, %struct.target* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i8*, i32, ...) @log_warnx(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %51, i32 %54)
  store i32 1, i32* %3, align 4
  br label %92

56:                                               ; preds = %42
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %58 = icmp ne %struct.TYPE_6__* %57, null
  br i1 %58, label %59, label %74

59:                                               ; preds = %56
  %60 = load i32, i32* @conf, align 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %62 = call i32 @ucl_object_tostring(%struct.TYPE_6__* %61)
  %63 = call %struct.auth_group* @auth_group_find(i32 %60, i32 %62)
  store %struct.auth_group* %63, %struct.auth_group** %7, align 8
  %64 = load %struct.auth_group*, %struct.auth_group** %7, align 8
  %65 = icmp eq %struct.auth_group* %64, null
  br i1 %65, label %66, label %73

66:                                               ; preds = %59
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %68 = call i32 @ucl_object_tostring(%struct.TYPE_6__* %67)
  %69 = load %struct.target*, %struct.target** %4, align 8
  %70 = getelementptr inbounds %struct.target, %struct.target* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i8*, i32, ...) @log_warnx(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %68, i32 %71)
  store i32 1, i32* %3, align 4
  br label %92

73:                                               ; preds = %59
  br label %74

74:                                               ; preds = %73, %56
  %75 = load i32, i32* @conf, align 4
  %76 = load %struct.target*, %struct.target** %4, align 8
  %77 = load %struct.portal_group*, %struct.portal_group** %6, align 8
  %78 = call %struct.port* @port_new(i32 %75, %struct.target* %76, %struct.portal_group* %77)
  store %struct.port* %78, %struct.port** %8, align 8
  %79 = load %struct.port*, %struct.port** %8, align 8
  %80 = icmp eq %struct.port* %79, null
  br i1 %80, label %81, label %88

81:                                               ; preds = %74
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %83 = call i32 @ucl_object_tostring(%struct.TYPE_6__* %82)
  %84 = load %struct.target*, %struct.target** %4, align 8
  %85 = getelementptr inbounds %struct.target, %struct.target* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (i8*, i32, ...) @log_warnx(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i32 %83, i32 %86)
  store i32 1, i32* %3, align 4
  br label %92

88:                                               ; preds = %74
  %89 = load %struct.auth_group*, %struct.auth_group** %7, align 8
  %90 = load %struct.port*, %struct.port** %8, align 8
  %91 = getelementptr inbounds %struct.port, %struct.port* %90, i32 0, i32 0
  store %struct.auth_group* %89, %struct.auth_group** %91, align 8
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %88, %81, %66, %49, %37, %21
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local %struct.TYPE_6__* @ucl_object_find_key(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @log_warnx(i8*, i32, ...) #1

declare dso_local %struct.portal_group* @portal_group_find(i32, i32) #1

declare dso_local i32 @ucl_object_tostring(%struct.TYPE_6__*) #1

declare dso_local %struct.auth_group* @auth_group_find(i32, i32) #1

declare dso_local %struct.port* @port_new(i32, %struct.target*, %struct.portal_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
