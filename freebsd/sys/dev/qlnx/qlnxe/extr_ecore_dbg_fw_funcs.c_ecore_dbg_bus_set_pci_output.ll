; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_dbg_bus_set_pci_output.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_dbg_bus_set_pci_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32, i32, %struct.dbg_tools_data }
%struct.dbg_tools_data = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_5__ = type { i8*, i8* }
%struct.ecore_ptt = type { i32 }

@ECORE_MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"dbg_bus_set_pci_output: buf_size_kb = %d\0A\00", align 1
@DBG_BUS_TARGET_ID_INT_BUF = common dso_local global i64 0, align 8
@DBG_STATUS_OUTPUT_ALREADY_SET = common dso_local global i32 0, align 4
@DBG_BUS_STATE_READY = common dso_local global i64 0, align 8
@DBG_STATUS_DBG_BLOCK_NOT_RESET = common dso_local global i32 0, align 4
@DBG_BUS_TARGET_ID_PCI = common dso_local global i32 0, align 4
@PCI_PKT_SIZE_IN_BYTES = common dso_local global i32 0, align 4
@DBG_STATUS_INVALID_ARGS = common dso_local global i32 0, align 4
@DBG_STATUS_PCI_BUF_ALLOC_FAILED = common dso_local global i32 0, align 4
@DBG_REG_PCI_EXT_BUFFER_STRT_ADDR_LSB = common dso_local global i32 0, align 4
@DBG_REG_PCI_EXT_BUFFER_STRT_ADDR_MSB = common dso_local global i32 0, align 4
@DBG_REG_TARGET_PACKET_SIZE = common dso_local global i32 0, align 4
@PCI_PKT_SIZE_IN_CHUNKS = common dso_local global i32 0, align 4
@DBG_REG_PCI_EXT_BUFFER_SIZE = common dso_local global i32 0, align 4
@DBG_REG_PCI_FUNC_NUM = common dso_local global i32 0, align 4
@DBG_REG_PCI_LOGIC_ADDR = common dso_local global i32 0, align 4
@PCI_PHYS_ADDR_TYPE = common dso_local global i32 0, align 4
@DBG_REG_PCI_REQ_CREDIT = common dso_local global i32 0, align 4
@PCI_REQ_CREDIT = common dso_local global i32 0, align 4
@DBG_REG_DEBUG_TARGET = common dso_local global i32 0, align 4
@DBG_REG_OUTPUT_ENABLE = common dso_local global i32 0, align 4
@TARGET_EN_MASK_PCI = common dso_local global i32 0, align 4
@DBG_STATUS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_dbg_bus_set_pci_output(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.ecore_ptt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dbg_tools_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %12 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %11, i32 0, i32 2
  store %struct.dbg_tools_data* %12, %struct.dbg_tools_data** %8, align 8
  %13 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %14 = load i32, i32* @ECORE_MSG_DEBUG, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %13, i32 %14, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %8, align 8
  %18 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @DBG_BUS_TARGET_ID_INT_BUF, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @DBG_STATUS_OUTPUT_ALREADY_SET, align 4
  store i32 %24, i32* %4, align 4
  br label %169

25:                                               ; preds = %3
  %26 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %8, align 8
  %27 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @DBG_BUS_STATE_READY, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %39, label %32

32:                                               ; preds = %25
  %33 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %8, align 8
  %34 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32, %25
  %40 = load i32, i32* @DBG_STATUS_DBG_BLOCK_NOT_RESET, align 4
  store i32 %40, i32* %4, align 4
  br label %169

41:                                               ; preds = %32
  %42 = load i32, i32* @DBG_BUS_TARGET_ID_PCI, align 4
  %43 = sext i32 %42 to i64
  %44 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %8, align 8
  %45 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  store i64 %43, i64* %46, align 8
  %47 = load i32, i32* %7, align 4
  %48 = mul nsw i32 %47, 1024
  %49 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %8, align 8
  %50 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  store i32 %48, i32* %52, align 8
  %53 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %8, align 8
  %54 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @PCI_PKT_SIZE_IN_BYTES, align 4
  %59 = srem i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %41
  %62 = load i32, i32* @DBG_STATUS_INVALID_ARGS, align 4
  store i32 %62, i32* %4, align 4
  br label %169

63:                                               ; preds = %41
  %64 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %65 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %8, align 8
  %68 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i8* @OSAL_DMA_ALLOC_COHERENT(i32 %66, i32* %9, i32 %71)
  store i8* %72, i8** %10, align 8
  %73 = load i8*, i8** %10, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %77, label %75

75:                                               ; preds = %63
  %76 = load i32, i32* @DBG_STATUS_PCI_BUF_ALLOC_FAILED, align 4
  store i32 %76, i32* %4, align 4
  br label %169

77:                                               ; preds = %63
  %78 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %8, align 8
  %79 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = call i32 @OSAL_MEMCPY(%struct.TYPE_8__* %81, i32* %9, i32 4)
  %83 = load i8*, i8** %10, align 8
  %84 = ptrtoint i8* %83 to i64
  %85 = trunc i64 %84 to i32
  %86 = sext i32 %85 to i64
  %87 = inttoptr i64 %86 to i8*
  %88 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %8, align 8
  %89 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  store i8* %87, i8** %92, align 8
  %93 = load i8*, i8** %10, align 8
  %94 = ptrtoint i8* %93 to i64
  %95 = trunc i64 %94 to i32
  %96 = ashr i32 %95, 32
  %97 = sext i32 %96 to i64
  %98 = inttoptr i64 %97 to i8*
  %99 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %8, align 8
  %100 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  store i8* %98, i8** %103, align 8
  %104 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %105 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %106 = load i32, i32* @DBG_REG_PCI_EXT_BUFFER_STRT_ADDR_LSB, align 4
  %107 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %8, align 8
  %108 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @ecore_wr(%struct.ecore_hwfn* %104, %struct.ecore_ptt* %105, i32 %106, i32 %112)
  %114 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %115 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %116 = load i32, i32* @DBG_REG_PCI_EXT_BUFFER_STRT_ADDR_MSB, align 4
  %117 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %8, align 8
  %118 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @ecore_wr(%struct.ecore_hwfn* %114, %struct.ecore_ptt* %115, i32 %116, i32 %122)
  %124 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %125 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %126 = load i32, i32* @DBG_REG_TARGET_PACKET_SIZE, align 4
  %127 = load i32, i32* @PCI_PKT_SIZE_IN_CHUNKS, align 4
  %128 = call i32 @ecore_wr(%struct.ecore_hwfn* %124, %struct.ecore_ptt* %125, i32 %126, i32 %127)
  %129 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %130 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %131 = load i32, i32* @DBG_REG_PCI_EXT_BUFFER_SIZE, align 4
  %132 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %8, align 8
  %133 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @PCI_PKT_SIZE_IN_BYTES, align 4
  %138 = sdiv i32 %136, %137
  %139 = call i32 @ecore_wr(%struct.ecore_hwfn* %129, %struct.ecore_ptt* %130, i32 %131, i32 %138)
  %140 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %141 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %142 = load i32, i32* @DBG_REG_PCI_FUNC_NUM, align 4
  %143 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %144 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @OPAQUE_FID(i32 %145)
  %147 = call i32 @ecore_wr(%struct.ecore_hwfn* %140, %struct.ecore_ptt* %141, i32 %142, i32 %146)
  %148 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %149 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %150 = load i32, i32* @DBG_REG_PCI_LOGIC_ADDR, align 4
  %151 = load i32, i32* @PCI_PHYS_ADDR_TYPE, align 4
  %152 = call i32 @ecore_wr(%struct.ecore_hwfn* %148, %struct.ecore_ptt* %149, i32 %150, i32 %151)
  %153 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %154 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %155 = load i32, i32* @DBG_REG_PCI_REQ_CREDIT, align 4
  %156 = load i32, i32* @PCI_REQ_CREDIT, align 4
  %157 = call i32 @ecore_wr(%struct.ecore_hwfn* %153, %struct.ecore_ptt* %154, i32 %155, i32 %156)
  %158 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %159 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %160 = load i32, i32* @DBG_REG_DEBUG_TARGET, align 4
  %161 = load i32, i32* @DBG_BUS_TARGET_ID_PCI, align 4
  %162 = call i32 @ecore_wr(%struct.ecore_hwfn* %158, %struct.ecore_ptt* %159, i32 %160, i32 %161)
  %163 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %164 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %165 = load i32, i32* @DBG_REG_OUTPUT_ENABLE, align 4
  %166 = load i32, i32* @TARGET_EN_MASK_PCI, align 4
  %167 = call i32 @ecore_wr(%struct.ecore_hwfn* %163, %struct.ecore_ptt* %164, i32 %165, i32 %166)
  %168 = load i32, i32* @DBG_STATUS_OK, align 4
  store i32 %168, i32* %4, align 4
  br label %169

169:                                              ; preds = %77, %75, %61, %39, %23
  %170 = load i32, i32* %4, align 4
  ret i32 %170
}

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32) #1

declare dso_local i8* @OSAL_DMA_ALLOC_COHERENT(i32, i32*, i32) #1

declare dso_local i32 @OSAL_MEMCPY(%struct.TYPE_8__*, i32*, i32) #1

declare dso_local i32 @ecore_wr(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32) #1

declare dso_local i32 @OPAQUE_FID(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
