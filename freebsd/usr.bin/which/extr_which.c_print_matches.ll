; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/which/extr_which.c_print_matches.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/which/extr_which.c_print_matches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@allpaths = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @print_matches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_matches(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i32, i32* @PATH_MAX, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i32* @strchr(i8* %15, i8 signext 47)
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load i8*, i8** %5, align 8
  %20 = call i64 @is_there(i8* %19)
  %21 = icmp ne i64 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 0, i32 -1
  store i32 %23, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %56

24:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %50, %41, %24
  %26 = call i8* @strsep(i8** %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %26, i8** %8, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %51

28:                                               ; preds = %25
  %29 = load i8*, i8** %8, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %34

34:                                               ; preds = %33, %28
  %35 = trunc i64 %12 to i32
  %36 = load i8*, i8** %8, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @snprintf(i8* %14, i32 %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %36, i8* %37)
  %39 = trunc i64 %12 to i32
  %40 = icmp sge i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %25

42:                                               ; preds = %34
  %43 = call i64 @is_there(i8* %14)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  store i32 1, i32* %9, align 4
  %46 = load i32, i32* @allpaths, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  br label %51

49:                                               ; preds = %45
  br label %50

50:                                               ; preds = %49, %42
  br label %25

51:                                               ; preds = %48, %25
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 0, i32 -1
  store i32 %55, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %56

56:                                               ; preds = %51, %18
  %57 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %57)
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @strchr(i8*, i8 signext) #2

declare dso_local i64 @is_there(i8*) #2

declare dso_local i8* @strsep(i8**, i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
