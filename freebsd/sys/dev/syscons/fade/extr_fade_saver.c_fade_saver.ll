; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/syscons/fade/extr_fade_saver.c_fade_saver.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/syscons/fade/extr_fade_saver.c_fade_saver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@fade_saver.count = internal global i32 0, align 4
@palette = common dso_local global i32* null, align 8
@V_DISPLAY_BLANK = common dso_local global i32 0, align 4
@V_DISPLAY_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32)* @fade_saver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fade_saver(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [768 x i32], align 16
  %6 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %72

9:                                                ; preds = %2
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @ISPALAVAIL(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %67

15:                                               ; preds = %9
  %16 = load i32, i32* @fade_saver.count, align 4
  %17 = icmp sle i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %20 = load i32*, i32** @palette, align 8
  %21 = call i32 @vidd_save_palette(%struct.TYPE_6__* %19, i32* %20)
  br label %22

22:                                               ; preds = %18, %15
  %23 = load i32, i32* @fade_saver.count, align 4
  %24 = icmp slt i32 %23, 256
  br i1 %24, label %25, label %66

25:                                               ; preds = %22
  %26 = getelementptr inbounds [768 x i32], [768 x i32]* %5, i64 0, i64 2
  store i32 0, i32* %26, align 8
  %27 = getelementptr inbounds [768 x i32], [768 x i32]* %5, i64 0, i64 1
  store i32 0, i32* %27, align 4
  %28 = getelementptr inbounds [768 x i32], [768 x i32]* %5, i64 0, i64 0
  store i32 0, i32* %28, align 16
  store i32 3, i32* %6, align 4
  br label %29

29:                                               ; preds = %57, %25
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 768
  br i1 %31, label %32, label %60

32:                                               ; preds = %29
  %33 = load i32*, i32** @palette, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @fade_saver.count, align 4
  %39 = sub nsw i32 %37, %38
  %40 = icmp sgt i32 %39, 60
  br i1 %40, label %41, label %52

41:                                               ; preds = %32
  %42 = load i32*, i32** @palette, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @fade_saver.count, align 4
  %48 = sub nsw i32 %46, %47
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [768 x i32], [768 x i32]* %5, i64 0, i64 %50
  store i32 %48, i32* %51, align 4
  br label %56

52:                                               ; preds = %32
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [768 x i32], [768 x i32]* %5, i64 0, i64 %54
  store i32 60, i32* %55, align 4
  br label %56

56:                                               ; preds = %52, %41
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %29

60:                                               ; preds = %29
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %62 = getelementptr inbounds [768 x i32], [768 x i32]* %5, i64 0, i64 0
  %63 = call i32 @vidd_load_palette(%struct.TYPE_6__* %61, i32* %62)
  %64 = load i32, i32* @fade_saver.count, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* @fade_saver.count, align 4
  br label %66

66:                                               ; preds = %60, %22
  br label %71

67:                                               ; preds = %9
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %69 = load i32, i32* @V_DISPLAY_BLANK, align 4
  %70 = call i32 @vidd_blank_display(%struct.TYPE_6__* %68, i32 %69)
  br label %71

71:                                               ; preds = %67, %66
  br label %87

72:                                               ; preds = %2
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @ISPALAVAIL(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %80 = load i32*, i32** @palette, align 8
  %81 = call i32 @vidd_load_palette(%struct.TYPE_6__* %79, i32* %80)
  store i32 0, i32* @fade_saver.count, align 4
  br label %86

82:                                               ; preds = %72
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %84 = load i32, i32* @V_DISPLAY_ON, align 4
  %85 = call i32 @vidd_blank_display(%struct.TYPE_6__* %83, i32 %84)
  br label %86

86:                                               ; preds = %82, %78
  br label %87

87:                                               ; preds = %86, %71
  ret i32 0
}

declare dso_local i64 @ISPALAVAIL(i32) #1

declare dso_local i32 @vidd_save_palette(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @vidd_load_palette(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @vidd_blank_display(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
