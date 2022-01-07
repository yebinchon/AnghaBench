; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/jexec/extr_jexec.c_get_user_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/jexec/extr_jexec.c_get_user_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i8*, i32 }

@errno = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"getpwnam: %s\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"%s: no such user\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"getpwuid: %d\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"unknown uid: %d\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"getpwclass: %s\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"initgroups: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.passwd**, i32**)* @get_user_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_user_info(i8* %0, %struct.passwd** %1, i32** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.passwd**, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.passwd*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.passwd** %1, %struct.passwd*** %5, align 8
  store i32** %2, i32*** %6, align 8
  store i64 0, i64* @errno, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %27

11:                                               ; preds = %3
  %12 = load i8*, i8** %4, align 8
  %13 = call %struct.passwd* @getpwnam(i8* %12)
  store %struct.passwd* %13, %struct.passwd** %8, align 8
  %14 = load %struct.passwd*, %struct.passwd** %8, align 8
  %15 = icmp eq %struct.passwd* %14, null
  br i1 %15, label %16, label %26

16:                                               ; preds = %11
  %17 = load i64, i64* @errno, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @err(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %20)
  br label %25

22:                                               ; preds = %16
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @errx(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  br label %25

25:                                               ; preds = %22, %19
  br label %26

26:                                               ; preds = %25, %11
  br label %44

27:                                               ; preds = %3
  %28 = call i8* (...) @getuid()
  store i8* %28, i8** %7, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = call %struct.passwd* @getpwuid(i8* %29)
  store %struct.passwd* %30, %struct.passwd** %8, align 8
  %31 = load %struct.passwd*, %struct.passwd** %8, align 8
  %32 = icmp eq %struct.passwd* %31, null
  br i1 %32, label %33, label %43

33:                                               ; preds = %27
  %34 = load i64, i64* @errno, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @err(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %37)
  br label %42

39:                                               ; preds = %33
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 @errx(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %40)
  br label %42

42:                                               ; preds = %39, %36
  br label %43

43:                                               ; preds = %42, %27
  br label %44

44:                                               ; preds = %43, %26
  %45 = load %struct.passwd*, %struct.passwd** %8, align 8
  %46 = load %struct.passwd**, %struct.passwd*** %5, align 8
  store %struct.passwd* %45, %struct.passwd** %46, align 8
  %47 = load %struct.passwd*, %struct.passwd** %8, align 8
  %48 = call i32* @login_getpwclass(%struct.passwd* %47)
  %49 = load i32**, i32*** %6, align 8
  store i32* %48, i32** %49, align 8
  %50 = load i32**, i32*** %6, align 8
  %51 = load i32*, i32** %50, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %44
  %54 = load %struct.passwd*, %struct.passwd** %8, align 8
  %55 = getelementptr inbounds %struct.passwd, %struct.passwd* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* %56)
  br label %58

58:                                               ; preds = %53, %44
  %59 = load %struct.passwd*, %struct.passwd** %8, align 8
  %60 = getelementptr inbounds %struct.passwd, %struct.passwd* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = load %struct.passwd*, %struct.passwd** %8, align 8
  %63 = getelementptr inbounds %struct.passwd, %struct.passwd* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @initgroups(i8* %61, i32 %64)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %58
  %68 = load %struct.passwd*, %struct.passwd** %8, align 8
  %69 = getelementptr inbounds %struct.passwd, %struct.passwd* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* %70)
  br label %72

72:                                               ; preds = %67, %58
  ret void
}

declare dso_local %struct.passwd* @getpwnam(i8*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i8* @getuid(...) #1

declare dso_local %struct.passwd* @getpwuid(i8*) #1

declare dso_local i32* @login_getpwclass(%struct.passwd*) #1

declare dso_local i64 @initgroups(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
