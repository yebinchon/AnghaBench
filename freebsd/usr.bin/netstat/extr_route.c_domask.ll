; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/netstat/extr_route.c_domask.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/netstat/extr_route.c_domask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"&0x%lx\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"/%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i32)* @domask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @domask(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i8*, i8** %4, align 8
  store i8 0, i8* %13, align 1
  br label %61

14:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %44, %14
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 32
  br i1 %17, label %18, label %47

18:                                               ; preds = %15
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = shl i32 1, %20
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %43

24:                                               ; preds = %18
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %39, %24
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %29, 32
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %9, align 4
  %34 = shl i32 1, %33
  %35 = and i32 %32, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %31
  store i32 -1, i32* %8, align 4
  br label %42

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %9, align 4
  br label %28

42:                                               ; preds = %37, %28
  br label %47

43:                                               ; preds = %18
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %15

47:                                               ; preds = %42, %15
  %48 = load i32, i32* %8, align 4
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load i8*, i8** %4, align 8
  %52 = load i64, i64* %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @snprintf(i8* %51, i64 %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %53)
  br label %61

55:                                               ; preds = %47
  %56 = load i8*, i8** %4, align 8
  %57 = load i64, i64* %5, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sub nsw i32 32, %58
  %60 = call i32 @snprintf(i8* %56, i64 %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %12, %55, %50
  ret void
}

declare dso_local i32 @snprintf(i8*, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
