; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/kdump/extr_kdump.c_visdump.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/kdump/extr_kdump.c_visdump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"       \22\00", align 1
@VIS_CSTYLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"\\\0A\09\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"       \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\22\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @visdump(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [5 x i8], align 1
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 8, i32* %7, align 4
  br label %12

12:                                               ; preds = %65, %3
  %13 = load i32, i32* %5, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %70

15:                                               ; preds = %12
  %16 = getelementptr inbounds [5 x i8], [5 x i8]* %10, i64 0, i64 0
  %17 = load i8*, i8** %4, align 8
  %18 = load i8, i8* %17, align 1
  %19 = load i32, i32* @VIS_CSTYLE, align 4
  %20 = load i8*, i8** %4, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  %22 = load i8, i8* %21, align 1
  %23 = call i32 @vis(i8* %16, i8 signext %18, i32 %19, i8 signext %22)
  %24 = getelementptr inbounds [5 x i8], [5 x i8]* %10, i64 0, i64 0
  store i8* %24, i8** %8, align 8
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %15
  %28 = call i32 @putchar(i8 signext 9)
  store i32 8, i32* %7, align 4
  br label %29

29:                                               ; preds = %27, %15
  %30 = load i8*, i8** %8, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  switch i32 %32, label %39 [
    i32 10, label %33
    i32 9, label %35
  ]

33:                                               ; preds = %29
  store i32 0, i32* %7, align 4
  %34 = call i32 @putchar(i8 signext 10)
  br label %65

35:                                               ; preds = %29
  %36 = load i32, i32* %7, align 4
  %37 = and i32 %36, 7
  %38 = sub nsw i32 8, %37
  store i32 %38, i32* %9, align 4
  br label %42

39:                                               ; preds = %29
  %40 = load i8*, i8** %8, align 8
  %41 = call i32 @strlen(i8* %40)
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %39, %35
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %43, %44
  %46 = load i32, i32* %6, align 4
  %47 = sub nsw i32 %46, 2
  %48 = icmp sgt i32 %45, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32 8, i32* %7, align 4
  br label %51

51:                                               ; preds = %49, %42
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %60, %51
  %56 = load i8*, i8** %8, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %8, align 8
  %58 = load i8, i8* %56, align 1
  %59 = call i32 @putchar(i8 signext %58)
  br label %60

60:                                               ; preds = %55
  %61 = load i8*, i8** %8, align 8
  %62 = load i8, i8* %61, align 1
  %63 = icmp ne i8 %62, 0
  br i1 %63, label %55, label %64

64:                                               ; preds = %60
  br label %65

65:                                               ; preds = %64, %33
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %5, align 4
  %68 = load i8*, i8** %4, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %4, align 8
  br label %12

70:                                               ; preds = %12
  %71 = load i32, i32* %7, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %75

75:                                               ; preds = %73, %70
  %76 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @vis(i8*, i8 signext, i32, i8 signext) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
