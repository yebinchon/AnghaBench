; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/sesutil/extr_sesutil.c_print_extra_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/sesutil/extr_sesutil.c_print_extra_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [49 x i8] c"\09\09-{e:predicted_failure/true} Predicted Failure\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"\09\09-{e:disabled/true} Disabled\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"\09\09-{e:swapped/true} Swapped\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"\09\09- LED={q:led/locate}\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"\09\09- LED={q:led/fault}\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"\09\09- Speed: {:speed/%d}{Uw:rpm}\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"\09\09- Temperature: {:temperature/%d}{Uw:C}\0A\00", align 1
@TEMPERATURE_OFFSET = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [45 x i8] c"\09\09- Temperature: -{q:temperature/reserved}-\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"\09\09- Voltage: {:voltage/%.2f}{Uw:V}\0A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"extra_status\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @print_extra_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_extra_status(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32*, i32** %4, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  %8 = load i32, i32* %7, align 4
  %9 = and i32 %8, 64
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 (i32*, i8*, ...) @sesutil_print(i32* %5, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %2
  %14 = load i32*, i32** %4, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 32
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = call i32 (i32*, i8*, ...) @sesutil_print(i32* %5, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %13
  %22 = load i32*, i32** %4, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 16
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = call i32 (i32*, i8*, ...) @sesutil_print(i32* %5, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %21
  %30 = load i32, i32* %3, align 4
  switch i32 %30, label %81 [
    i32 131, label %31
    i32 132, label %31
    i32 130, label %48
    i32 129, label %60
    i32 128, label %75
  ]

31:                                               ; preds = %29, %29
  %32 = load i32*, i32** %4, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 2
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = call i32 (i32*, i8*, ...) @sesutil_print(i32* %5, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %31
  %40 = load i32*, i32** %4, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 2
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 32
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = call i32 (i32*, i8*, ...) @sesutil_print(i32* %5, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %39
  br label %81

48:                                               ; preds = %29
  %49 = load i32*, i32** %4, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = and i32 7, %51
  %53 = shl i32 %52, 8
  %54 = load i32*, i32** %4, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %53, %56
  %58 = mul nsw i32 %57, 10
  %59 = call i32 (i32*, i8*, ...) @sesutil_print(i32* %5, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %58)
  br label %81

60:                                               ; preds = %29
  %61 = load i32*, i32** %4, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 2
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %60
  %66 = load i32*, i32** %4, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @TEMPERATURE_OFFSET, align 4
  %70 = sub nsw i32 %68, %69
  %71 = call i32 (i32*, i8*, ...) @sesutil_print(i32* %5, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i32 %70)
  br label %74

72:                                               ; preds = %60
  %73 = call i32 (i32*, i8*, ...) @sesutil_print(i32* %5, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %65
  br label %81

75:                                               ; preds = %29
  %76 = load i32*, i32** %4, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 2
  %78 = call double @be16dec(i32* %77)
  %79 = fdiv double %78, 1.000000e+02
  %80 = call i32 (i32*, i8*, ...) @sesutil_print(i32* %5, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), double %79)
  br label %81

81:                                               ; preds = %29, %75, %74, %48, %47
  %82 = load i32, i32* %5, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = call i32 @xo_close_container(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %81
  ret void
}

declare dso_local i32 @sesutil_print(i32*, i8*, ...) #1

declare dso_local double @be16dec(i32*) #1

declare dso_local i32 @xo_close_container(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
