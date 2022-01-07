; ModuleID = '/home/carl/AnghaBench/git/compat/extr_mingw.c_getpwuid.c'
source_filename = "/home/carl/AnghaBench/git/compat/extr_mingw.c_getpwuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i8*, i8*, i32* }

@getpwuid.initialized = internal global i32 0, align 4
@getpwuid.user_name = internal global [100 x i8] zeroinitializer, align 16
@getpwuid.p = internal global %struct.passwd* null, align 8
@NameDisplay = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"unknown\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.passwd* @getpwuid(i32 %0) #0 {
  %2 = alloca %struct.passwd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [100 x i32], align 16
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @getpwuid.initialized, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load %struct.passwd*, %struct.passwd** @getpwuid.p, align 8
  store %struct.passwd* %9, %struct.passwd** %2, align 8
  br label %41

10:                                               ; preds = %1
  %11 = getelementptr inbounds [100 x i32], [100 x i32]* %4, i64 0, i64 0
  %12 = call i32 @ARRAY_SIZE(i32* %11)
  store i32 %12, i32* %5, align 4
  %13 = getelementptr inbounds [100 x i32], [100 x i32]* %4, i64 0, i64 0
  %14 = call i32 @GetUserNameW(i32* %13, i32* %5)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  store i32 1, i32* @getpwuid.initialized, align 4
  store %struct.passwd* null, %struct.passwd** %2, align 8
  br label %41

17:                                               ; preds = %10
  %18 = getelementptr inbounds [100 x i32], [100 x i32]* %4, i64 0, i64 0
  %19 = call i64 @xwcstoutf(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @getpwuid.user_name, i64 0, i64 0), i32* %18, i32 100)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 1, i32* @getpwuid.initialized, align 4
  store %struct.passwd* null, %struct.passwd** %2, align 8
  br label %41

22:                                               ; preds = %17
  %23 = call %struct.passwd* @xmalloc(i32 24)
  store %struct.passwd* %23, %struct.passwd** @getpwuid.p, align 8
  %24 = load %struct.passwd*, %struct.passwd** @getpwuid.p, align 8
  %25 = getelementptr inbounds %struct.passwd, %struct.passwd* %24, i32 0, i32 0
  store i8* getelementptr inbounds ([100 x i8], [100 x i8]* @getpwuid.user_name, i64 0, i64 0), i8** %25, align 8
  %26 = load i32, i32* @NameDisplay, align 4
  %27 = call i8* @get_extended_user_info(i32 %26)
  %28 = load %struct.passwd*, %struct.passwd** @getpwuid.p, align 8
  %29 = getelementptr inbounds %struct.passwd, %struct.passwd* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  %30 = load %struct.passwd*, %struct.passwd** @getpwuid.p, align 8
  %31 = getelementptr inbounds %struct.passwd, %struct.passwd* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %22
  %35 = load %struct.passwd*, %struct.passwd** @getpwuid.p, align 8
  %36 = getelementptr inbounds %struct.passwd, %struct.passwd* %35, i32 0, i32 1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %36, align 8
  br label %37

37:                                               ; preds = %34, %22
  %38 = load %struct.passwd*, %struct.passwd** @getpwuid.p, align 8
  %39 = getelementptr inbounds %struct.passwd, %struct.passwd* %38, i32 0, i32 2
  store i32* null, i32** %39, align 8
  store i32 1, i32* @getpwuid.initialized, align 4
  %40 = load %struct.passwd*, %struct.passwd** @getpwuid.p, align 8
  store %struct.passwd* %40, %struct.passwd** %2, align 8
  br label %41

41:                                               ; preds = %37, %21, %16, %8
  %42 = load %struct.passwd*, %struct.passwd** %2, align 8
  ret %struct.passwd* %42
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @GetUserNameW(i32*, i32*) #1

declare dso_local i64 @xwcstoutf(i8*, i32*, i32) #1

declare dso_local %struct.passwd* @xmalloc(i32) #1

declare dso_local i8* @get_extended_user_info(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
