; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_mwlhal.c_mwl_hal_getchannelinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_mwlhal.c_mwl_hal_getchannelinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwl_hal = type { i32 }
%struct.TYPE_3__ = type { i64, i64 }
%struct.mwl_hal_priv = type { %struct.TYPE_3__, %struct.TYPE_3__, %struct.TYPE_3__, %struct.TYPE_3__ }

@MWL_CH_20_MHz_WIDTH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwl_hal_getchannelinfo(%struct.mwl_hal* %0, i32 %1, i32 %2, %struct.TYPE_3__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mwl_hal*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__**, align 8
  %10 = alloca %struct.mwl_hal_priv*, align 8
  store %struct.mwl_hal* %0, %struct.mwl_hal** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_3__** %3, %struct.TYPE_3__*** %9, align 8
  %11 = load %struct.mwl_hal*, %struct.mwl_hal** %6, align 8
  %12 = call %struct.mwl_hal_priv* @MWLPRIV(%struct.mwl_hal* %11)
  store %struct.mwl_hal_priv* %12, %struct.mwl_hal_priv** %10, align 8
  %13 = load i32, i32* %7, align 4
  switch i32 %13, label %40 [
    i32 129, label %14
    i32 128, label %27
  ]

14:                                               ; preds = %4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @MWL_CH_20_MHz_WIDTH, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %10, align 8
  %20 = getelementptr inbounds %struct.mwl_hal_priv, %struct.mwl_hal_priv* %19, i32 0, i32 3
  br label %24

21:                                               ; preds = %14
  %22 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %10, align 8
  %23 = getelementptr inbounds %struct.mwl_hal_priv, %struct.mwl_hal_priv* %22, i32 0, i32 2
  br label %24

24:                                               ; preds = %21, %18
  %25 = phi %struct.TYPE_3__* [ %20, %18 ], [ %23, %21 ]
  %26 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %9, align 8
  store %struct.TYPE_3__* %25, %struct.TYPE_3__** %26, align 8
  br label %42

27:                                               ; preds = %4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @MWL_CH_20_MHz_WIDTH, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %10, align 8
  %33 = getelementptr inbounds %struct.mwl_hal_priv, %struct.mwl_hal_priv* %32, i32 0, i32 1
  br label %37

34:                                               ; preds = %27
  %35 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %10, align 8
  %36 = getelementptr inbounds %struct.mwl_hal_priv, %struct.mwl_hal_priv* %35, i32 0, i32 0
  br label %37

37:                                               ; preds = %34, %31
  %38 = phi %struct.TYPE_3__* [ %33, %31 ], [ %36, %34 ]
  %39 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %9, align 8
  store %struct.TYPE_3__* %38, %struct.TYPE_3__** %39, align 8
  br label %42

40:                                               ; preds = %4
  %41 = load i32, i32* @EINVAL, align 4
  store i32 %41, i32* %5, align 4
  br label %57

42:                                               ; preds = %37, %24
  %43 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %9, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %9, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %46, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %42
  %53 = load i32, i32* @EINVAL, align 4
  br label %55

54:                                               ; preds = %42
  br label %55

55:                                               ; preds = %54, %52
  %56 = phi i32 [ %53, %52 ], [ 0, %54 ]
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %55, %40
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local %struct.mwl_hal_priv* @MWLPRIV(%struct.mwl_hal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
