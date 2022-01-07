; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_dbg_bus_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_dbg_bus_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.dbg_tools_data }
%struct.dbg_tools_data = type { %struct.dbg_bus_data }
%struct.dbg_bus_data = type { i64, i64, %struct.dbg_bus_storm_data*, %struct.TYPE_4__*, i64, i64, i64, i64, %struct.TYPE_3__ }
%struct.dbg_bus_storm_data = type { i32, i64, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ecore_ptt = type { i32 }

@DBG_STATUS_OK = common dso_local global i32 0, align 4
@ECORE_MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"dbg_bus_dump: dump_buf = 0x%p, buf_size_in_dwords = %d\0A\00", align 1
@DBG_BUS_STATE_RECORDING = common dso_local global i64 0, align 8
@DBG_BUS_STATE_STOPPED = common dso_local global i64 0, align 8
@DBG_STATUS_RECORDING_NOT_STARTED = common dso_local global i32 0, align 4
@DBG_STATUS_DUMP_BUF_TOO_SMALL = common dso_local global i32 0, align 4
@DBG_BUS_TARGET_ID_PCI = common dso_local global i64 0, align 8
@DBG_STATUS_PCI_BUF_NOT_ALLOCATED = common dso_local global i32 0, align 4
@DBG_BUS_TARGET_ID_NIG = common dso_local global i64 0, align 8
@DBG_STATUS_NO_DATA_RECORDED = common dso_local global i32 0, align 4
@CHUNK_SIZE_IN_DWORDS = common dso_local global i64 0, align 8
@DBG_STATUS_DUMP_NOT_CHUNK_ALIGNED = common dso_local global i32 0, align 4
@DBG_BUS_STATE_IDLE = common dso_local global i64 0, align 8
@MAX_BLOCK_ID = common dso_local global i64 0, align 8
@BLOCK_PCIE = common dso_local global i64 0, align 8
@DBG_BUS_BLOCK_DATA_ENABLE_MASK = common dso_local global i32 0, align 4
@MAX_DBG_STORMS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_dbg_bus_dump(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i64* %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ecore_hwfn*, align 8
  %8 = alloca %struct.ecore_ptt*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.dbg_tools_data*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.dbg_bus_data*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca %struct.dbg_bus_storm_data*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %7, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  %22 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %23 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %22, i32 0, i32 0
  store %struct.dbg_tools_data* %23, %struct.dbg_tools_data** %12, align 8
  store i64 0, i64* %15, align 8
  %24 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %12, align 8
  %25 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %24, i32 0, i32 0
  store %struct.dbg_bus_data* %25, %struct.dbg_bus_data** %16, align 8
  %26 = load i64*, i64** %11, align 8
  store i64 0, i64* %26, align 8
  %27 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %28 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %29 = call i32 @ecore_dbg_bus_get_dump_buf_size(%struct.ecore_hwfn* %27, %struct.ecore_ptt* %28, i64* %13)
  store i32 %29, i32* %17, align 4
  %30 = load i32, i32* %17, align 4
  %31 = load i32, i32* @DBG_STATUS_OK, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %5
  %34 = load i32, i32* %17, align 4
  store i32 %34, i32* %6, align 4
  br label %186

35:                                               ; preds = %5
  %36 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %37 = load i32, i32* @ECORE_MSG_DEBUG, align 4
  %38 = load i64*, i64** %9, align 8
  %39 = load i64, i64* %10, align 8
  %40 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %36, i32 %37, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i64* %38, i64 %39)
  %41 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %16, align 8
  %42 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @DBG_BUS_STATE_RECORDING, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %35
  %47 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %16, align 8
  %48 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @DBG_BUS_STATE_STOPPED, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* @DBG_STATUS_RECORDING_NOT_STARTED, align 4
  store i32 %53, i32* %6, align 4
  br label %186

54:                                               ; preds = %46, %35
  %55 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %16, align 8
  %56 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @DBG_BUS_STATE_RECORDING, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %54
  %61 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %62 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %63 = call i32 @ecore_dbg_bus_stop(%struct.ecore_hwfn* %61, %struct.ecore_ptt* %62)
  store i32 %63, i32* %19, align 4
  %64 = load i32, i32* %19, align 4
  %65 = load i32, i32* @DBG_STATUS_OK, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = load i32, i32* %19, align 4
  store i32 %68, i32* %6, align 4
  br label %186

69:                                               ; preds = %60
  br label %70

70:                                               ; preds = %69, %54
  %71 = load i64, i64* %10, align 8
  %72 = load i64, i64* %13, align 8
  %73 = icmp slt i64 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load i32, i32* @DBG_STATUS_DUMP_BUF_TOO_SMALL, align 4
  store i32 %75, i32* %6, align 4
  br label %186

76:                                               ; preds = %70
  %77 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %16, align 8
  %78 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @DBG_BUS_TARGET_ID_PCI, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %90

82:                                               ; preds = %76
  %83 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %16, align 8
  %84 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %83, i32 0, i32 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %82
  %89 = load i32, i32* @DBG_STATUS_PCI_BUF_NOT_ALLOCATED, align 4
  store i32 %89, i32* %6, align 4
  br label %186

90:                                               ; preds = %82, %76
  %91 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %92 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %93 = load i64*, i64** %9, align 8
  %94 = load i64, i64* %15, align 8
  %95 = getelementptr inbounds i64, i64* %93, i64 %94
  %96 = call i64 @ecore_bus_dump_hdr(%struct.ecore_hwfn* %91, %struct.ecore_ptt* %92, i64* %95, i32 1)
  %97 = load i64, i64* %15, align 8
  %98 = add nsw i64 %97, %96
  store i64 %98, i64* %15, align 8
  %99 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %16, align 8
  %100 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @DBG_BUS_TARGET_ID_NIG, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %126

104:                                              ; preds = %90
  %105 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %106 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %107 = load i64*, i64** %9, align 8
  %108 = load i64, i64* %15, align 8
  %109 = getelementptr inbounds i64, i64* %107, i64 %108
  %110 = call i64 @ecore_bus_dump_data(%struct.ecore_hwfn* %105, %struct.ecore_ptt* %106, i64* %109, i32 1)
  store i64 %110, i64* %20, align 8
  %111 = load i64, i64* %20, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %104
  %114 = load i32, i32* @DBG_STATUS_NO_DATA_RECORDED, align 4
  store i32 %114, i32* %6, align 4
  br label %186

115:                                              ; preds = %104
  %116 = load i64, i64* %20, align 8
  %117 = load i64, i64* @CHUNK_SIZE_IN_DWORDS, align 8
  %118 = srem i64 %116, %117
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %115
  %121 = load i32, i32* @DBG_STATUS_DUMP_NOT_CHUNK_ALIGNED, align 4
  store i32 %121, i32* %6, align 4
  br label %186

122:                                              ; preds = %115
  %123 = load i64, i64* %20, align 8
  %124 = load i64, i64* %15, align 8
  %125 = add nsw i64 %124, %123
  store i64 %125, i64* %15, align 8
  br label %126

126:                                              ; preds = %122, %90
  %127 = load i64*, i64** %9, align 8
  %128 = load i64, i64* %15, align 8
  %129 = call i64 @ecore_dump_last_section(i64* %127, i64 %128, i32 1)
  %130 = load i64, i64* %15, align 8
  %131 = add nsw i64 %130, %129
  store i64 %131, i64* %15, align 8
  %132 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %133 = call i32 @ecore_bus_free_pci_buf(%struct.ecore_hwfn* %132)
  %134 = load i64, i64* @DBG_BUS_STATE_IDLE, align 8
  %135 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %16, align 8
  %136 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %135, i32 0, i32 0
  store i64 %134, i64* %136, align 8
  %137 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %16, align 8
  %138 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %137, i32 0, i32 7
  store i64 0, i64* %138, align 8
  %139 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %16, align 8
  %140 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %139, i32 0, i32 6
  store i64 0, i64* %140, align 8
  %141 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %16, align 8
  %142 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %141, i32 0, i32 4
  store i64 0, i64* %142, align 8
  %143 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %16, align 8
  %144 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %143, i32 0, i32 5
  store i64 0, i64* %144, align 8
  store i64 0, i64* %14, align 8
  br label %145

145:                                              ; preds = %159, %126
  %146 = load i64, i64* %14, align 8
  %147 = load i64, i64* @MAX_BLOCK_ID, align 8
  %148 = icmp slt i64 %146, %147
  br i1 %148, label %149, label %162

149:                                              ; preds = %145
  %150 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %16, align 8
  %151 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %150, i32 0, i32 3
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %151, align 8
  %153 = load i64, i64* @BLOCK_PCIE, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @DBG_BUS_BLOCK_DATA_ENABLE_MASK, align 4
  %158 = call i32 @SET_FIELD(i32 %156, i32 %157, i32 0)
  br label %159

159:                                              ; preds = %149
  %160 = load i64, i64* %14, align 8
  %161 = add nsw i64 %160, 1
  store i64 %161, i64* %14, align 8
  br label %145

162:                                              ; preds = %145
  store i64 0, i64* %18, align 8
  br label %163

163:                                              ; preds = %179, %162
  %164 = load i64, i64* %18, align 8
  %165 = load i64, i64* @MAX_DBG_STORMS, align 8
  %166 = icmp ult i64 %164, %165
  br i1 %166, label %167, label %182

167:                                              ; preds = %163
  %168 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %16, align 8
  %169 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %168, i32 0, i32 2
  %170 = load %struct.dbg_bus_storm_data*, %struct.dbg_bus_storm_data** %169, align 8
  %171 = load i64, i64* %18, align 8
  %172 = getelementptr inbounds %struct.dbg_bus_storm_data, %struct.dbg_bus_storm_data* %170, i64 %171
  store %struct.dbg_bus_storm_data* %172, %struct.dbg_bus_storm_data** %21, align 8
  %173 = load %struct.dbg_bus_storm_data*, %struct.dbg_bus_storm_data** %21, align 8
  %174 = getelementptr inbounds %struct.dbg_bus_storm_data, %struct.dbg_bus_storm_data* %173, i32 0, i32 0
  store i32 0, i32* %174, align 8
  %175 = load %struct.dbg_bus_storm_data*, %struct.dbg_bus_storm_data** %21, align 8
  %176 = getelementptr inbounds %struct.dbg_bus_storm_data, %struct.dbg_bus_storm_data* %175, i32 0, i32 1
  store i64 0, i64* %176, align 8
  %177 = load %struct.dbg_bus_storm_data*, %struct.dbg_bus_storm_data** %21, align 8
  %178 = getelementptr inbounds %struct.dbg_bus_storm_data, %struct.dbg_bus_storm_data* %177, i32 0, i32 2
  store i64 0, i64* %178, align 8
  br label %179

179:                                              ; preds = %167
  %180 = load i64, i64* %18, align 8
  %181 = add i64 %180, 1
  store i64 %181, i64* %18, align 8
  br label %163

182:                                              ; preds = %163
  %183 = load i64, i64* %15, align 8
  %184 = load i64*, i64** %11, align 8
  store i64 %183, i64* %184, align 8
  %185 = load i32, i32* @DBG_STATUS_OK, align 4
  store i32 %185, i32* %6, align 4
  br label %186

186:                                              ; preds = %182, %120, %113, %88, %74, %67, %52, %33
  %187 = load i32, i32* %6, align 4
  ret i32 %187
}

declare dso_local i32 @ecore_dbg_bus_get_dump_buf_size(%struct.ecore_hwfn*, %struct.ecore_ptt*, i64*) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i64*, i64) #1

declare dso_local i32 @ecore_dbg_bus_stop(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

declare dso_local i64 @ecore_bus_dump_hdr(%struct.ecore_hwfn*, %struct.ecore_ptt*, i64*, i32) #1

declare dso_local i64 @ecore_bus_dump_data(%struct.ecore_hwfn*, %struct.ecore_ptt*, i64*, i32) #1

declare dso_local i64 @ecore_dump_last_section(i64*, i64, i32) #1

declare dso_local i32 @ecore_bus_free_pci_buf(%struct.ecore_hwfn*) #1

declare dso_local i32 @SET_FIELD(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
