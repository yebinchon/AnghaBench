; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_if_update_admin_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_if_update_admin_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i64, i32, i32, i32, i32, i64 }

@FALSE = common dso_local global i64 0, align 8
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"Link is up %d Gbps %s \0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Full Duplex\00", align 1
@TRUE = common dso_local global i64 0, align 8
@LINK_STATE_UP = common dso_local global i32 0, align 4
@IXGBE_FEATURE_SRIOV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"Link is Down\0A\00", align 1
@LINK_STATE_DOWN = common dso_local global i32 0, align 4
@IXGBE_REQUEST_TASK_MOD = common dso_local global i32 0, align 4
@IXGBE_REQUEST_TASK_MSF = common dso_local global i32 0, align 4
@IXGBE_REQUEST_TASK_MBX = common dso_local global i32 0, align 4
@IXGBE_REQUEST_TASK_FDIR = common dso_local global i32 0, align 4
@IXGBE_REQUEST_TASK_PHY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ixgbe_if_update_admin_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_if_update_admin_status(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.adapter* @iflib_get_softc(i32 %5)
  store %struct.adapter* %6, %struct.adapter** %3, align 8
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @iflib_get_dev(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load %struct.adapter*, %struct.adapter** %3, align 8
  %10 = getelementptr inbounds %struct.adapter, %struct.adapter* %9, i32 0, i32 5
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %55

13:                                               ; preds = %1
  %14 = load %struct.adapter*, %struct.adapter** %3, align 8
  %15 = getelementptr inbounds %struct.adapter, %struct.adapter* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @FALSE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %54

19:                                               ; preds = %13
  %20 = load i64, i64* @bootverbose, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.adapter*, %struct.adapter** %3, align 8
  %25 = getelementptr inbounds %struct.adapter, %struct.adapter* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 128
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 10, i32 1
  %30 = call i32 (i32, i8*, ...) @device_printf(i32 %23, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %22, %19
  %32 = load i64, i64* @TRUE, align 8
  %33 = load %struct.adapter*, %struct.adapter** %3, align 8
  %34 = getelementptr inbounds %struct.adapter, %struct.adapter* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.adapter*, %struct.adapter** %3, align 8
  %36 = getelementptr inbounds %struct.adapter, %struct.adapter* %35, i32 0, i32 4
  %37 = call i32 @ixgbe_fc_enable(i32* %36)
  %38 = load %struct.adapter*, %struct.adapter** %3, align 8
  %39 = call i32 @ixgbe_config_dmac(%struct.adapter* %38)
  %40 = load i32, i32* %2, align 4
  %41 = load i32, i32* @LINK_STATE_UP, align 4
  %42 = call i32 @IF_Gbps(i32 10)
  %43 = call i32 @iflib_link_state_change(i32 %40, i32 %41, i32 %42)
  %44 = load %struct.adapter*, %struct.adapter** %3, align 8
  %45 = getelementptr inbounds %struct.adapter, %struct.adapter* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @IXGBE_FEATURE_SRIOV, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %31
  %51 = load %struct.adapter*, %struct.adapter** %3, align 8
  %52 = call i32 @ixgbe_ping_all_vfs(%struct.adapter* %51)
  br label %53

53:                                               ; preds = %50, %31
  br label %54

54:                                               ; preds = %53, %13
  br label %85

55:                                               ; preds = %1
  %56 = load %struct.adapter*, %struct.adapter** %3, align 8
  %57 = getelementptr inbounds %struct.adapter, %struct.adapter* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @TRUE, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %84

61:                                               ; preds = %55
  %62 = load i64, i64* @bootverbose, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32, i32* %4, align 4
  %66 = call i32 (i32, i8*, ...) @device_printf(i32 %65, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %67

67:                                               ; preds = %64, %61
  %68 = load i32, i32* %2, align 4
  %69 = load i32, i32* @LINK_STATE_DOWN, align 4
  %70 = call i32 @iflib_link_state_change(i32 %68, i32 %69, i32 0)
  %71 = load i64, i64* @FALSE, align 8
  %72 = load %struct.adapter*, %struct.adapter** %3, align 8
  %73 = getelementptr inbounds %struct.adapter, %struct.adapter* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  %74 = load %struct.adapter*, %struct.adapter** %3, align 8
  %75 = getelementptr inbounds %struct.adapter, %struct.adapter* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @IXGBE_FEATURE_SRIOV, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %67
  %81 = load %struct.adapter*, %struct.adapter** %3, align 8
  %82 = call i32 @ixgbe_ping_all_vfs(%struct.adapter* %81)
  br label %83

83:                                               ; preds = %80, %67
  br label %84

84:                                               ; preds = %83, %55
  br label %85

85:                                               ; preds = %84, %54
  %86 = load %struct.adapter*, %struct.adapter** %3, align 8
  %87 = getelementptr inbounds %struct.adapter, %struct.adapter* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @IXGBE_REQUEST_TASK_MOD, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %85
  %93 = load i32, i32* %2, align 4
  %94 = call i32 @ixgbe_handle_mod(i32 %93)
  br label %95

95:                                               ; preds = %92, %85
  %96 = load %struct.adapter*, %struct.adapter** %3, align 8
  %97 = getelementptr inbounds %struct.adapter, %struct.adapter* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @IXGBE_REQUEST_TASK_MSF, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %95
  %103 = load i32, i32* %2, align 4
  %104 = call i32 @ixgbe_handle_msf(i32 %103)
  br label %105

105:                                              ; preds = %102, %95
  %106 = load %struct.adapter*, %struct.adapter** %3, align 8
  %107 = getelementptr inbounds %struct.adapter, %struct.adapter* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @IXGBE_REQUEST_TASK_MBX, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %105
  %113 = load i32, i32* %2, align 4
  %114 = call i32 @ixgbe_handle_mbx(i32 %113)
  br label %115

115:                                              ; preds = %112, %105
  %116 = load %struct.adapter*, %struct.adapter** %3, align 8
  %117 = getelementptr inbounds %struct.adapter, %struct.adapter* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @IXGBE_REQUEST_TASK_FDIR, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %115
  %123 = load i32, i32* %2, align 4
  %124 = call i32 @ixgbe_reinit_fdir(i32 %123)
  br label %125

125:                                              ; preds = %122, %115
  %126 = load %struct.adapter*, %struct.adapter** %3, align 8
  %127 = getelementptr inbounds %struct.adapter, %struct.adapter* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @IXGBE_REQUEST_TASK_PHY, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %125
  %133 = load i32, i32* %2, align 4
  %134 = call i32 @ixgbe_handle_phy(i32 %133)
  br label %135

135:                                              ; preds = %132, %125
  %136 = load %struct.adapter*, %struct.adapter** %3, align 8
  %137 = getelementptr inbounds %struct.adapter, %struct.adapter* %136, i32 0, i32 3
  store i32 0, i32* %137, align 8
  %138 = load %struct.adapter*, %struct.adapter** %3, align 8
  %139 = call i32 @ixgbe_update_stats_counters(%struct.adapter* %138)
  ret void
}

declare dso_local %struct.adapter* @iflib_get_softc(i32) #1

declare dso_local i32 @iflib_get_dev(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @ixgbe_fc_enable(i32*) #1

declare dso_local i32 @ixgbe_config_dmac(%struct.adapter*) #1

declare dso_local i32 @iflib_link_state_change(i32, i32, i32) #1

declare dso_local i32 @IF_Gbps(i32) #1

declare dso_local i32 @ixgbe_ping_all_vfs(%struct.adapter*) #1

declare dso_local i32 @ixgbe_handle_mod(i32) #1

declare dso_local i32 @ixgbe_handle_msf(i32) #1

declare dso_local i32 @ixgbe_handle_mbx(i32) #1

declare dso_local i32 @ixgbe_reinit_fdir(i32) #1

declare dso_local i32 @ixgbe_handle_phy(i32) #1

declare dso_local i32 @ixgbe_update_stats_counters(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
