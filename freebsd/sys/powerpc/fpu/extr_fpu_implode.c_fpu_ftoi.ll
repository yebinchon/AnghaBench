; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/fpu/extr_fpu_implode.c_fpu_ftoi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/fpu/extr_fpu_implode.c_fpu_ftoi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpemu = type { i32 }
%struct.fpn = type { i32, i32, i32, i32* }

@FP_NMANT = common dso_local global i32 0, align 4
@FPSCR_UX = common dso_local global i32 0, align 4
@FPSCR_VXCVI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fpu_ftoi(%struct.fpemu* %0, %struct.fpn* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fpemu*, align 8
  %5 = alloca %struct.fpn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fpemu* %0, %struct.fpemu** %4, align 8
  store %struct.fpn* %1, %struct.fpn** %5, align 8
  %9 = load %struct.fpn*, %struct.fpn** %5, align 8
  %10 = getelementptr inbounds %struct.fpn, %struct.fpn* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %7, align 4
  %12 = load %struct.fpn*, %struct.fpn** %5, align 8
  %13 = getelementptr inbounds %struct.fpn, %struct.fpn* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %57 [
    i32 128, label %15
    i32 129, label %16
  ]

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %66

16:                                               ; preds = %2
  %17 = load %struct.fpn*, %struct.fpn** %5, align 8
  %18 = getelementptr inbounds %struct.fpn, %struct.fpn* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %8, align 4
  %20 = icmp sge i32 %19, 32
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %58

22:                                               ; preds = %16
  %23 = load %struct.fpn*, %struct.fpn** %5, align 8
  %24 = load i32, i32* @FP_NMANT, align 4
  %25 = sub nsw i32 %24, 1
  %26 = load i32, i32* %8, align 4
  %27 = sub nsw i32 %25, %26
  %28 = call i32 @fpu_shr(%struct.fpn* %23, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %22
  %31 = load i32, i32* @FPSCR_UX, align 4
  %32 = load %struct.fpemu*, %struct.fpemu** %4, align 8
  %33 = getelementptr inbounds %struct.fpemu, %struct.fpemu* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %30, %22
  %37 = load %struct.fpn*, %struct.fpn** %5, align 8
  %38 = getelementptr inbounds %struct.fpn, %struct.fpn* %37, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 3
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 -2147483648, %43
  %45 = icmp sge i32 %42, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  br label %58

47:                                               ; preds = %36
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, i32* %6, align 4
  %52 = sub nsw i32 0, %51
  br label %55

53:                                               ; preds = %47
  %54 = load i32, i32* %6, align 4
  br label %55

55:                                               ; preds = %53, %50
  %56 = phi i32 [ %52, %50 ], [ %54, %53 ]
  store i32 %56, i32* %3, align 4
  br label %66

57:                                               ; preds = %2
  br label %58

58:                                               ; preds = %57, %46, %21
  %59 = load i32, i32* @FPSCR_VXCVI, align 4
  %60 = load %struct.fpemu*, %struct.fpemu** %4, align 8
  %61 = getelementptr inbounds %struct.fpemu, %struct.fpemu* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 2147483647, %64
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %58, %55, %15
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @fpu_shr(%struct.fpn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
