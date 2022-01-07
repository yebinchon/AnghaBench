; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_is_bt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_is_bt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port_info = type { i64 }

@FW_PORT_TYPE_BT_SGMII = common dso_local global i64 0, align 8
@FW_PORT_TYPE_BT_XFI = common dso_local global i64 0, align 8
@FW_PORT_TYPE_BT_XAUI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.port_info*)* @is_bt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_bt(%struct.port_info* %0) #0 {
  %2 = alloca %struct.port_info*, align 8
  store %struct.port_info* %0, %struct.port_info** %2, align 8
  %3 = load %struct.port_info*, %struct.port_info** %2, align 8
  %4 = getelementptr inbounds %struct.port_info, %struct.port_info* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @FW_PORT_TYPE_BT_SGMII, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %20, label %8

8:                                                ; preds = %1
  %9 = load %struct.port_info*, %struct.port_info** %2, align 8
  %10 = getelementptr inbounds %struct.port_info, %struct.port_info* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @FW_PORT_TYPE_BT_XFI, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %20, label %14

14:                                               ; preds = %8
  %15 = load %struct.port_info*, %struct.port_info** %2, align 8
  %16 = getelementptr inbounds %struct.port_info, %struct.port_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @FW_PORT_TYPE_BT_XAUI, align 8
  %19 = icmp eq i64 %17, %18
  br label %20

20:                                               ; preds = %14, %8, %1
  %21 = phi i1 [ true, %8 ], [ true, %1 ], [ %19, %14 ]
  %22 = zext i1 %21 to i32
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
