; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_iov.c_ixl_vf_map_vsi_queue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_iov.c_ixl_vf_map_vsi_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }
%struct.ixl_vf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@I40E_VSILAN_QTABLE_QINDEX_1_SHIFT = common dso_local global i32 0, align 4
@I40E_VSILAN_QTABLE_QINDEX_0_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_hw*, %struct.ixl_vf*, i32, i32)* @ixl_vf_map_vsi_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixl_vf_map_vsi_queue(%struct.i40e_hw* %0, %struct.ixl_vf* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.i40e_hw*, align 8
  %6 = alloca %struct.ixl_vf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %5, align 8
  store %struct.ixl_vf* %1, %struct.ixl_vf** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  %13 = sdiv i32 %12, 2
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %7, align 4
  %15 = srem i32 %14, 2
  %16 = load i32, i32* @I40E_VSILAN_QTABLE_QINDEX_1_SHIFT, align 4
  %17 = mul nsw i32 %15, %16
  store i32 %17, i32* %11, align 4
  %18 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %19 = load i32, i32* %10, align 4
  %20 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %21 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @I40E_VSILAN_QTABLE(i32 %19, i32 %23)
  %25 = call i32 @i40e_read_rx_ctl(%struct.i40e_hw* %18, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* @I40E_VSILAN_QTABLE_QINDEX_0_MASK, align 4
  %27 = load i32, i32* %11, align 4
  %28 = shl i32 %26, %27
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %9, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %11, align 4
  %34 = shl i32 %32, %33
  %35 = load i32, i32* %9, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %9, align 4
  %37 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %40 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @I40E_VSILAN_QTABLE(i32 %38, i32 %42)
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @i40e_write_rx_ctl(%struct.i40e_hw* %37, i32 %43, i32 %44)
  ret void
}

declare dso_local i32 @i40e_read_rx_ctl(%struct.i40e_hw*, i32) #1

declare dso_local i32 @I40E_VSILAN_QTABLE(i32, i32) #1

declare dso_local i32 @i40e_write_rx_ctl(%struct.i40e_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
