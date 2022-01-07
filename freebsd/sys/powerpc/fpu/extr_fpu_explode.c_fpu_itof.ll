; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/fpu/extr_fpu_explode.c_fpu_itof.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/fpu/extr_fpu_explode.c_fpu_itof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpn = type { i64*, i32 }

@FPC_ZERO = common dso_local global i32 0, align 4
@FP_LG = common dso_local global i32 0, align 4
@FPC_NUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fpu_itof(%struct.fpn* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fpn*, align 8
  %5 = alloca i64, align 8
  store %struct.fpn* %0, %struct.fpn** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, i32* @FPC_ZERO, align 4
  store i32 %9, i32* %3, align 4
  br label %43

10:                                               ; preds = %2
  %11 = load i32, i32* @FP_LG, align 4
  %12 = load %struct.fpn*, %struct.fpn** %4, align 8
  %13 = getelementptr inbounds %struct.fpn, %struct.fpn* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 8
  %14 = load i64, i64* %5, align 8
  %15 = trunc i64 %14 to i32
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = load i64, i64* %5, align 8
  %19 = sub nsw i64 0, %18
  br label %22

20:                                               ; preds = %10
  %21 = load i64, i64* %5, align 8
  br label %22

22:                                               ; preds = %20, %17
  %23 = phi i64 [ %19, %17 ], [ %21, %20 ]
  %24 = load %struct.fpn*, %struct.fpn** %4, align 8
  %25 = getelementptr inbounds %struct.fpn, %struct.fpn* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  store i64 %23, i64* %27, align 8
  %28 = load %struct.fpn*, %struct.fpn** %4, align 8
  %29 = getelementptr inbounds %struct.fpn, %struct.fpn* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 1
  store i64 0, i64* %31, align 8
  %32 = load %struct.fpn*, %struct.fpn** %4, align 8
  %33 = getelementptr inbounds %struct.fpn, %struct.fpn* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 2
  store i64 0, i64* %35, align 8
  %36 = load %struct.fpn*, %struct.fpn** %4, align 8
  %37 = getelementptr inbounds %struct.fpn, %struct.fpn* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 3
  store i64 0, i64* %39, align 8
  %40 = load %struct.fpn*, %struct.fpn** %4, align 8
  %41 = call i32 @fpu_norm(%struct.fpn* %40)
  %42 = load i32, i32* @FPC_NUM, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %22, %8
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @fpu_norm(%struct.fpn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
