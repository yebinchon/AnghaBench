; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82542.c_e1000_init_hw_82542.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82542.c_e1000_init_hw_82542.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i64, %struct.TYPE_6__, %struct.TYPE_4__, %struct.e1000_mac_info }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { %struct.e1000_dev_spec_82542 }
%struct.e1000_dev_spec_82542 = type { i64 }
%struct.e1000_mac_info = type { i64, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.e1000_hw.0*)* }
%struct.e1000_hw.0 = type opaque

@E1000_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"e1000_init_hw_82542\00", align 1
@E1000_VET = common dso_local global i32 0, align 4
@E1000_REVISION_2 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Disabling MWI on 82542 rev 2.0\0A\00", align 1
@E1000_RCTL = common dso_local global i32 0, align 4
@E1000_RCTL_RST = common dso_local global i32 0, align 4
@CMD_MEM_WRT_INVALIDATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"Zeroing the MTA\0A\00", align 1
@E1000_MTA = common dso_local global i32 0, align 4
@E1000_CTRL = common dso_local global i32 0, align 4
@E1000_CTRL_PRIOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @e1000_init_hw_82542 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_init_hw_82542(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_mac_info*, align 8
  %4 = alloca %struct.e1000_dev_spec_82542*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 3
  store %struct.e1000_mac_info* %9, %struct.e1000_mac_info** %3, align 8
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %11 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store %struct.e1000_dev_spec_82542* %12, %struct.e1000_dev_spec_82542** %4, align 8
  %13 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %13, i32* %5, align 4
  %14 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %16 = load i32, i32* @E1000_VET, align 4
  %17 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %15, i32 %16, i32 0)
  %18 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %19 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %20, align 8
  %22 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %23 = bitcast %struct.e1000_hw* %22 to %struct.e1000_hw.0*
  %24 = call i32 %21(%struct.e1000_hw.0* %23)
  %25 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %26 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @E1000_REVISION_2, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %1
  %31 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %33 = call i32 @e1000_pci_clear_mwi(%struct.e1000_hw* %32)
  %34 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %35 = load i32, i32* @E1000_RCTL, align 4
  %36 = load i32, i32* @E1000_RCTL_RST, align 4
  %37 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %34, i32 %35, i32 %36)
  %38 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %39 = call i32 @E1000_WRITE_FLUSH(%struct.e1000_hw* %38)
  %40 = call i32 @msec_delay(i32 5)
  br label %41

41:                                               ; preds = %30, %1
  %42 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %43 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %44 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @e1000_init_rx_addrs_generic(%struct.e1000_hw* %42, i32 %45)
  %47 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %48 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @E1000_REVISION_2, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %70

52:                                               ; preds = %41
  %53 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %54 = load i32, i32* @E1000_RCTL, align 4
  %55 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %53, i32 %54, i32 0)
  %56 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %57 = call i32 @E1000_WRITE_FLUSH(%struct.e1000_hw* %56)
  %58 = call i32 @msec_delay(i32 1)
  %59 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %60 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @CMD_MEM_WRT_INVALIDATE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %52
  %67 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %68 = call i32 @e1000_pci_set_mwi(%struct.e1000_hw* %67)
  br label %69

69:                                               ; preds = %66, %52
  br label %70

70:                                               ; preds = %69, %41
  %71 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  store i64 0, i64* %7, align 8
  br label %72

72:                                               ; preds = %83, %70
  %73 = load i64, i64* %7, align 8
  %74 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %75 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp slt i64 %73, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %72
  %79 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %80 = load i32, i32* @E1000_MTA, align 4
  %81 = load i64, i64* %7, align 8
  %82 = call i32 @E1000_WRITE_REG_ARRAY(%struct.e1000_hw* %79, i32 %80, i64 %81, i32 0)
  br label %83

83:                                               ; preds = %78
  %84 = load i64, i64* %7, align 8
  %85 = add nsw i64 %84, 1
  store i64 %85, i64* %7, align 8
  br label %72

86:                                               ; preds = %72
  %87 = load %struct.e1000_dev_spec_82542*, %struct.e1000_dev_spec_82542** %4, align 8
  %88 = getelementptr inbounds %struct.e1000_dev_spec_82542, %struct.e1000_dev_spec_82542* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %86
  %92 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %93 = load i32, i32* @E1000_CTRL, align 4
  %94 = call i32 @E1000_READ_REG(%struct.e1000_hw* %92, i32 %93)
  store i32 %94, i32* %6, align 4
  %95 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %96 = load i32, i32* @E1000_CTRL, align 4
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @E1000_CTRL_PRIOR, align 4
  %99 = or i32 %97, %98
  %100 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %95, i32 %96, i32 %99)
  br label %101

101:                                              ; preds = %91, %86
  %102 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %103 = call i32 @e1000_setup_link_82542(%struct.e1000_hw* %102)
  store i32 %103, i32* %5, align 4
  %104 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %105 = call i32 @e1000_clear_hw_cntrs_82542(%struct.e1000_hw* %104)
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @e1000_pci_clear_mwi(%struct.e1000_hw*) #1

declare dso_local i32 @E1000_WRITE_FLUSH(%struct.e1000_hw*) #1

declare dso_local i32 @msec_delay(i32) #1

declare dso_local i32 @e1000_init_rx_addrs_generic(%struct.e1000_hw*, i32) #1

declare dso_local i32 @e1000_pci_set_mwi(%struct.e1000_hw*) #1

declare dso_local i32 @E1000_WRITE_REG_ARRAY(%struct.e1000_hw*, i32, i64, i32) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @e1000_setup_link_82542(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_clear_hw_cntrs_82542(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
