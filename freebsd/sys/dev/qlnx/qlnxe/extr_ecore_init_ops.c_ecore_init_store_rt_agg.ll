; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_init_ops.c_ecore_init_store_rt_agg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_init_ops.c_ecore_init_store_rt_agg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32* }

@RUNTIME_ARRAY_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [82 x i8] c"Avoid storing values in rt_data at indices %u-%u since RUNTIME_ARRAY_SIZE is %u!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ecore_init_store_rt_agg(%struct.ecore_hwfn* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %8, align 4
  %12 = add nsw i32 %10, %11
  %13 = sub nsw i32 %12, 1
  %14 = load i32, i32* @RUNTIME_ARRAY_SIZE, align 4
  %15 = icmp sge i32 %13, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %4
  %17 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %8, align 4
  %21 = add nsw i32 %19, %20
  %22 = sub nsw i32 %21, 1
  %23 = load i32, i32* @RUNTIME_ARRAY_SIZE, align 4
  %24 = call i32 @DP_ERR(%struct.ecore_hwfn* %17, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %22, i32 %23)
  br label %60

25:                                               ; preds = %4
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %57, %25
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = udiv i64 %30, 4
  %32 = icmp ult i64 %28, %31
  br i1 %32, label %33, label %60

33:                                               ; preds = %26
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %40 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %43, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %42, i64 %46
  store i32 %38, i32* %47, align 4
  %48 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %49 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %52, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %51, i64 %55
  store i32 1, i32* %56, align 4
  br label %57

57:                                               ; preds = %33
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %9, align 4
  br label %26

60:                                               ; preds = %16, %26
  ret void
}

declare dso_local i32 @DP_ERR(%struct.ecore_hwfn*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
