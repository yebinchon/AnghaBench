; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_dbg_bus_set_nw_output.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_dbg_bus_set_nw_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.ecore_hwfn = type { %struct.dbg_tools_data }
%struct.dbg_tools_data = type { i64, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i32 }
%struct.ecore_ptt = type { i32 }

@ECORE_MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [163 x i8] c"dbg_bus_set_nw_output: port_id = %d, dest_addr_lo32 = 0x%x, dest_addr_hi16 = 0x%x, data_limit_size_kb = %d, send_to_other_engine = %d, rcv_from_other_engine = %d\0A\00", align 1
@DBG_BUS_TARGET_ID_INT_BUF = common dso_local global i64 0, align 8
@DBG_STATUS_OUTPUT_ALREADY_SET = common dso_local global i32 0, align 4
@DBG_BUS_STATE_READY = common dso_local global i64 0, align 8
@DBG_STATUS_DBG_BLOCK_NOT_RESET = common dso_local global i32 0, align 4
@s_chip_defs = common dso_local global %struct.TYPE_6__* null, align 8
@DBG_STATUS_INVALID_ARGS = common dso_local global i32 0, align 4
@DBG_BUS_TARGET_ID_NIG = common dso_local global i32 0, align 4
@DBG_REG_OUTPUT_ENABLE = common dso_local global i32 0, align 4
@TARGET_EN_MASK_NIG = common dso_local global i32 0, align 4
@DBG_REG_DEBUG_TARGET = common dso_local global i32 0, align 4
@DBG_REG_OTHER_ENGINE_MODE_BB_K2 = common dso_local global i32 0, align 4
@DBG_BUS_OTHER_ENGINE_MODE_CROSS_ENGINE_TX = common dso_local global i32 0, align 4
@NIG_REG_DEBUG_PORT = common dso_local global i32 0, align 4
@DBG_BUS_OTHER_ENGINE_MODE_CROSS_ENGINE_RX = common dso_local global i32 0, align 4
@DBG_REG_ETHERNET_HDR_WIDTH = common dso_local global i32 0, align 4
@DBG_REG_ETHERNET_HDR_7 = common dso_local global i32 0, align 4
@DBG_REG_ETHERNET_HDR_6 = common dso_local global i32 0, align 4
@SRC_MAC_ADDR_LO16 = common dso_local global i64 0, align 8
@DBG_REG_ETHERNET_HDR_5 = common dso_local global i32 0, align 4
@SRC_MAC_ADDR_HI32 = common dso_local global i32 0, align 4
@DBG_REG_ETHERNET_HDR_4 = common dso_local global i32 0, align 4
@ETH_TYPE = common dso_local global i64 0, align 8
@DBG_REG_TARGET_PACKET_SIZE = common dso_local global i32 0, align 4
@NIG_PKT_SIZE_IN_CHUNKS = common dso_local global i32 0, align 4
@DBG_REG_NIG_DATA_LIMIT_SIZE = common dso_local global i32 0, align 4
@CHUNK_SIZE_IN_BYTES = common dso_local global i32 0, align 4
@DBG_STATUS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_dbg_bus_set_nw_output(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i64 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.ecore_hwfn*, align 8
  %11 = alloca %struct.ecore_ptt*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.dbg_tools_data*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %10, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %11, align 8
  store i64 %2, i64* %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %19 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %10, align 8
  %20 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %19, i32 0, i32 0
  store %struct.dbg_tools_data* %20, %struct.dbg_tools_data** %18, align 8
  %21 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %10, align 8
  %22 = load i32, i32* @ECORE_MSG_DEBUG, align 4
  %23 = load i64, i64* %12, align 8
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* %14, align 4
  %26 = load i32, i32* %15, align 4
  %27 = load i32, i32* %16, align 4
  %28 = load i32, i32* %17, align 4
  %29 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %21, i32 %22, i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str, i64 0, i64 0), i64 %23, i32 %24, i32 %25, i32 %26, i32 %27, i32 %28)
  %30 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %18, align 8
  %31 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @DBG_BUS_TARGET_ID_INT_BUF, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %8
  %37 = load i32, i32* @DBG_STATUS_OUTPUT_ALREADY_SET, align 4
  store i32 %37, i32* %9, align 4
  br label %165

38:                                               ; preds = %8
  %39 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %18, align 8
  %40 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @DBG_BUS_STATE_READY, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* @DBG_STATUS_DBG_BLOCK_NOT_RESET, align 4
  store i32 %46, i32* %9, align 4
  br label %165

47:                                               ; preds = %38
  %48 = load i64, i64* %12, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** @s_chip_defs, align 8
  %50 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %18, align 8
  %51 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %18, align 8
  %57 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp sge i64 %48, %61
  br i1 %62, label %69, label %63

63:                                               ; preds = %47
  %64 = load i32, i32* %16, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = load i32, i32* %17, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %66, %47
  %70 = load i32, i32* @DBG_STATUS_INVALID_ARGS, align 4
  store i32 %70, i32* %9, align 4
  br label %165

71:                                               ; preds = %66, %63
  %72 = load i32, i32* @DBG_BUS_TARGET_ID_NIG, align 4
  %73 = sext i32 %72 to i64
  %74 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %18, align 8
  %75 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  store i64 %73, i64* %76, align 8
  %77 = load i32, i32* %17, align 4
  %78 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %18, align 8
  %79 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 2
  store i32 %77, i32* %80, align 8
  %81 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %10, align 8
  %82 = load %struct.ecore_ptt*, %struct.ecore_ptt** %11, align 8
  %83 = load i32, i32* @DBG_REG_OUTPUT_ENABLE, align 4
  %84 = load i32, i32* @TARGET_EN_MASK_NIG, align 4
  %85 = call i32 @ecore_wr(%struct.ecore_hwfn* %81, %struct.ecore_ptt* %82, i32 %83, i32 %84)
  %86 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %10, align 8
  %87 = load %struct.ecore_ptt*, %struct.ecore_ptt** %11, align 8
  %88 = load i32, i32* @DBG_REG_DEBUG_TARGET, align 4
  %89 = load i32, i32* @DBG_BUS_TARGET_ID_NIG, align 4
  %90 = call i32 @ecore_wr(%struct.ecore_hwfn* %86, %struct.ecore_ptt* %87, i32 %88, i32 %89)
  %91 = load i32, i32* %16, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %71
  %94 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %10, align 8
  %95 = load %struct.ecore_ptt*, %struct.ecore_ptt** %11, align 8
  %96 = load i32, i32* @DBG_REG_OTHER_ENGINE_MODE_BB_K2, align 4
  %97 = load i32, i32* @DBG_BUS_OTHER_ENGINE_MODE_CROSS_ENGINE_TX, align 4
  %98 = call i32 @ecore_wr(%struct.ecore_hwfn* %94, %struct.ecore_ptt* %95, i32 %96, i32 %97)
  br label %106

99:                                               ; preds = %71
  %100 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %10, align 8
  %101 = load %struct.ecore_ptt*, %struct.ecore_ptt** %11, align 8
  %102 = load i32, i32* @NIG_REG_DEBUG_PORT, align 4
  %103 = load i64, i64* %12, align 8
  %104 = trunc i64 %103 to i32
  %105 = call i32 @ecore_wr(%struct.ecore_hwfn* %100, %struct.ecore_ptt* %101, i32 %102, i32 %104)
  br label %106

106:                                              ; preds = %99, %93
  %107 = load i32, i32* %17, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %106
  %110 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %10, align 8
  %111 = load %struct.ecore_ptt*, %struct.ecore_ptt** %11, align 8
  %112 = load i32, i32* @DBG_REG_OTHER_ENGINE_MODE_BB_K2, align 4
  %113 = load i32, i32* @DBG_BUS_OTHER_ENGINE_MODE_CROSS_ENGINE_RX, align 4
  %114 = call i32 @ecore_wr(%struct.ecore_hwfn* %110, %struct.ecore_ptt* %111, i32 %112, i32 %113)
  br label %163

115:                                              ; preds = %106
  %116 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %10, align 8
  %117 = load %struct.ecore_ptt*, %struct.ecore_ptt** %11, align 8
  %118 = load i32, i32* @DBG_REG_ETHERNET_HDR_WIDTH, align 4
  %119 = call i32 @ecore_wr(%struct.ecore_hwfn* %116, %struct.ecore_ptt* %117, i32 %118, i32 0)
  %120 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %10, align 8
  %121 = load %struct.ecore_ptt*, %struct.ecore_ptt** %11, align 8
  %122 = load i32, i32* @DBG_REG_ETHERNET_HDR_7, align 4
  %123 = load i32, i32* %13, align 4
  %124 = call i32 @ecore_wr(%struct.ecore_hwfn* %120, %struct.ecore_ptt* %121, i32 %122, i32 %123)
  %125 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %10, align 8
  %126 = load %struct.ecore_ptt*, %struct.ecore_ptt** %11, align 8
  %127 = load i32, i32* @DBG_REG_ETHERNET_HDR_6, align 4
  %128 = load i64, i64* @SRC_MAC_ADDR_LO16, align 8
  %129 = trunc i64 %128 to i32
  %130 = load i32, i32* %14, align 4
  %131 = shl i32 %130, 16
  %132 = or i32 %129, %131
  %133 = call i32 @ecore_wr(%struct.ecore_hwfn* %125, %struct.ecore_ptt* %126, i32 %127, i32 %132)
  %134 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %10, align 8
  %135 = load %struct.ecore_ptt*, %struct.ecore_ptt** %11, align 8
  %136 = load i32, i32* @DBG_REG_ETHERNET_HDR_5, align 4
  %137 = load i32, i32* @SRC_MAC_ADDR_HI32, align 4
  %138 = call i32 @ecore_wr(%struct.ecore_hwfn* %134, %struct.ecore_ptt* %135, i32 %136, i32 %137)
  %139 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %10, align 8
  %140 = load %struct.ecore_ptt*, %struct.ecore_ptt** %11, align 8
  %141 = load i32, i32* @DBG_REG_ETHERNET_HDR_4, align 4
  %142 = load i64, i64* @ETH_TYPE, align 8
  %143 = trunc i64 %142 to i32
  %144 = shl i32 %143, 16
  %145 = call i32 @ecore_wr(%struct.ecore_hwfn* %139, %struct.ecore_ptt* %140, i32 %141, i32 %144)
  %146 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %10, align 8
  %147 = load %struct.ecore_ptt*, %struct.ecore_ptt** %11, align 8
  %148 = load i32, i32* @DBG_REG_TARGET_PACKET_SIZE, align 4
  %149 = load i32, i32* @NIG_PKT_SIZE_IN_CHUNKS, align 4
  %150 = call i32 @ecore_wr(%struct.ecore_hwfn* %146, %struct.ecore_ptt* %147, i32 %148, i32 %149)
  %151 = load i32, i32* %15, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %162

153:                                              ; preds = %115
  %154 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %10, align 8
  %155 = load %struct.ecore_ptt*, %struct.ecore_ptt** %11, align 8
  %156 = load i32, i32* @DBG_REG_NIG_DATA_LIMIT_SIZE, align 4
  %157 = load i32, i32* %15, align 4
  %158 = mul nsw i32 %157, 1024
  %159 = load i32, i32* @CHUNK_SIZE_IN_BYTES, align 4
  %160 = sdiv i32 %158, %159
  %161 = call i32 @ecore_wr(%struct.ecore_hwfn* %154, %struct.ecore_ptt* %155, i32 %156, i32 %160)
  br label %162

162:                                              ; preds = %153, %115
  br label %163

163:                                              ; preds = %162, %109
  %164 = load i32, i32* @DBG_STATUS_OK, align 4
  store i32 %164, i32* %9, align 4
  br label %165

165:                                              ; preds = %163, %69, %45, %36
  %166 = load i32, i32* %9, align 4
  ret i32 %166
}

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ecore_wr(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
