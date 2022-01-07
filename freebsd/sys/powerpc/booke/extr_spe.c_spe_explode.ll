; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_spe.c_spe_explode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_spe.c_spe_explode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpemu = type { i32 }
%struct.fpn = type { i32, i32*, i32, i64 }

@FPC_QNAN = common dso_local global i32 0, align 4
@FP_QUIETBIT = common dso_local global i32 0, align 4
@FPSCR_VXSNAN = common dso_local global i32 0, align 4
@FPC_SNAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fpemu*, %struct.fpn*, i32, i32, i32)* @spe_explode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spe_explode(%struct.fpemu* %0, %struct.fpn* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.fpemu*, align 8
  %7 = alloca %struct.fpn*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.fpemu* %0, %struct.fpemu** %6, align 8
  store %struct.fpn* %1, %struct.fpn** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %9, align 4
  %13 = ashr i32 %12, 31
  %14 = load %struct.fpn*, %struct.fpn** %7, align 8
  %15 = getelementptr inbounds %struct.fpn, %struct.fpn* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.fpn*, %struct.fpn** %7, align 8
  %17 = getelementptr inbounds %struct.fpn, %struct.fpn* %16, i32 0, i32 3
  store i64 0, i64* %17, align 8
  %18 = load i32, i32* %8, align 4
  switch i32 %18, label %28 [
    i32 128, label %19
    i32 129, label %23
  ]

19:                                               ; preds = %5
  %20 = load %struct.fpn*, %struct.fpn** %7, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @fpu_stof(%struct.fpn* %20, i32 %21)
  store i32 %22, i32* %11, align 4
  br label %28

23:                                               ; preds = %5
  %24 = load %struct.fpn*, %struct.fpn** %7, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @fpu_dtof(%struct.fpn* %24, i32 %25, i32 %26)
  store i32 %27, i32* %11, align 4
  br label %28

28:                                               ; preds = %5, %23, %19
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @FPC_QNAN, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %53

32:                                               ; preds = %28
  %33 = load %struct.fpn*, %struct.fpn** %7, align 8
  %34 = getelementptr inbounds %struct.fpn, %struct.fpn* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @FP_QUIETBIT, align 4
  %39 = and i32 %37, %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %32
  %42 = load i32, i32* @FP_QUIETBIT, align 4
  %43 = load %struct.fpn*, %struct.fpn** %7, align 8
  %44 = getelementptr inbounds %struct.fpn, %struct.fpn* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %42
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* @FPSCR_VXSNAN, align 4
  %50 = load %struct.fpemu*, %struct.fpemu** %6, align 8
  %51 = getelementptr inbounds %struct.fpemu, %struct.fpemu* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @FPC_SNAN, align 4
  store i32 %52, i32* %11, align 4
  br label %53

53:                                               ; preds = %41, %32, %28
  %54 = load i32, i32* %11, align 4
  %55 = load %struct.fpn*, %struct.fpn** %7, align 8
  %56 = getelementptr inbounds %struct.fpn, %struct.fpn* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  ret i32 0
}

declare dso_local i32 @fpu_stof(%struct.fpn*, i32) #1

declare dso_local i32 @fpu_dtof(%struct.fpn*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
