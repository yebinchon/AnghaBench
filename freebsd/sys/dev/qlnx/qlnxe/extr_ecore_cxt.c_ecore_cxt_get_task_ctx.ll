; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_cxt.c_ecore_cxt_get_task_ctx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_cxt.c_ecore_cxt_get_task_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_4__, %struct.ecore_cxt_mngr* }
%struct.TYPE_4__ = type { i32 }
%struct.ecore_cxt_mngr = type { i64*, i64, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.ecore_ilt_client_cfg* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.ecore_tid_seg* }
%struct.ecore_tid_seg = type { i64, i32 }
%struct.ecore_ilt_client_cfg = type { %struct.ecore_ilt_cli_blk*, i32 }
%struct.ecore_ilt_cli_blk = type { i64, i64, i32 }

@PROTOCOLID_FCOE = common dso_local global i64 0, align 8
@ECORE_CXT_FCOE_TID_SEG = common dso_local global i64 0, align 8
@PROTOCOLID_ISCSI = common dso_local global i64 0, align 8
@ECORE_CXT_ISCSI_TID_SEG = common dso_local global i64 0, align 8
@ECORE_INVAL = common dso_local global i32 0, align 4
@ILT_CLI_CDUT = common dso_local global i64 0, align 8
@ECORE_CTX_WORKING_MEM = common dso_local global i64 0, align 8
@ECORE_CTX_FL_MEM = common dso_local global i64 0, align 8
@PF = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_cxt_get_task_ctx(%struct.ecore_hwfn* %0, i64 %1, i64 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ecore_hwfn*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.ecore_cxt_mngr*, align 8
  %11 = alloca %struct.ecore_ilt_client_cfg*, align 8
  %12 = alloca %struct.ecore_tid_seg*, align 8
  %13 = alloca %struct.ecore_ilt_cli_blk*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8** %3, i8*** %9, align 8
  %20 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %21 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %20, i32 0, i32 1
  %22 = load %struct.ecore_cxt_mngr*, %struct.ecore_cxt_mngr** %21, align 8
  store %struct.ecore_cxt_mngr* %22, %struct.ecore_cxt_mngr** %10, align 8
  %23 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %24 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %33 [
    i32 129, label %27
    i32 128, label %30
  ]

27:                                               ; preds = %4
  %28 = load i64, i64* @PROTOCOLID_FCOE, align 8
  store i64 %28, i64* %18, align 8
  %29 = load i64, i64* @ECORE_CXT_FCOE_TID_SEG, align 8
  store i64 %29, i64* %19, align 8
  br label %35

30:                                               ; preds = %4
  %31 = load i64, i64* @PROTOCOLID_ISCSI, align 8
  store i64 %31, i64* %18, align 8
  %32 = load i64, i64* @ECORE_CXT_ISCSI_TID_SEG, align 8
  store i64 %32, i64* %19, align 8
  br label %35

33:                                               ; preds = %4
  %34 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %34, i32* %5, align 4
  br label %146

35:                                               ; preds = %30, %27
  %36 = load %struct.ecore_cxt_mngr*, %struct.ecore_cxt_mngr** %10, align 8
  %37 = getelementptr inbounds %struct.ecore_cxt_mngr, %struct.ecore_cxt_mngr* %36, i32 0, i32 4
  %38 = load %struct.ecore_ilt_client_cfg*, %struct.ecore_ilt_client_cfg** %37, align 8
  %39 = load i64, i64* @ILT_CLI_CDUT, align 8
  %40 = getelementptr inbounds %struct.ecore_ilt_client_cfg, %struct.ecore_ilt_client_cfg* %38, i64 %39
  store %struct.ecore_ilt_client_cfg* %40, %struct.ecore_ilt_client_cfg** %11, align 8
  %41 = load %struct.ecore_ilt_client_cfg*, %struct.ecore_ilt_client_cfg** %11, align 8
  %42 = getelementptr inbounds %struct.ecore_ilt_client_cfg, %struct.ecore_ilt_client_cfg* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %35
  %46 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %46, i32* %5, align 4
  br label %146

47:                                               ; preds = %35
  %48 = load %struct.ecore_cxt_mngr*, %struct.ecore_cxt_mngr** %10, align 8
  %49 = getelementptr inbounds %struct.ecore_cxt_mngr, %struct.ecore_cxt_mngr* %48, i32 0, i32 3
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = load i64, i64* %18, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load %struct.ecore_tid_seg*, %struct.ecore_tid_seg** %53, align 8
  %55 = load i64, i64* %19, align 8
  %56 = getelementptr inbounds %struct.ecore_tid_seg, %struct.ecore_tid_seg* %54, i64 %55
  store %struct.ecore_tid_seg* %56, %struct.ecore_tid_seg** %12, align 8
  %57 = load i64, i64* %8, align 8
  %58 = load i64, i64* @ECORE_CTX_WORKING_MEM, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %47
  %61 = load %struct.ecore_ilt_client_cfg*, %struct.ecore_ilt_client_cfg** %11, align 8
  %62 = getelementptr inbounds %struct.ecore_ilt_client_cfg, %struct.ecore_ilt_client_cfg* %61, i32 0, i32 0
  %63 = load %struct.ecore_ilt_cli_blk*, %struct.ecore_ilt_cli_blk** %62, align 8
  %64 = load i64, i64* %19, align 8
  %65 = call i64 @CDUT_SEG_BLK(i64 %64)
  %66 = getelementptr inbounds %struct.ecore_ilt_cli_blk, %struct.ecore_ilt_cli_blk* %63, i64 %65
  store %struct.ecore_ilt_cli_blk* %66, %struct.ecore_ilt_cli_blk** %13, align 8
  br label %89

67:                                               ; preds = %47
  %68 = load i64, i64* %8, align 8
  %69 = load i64, i64* @ECORE_CTX_FL_MEM, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %86

71:                                               ; preds = %67
  %72 = load %struct.ecore_tid_seg*, %struct.ecore_tid_seg** %12, align 8
  %73 = getelementptr inbounds %struct.ecore_tid_seg, %struct.ecore_tid_seg* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %71
  %77 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %77, i32* %5, align 4
  br label %146

78:                                               ; preds = %71
  %79 = load %struct.ecore_ilt_client_cfg*, %struct.ecore_ilt_client_cfg** %11, align 8
  %80 = getelementptr inbounds %struct.ecore_ilt_client_cfg, %struct.ecore_ilt_client_cfg* %79, i32 0, i32 0
  %81 = load %struct.ecore_ilt_cli_blk*, %struct.ecore_ilt_cli_blk** %80, align 8
  %82 = load i64, i64* %19, align 8
  %83 = load i32, i32* @PF, align 4
  %84 = call i64 @CDUT_FL_SEG_BLK(i64 %82, i32 %83)
  %85 = getelementptr inbounds %struct.ecore_ilt_cli_blk, %struct.ecore_ilt_cli_blk* %81, i64 %84
  store %struct.ecore_ilt_cli_blk* %85, %struct.ecore_ilt_cli_blk** %13, align 8
  br label %88

86:                                               ; preds = %67
  %87 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %87, i32* %5, align 4
  br label %146

88:                                               ; preds = %78
  br label %89

89:                                               ; preds = %88, %60
  %90 = load %struct.ecore_ilt_cli_blk*, %struct.ecore_ilt_cli_blk** %13, align 8
  %91 = getelementptr inbounds %struct.ecore_ilt_cli_blk, %struct.ecore_ilt_cli_blk* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.ecore_ilt_cli_blk*, %struct.ecore_ilt_cli_blk** %13, align 8
  %94 = getelementptr inbounds %struct.ecore_ilt_cli_blk, %struct.ecore_ilt_cli_blk* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call i64 @DIV_ROUND_UP(i32 %92, i64 %95)
  store i64 %96, i64* %17, align 8
  %97 = load %struct.ecore_cxt_mngr*, %struct.ecore_cxt_mngr** %10, align 8
  %98 = getelementptr inbounds %struct.ecore_cxt_mngr, %struct.ecore_cxt_mngr* %97, i32 0, i32 0
  %99 = load i64*, i64** %98, align 8
  %100 = load %struct.ecore_tid_seg*, %struct.ecore_tid_seg** %12, align 8
  %101 = getelementptr inbounds %struct.ecore_tid_seg, %struct.ecore_tid_seg* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds i64, i64* %99, i64 %102
  %104 = load i64, i64* %103, align 8
  store i64 %104, i64* %15, align 8
  %105 = load %struct.ecore_ilt_cli_blk*, %struct.ecore_ilt_cli_blk** %13, align 8
  %106 = getelementptr inbounds %struct.ecore_ilt_cli_blk, %struct.ecore_ilt_cli_blk* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* %15, align 8
  %109 = udiv i64 %107, %108
  store i64 %109, i64* %14, align 8
  %110 = load i64, i64* %17, align 8
  %111 = load i64, i64* %7, align 8
  %112 = load i64, i64* %14, align 8
  %113 = udiv i64 %111, %112
  %114 = icmp ult i64 %110, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %89
  %116 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %116, i32* %5, align 4
  br label %146

117:                                              ; preds = %89
  %118 = load i64, i64* %7, align 8
  %119 = load i64, i64* %14, align 8
  %120 = udiv i64 %118, %119
  %121 = load %struct.ecore_ilt_cli_blk*, %struct.ecore_ilt_cli_blk** %13, align 8
  %122 = getelementptr inbounds %struct.ecore_ilt_cli_blk, %struct.ecore_ilt_cli_blk* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = add i64 %120, %123
  %125 = load %struct.ecore_cxt_mngr*, %struct.ecore_cxt_mngr** %10, align 8
  %126 = getelementptr inbounds %struct.ecore_cxt_mngr, %struct.ecore_cxt_mngr* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = sub i64 %124, %127
  store i64 %128, i64* %16, align 8
  %129 = load %struct.ecore_cxt_mngr*, %struct.ecore_cxt_mngr** %10, align 8
  %130 = getelementptr inbounds %struct.ecore_cxt_mngr, %struct.ecore_cxt_mngr* %129, i32 0, i32 2
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = load i64, i64* %16, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = inttoptr i64 %135 to i64*
  %137 = load i64, i64* %7, align 8
  %138 = load i64, i64* %14, align 8
  %139 = urem i64 %137, %138
  %140 = load i64, i64* %15, align 8
  %141 = mul i64 %139, %140
  %142 = getelementptr inbounds i64, i64* %136, i64 %141
  %143 = bitcast i64* %142 to i8*
  %144 = load i8**, i8*** %9, align 8
  store i8* %143, i8** %144, align 8
  %145 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %145, i32* %5, align 4
  br label %146

146:                                              ; preds = %117, %115, %86, %76, %45, %33
  %147 = load i32, i32* %5, align 4
  ret i32 %147
}

declare dso_local i64 @CDUT_SEG_BLK(i64) #1

declare dso_local i64 @CDUT_FL_SEG_BLK(i64, i32) #1

declare dso_local i64 @DIV_ROUND_UP(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
