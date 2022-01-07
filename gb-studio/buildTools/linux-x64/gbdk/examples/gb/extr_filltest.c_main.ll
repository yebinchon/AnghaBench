; ModuleID = '/home/carl/AnghaBench/gb-studio/buildTools/linux-x64/gbdk/examples/gb/extr_filltest.c_main.c'
source_filename = "/home/carl/AnghaBench/gb-studio/buildTools/linux-x64/gbdk/examples/gb/extr_filltest.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SOLID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@LTGREY = common dso_local global i32 0, align 4
@WHITE = common dso_local global i32 0, align 4
@M_FILL = common dso_local global i32 0, align 4
@BLACK = common dso_local global i32 0, align 4
@M_NOFILL = common dso_local global i32 0, align 4
@DKGREY = common dso_local global i32 0, align 4
@XOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %39, %0
  %7 = load i32, i32* %1, align 4
  %8 = icmp sle i32 %7, 15
  br i1 %8, label %9, label %42

9:                                                ; preds = %6
  store i32 0, i32* %2, align 4
  br label %10

10:                                               ; preds = %35, %9
  %11 = load i32, i32* %2, align 4
  %12 = icmp sle i32 %11, 15
  br i1 %12, label %13, label %38

13:                                               ; preds = %10
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* %1, align 4
  %16 = call i32 @gotogxy(i32 %14, i32 %15)
  %17 = load i32, i32* %1, align 4
  %18 = sdiv i32 %17, 4
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %2, align 4
  %20 = sdiv i32 %19, 4
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %13
  %25 = load i32, i32* %5, align 4
  %26 = sub nsw i32 3, %25
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %24, %13
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @SOLID, align 4
  %31 = call i32 @color(i32 %28, i32 %29, i32 %30)
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  %34 = call i32 @gprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %35

35:                                               ; preds = %27
  %36 = load i32, i32* %2, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %2, align 4
  br label %10

38:                                               ; preds = %10
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %1, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %1, align 4
  br label %6

42:                                               ; preds = %6
  %43 = load i32, i32* @LTGREY, align 4
  %44 = load i32, i32* @WHITE, align 4
  %45 = load i32, i32* @SOLID, align 4
  %46 = call i32 @color(i32 %43, i32 %44, i32 %45)
  %47 = load i32, i32* @M_FILL, align 4
  %48 = call i32 @circle(i32 140, i32 20, i32 15, i32 %47)
  %49 = load i32, i32* @BLACK, align 4
  %50 = load i32, i32* @WHITE, align 4
  %51 = load i32, i32* @SOLID, align 4
  %52 = call i32 @color(i32 %49, i32 %50, i32 %51)
  %53 = load i32, i32* @M_NOFILL, align 4
  %54 = call i32 @circle(i32 140, i32 20, i32 10, i32 %53)
  %55 = load i32, i32* @DKGREY, align 4
  %56 = load i32, i32* @WHITE, align 4
  %57 = load i32, i32* @XOR, align 4
  %58 = call i32 @color(i32 %55, i32 %56, i32 %57)
  %59 = load i32, i32* @M_FILL, align 4
  %60 = call i32 @circle(i32 120, i32 40, i32 30, i32 %59)
  %61 = call i32 @line(i32 0, i32 0, i32 159, i32 143)
  %62 = load i32, i32* @BLACK, align 4
  %63 = load i32, i32* @LTGREY, align 4
  %64 = load i32, i32* @SOLID, align 4
  %65 = call i32 @color(i32 %62, i32 %63, i32 %64)
  %66 = load i32, i32* @M_NOFILL, align 4
  %67 = call i32 @box(i32 0, i32 130, i32 40, i32 143, i32 %66)
  %68 = load i32, i32* @M_FILL, align 4
  %69 = call i32 @box(i32 50, i32 130, i32 90, i32 143, i32 %68)
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %105, %42
  %71 = load i32, i32* %3, align 4
  %72 = icmp sle i32 %71, 143
  br i1 %72, label %73, label %108

73:                                               ; preds = %70
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %100, %73
  %75 = load i32, i32* %2, align 4
  %76 = icmp sle i32 %75, 142
  br i1 %76, label %77, label %103

77:                                               ; preds = %74
  store i32 0, i32* %1, align 4
  br label %78

78:                                               ; preds = %92, %77
  %79 = load i32, i32* %1, align 4
  %80 = icmp sle i32 %79, 159
  br i1 %80, label %81, label %95

81:                                               ; preds = %78
  %82 = load i32, i32* %1, align 4
  %83 = load i32, i32* %2, align 4
  %84 = add nsw i32 %83, 1
  %85 = call i32 @getpix(i32 %82, i32 %84)
  %86 = load i32, i32* @WHITE, align 4
  %87 = load i32, i32* @SOLID, align 4
  %88 = call i32 @color(i32 %85, i32 %86, i32 %87)
  %89 = load i32, i32* %1, align 4
  %90 = load i32, i32* %2, align 4
  %91 = call i32 @plot_point(i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %81
  %93 = load i32, i32* %1, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %1, align 4
  br label %78

95:                                               ; preds = %78
  %96 = load i32, i32* @WHITE, align 4
  %97 = load i32, i32* @WHITE, align 4
  %98 = load i32, i32* @SOLID, align 4
  %99 = call i32 @color(i32 %96, i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %95
  %101 = load i32, i32* %2, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %2, align 4
  br label %74

103:                                              ; preds = %74
  %104 = call i32 @line(i32 0, i32 143, i32 159, i32 143)
  br label %105

105:                                              ; preds = %103
  %106 = load i32, i32* %3, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %3, align 4
  br label %70

108:                                              ; preds = %70
  ret void
}

declare dso_local i32 @gotogxy(i32, i32) #1

declare dso_local i32 @color(i32, i32, i32) #1

declare dso_local i32 @gprintf(i8*, i32) #1

declare dso_local i32 @circle(i32, i32, i32, i32) #1

declare dso_local i32 @line(i32, i32, i32, i32) #1

declare dso_local i32 @box(i32, i32, i32, i32, i32) #1

declare dso_local i32 @getpix(i32, i32) #1

declare dso_local i32 @plot_point(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
