; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_enable_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_enable_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_vsi = type { i32, %struct.TYPE_3__*, %struct.ixl_rx_queue*, %struct.i40e_hw* }
%struct.TYPE_3__ = type { i64 }
%struct.ixl_rx_queue = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.i40e_hw = type { i32 }

@IFLIB_INTR_MSIX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixl_enable_intr(%struct.ixl_vsi* %0) #0 {
  %2 = alloca %struct.ixl_vsi*, align 8
  %3 = alloca %struct.i40e_hw*, align 8
  %4 = alloca %struct.ixl_rx_queue*, align 8
  %5 = alloca i32, align 4
  store %struct.ixl_vsi* %0, %struct.ixl_vsi** %2, align 8
  %6 = load %struct.ixl_vsi*, %struct.ixl_vsi** %2, align 8
  %7 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %6, i32 0, i32 3
  %8 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  store %struct.i40e_hw* %8, %struct.i40e_hw** %3, align 8
  %9 = load %struct.ixl_vsi*, %struct.ixl_vsi** %2, align 8
  %10 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %9, i32 0, i32 2
  %11 = load %struct.ixl_rx_queue*, %struct.ixl_rx_queue** %10, align 8
  store %struct.ixl_rx_queue* %11, %struct.ixl_rx_queue** %4, align 8
  %12 = load %struct.ixl_vsi*, %struct.ixl_vsi** %2, align 8
  %13 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @IFLIB_INTR_MSIX, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %39

19:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %33, %19
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.ixl_vsi*, %struct.ixl_vsi** %2, align 8
  %23 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %20
  %27 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %28 = load %struct.ixl_rx_queue*, %struct.ixl_rx_queue** %4, align 8
  %29 = getelementptr inbounds %struct.ixl_rx_queue, %struct.ixl_rx_queue* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ixl_enable_queue(%struct.i40e_hw* %27, i32 %31)
  br label %33

33:                                               ; preds = %26
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  %36 = load %struct.ixl_rx_queue*, %struct.ixl_rx_queue** %4, align 8
  %37 = getelementptr inbounds %struct.ixl_rx_queue, %struct.ixl_rx_queue* %36, i32 1
  store %struct.ixl_rx_queue* %37, %struct.ixl_rx_queue** %4, align 8
  br label %20

38:                                               ; preds = %20
  br label %42

39:                                               ; preds = %1
  %40 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %41 = call i32 @ixl_enable_intr0(%struct.i40e_hw* %40)
  br label %42

42:                                               ; preds = %39, %38
  ret void
}

declare dso_local i32 @ixl_enable_queue(%struct.i40e_hw*, i32) #1

declare dso_local i32 @ixl_enable_intr0(%struct.i40e_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
