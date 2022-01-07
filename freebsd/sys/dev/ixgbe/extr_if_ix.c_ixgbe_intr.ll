; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32, i32, %struct.ixgbe_hw, %struct.ix_rx_queue* }
%struct.ixgbe_hw = type { i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.ix_rx_queue = type { i32 }

@IXGBE_EICR = common dso_local global i32 0, align 4
@FILTER_HANDLED = common dso_local global i32 0, align 4
@IXGBE_DEV_ID_82598AT = common dso_local global i64 0, align 8
@IXGBE_EICR_GPI_SDP1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"\0ACRITICAL: FAN FAILURE!! REPLACE IMMEDIATELY!!\0A\00", align 1
@IXGBE_EIMS = common dso_local global i32 0, align 4
@IXGBE_EICR_LSC = common dso_local global i32 0, align 4
@IXGBE_EIMC = common dso_local global i32 0, align 4
@IXGBE_EIMC_LSC = common dso_local global i32 0, align 4
@ixgbe_mac_X540 = common dso_local global i64 0, align 8
@IXGBE_EICR_GPI_SDP0_X540 = common dso_local global i32 0, align 4
@IXGBE_REQUEST_TASK_MOD = common dso_local global i32 0, align 4
@ixgbe_mac_82599EB = common dso_local global i64 0, align 8
@IXGBE_REQUEST_TASK_MSF = common dso_local global i32 0, align 4
@ixgbe_phy_x550em_ext_t = common dso_local global i64 0, align 8
@IXGBE_REQUEST_TASK_PHY = common dso_local global i32 0, align 4
@FILTER_SCHEDULE_THREAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_intr(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.ix_rx_queue*, align 8
  %6 = alloca %struct.ixgbe_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.adapter*
  store %struct.adapter* %11, %struct.adapter** %4, align 8
  %12 = load %struct.adapter*, %struct.adapter** %4, align 8
  %13 = getelementptr inbounds %struct.adapter, %struct.adapter* %12, i32 0, i32 4
  %14 = load %struct.ix_rx_queue*, %struct.ix_rx_queue** %13, align 8
  store %struct.ix_rx_queue* %14, %struct.ix_rx_queue** %5, align 8
  %15 = load %struct.adapter*, %struct.adapter** %4, align 8
  %16 = getelementptr inbounds %struct.adapter, %struct.adapter* %15, i32 0, i32 3
  store %struct.ixgbe_hw* %16, %struct.ixgbe_hw** %6, align 8
  %17 = load %struct.adapter*, %struct.adapter** %4, align 8
  %18 = getelementptr inbounds %struct.adapter, %struct.adapter* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %7, align 4
  %20 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %21 = load i32, i32* @IXGBE_EICR, align 4
  %22 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %20, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load %struct.ix_rx_queue*, %struct.ix_rx_queue** %5, align 8
  %24 = getelementptr inbounds %struct.ix_rx_queue, %struct.ix_rx_queue* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %1
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @ixgbe_if_enable_intr(i32 %30)
  %32 = load i32, i32* @FILTER_HANDLED, align 4
  store i32 %32, i32* %2, align 4
  br label %142

33:                                               ; preds = %1
  %34 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %35 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @IXGBE_DEV_ID_82598AT, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %54

39:                                               ; preds = %33
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @IXGBE_EICR_GPI_SDP1, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %39
  %45 = load %struct.adapter*, %struct.adapter** %4, align 8
  %46 = getelementptr inbounds %struct.adapter, %struct.adapter* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @device_printf(i32 %47, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %49 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %50 = load i32, i32* @IXGBE_EIMS, align 4
  %51 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %52 = call i32 @IXGBE_EICR_GPI_SDP1_BY_MAC(%struct.ixgbe_hw* %51)
  %53 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %49, i32 %50, i32 %52)
  br label %54

54:                                               ; preds = %44, %39, %33
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @IXGBE_EICR_LSC, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %54
  %60 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %61 = load i32, i32* @IXGBE_EIMC, align 4
  %62 = load i32, i32* @IXGBE_EIMC_LSC, align 4
  %63 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %60, i32 %61, i32 %62)
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @iflib_admin_intr_deferred(i32 %64)
  br label %66

66:                                               ; preds = %59, %54
  %67 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %68 = call i64 @ixgbe_is_sfp(%struct.ixgbe_hw* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %122

70:                                               ; preds = %66
  %71 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %72 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @ixgbe_mac_X540, align 8
  %76 = icmp sge i64 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = load i32, i32* @IXGBE_EICR_GPI_SDP0_X540, align 4
  store i32 %78, i32* %9, align 4
  br label %82

79:                                               ; preds = %70
  %80 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %81 = call i32 @IXGBE_EICR_GPI_SDP2_BY_MAC(%struct.ixgbe_hw* %80)
  store i32 %81, i32* %9, align 4
  br label %82

82:                                               ; preds = %79, %77
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %9, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %82
  %88 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %89 = load i32, i32* @IXGBE_EICR, align 4
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %88, i32 %89, i32 %90)
  %92 = load i32, i32* @IXGBE_REQUEST_TASK_MOD, align 4
  %93 = load %struct.adapter*, %struct.adapter** %4, align 8
  %94 = getelementptr inbounds %struct.adapter, %struct.adapter* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 8
  br label %97

97:                                               ; preds = %87, %82
  %98 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %99 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @ixgbe_mac_82599EB, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %121

104:                                              ; preds = %97
  %105 = load i32, i32* %8, align 4
  %106 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %107 = call i32 @IXGBE_EICR_GPI_SDP1_BY_MAC(%struct.ixgbe_hw* %106)
  %108 = and i32 %105, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %121

110:                                              ; preds = %104
  %111 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %112 = load i32, i32* @IXGBE_EICR, align 4
  %113 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %114 = call i32 @IXGBE_EICR_GPI_SDP1_BY_MAC(%struct.ixgbe_hw* %113)
  %115 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %111, i32 %112, i32 %114)
  %116 = load i32, i32* @IXGBE_REQUEST_TASK_MSF, align 4
  %117 = load %struct.adapter*, %struct.adapter** %4, align 8
  %118 = getelementptr inbounds %struct.adapter, %struct.adapter* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = or i32 %119, %116
  store i32 %120, i32* %118, align 8
  br label %121

121:                                              ; preds = %110, %104, %97
  br label %122

122:                                              ; preds = %121, %66
  %123 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %124 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @ixgbe_phy_x550em_ext_t, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %140

129:                                              ; preds = %122
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* @IXGBE_EICR_GPI_SDP0_X540, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %129
  %135 = load i32, i32* @IXGBE_REQUEST_TASK_PHY, align 4
  %136 = load %struct.adapter*, %struct.adapter** %4, align 8
  %137 = getelementptr inbounds %struct.adapter, %struct.adapter* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = or i32 %138, %135
  store i32 %139, i32* %137, align 8
  br label %140

140:                                              ; preds = %134, %129, %122
  %141 = load i32, i32* @FILTER_SCHEDULE_THREAD, align 4
  store i32 %141, i32* %2, align 4
  br label %142

142:                                              ; preds = %140, %29
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @ixgbe_if_enable_intr(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_EICR_GPI_SDP1_BY_MAC(%struct.ixgbe_hw*) #1

declare dso_local i32 @iflib_admin_intr_deferred(i32) #1

declare dso_local i64 @ixgbe_is_sfp(%struct.ixgbe_hw*) #1

declare dso_local i32 @IXGBE_EICR_GPI_SDP2_BY_MAC(%struct.ixgbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
