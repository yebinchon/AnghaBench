; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_cxt.c_ecore_cxt_set_pf_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_cxt.c_ecore_cxt_set_pf_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_8__*, %struct.TYPE_7__, %struct.TYPE_6__*, %struct.TYPE_5__, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.ecore_iscsi_pf_params, %struct.ecore_fcoe_pf_params, %struct.ecore_eth_pf_params, i32 }
%struct.ecore_iscsi_pf_params = type { i32, i32 }
%struct.ecore_fcoe_pf_params = type { i32, i32 }
%struct.ecore_eth_pf_params = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@PROTOCOLID_CORE = common dso_local global i32 0, align 4
@ETH_PF_PARAMS_VF_CONS_DEFAULT = common dso_local global i32 0, align 4
@PROTOCOLID_ETH = common dso_local global i32 0, align 4
@ECORE_MF_DISABLE_ARFS = common dso_local global i32 0, align 4
@PROTOCOLID_FCOE = common dso_local global i32 0, align 4
@ECORE_CXT_FCOE_TID_SEG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Fcoe personality used without setting params!\0A\00", align 1
@PROTOCOLID_ISCSI = common dso_local global i32 0, align 4
@ECORE_CXT_ISCSI_TID_SEG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Iscsi personality used without setting params!\0A\00", align 1
@ECORE_INVAL = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_cxt_set_pf_params(%struct.ecore_hwfn* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ecore_eth_pf_params*, align 8
  %9 = alloca %struct.ecore_fcoe_pf_params*, align 8
  %10 = alloca %struct.ecore_iscsi_pf_params*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %11 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %12 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %16, 4
  store i32 %17, i32* %6, align 4
  br label %18

18:                                               ; preds = %15, %2
  %19 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %20 = load i32, i32* @PROTOCOLID_CORE, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @ecore_cxt_set_proto_cid_count(%struct.ecore_hwfn* %19, i32 %20, i32 %21, i32 0)
  %23 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %24 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %139 [
    i32 131, label %27
    i32 132, label %27
    i32 130, label %27
    i32 133, label %34
    i32 129, label %73
    i32 128, label %106
  ]

27:                                               ; preds = %18, %18, %18
  %28 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %29 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %30 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 3
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @ecore_rdma_set_pf_params(%struct.ecore_hwfn* %28, i32* %31, i32 %32)
  br label %34

34:                                               ; preds = %18, %27
  store i32 0, i32* %7, align 4
  %35 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %36 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 2
  store %struct.ecore_eth_pf_params* %37, %struct.ecore_eth_pf_params** %8, align 8
  %38 = load %struct.ecore_eth_pf_params*, %struct.ecore_eth_pf_params** %8, align 8
  %39 = getelementptr inbounds %struct.ecore_eth_pf_params, %struct.ecore_eth_pf_params* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %34
  %43 = load i32, i32* @ETH_PF_PARAMS_VF_CONS_DEFAULT, align 4
  %44 = load %struct.ecore_eth_pf_params*, %struct.ecore_eth_pf_params** %8, align 8
  %45 = getelementptr inbounds %struct.ecore_eth_pf_params, %struct.ecore_eth_pf_params* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %42, %34
  %47 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %48 = load i32, i32* @PROTOCOLID_ETH, align 4
  %49 = load %struct.ecore_eth_pf_params*, %struct.ecore_eth_pf_params** %8, align 8
  %50 = getelementptr inbounds %struct.ecore_eth_pf_params, %struct.ecore_eth_pf_params* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ecore_eth_pf_params*, %struct.ecore_eth_pf_params** %8, align 8
  %53 = getelementptr inbounds %struct.ecore_eth_pf_params, %struct.ecore_eth_pf_params* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ecore_cxt_set_proto_cid_count(%struct.ecore_hwfn* %47, i32 %48, i32 %51, i32 %54)
  %56 = load %struct.ecore_eth_pf_params*, %struct.ecore_eth_pf_params** %8, align 8
  %57 = getelementptr inbounds %struct.ecore_eth_pf_params, %struct.ecore_eth_pf_params* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* @ECORE_MF_DISABLE_ARFS, align 4
  %60 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %61 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %60, i32 0, i32 0
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = call i32 @OSAL_TEST_BIT(i32 %59, i32* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %46
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %69 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %68, i32 0, i32 2
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  store i32 %67, i32* %71, align 4
  br label %72

72:                                               ; preds = %66, %46
  br label %141

73:                                               ; preds = %18
  %74 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %75 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  store %struct.ecore_fcoe_pf_params* %76, %struct.ecore_fcoe_pf_params** %9, align 8
  %77 = load %struct.ecore_fcoe_pf_params*, %struct.ecore_fcoe_pf_params** %9, align 8
  %78 = getelementptr inbounds %struct.ecore_fcoe_pf_params, %struct.ecore_fcoe_pf_params* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %100

81:                                               ; preds = %73
  %82 = load %struct.ecore_fcoe_pf_params*, %struct.ecore_fcoe_pf_params** %9, align 8
  %83 = getelementptr inbounds %struct.ecore_fcoe_pf_params, %struct.ecore_fcoe_pf_params* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %100

86:                                               ; preds = %81
  %87 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %88 = load i32, i32* @PROTOCOLID_FCOE, align 4
  %89 = load %struct.ecore_fcoe_pf_params*, %struct.ecore_fcoe_pf_params** %9, align 8
  %90 = getelementptr inbounds %struct.ecore_fcoe_pf_params, %struct.ecore_fcoe_pf_params* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @ecore_cxt_set_proto_cid_count(%struct.ecore_hwfn* %87, i32 %88, i32 %91, i32 0)
  %93 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %94 = load i32, i32* @PROTOCOLID_FCOE, align 4
  %95 = load i32, i32* @ECORE_CXT_FCOE_TID_SEG, align 4
  %96 = load %struct.ecore_fcoe_pf_params*, %struct.ecore_fcoe_pf_params** %9, align 8
  %97 = getelementptr inbounds %struct.ecore_fcoe_pf_params, %struct.ecore_fcoe_pf_params* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @ecore_cxt_set_proto_tid_count(%struct.ecore_hwfn* %93, i32 %94, i32 %95, i32 0, i32 %98, i32 1)
  br label %105

100:                                              ; preds = %81, %73
  %101 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %102 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %101, i32 0, i32 0
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %102, align 8
  %104 = call i32 @DP_INFO(%struct.TYPE_8__* %103, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %105

105:                                              ; preds = %100, %86
  br label %141

106:                                              ; preds = %18
  %107 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %108 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  store %struct.ecore_iscsi_pf_params* %109, %struct.ecore_iscsi_pf_params** %10, align 8
  %110 = load %struct.ecore_iscsi_pf_params*, %struct.ecore_iscsi_pf_params** %10, align 8
  %111 = getelementptr inbounds %struct.ecore_iscsi_pf_params, %struct.ecore_iscsi_pf_params* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %133

114:                                              ; preds = %106
  %115 = load %struct.ecore_iscsi_pf_params*, %struct.ecore_iscsi_pf_params** %10, align 8
  %116 = getelementptr inbounds %struct.ecore_iscsi_pf_params, %struct.ecore_iscsi_pf_params* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %133

119:                                              ; preds = %114
  %120 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %121 = load i32, i32* @PROTOCOLID_ISCSI, align 4
  %122 = load %struct.ecore_iscsi_pf_params*, %struct.ecore_iscsi_pf_params** %10, align 8
  %123 = getelementptr inbounds %struct.ecore_iscsi_pf_params, %struct.ecore_iscsi_pf_params* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @ecore_cxt_set_proto_cid_count(%struct.ecore_hwfn* %120, i32 %121, i32 %124, i32 0)
  %126 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %127 = load i32, i32* @PROTOCOLID_ISCSI, align 4
  %128 = load i32, i32* @ECORE_CXT_ISCSI_TID_SEG, align 4
  %129 = load %struct.ecore_iscsi_pf_params*, %struct.ecore_iscsi_pf_params** %10, align 8
  %130 = getelementptr inbounds %struct.ecore_iscsi_pf_params, %struct.ecore_iscsi_pf_params* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @ecore_cxt_set_proto_tid_count(%struct.ecore_hwfn* %126, i32 %127, i32 %128, i32 0, i32 %131, i32 1)
  br label %138

133:                                              ; preds = %114, %106
  %134 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %135 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %134, i32 0, i32 0
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %135, align 8
  %137 = call i32 @DP_INFO(%struct.TYPE_8__* %136, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %138

138:                                              ; preds = %133, %119
  br label %141

139:                                              ; preds = %18
  %140 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %140, i32* %3, align 4
  br label %143

141:                                              ; preds = %138, %105, %72
  %142 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %142, i32* %3, align 4
  br label %143

143:                                              ; preds = %141, %139
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local i32 @ecore_cxt_set_proto_cid_count(%struct.ecore_hwfn*, i32, i32, i32) #1

declare dso_local i32 @ecore_rdma_set_pf_params(%struct.ecore_hwfn*, i32*, i32) #1

declare dso_local i32 @OSAL_TEST_BIT(i32, i32*) #1

declare dso_local i32 @ecore_cxt_set_proto_tid_count(%struct.ecore_hwfn*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DP_INFO(%struct.TYPE_8__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
