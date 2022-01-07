; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dummynet.c_ipdn_bound_var.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dummynet.c_ipdn_bound_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"Bump\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Clamp\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"%s %s to %d (was %d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipdn_bound_var(i32* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %12, align 4
  store i8* null, i8** %13, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %8, align 4
  br label %21

21:                                               ; preds = %19, %5
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %8, align 4
  br label %27

27:                                               ; preds = %25, %21
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* %8, align 4
  %33 = load i32*, i32** %7, align 8
  store i32 %32, i32* %33, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  br label %45

34:                                               ; preds = %27
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* %10, align 4
  %40 = load i32*, i32** %7, align 8
  store i32 %39, i32* %40, align 4
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %13, align 8
  br label %44

41:                                               ; preds = %34
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %6, align 4
  br label %61

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %44, %31
  %46 = load i8*, i8** %13, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %58

48:                                               ; preds = %45
  %49 = load i8*, i8** %11, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  %52 = load i8*, i8** %13, align 8
  %53 = load i8*, i8** %11, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %52, i8* %53, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %51, %48, %45
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %58, %41
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local i32 @printf(i8*, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
