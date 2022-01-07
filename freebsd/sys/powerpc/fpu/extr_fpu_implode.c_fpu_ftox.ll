; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/fpu/extr_fpu_implode.c_fpu_ftox.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/fpu/extr_fpu_implode.c_fpu_ftox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpemu = type { i32 }
%struct.fpn = type { i32, i32, i32, i32* }

@FP_NMANT = common dso_local global i32 0, align 4
@FPSCR_UX = common dso_local global i32 0, align 4
@FPSCR_VXCVI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fpu_ftox(%struct.fpemu* %0, %struct.fpn* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fpemu*, align 8
  %6 = alloca %struct.fpn*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.fpemu* %0, %struct.fpemu** %5, align 8
  store %struct.fpn* %1, %struct.fpn** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.fpn*, %struct.fpn** %6, align 8
  %12 = getelementptr inbounds %struct.fpn, %struct.fpn* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %9, align 4
  %14 = load %struct.fpn*, %struct.fpn** %6, align 8
  %15 = getelementptr inbounds %struct.fpn, %struct.fpn* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %68 [
    i32 128, label %17
    i32 129, label %20
  ]

17:                                               ; preds = %3
  %18 = load i32*, i32** %7, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  store i32 0, i32* %19, align 4
  store i32 0, i32* %4, align 4
  br label %79

20:                                               ; preds = %3
  %21 = load %struct.fpn*, %struct.fpn** %6, align 8
  %22 = getelementptr inbounds %struct.fpn, %struct.fpn* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %10, align 4
  %24 = icmp sge i32 %23, 64
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %69

26:                                               ; preds = %20
  %27 = load %struct.fpn*, %struct.fpn** %6, align 8
  %28 = load i32, i32* @FP_NMANT, align 4
  %29 = sub nsw i32 %28, 1
  %30 = load i32, i32* %10, align 4
  %31 = sub nsw i32 %29, %30
  %32 = call i32 @fpu_shr(%struct.fpn* %27, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %26
  %35 = load i32, i32* @FPSCR_UX, align 4
  %36 = load %struct.fpemu*, %struct.fpemu** %5, align 8
  %37 = getelementptr inbounds %struct.fpemu, %struct.fpemu* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %34, %26
  %41 = load %struct.fpn*, %struct.fpn** %6, align 8
  %42 = getelementptr inbounds %struct.fpn, %struct.fpn* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 2
  %45 = load i32, i32* %44, align 4
  %46 = shl i32 %45, 32
  %47 = load %struct.fpn*, %struct.fpn** %6, align 8
  %48 = getelementptr inbounds %struct.fpn, %struct.fpn* %47, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 3
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %46, %51
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 0, %54
  %56 = icmp sge i32 %53, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %40
  br label %69

58:                                               ; preds = %40
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32, i32* %8, align 4
  %63 = sub nsw i32 0, %62
  br label %66

64:                                               ; preds = %58
  %65 = load i32, i32* %8, align 4
  br label %66

66:                                               ; preds = %64, %61
  %67 = phi i32 [ %63, %61 ], [ %65, %64 ]
  store i32 %67, i32* %4, align 4
  br label %79

68:                                               ; preds = %3
  br label %69

69:                                               ; preds = %68, %57, %25
  %70 = load i32, i32* @FPSCR_VXCVI, align 4
  %71 = load %struct.fpemu*, %struct.fpemu** %5, align 8
  %72 = getelementptr inbounds %struct.fpemu, %struct.fpemu* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 9223372036854775807, %76
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %69, %66, %17
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @fpu_shr(%struct.fpn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
