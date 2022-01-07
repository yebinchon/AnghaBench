; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_ctld.c_auth_group_set_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_ctld.c_auth_group_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_group = type { i32, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@AG_TYPE_NO_AUTHENTICATION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"deny\00", align 1
@AG_TYPE_DENY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"chap\00", align 1
@AG_TYPE_CHAP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"chap-mutual\00", align 1
@AG_TYPE_CHAP_MUTUAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"invalid auth-type \22%s\22 for auth-group \22%s\22\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"invalid auth-type \22%s\22 for target \22%s\22\00", align 1
@AG_TYPE_UNKNOWN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [79 x i8] c"cannot set auth-type to \22%s\22 for auth-group \22%s\22; already has a different type\00", align 1
@.str.7 = private unnamed_addr constant [75 x i8] c"cannot set auth-type to \22%s\22 for target \22%s\22; already has a different type\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @auth_group_set_type(%struct.auth_group* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.auth_group*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.auth_group* %0, %struct.auth_group** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = call i64 @strcmp(i8* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @AG_TYPE_NO_AUTHENTICATION, align 4
  store i32 %11, i32* %6, align 4
  br label %53

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = call i64 @strcmp(i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i32, i32* @AG_TYPE_DENY, align 4
  store i32 %17, i32* %6, align 4
  br label %52

18:                                               ; preds = %12
  %19 = load i8*, i8** %5, align 8
  %20 = call i64 @strcmp(i8* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @AG_TYPE_CHAP, align 4
  store i32 %23, i32* %6, align 4
  br label %51

24:                                               ; preds = %18
  %25 = load i8*, i8** %5, align 8
  %26 = call i64 @strcmp(i8* %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @AG_TYPE_CHAP_MUTUAL, align 4
  store i32 %29, i32* %6, align 4
  br label %50

30:                                               ; preds = %24
  %31 = load %struct.auth_group*, %struct.auth_group** %4, align 8
  %32 = getelementptr inbounds %struct.auth_group, %struct.auth_group* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load i8*, i8** %5, align 8
  %37 = load %struct.auth_group*, %struct.auth_group** %4, align 8
  %38 = getelementptr inbounds %struct.auth_group, %struct.auth_group* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @log_warnx(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i8* %36, i32* %39)
  br label %49

41:                                               ; preds = %30
  %42 = load i8*, i8** %5, align 8
  %43 = load %struct.auth_group*, %struct.auth_group** %4, align 8
  %44 = getelementptr inbounds %struct.auth_group, %struct.auth_group* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @log_warnx(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i8* %42, i32* %47)
  br label %49

49:                                               ; preds = %41, %35
  store i32 1, i32* %3, align 4
  br label %89

50:                                               ; preds = %28
  br label %51

51:                                               ; preds = %50, %22
  br label %52

52:                                               ; preds = %51, %16
  br label %53

53:                                               ; preds = %52, %10
  %54 = load %struct.auth_group*, %struct.auth_group** %4, align 8
  %55 = getelementptr inbounds %struct.auth_group, %struct.auth_group* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @AG_TYPE_UNKNOWN, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %85

59:                                               ; preds = %53
  %60 = load %struct.auth_group*, %struct.auth_group** %4, align 8
  %61 = getelementptr inbounds %struct.auth_group, %struct.auth_group* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %85

65:                                               ; preds = %59
  %66 = load %struct.auth_group*, %struct.auth_group** %4, align 8
  %67 = getelementptr inbounds %struct.auth_group, %struct.auth_group* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load i8*, i8** %5, align 8
  %72 = load %struct.auth_group*, %struct.auth_group** %4, align 8
  %73 = getelementptr inbounds %struct.auth_group, %struct.auth_group* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @log_warnx(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.6, i64 0, i64 0), i8* %71, i32* %74)
  br label %84

76:                                               ; preds = %65
  %77 = load i8*, i8** %5, align 8
  %78 = load %struct.auth_group*, %struct.auth_group** %4, align 8
  %79 = getelementptr inbounds %struct.auth_group, %struct.auth_group* %78, i32 0, i32 1
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @log_warnx(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.7, i64 0, i64 0), i8* %77, i32* %82)
  br label %84

84:                                               ; preds = %76, %70
  store i32 1, i32* %3, align 4
  br label %89

85:                                               ; preds = %59, %53
  %86 = load i32, i32* %6, align 4
  %87 = load %struct.auth_group*, %struct.auth_group** %4, align 8
  %88 = getelementptr inbounds %struct.auth_group, %struct.auth_group* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %85, %84, %49
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @log_warnx(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
