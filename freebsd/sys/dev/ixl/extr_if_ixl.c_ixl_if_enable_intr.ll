; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_ixl.c_ixl_if_enable_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_ixl.c_ixl_if_enable_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { %struct.ixl_vsi }
%struct.ixl_vsi = type { i32, %struct.ixl_rx_queue*, %struct.i40e_hw* }
%struct.ixl_rx_queue = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_hw = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ixl_if_enable_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixl_if_enable_intr(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ixl_pf*, align 8
  %4 = alloca %struct.ixl_vsi*, align 8
  %5 = alloca %struct.i40e_hw*, align 8
  %6 = alloca %struct.ixl_rx_queue*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call %struct.ixl_pf* @iflib_get_softc(i32 %8)
  store %struct.ixl_pf* %9, %struct.ixl_pf** %3, align 8
  %10 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %11 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %10, i32 0, i32 0
  store %struct.ixl_vsi* %11, %struct.ixl_vsi** %4, align 8
  %12 = load %struct.ixl_vsi*, %struct.ixl_vsi** %4, align 8
  %13 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %12, i32 0, i32 2
  %14 = load %struct.i40e_hw*, %struct.i40e_hw** %13, align 8
  store %struct.i40e_hw* %14, %struct.i40e_hw** %5, align 8
  %15 = load %struct.ixl_vsi*, %struct.ixl_vsi** %4, align 8
  %16 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %15, i32 0, i32 1
  %17 = load %struct.ixl_rx_queue*, %struct.ixl_rx_queue** %16, align 8
  store %struct.ixl_rx_queue* %17, %struct.ixl_rx_queue** %6, align 8
  %18 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %19 = call i32 @ixl_enable_intr0(%struct.i40e_hw* %18)
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %33, %1
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.ixl_vsi*, %struct.ixl_vsi** %4, align 8
  %23 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %20
  %27 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %28 = load %struct.ixl_rx_queue*, %struct.ixl_rx_queue** %6, align 8
  %29 = getelementptr inbounds %struct.ixl_rx_queue, %struct.ixl_rx_queue* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ixl_enable_queue(%struct.i40e_hw* %27, i32 %31)
  br label %33

33:                                               ; preds = %26
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %7, align 4
  %36 = load %struct.ixl_rx_queue*, %struct.ixl_rx_queue** %6, align 8
  %37 = getelementptr inbounds %struct.ixl_rx_queue, %struct.ixl_rx_queue* %36, i32 1
  store %struct.ixl_rx_queue* %37, %struct.ixl_rx_queue** %6, align 8
  br label %20

38:                                               ; preds = %20
  ret void
}

declare dso_local %struct.ixl_pf* @iflib_get_softc(i32) #1

declare dso_local i32 @ixl_enable_intr0(%struct.i40e_hw*) #1

declare dso_local i32 @ixl_enable_queue(%struct.i40e_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
