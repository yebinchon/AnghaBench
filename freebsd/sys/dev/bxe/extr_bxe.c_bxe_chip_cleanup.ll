; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_chip_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_chip_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ecore_mcast_ramrod_params = type { i32*, i32* }

@ECORE_ETH_MAC = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to delete all ETH MACs (%d)\0A\00", align 1
@ECORE_UC_LIST_MAC = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to delete UC MACs list (%d)\0A\00", align 1
@NIG_REG_LLH0_FUNC_EN = common dso_local global i64 0, align 8
@ECORE_FILTER_RX_MODE_PENDING = common dso_local global i32 0, align 4
@ECORE_FILTER_RX_MODE_SCHED = common dso_local global i32 0, align 4
@ECORE_MCAST_CMD_DEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Failed to send DEL MCAST command (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"bxe_func_wait_started failed (%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"Common slow path ramrods got stuck!(%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Function stop failed!(%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Hardware reset failed(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*, i32, i32)* @bxe_chip_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_chip_cleanup(%struct.bxe_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bxe_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ecore_mcast_ramrod_params, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %13 = call i32 @SC_PORT(%struct.bxe_softc* %12)
  store i32 %13, i32* %7, align 4
  %14 = bitcast %struct.ecore_mcast_ramrod_params* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 16, i1 false)
  store i32 0, i32* %11, align 4
  %15 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %16 = call i32 @bxe_drain_tx_queues(%struct.bxe_softc* %15)
  %17 = call i32 @DELAY(i32 1000)
  %18 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %19 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %20 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %19, i32 0, i32 3
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* @ECORE_ETH_MAC, align 4
  %25 = load i32, i32* @FALSE, align 4
  %26 = call i32 @bxe_del_all_macs(%struct.bxe_softc* %18, i32* %23, i32 %24, i32 %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %3
  %30 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @BLOGE(%struct.bxe_softc* %30, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %29, %3
  %34 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %35 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %36 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %35, i32 0, i32 3
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* @ECORE_UC_LIST_MAC, align 4
  %41 = load i32, i32* @TRUE, align 4
  %42 = call i32 @bxe_del_all_macs(%struct.bxe_softc* %34, i32* %39, i32 %40, i32 %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %33
  %46 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @BLOGE(%struct.bxe_softc* %46, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %45, %33
  %50 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %51 = call i32 @CHIP_IS_E1(%struct.bxe_softc* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %49
  %54 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %55 = load i64, i64* @NIG_REG_LLH0_FUNC_EN, align 8
  %56 = load i32, i32* %7, align 4
  %57 = mul nsw i32 %56, 8
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %55, %58
  %60 = call i32 @REG_WR(%struct.bxe_softc* %54, i64 %59, i32 0)
  br label %61

61:                                               ; preds = %53, %49
  %62 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %63 = call i32 @BXE_MCAST_LOCK(%struct.bxe_softc* %62)
  %64 = load i32, i32* @ECORE_FILTER_RX_MODE_PENDING, align 4
  %65 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %66 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %65, i32 0, i32 2
  %67 = call i64 @bxe_test_bit(i32 %64, i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %61
  %70 = load i32, i32* @ECORE_FILTER_RX_MODE_SCHED, align 4
  %71 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %72 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %71, i32 0, i32 2
  %73 = call i32 @bxe_set_bit(i32 %70, i32* %72)
  br label %77

74:                                               ; preds = %61
  %75 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %76 = call i32 @bxe_set_storm_rx_mode(%struct.bxe_softc* %75)
  br label %77

77:                                               ; preds = %74, %69
  %78 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %79 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.ecore_mcast_ramrod_params, %struct.ecore_mcast_ramrod_params* %8, i32 0, i32 0
  store i32* %79, i32** %80, align 8
  %81 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %82 = load i32, i32* @ECORE_MCAST_CMD_DEL, align 4
  %83 = call i32 @ecore_config_mcast(%struct.bxe_softc* %81, %struct.ecore_mcast_ramrod_params* %8, i32 %82)
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %11, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %77
  %87 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @BLOGE(%struct.bxe_softc* %87, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %86, %77
  %91 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %92 = call i32 @BXE_MCAST_UNLOCK(%struct.bxe_softc* %91)
  %93 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %94 = load i32, i32* %5, align 4
  %95 = call i32 @bxe_send_unload_req(%struct.bxe_softc* %93, i32 %94)
  store i32 %95, i32* %9, align 4
  %96 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %97 = call i32 @bxe_func_wait_started(%struct.bxe_softc* %96)
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %11, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %90
  %101 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %102 = load i32, i32* %11, align 4
  %103 = call i32 @BLOGE(%struct.bxe_softc* %101, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %102)
  br label %104

104:                                              ; preds = %100, %90
  store i32 0, i32* %10, align 4
  br label %105

105:                                              ; preds = %118, %104
  %106 = load i32, i32* %10, align 4
  %107 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %108 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp slt i32 %106, %109
  br i1 %110, label %111, label %121

111:                                              ; preds = %105
  %112 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %113 = load i32, i32* %10, align 4
  %114 = call i64 @bxe_stop_queue(%struct.bxe_softc* %112, i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %111
  br label %130

117:                                              ; preds = %111
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %10, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %10, align 4
  br label %105

121:                                              ; preds = %105
  %122 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %123 = call i32 @bxe_wait_sp_comp(%struct.bxe_softc* %122, i32 -1)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %129, label %125

125:                                              ; preds = %121
  %126 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %127 = load i32, i32* %11, align 4
  %128 = call i32 @BLOGE(%struct.bxe_softc* %126, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %127)
  br label %129

129:                                              ; preds = %125, %121
  br label %130

130:                                              ; preds = %129, %116
  %131 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %132 = call i32 @bxe_func_stop(%struct.bxe_softc* %131)
  store i32 %132, i32* %11, align 4
  %133 = load i32, i32* %11, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %130
  %136 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %137 = load i32, i32* %11, align 4
  %138 = call i32 @BLOGE(%struct.bxe_softc* %136, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %137)
  br label %139

139:                                              ; preds = %135, %130
  %140 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %141 = load i32, i32* @TRUE, align 4
  %142 = call i32 @bxe_int_disable_sync(%struct.bxe_softc* %140, i32 %141)
  %143 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %144 = call i32 @bxe_interrupt_detach(%struct.bxe_softc* %143)
  %145 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %146 = load i32, i32* %9, align 4
  %147 = call i32 @bxe_reset_hw(%struct.bxe_softc* %145, i32 %146)
  store i32 %147, i32* %11, align 4
  %148 = load i32, i32* %11, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %139
  %151 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %152 = load i32, i32* %11, align 4
  %153 = call i32 @BLOGE(%struct.bxe_softc* %151, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %152)
  br label %154

154:                                              ; preds = %150, %139
  %155 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %156 = load i32, i32* %6, align 4
  %157 = call i32 @bxe_send_unload_done(%struct.bxe_softc* %155, i32 %156)
  ret void
}

declare dso_local i32 @SC_PORT(%struct.bxe_softc*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @bxe_drain_tx_queues(%struct.bxe_softc*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @bxe_del_all_macs(%struct.bxe_softc*, i32*, i32, i32) #1

declare dso_local i32 @BLOGE(%struct.bxe_softc*, i8*, i32) #1

declare dso_local i32 @CHIP_IS_E1(%struct.bxe_softc*) #1

declare dso_local i32 @REG_WR(%struct.bxe_softc*, i64, i32) #1

declare dso_local i32 @BXE_MCAST_LOCK(%struct.bxe_softc*) #1

declare dso_local i64 @bxe_test_bit(i32, i32*) #1

declare dso_local i32 @bxe_set_bit(i32, i32*) #1

declare dso_local i32 @bxe_set_storm_rx_mode(%struct.bxe_softc*) #1

declare dso_local i32 @ecore_config_mcast(%struct.bxe_softc*, %struct.ecore_mcast_ramrod_params*, i32) #1

declare dso_local i32 @BXE_MCAST_UNLOCK(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_send_unload_req(%struct.bxe_softc*, i32) #1

declare dso_local i32 @bxe_func_wait_started(%struct.bxe_softc*) #1

declare dso_local i64 @bxe_stop_queue(%struct.bxe_softc*, i32) #1

declare dso_local i32 @bxe_wait_sp_comp(%struct.bxe_softc*, i32) #1

declare dso_local i32 @bxe_func_stop(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_int_disable_sync(%struct.bxe_softc*, i32) #1

declare dso_local i32 @bxe_interrupt_detach(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_reset_hw(%struct.bxe_softc*, i32) #1

declare dso_local i32 @bxe_send_unload_done(%struct.bxe_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
