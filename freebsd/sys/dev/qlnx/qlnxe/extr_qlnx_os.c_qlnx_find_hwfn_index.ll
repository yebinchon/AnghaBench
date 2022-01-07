; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_find_hwfn_index.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_find_hwfn_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.ecore_dev* }
%struct.ecore_dev = type { i32, %struct.ecore_hwfn* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*)* @qlnx_find_hwfn_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlnx_find_hwfn_index(%struct.ecore_hwfn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ecore_dev*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  %6 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %7 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %6, i32 0, i32 0
  %8 = load %struct.ecore_dev*, %struct.ecore_dev** %7, align 8
  store %struct.ecore_dev* %8, %struct.ecore_dev** %5, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %26, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.ecore_dev*, %struct.ecore_dev** %5, align 8
  %12 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %29

15:                                               ; preds = %9
  %16 = load %struct.ecore_dev*, %struct.ecore_dev** %5, align 8
  %17 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %16, i32 0, i32 1
  %18 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %18, i64 %20
  %22 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %23 = icmp eq %struct.ecore_hwfn* %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  br label %29

25:                                               ; preds = %15
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %9

29:                                               ; preds = %24, %9
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.ecore_dev*, %struct.ecore_dev** %5, align 8
  %32 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp sge i32 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 -1, i32* %2, align 4
  br label %38

36:                                               ; preds = %29
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %36, %35
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
