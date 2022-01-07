; ModuleID = '/home/carl/AnghaBench/git/extr_connect.c_check_ref.c'
source_filename = "/home/carl/AnghaBench/git/extr_connect.c_check_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"refs/\00", align 1
@REF_NORMAL = common dso_local global i32 0, align 4
@REF_HEADS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"heads/\00", align 1
@REF_TAGS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"tags/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @check_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_ref(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store i32 1, i32* %3, align 4
  br label %52

9:                                                ; preds = %2
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @skip_prefix(i8* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %4)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %52

14:                                               ; preds = %9
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @REF_NORMAL, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load i8*, i8** %4, align 8
  %21 = call i64 @check_refname_format(i8* %20, i32 0)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %52

24:                                               ; preds = %19, %14
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @REF_HEADS, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load i8*, i8** %4, align 8
  %31 = call i64 @starts_with(i8* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 1, i32* %3, align 4
  br label %52

34:                                               ; preds = %29, %24
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @REF_TAGS, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load i8*, i8** %4, align 8
  %41 = call i64 @starts_with(i8* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 1, i32* %3, align 4
  br label %52

44:                                               ; preds = %39, %34
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @REF_NORMAL, align 4
  %47 = xor i32 %46, -1
  %48 = and i32 %45, %47
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %44, %43, %33, %23, %13, %8
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i64 @check_refname_format(i8*, i32) #1

declare dso_local i64 @starts_with(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
