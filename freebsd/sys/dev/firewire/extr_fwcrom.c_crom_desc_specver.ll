; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwcrom.c_crom_desc_specver.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwcrom.c_crom_desc_specver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CSRVAL_ANSIT10 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"SBP-2\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"unknown ANSIT10\00", align 1
@CSRVAL_1394TA = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"AV/C\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"CAL\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"EHS\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"HAVi\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"1394 Cam 1.04\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"1394 Cam 1.20\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"1394 Cam 1.30\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"1394 Direct print\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"Industrial & Instrument\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"unknown 1394TA\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i8*, i32)* @crom_desc_specver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crom_desc_specver(i64 %0, i64 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i8* null, i8** %9, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @CSRVAL_ANSIT10, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %16, label %13

13:                                               ; preds = %4
  %14 = load i64, i64* %5, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %13, %4
  %17 = load i64, i64* %6, align 8
  switch i64 %17, label %19 [
    i64 137, label %18
  ]

18:                                               ; preds = %16
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  br label %24

19:                                               ; preds = %16
  %20 = load i64, i64* %5, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %23

23:                                               ; preds = %22, %19
  br label %24

24:                                               ; preds = %23, %18
  br label %25

25:                                               ; preds = %24, %13
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* @CSRVAL_1394TA, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = load i64, i64* %5, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %29, %25
  %33 = load i64, i64* %6, align 8
  switch i64 %33, label %43 [
    i64 136, label %34
    i64 135, label %35
    i64 130, label %36
    i64 129, label %37
    i64 134, label %38
    i64 133, label %39
    i64 132, label %40
    i64 131, label %41
    i64 128, label %42
  ]

34:                                               ; preds = %32
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  br label %48

35:                                               ; preds = %32
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  br label %48

36:                                               ; preds = %32
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %9, align 8
  br label %48

37:                                               ; preds = %32
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %9, align 8
  br label %48

38:                                               ; preds = %32
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8** %9, align 8
  br label %48

39:                                               ; preds = %32
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8** %9, align 8
  br label %48

40:                                               ; preds = %32
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8** %9, align 8
  br label %48

41:                                               ; preds = %32
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i8** %9, align 8
  br label %48

42:                                               ; preds = %32
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i8** %9, align 8
  br label %48

43:                                               ; preds = %32
  %44 = load i64, i64* %5, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i8** %9, align 8
  br label %47

47:                                               ; preds = %46, %43
  br label %48

48:                                               ; preds = %47, %42, %41, %40, %39, %38, %37, %36, %35, %34
  br label %49

49:                                               ; preds = %48, %29
  %50 = load i8*, i8** %9, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = load i8*, i8** %7, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load i8*, i8** %9, align 8
  %56 = call i32 @snprintf(i8* %53, i32 %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* %55)
  br label %57

57:                                               ; preds = %52, %49
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
