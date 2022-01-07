; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_phy_selection.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_phy_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elink_params = type { i32 }

@PORT_HW_CFG_PHY_SELECTION_HARDWARE_DEFAULT = common dso_local global i32 0, align 4
@PORT_HW_CFG_PHY_SWAPPED_ENABLED = common dso_local global i32 0, align 4
@PORT_HW_CFG_PHY_SELECTION_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @elink_phy_selection(%struct.elink_params* %0) #0 {
  %2 = alloca %struct.elink_params*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.elink_params* %0, %struct.elink_params** %2, align 8
  %6 = load i32, i32* @PORT_HW_CFG_PHY_SELECTION_HARDWARE_DEFAULT, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.elink_params*, %struct.elink_params** %2, align 8
  %8 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @PORT_HW_CFG_PHY_SWAPPED_ENABLED, align 4
  %11 = and i32 %9, %10
  store i32 %11, i32* %3, align 4
  %12 = load %struct.elink_params*, %struct.elink_params** %2, align 8
  %13 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @PORT_HW_CFG_PHY_SELECTION_MASK, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  switch i32 %20, label %25 [
    i32 130, label %21
    i32 128, label %22
    i32 129, label %23
    i32 131, label %24
  ]

21:                                               ; preds = %19
  store i32 128, i32* %5, align 4
  br label %25

22:                                               ; preds = %19
  store i32 130, i32* %5, align 4
  br label %25

23:                                               ; preds = %19
  store i32 131, i32* %5, align 4
  br label %25

24:                                               ; preds = %19
  store i32 129, i32* %5, align 4
  br label %25

25:                                               ; preds = %19, %24, %23, %22, %21
  br label %28

26:                                               ; preds = %1
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %26, %25
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
