; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_fixed_ifmedia.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_fixed_ifmedia.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port_info = type { i64 }

@FW_PORT_TYPE_BT_SGMII = common dso_local global i64 0, align 8
@FW_PORT_TYPE_BT_XFI = common dso_local global i64 0, align 8
@FW_PORT_TYPE_BT_XAUI = common dso_local global i64 0, align 8
@FW_PORT_TYPE_KX4 = common dso_local global i64 0, align 8
@FW_PORT_TYPE_KX = common dso_local global i64 0, align 8
@FW_PORT_TYPE_KR = common dso_local global i64 0, align 8
@FW_PORT_TYPE_BP_AP = common dso_local global i64 0, align 8
@FW_PORT_TYPE_BP4_AP = common dso_local global i64 0, align 8
@FW_PORT_TYPE_BP40_BA = common dso_local global i64 0, align 8
@FW_PORT_TYPE_KR4_100G = common dso_local global i64 0, align 8
@FW_PORT_TYPE_KR_SFP28 = common dso_local global i64 0, align 8
@FW_PORT_TYPE_KR_XLAUI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.port_info*)* @fixed_ifmedia to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fixed_ifmedia(%struct.port_info* %0) #0 {
  %2 = alloca %struct.port_info*, align 8
  store %struct.port_info* %0, %struct.port_info** %2, align 8
  %3 = load %struct.port_info*, %struct.port_info** %2, align 8
  %4 = getelementptr inbounds %struct.port_info, %struct.port_info* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @FW_PORT_TYPE_BT_SGMII, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %74, label %8

8:                                                ; preds = %1
  %9 = load %struct.port_info*, %struct.port_info** %2, align 8
  %10 = getelementptr inbounds %struct.port_info, %struct.port_info* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @FW_PORT_TYPE_BT_XFI, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %74, label %14

14:                                               ; preds = %8
  %15 = load %struct.port_info*, %struct.port_info** %2, align 8
  %16 = getelementptr inbounds %struct.port_info, %struct.port_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @FW_PORT_TYPE_BT_XAUI, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %74, label %20

20:                                               ; preds = %14
  %21 = load %struct.port_info*, %struct.port_info** %2, align 8
  %22 = getelementptr inbounds %struct.port_info, %struct.port_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @FW_PORT_TYPE_KX4, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %74, label %26

26:                                               ; preds = %20
  %27 = load %struct.port_info*, %struct.port_info** %2, align 8
  %28 = getelementptr inbounds %struct.port_info, %struct.port_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @FW_PORT_TYPE_KX, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %74, label %32

32:                                               ; preds = %26
  %33 = load %struct.port_info*, %struct.port_info** %2, align 8
  %34 = getelementptr inbounds %struct.port_info, %struct.port_info* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @FW_PORT_TYPE_KR, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %74, label %38

38:                                               ; preds = %32
  %39 = load %struct.port_info*, %struct.port_info** %2, align 8
  %40 = getelementptr inbounds %struct.port_info, %struct.port_info* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @FW_PORT_TYPE_BP_AP, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %74, label %44

44:                                               ; preds = %38
  %45 = load %struct.port_info*, %struct.port_info** %2, align 8
  %46 = getelementptr inbounds %struct.port_info, %struct.port_info* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @FW_PORT_TYPE_BP4_AP, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %74, label %50

50:                                               ; preds = %44
  %51 = load %struct.port_info*, %struct.port_info** %2, align 8
  %52 = getelementptr inbounds %struct.port_info, %struct.port_info* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @FW_PORT_TYPE_BP40_BA, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %74, label %56

56:                                               ; preds = %50
  %57 = load %struct.port_info*, %struct.port_info** %2, align 8
  %58 = getelementptr inbounds %struct.port_info, %struct.port_info* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @FW_PORT_TYPE_KR4_100G, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %74, label %62

62:                                               ; preds = %56
  %63 = load %struct.port_info*, %struct.port_info** %2, align 8
  %64 = getelementptr inbounds %struct.port_info, %struct.port_info* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @FW_PORT_TYPE_KR_SFP28, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %74, label %68

68:                                               ; preds = %62
  %69 = load %struct.port_info*, %struct.port_info** %2, align 8
  %70 = getelementptr inbounds %struct.port_info, %struct.port_info* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @FW_PORT_TYPE_KR_XLAUI, align 8
  %73 = icmp eq i64 %71, %72
  br label %74

74:                                               ; preds = %68, %62, %56, %50, %44, %38, %32, %26, %20, %14, %8, %1
  %75 = phi i1 [ true, %62 ], [ true, %56 ], [ true, %50 ], [ true, %44 ], [ true, %38 ], [ true, %32 ], [ true, %26 ], [ true, %20 ], [ true, %14 ], [ true, %8 ], [ true, %1 ], [ %73, %68 ]
  %76 = zext i1 %75 to i32
  ret i32 %76
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
