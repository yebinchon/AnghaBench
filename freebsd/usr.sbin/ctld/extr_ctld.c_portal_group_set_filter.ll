; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_ctld.c_portal_group_set_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_ctld.c_portal_group_set_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.portal_group = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@PG_FILTER_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"portal\00", align 1
@PG_FILTER_PORTAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"portal-name\00", align 1
@PG_FILTER_PORTAL_NAME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"portal-name-auth\00", align 1
@PG_FILTER_PORTAL_NAME_AUTH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [126 x i8] c"invalid discovery-filter \22%s\22 for portal-group \22%s\22; valid values are \22none\22, \22portal\22, \22portal-name\22, and \22portal-name-auth\22\00", align 1
@PG_FILTER_UNKNOWN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [89 x i8] c"cannot set discovery-filter to \22%s\22 for portal-group \22%s\22; already has a different value\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @portal_group_set_filter(%struct.portal_group* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.portal_group*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.portal_group* %0, %struct.portal_group** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = call i64 @strcmp(i8* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @PG_FILTER_NONE, align 4
  store i32 %11, i32* %6, align 4
  br label %39

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = call i64 @strcmp(i8* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i32, i32* @PG_FILTER_PORTAL, align 4
  store i32 %17, i32* %6, align 4
  br label %38

18:                                               ; preds = %12
  %19 = load i8*, i8** %5, align 8
  %20 = call i64 @strcmp(i8* %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @PG_FILTER_PORTAL_NAME, align 4
  store i32 %23, i32* %6, align 4
  br label %37

24:                                               ; preds = %18
  %25 = load i8*, i8** %5, align 8
  %26 = call i64 @strcmp(i8* %25, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @PG_FILTER_PORTAL_NAME_AUTH, align 4
  store i32 %29, i32* %6, align 4
  br label %36

30:                                               ; preds = %24
  %31 = load i8*, i8** %5, align 8
  %32 = load %struct.portal_group*, %struct.portal_group** %4, align 8
  %33 = getelementptr inbounds %struct.portal_group, %struct.portal_group* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @log_warnx(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.4, i64 0, i64 0), i8* %31, i32 %34)
  store i32 1, i32* %3, align 4
  br label %61

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36, %22
  br label %38

38:                                               ; preds = %37, %16
  br label %39

39:                                               ; preds = %38, %10
  %40 = load %struct.portal_group*, %struct.portal_group** %4, align 8
  %41 = getelementptr inbounds %struct.portal_group, %struct.portal_group* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @PG_FILTER_UNKNOWN, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %39
  %46 = load %struct.portal_group*, %struct.portal_group** %4, align 8
  %47 = getelementptr inbounds %struct.portal_group, %struct.portal_group* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load i8*, i8** %5, align 8
  %53 = load %struct.portal_group*, %struct.portal_group** %4, align 8
  %54 = getelementptr inbounds %struct.portal_group, %struct.portal_group* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @log_warnx(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.5, i64 0, i64 0), i8* %52, i32 %55)
  store i32 1, i32* %3, align 4
  br label %61

57:                                               ; preds = %45, %39
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.portal_group*, %struct.portal_group** %4, align 8
  %60 = getelementptr inbounds %struct.portal_group, %struct.portal_group* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %57, %51, %30
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @log_warnx(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
