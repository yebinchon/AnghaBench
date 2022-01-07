; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/jail/extr_command.c_get_user_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/jail/extr_command.c_get_user_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfjail = type { i32 }
%struct.passwd = type { i32, i32 }

@errno = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"getpwnam%s%s: %s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"%s: no such user\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"unknown uid %d\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"getpwclass %s: %s\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"initgroups %s: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfjail*, i8*, %struct.passwd**, i32**)* @get_user_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_user_info(%struct.cfjail* %0, i8* %1, %struct.passwd** %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cfjail*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.passwd**, align 8
  %9 = alloca i32**, align 8
  %10 = alloca %struct.passwd*, align 8
  store %struct.cfjail* %0, %struct.cfjail** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.passwd** %2, %struct.passwd*** %8, align 8
  store i32** %3, i32*** %9, align 8
  store i64 0, i64* @errno, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = load i8*, i8** %7, align 8
  %15 = call %struct.passwd* @getpwnam(i8* %14)
  br label %19

16:                                               ; preds = %4
  %17 = call i32 (...) @getuid()
  %18 = call %struct.passwd* @getpwuid(i32 %17)
  br label %19

19:                                               ; preds = %16, %13
  %20 = phi %struct.passwd* [ %15, %13 ], [ %18, %16 ]
  store %struct.passwd* %20, %struct.passwd** %10, align 8
  %21 = load %struct.passwd**, %struct.passwd*** %8, align 8
  store %struct.passwd* %20, %struct.passwd** %21, align 8
  %22 = load %struct.passwd*, %struct.passwd** %10, align 8
  %23 = icmp eq %struct.passwd* %22, null
  br i1 %23, label %24, label %58

24:                                               ; preds = %19
  %25 = load i64, i64* @errno, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %24
  %28 = load %struct.cfjail*, %struct.cfjail** %6, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = icmp ne i8* %29, null
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %33 = load i8*, i8** %7, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i8*, i8** %7, align 8
  br label %38

37:                                               ; preds = %27
  br label %38

38:                                               ; preds = %37, %35
  %39 = phi i8* [ %36, %35 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %37 ]
  %40 = load i64, i64* @errno, align 8
  %41 = call i32 @strerror(i64 %40)
  %42 = call i32 (%struct.cfjail*, i8*, i8*, ...) @jail_warnx(%struct.cfjail* %28, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %32, i8* %39, i32 %41)
  br label %57

43:                                               ; preds = %24
  %44 = load i8*, i8** %7, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load %struct.cfjail*, %struct.cfjail** %6, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 (%struct.cfjail*, i8*, i8*, ...) @jail_warnx(%struct.cfjail* %47, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* %48)
  br label %56

50:                                               ; preds = %43
  %51 = load %struct.cfjail*, %struct.cfjail** %6, align 8
  %52 = call i32 (...) @getuid()
  %53 = sext i32 %52 to i64
  %54 = inttoptr i64 %53 to i8*
  %55 = call i32 (%struct.cfjail*, i8*, i8*, ...) @jail_warnx(%struct.cfjail* %51, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* %54)
  br label %56

56:                                               ; preds = %50, %46
  br label %57

57:                                               ; preds = %56, %38
  store i32 -1, i32* %5, align 4
  br label %95

58:                                               ; preds = %19
  %59 = load %struct.passwd*, %struct.passwd** %10, align 8
  %60 = call i32* @login_getpwclass(%struct.passwd* %59)
  %61 = load i32**, i32*** %9, align 8
  store i32* %60, i32** %61, align 8
  %62 = load i32**, i32*** %9, align 8
  %63 = load i32*, i32** %62, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %75

65:                                               ; preds = %58
  %66 = load %struct.cfjail*, %struct.cfjail** %6, align 8
  %67 = load %struct.passwd*, %struct.passwd** %10, align 8
  %68 = getelementptr inbounds %struct.passwd, %struct.passwd* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = inttoptr i64 %70 to i8*
  %72 = load i64, i64* @errno, align 8
  %73 = call i32 @strerror(i64 %72)
  %74 = call i32 (%struct.cfjail*, i8*, i8*, ...) @jail_warnx(%struct.cfjail* %66, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* %71, i32 %73)
  store i32 -1, i32* %5, align 4
  br label %95

75:                                               ; preds = %58
  %76 = load %struct.passwd*, %struct.passwd** %10, align 8
  %77 = getelementptr inbounds %struct.passwd, %struct.passwd* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.passwd*, %struct.passwd** %10, align 8
  %80 = getelementptr inbounds %struct.passwd, %struct.passwd* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @initgroups(i32 %78, i32 %81)
  %83 = icmp slt i64 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %75
  %85 = load %struct.cfjail*, %struct.cfjail** %6, align 8
  %86 = load %struct.passwd*, %struct.passwd** %10, align 8
  %87 = getelementptr inbounds %struct.passwd, %struct.passwd* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = inttoptr i64 %89 to i8*
  %91 = load i64, i64* @errno, align 8
  %92 = call i32 @strerror(i64 %91)
  %93 = call i32 (%struct.cfjail*, i8*, i8*, ...) @jail_warnx(%struct.cfjail* %85, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* %90, i32 %92)
  store i32 -1, i32* %5, align 4
  br label %95

94:                                               ; preds = %75
  store i32 0, i32* %5, align 4
  br label %95

95:                                               ; preds = %94, %84, %65, %57
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local %struct.passwd* @getpwnam(i8*) #1

declare dso_local %struct.passwd* @getpwuid(i32) #1

declare dso_local i32 @getuid(...) #1

declare dso_local i32 @jail_warnx(%struct.cfjail*, i8*, i8*, ...) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i32* @login_getpwclass(%struct.passwd*) #1

declare dso_local i64 @initgroups(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
