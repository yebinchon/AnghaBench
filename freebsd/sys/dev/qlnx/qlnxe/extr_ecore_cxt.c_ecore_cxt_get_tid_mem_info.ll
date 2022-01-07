; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_cxt.c_ecore_cxt_get_tid_mem_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_cxt.c_ecore_cxt_get_tid_mem_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.ecore_cxt_mngr*, %struct.TYPE_5__ }
%struct.ecore_cxt_mngr = type { i64, i32*, %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.ecore_ilt_client_cfg* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.ecore_tid_seg* }
%struct.ecore_tid_seg = type { i64, i32 }
%struct.ecore_ilt_client_cfg = type { %struct.TYPE_8__, %struct.ecore_ilt_cli_blk*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.ecore_ilt_cli_blk = type { i32, i64, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ecore_tid_mem = type { i32, i32, i64, i32* }

@PROTOCOLID_FCOE = common dso_local global i64 0, align 8
@ECORE_CXT_FCOE_TID_SEG = common dso_local global i64 0, align 8
@PROTOCOLID_ISCSI = common dso_local global i64 0, align 8
@ECORE_CXT_ISCSI_TID_SEG = common dso_local global i64 0, align 8
@ECORE_INVAL = common dso_local global i32 0, align 4
@ILT_CLI_CDUT = common dso_local global i64 0, align 8
@PF = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_cxt_get_tid_mem_info(%struct.ecore_hwfn* %0, %struct.ecore_tid_mem* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_tid_mem*, align 8
  %6 = alloca %struct.ecore_cxt_mngr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ecore_ilt_client_cfg*, align 8
  %13 = alloca %struct.ecore_ilt_cli_blk*, align 8
  %14 = alloca %struct.ecore_tid_seg*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_tid_mem* %1, %struct.ecore_tid_mem** %5, align 8
  %15 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %16 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %15, i32 0, i32 0
  %17 = load %struct.ecore_cxt_mngr*, %struct.ecore_cxt_mngr** %16, align 8
  store %struct.ecore_cxt_mngr* %17, %struct.ecore_cxt_mngr** %6, align 8
  %18 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %19 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %28 [
    i32 129, label %22
    i32 128, label %25
  ]

22:                                               ; preds = %2
  %23 = load i64, i64* @PROTOCOLID_FCOE, align 8
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* @ECORE_CXT_FCOE_TID_SEG, align 8
  store i64 %24, i64* %8, align 8
  br label %30

25:                                               ; preds = %2
  %26 = load i64, i64* @PROTOCOLID_ISCSI, align 8
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* @ECORE_CXT_ISCSI_TID_SEG, align 8
  store i64 %27, i64* %8, align 8
  br label %30

28:                                               ; preds = %2
  %29 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %29, i32* %3, align 4
  br label %137

30:                                               ; preds = %25, %22
  %31 = load %struct.ecore_cxt_mngr*, %struct.ecore_cxt_mngr** %6, align 8
  %32 = getelementptr inbounds %struct.ecore_cxt_mngr, %struct.ecore_cxt_mngr* %31, i32 0, i32 4
  %33 = load %struct.ecore_ilt_client_cfg*, %struct.ecore_ilt_client_cfg** %32, align 8
  %34 = load i64, i64* @ILT_CLI_CDUT, align 8
  %35 = getelementptr inbounds %struct.ecore_ilt_client_cfg, %struct.ecore_ilt_client_cfg* %33, i64 %34
  store %struct.ecore_ilt_client_cfg* %35, %struct.ecore_ilt_client_cfg** %12, align 8
  %36 = load %struct.ecore_ilt_client_cfg*, %struct.ecore_ilt_client_cfg** %12, align 8
  %37 = getelementptr inbounds %struct.ecore_ilt_client_cfg, %struct.ecore_ilt_client_cfg* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %30
  %41 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %41, i32* %3, align 4
  br label %137

42:                                               ; preds = %30
  %43 = load %struct.ecore_cxt_mngr*, %struct.ecore_cxt_mngr** %6, align 8
  %44 = getelementptr inbounds %struct.ecore_cxt_mngr, %struct.ecore_cxt_mngr* %43, i32 0, i32 3
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = load i64, i64* %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load %struct.ecore_tid_seg*, %struct.ecore_tid_seg** %48, align 8
  %50 = load i64, i64* %8, align 8
  %51 = getelementptr inbounds %struct.ecore_tid_seg, %struct.ecore_tid_seg* %49, i64 %50
  store %struct.ecore_tid_seg* %51, %struct.ecore_tid_seg** %14, align 8
  %52 = load %struct.ecore_tid_seg*, %struct.ecore_tid_seg** %14, align 8
  %53 = getelementptr inbounds %struct.ecore_tid_seg, %struct.ecore_tid_seg* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %42
  %57 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %57, i32* %3, align 4
  br label %137

58:                                               ; preds = %42
  %59 = load %struct.ecore_ilt_client_cfg*, %struct.ecore_ilt_client_cfg** %12, align 8
  %60 = getelementptr inbounds %struct.ecore_ilt_client_cfg, %struct.ecore_ilt_client_cfg* %59, i32 0, i32 1
  %61 = load %struct.ecore_ilt_cli_blk*, %struct.ecore_ilt_cli_blk** %60, align 8
  %62 = load i64, i64* %8, align 8
  %63 = load i32, i32* @PF, align 4
  %64 = call i64 @CDUT_FL_SEG_BLK(i64 %62, i32 %63)
  %65 = getelementptr inbounds %struct.ecore_ilt_cli_blk, %struct.ecore_ilt_cli_blk* %61, i64 %64
  store %struct.ecore_ilt_cli_blk* %65, %struct.ecore_ilt_cli_blk** %13, align 8
  %66 = load %struct.ecore_ilt_cli_blk*, %struct.ecore_ilt_cli_blk** %13, align 8
  %67 = getelementptr inbounds %struct.ecore_ilt_cli_blk, %struct.ecore_ilt_cli_blk* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.ecore_ilt_cli_blk*, %struct.ecore_ilt_cli_blk** %13, align 8
  %70 = getelementptr inbounds %struct.ecore_ilt_cli_blk, %struct.ecore_ilt_cli_blk* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @DIV_ROUND_UP(i32 %68, i32 %71)
  store i64 %72, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %73

73:                                               ; preds = %101, %58
  %74 = load i64, i64* %10, align 8
  %75 = load i64, i64* %9, align 8
  %76 = icmp ult i64 %74, %75
  br i1 %76, label %77, label %104

77:                                               ; preds = %73
  %78 = load i64, i64* %10, align 8
  %79 = load %struct.ecore_ilt_cli_blk*, %struct.ecore_ilt_cli_blk** %13, align 8
  %80 = getelementptr inbounds %struct.ecore_ilt_cli_blk, %struct.ecore_ilt_cli_blk* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = add i64 %78, %81
  %83 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %84 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %83, i32 0, i32 0
  %85 = load %struct.ecore_cxt_mngr*, %struct.ecore_cxt_mngr** %84, align 8
  %86 = getelementptr inbounds %struct.ecore_cxt_mngr, %struct.ecore_cxt_mngr* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = sub i64 %82, %87
  store i64 %88, i64* %11, align 8
  %89 = load %struct.ecore_cxt_mngr*, %struct.ecore_cxt_mngr** %6, align 8
  %90 = getelementptr inbounds %struct.ecore_cxt_mngr, %struct.ecore_cxt_mngr* %89, i32 0, i32 2
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %90, align 8
  %92 = load i64, i64* %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.ecore_tid_mem*, %struct.ecore_tid_mem** %5, align 8
  %97 = getelementptr inbounds %struct.ecore_tid_mem, %struct.ecore_tid_mem* %96, i32 0, i32 3
  %98 = load i32*, i32** %97, align 8
  %99 = load i64, i64* %10, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  store i32 %95, i32* %100, align 4
  br label %101

101:                                              ; preds = %77
  %102 = load i64, i64* %10, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %10, align 8
  br label %73

104:                                              ; preds = %73
  %105 = load %struct.ecore_ilt_client_cfg*, %struct.ecore_ilt_client_cfg** %12, align 8
  %106 = getelementptr inbounds %struct.ecore_ilt_client_cfg, %struct.ecore_ilt_client_cfg* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i64 @ILT_PAGE_IN_BYTES(i32 %108)
  %110 = load %struct.ecore_ilt_cli_blk*, %struct.ecore_ilt_cli_blk** %13, align 8
  %111 = getelementptr inbounds %struct.ecore_ilt_cli_blk, %struct.ecore_ilt_cli_blk* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  %114 = sub nsw i64 %109, %113
  %115 = load %struct.ecore_tid_mem*, %struct.ecore_tid_mem** %5, align 8
  %116 = getelementptr inbounds %struct.ecore_tid_mem, %struct.ecore_tid_mem* %115, i32 0, i32 2
  store i64 %114, i64* %116, align 8
  %117 = load %struct.ecore_cxt_mngr*, %struct.ecore_cxt_mngr** %6, align 8
  %118 = getelementptr inbounds %struct.ecore_cxt_mngr, %struct.ecore_cxt_mngr* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = load %struct.ecore_tid_seg*, %struct.ecore_tid_seg** %14, align 8
  %121 = getelementptr inbounds %struct.ecore_tid_seg, %struct.ecore_tid_seg* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = getelementptr inbounds i32, i32* %119, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.ecore_tid_mem*, %struct.ecore_tid_mem** %5, align 8
  %126 = getelementptr inbounds %struct.ecore_tid_mem, %struct.ecore_tid_mem* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 8
  %127 = load %struct.ecore_ilt_cli_blk*, %struct.ecore_ilt_cli_blk** %13, align 8
  %128 = getelementptr inbounds %struct.ecore_ilt_cli_blk, %struct.ecore_ilt_cli_blk* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.ecore_tid_mem*, %struct.ecore_tid_mem** %5, align 8
  %131 = getelementptr inbounds %struct.ecore_tid_mem, %struct.ecore_tid_mem* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = sdiv i32 %129, %132
  %134 = load %struct.ecore_tid_mem*, %struct.ecore_tid_mem** %5, align 8
  %135 = getelementptr inbounds %struct.ecore_tid_mem, %struct.ecore_tid_mem* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 4
  %136 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %136, i32* %3, align 4
  br label %137

137:                                              ; preds = %104, %56, %40, %28
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local i64 @CDUT_FL_SEG_BLK(i64, i32) #1

declare dso_local i64 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i64 @ILT_PAGE_IN_BYTES(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
