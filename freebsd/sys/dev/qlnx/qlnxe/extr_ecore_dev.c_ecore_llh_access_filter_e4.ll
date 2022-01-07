; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_llh_access_filter_e4.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_llh_access_filter_e4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }
%struct.ecore_llh_filter_e4_details = type { i8*, i8*, i8*, i8*, i32 }
%struct.ecore_dmae_params = type { i32, i32, i32 }

@NIG_REG_LLH_FUNC_FILTER_EN_BB_K2 = common dso_local global i64 0, align 8
@NIG_REG_LLH_FUNC_FILTER_VALUE_BB_K2 = common dso_local global i64 0, align 8
@ECORE_DMAE_FLAG_PF_DST = common dso_local global i32 0, align 4
@ECORE_DMAE_FLAG_PF_SRC = common dso_local global i32 0, align 4
@ECORE_DMAE_FLAG_COMPLETION_DST = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@NIG_REG_LLH_FUNC_FILTER_MODE_BB_K2 = common dso_local global i64 0, align 8
@NIG_REG_LLH_FUNC_FILTER_PROTOCOL_TYPE_BB_K2 = common dso_local global i64 0, align 8
@NIG_REG_LLH_FUNC_FILTER_HDR_SEL_BB_K2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32, %struct.ecore_llh_filter_e4_details*, i32)* @ecore_llh_access_filter_e4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_llh_access_filter_e4(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32 %2, i32 %3, %struct.ecore_llh_filter_e4_details* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ecore_hwfn*, align 8
  %9 = alloca %struct.ecore_ptt*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ecore_llh_filter_e4_details*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ecore_dmae_params, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %8, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.ecore_llh_filter_e4_details* %4, %struct.ecore_llh_filter_e4_details** %12, align 8
  store i32 %5, i32* %13, align 4
  %18 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %19 = load i32, i32* %10, align 4
  %20 = call i32 @ECORE_PFID_BY_PPFID(%struct.ecore_hwfn* %18, i32 %19)
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %6
  %24 = load %struct.ecore_llh_filter_e4_details*, %struct.ecore_llh_filter_e4_details** %12, align 8
  %25 = getelementptr inbounds %struct.ecore_llh_filter_e4_details, %struct.ecore_llh_filter_e4_details* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %42, label %28

28:                                               ; preds = %23
  %29 = load i64, i64* @NIG_REG_LLH_FUNC_FILTER_EN_BB_K2, align 8
  %30 = load i32, i32* %11, align 4
  %31 = mul nsw i32 %30, 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %29, %32
  store i64 %33, i64* %17, align 8
  %34 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %35 = load %struct.ecore_ptt*, %struct.ecore_ptt** %9, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load i64, i64* %17, align 8
  %38 = load %struct.ecore_llh_filter_e4_details*, %struct.ecore_llh_filter_e4_details** %12, align 8
  %39 = getelementptr inbounds %struct.ecore_llh_filter_e4_details, %struct.ecore_llh_filter_e4_details* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @ecore_ppfid_wr(%struct.ecore_hwfn* %34, %struct.ecore_ptt* %35, i32 %36, i64 %37, i8* %40)
  br label %42

42:                                               ; preds = %28, %23, %6
  %43 = load i64, i64* @NIG_REG_LLH_FUNC_FILTER_VALUE_BB_K2, align 8
  %44 = load i32, i32* %11, align 4
  %45 = mul nsw i32 2, %44
  %46 = mul nsw i32 %45, 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %43, %47
  store i64 %48, i64* %17, align 8
  %49 = call i32 @OSAL_MEMSET(%struct.ecore_dmae_params* %15, i32 0, i32 12)
  %50 = load i32, i32* %13, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %42
  %53 = load i32, i32* @ECORE_DMAE_FLAG_PF_DST, align 4
  %54 = getelementptr inbounds %struct.ecore_dmae_params, %struct.ecore_dmae_params* %15, i32 0, i32 0
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* %14, align 4
  %56 = getelementptr inbounds %struct.ecore_dmae_params, %struct.ecore_dmae_params* %15, i32 0, i32 1
  store i32 %55, i32* %56, align 4
  %57 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %58 = load %struct.ecore_ptt*, %struct.ecore_ptt** %9, align 8
  %59 = load %struct.ecore_llh_filter_e4_details*, %struct.ecore_llh_filter_e4_details** %12, align 8
  %60 = getelementptr inbounds %struct.ecore_llh_filter_e4_details, %struct.ecore_llh_filter_e4_details* %59, i32 0, i32 4
  %61 = ptrtoint i32* %60 to i64
  %62 = trunc i64 %61 to i32
  %63 = load i64, i64* %17, align 8
  %64 = call i32 @ecore_dmae_host2grc(%struct.ecore_hwfn* %57, %struct.ecore_ptt* %58, i32 %62, i64 %63, i32 2, %struct.ecore_dmae_params* %15)
  store i32 %64, i32* %16, align 4
  br label %80

65:                                               ; preds = %42
  %66 = load i32, i32* @ECORE_DMAE_FLAG_PF_SRC, align 4
  %67 = load i32, i32* @ECORE_DMAE_FLAG_COMPLETION_DST, align 4
  %68 = or i32 %66, %67
  %69 = getelementptr inbounds %struct.ecore_dmae_params, %struct.ecore_dmae_params* %15, i32 0, i32 0
  store i32 %68, i32* %69, align 4
  %70 = load i32, i32* %14, align 4
  %71 = getelementptr inbounds %struct.ecore_dmae_params, %struct.ecore_dmae_params* %15, i32 0, i32 2
  store i32 %70, i32* %71, align 4
  %72 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %73 = load %struct.ecore_ptt*, %struct.ecore_ptt** %9, align 8
  %74 = load i64, i64* %17, align 8
  %75 = load %struct.ecore_llh_filter_e4_details*, %struct.ecore_llh_filter_e4_details** %12, align 8
  %76 = getelementptr inbounds %struct.ecore_llh_filter_e4_details, %struct.ecore_llh_filter_e4_details* %75, i32 0, i32 4
  %77 = ptrtoint i32* %76 to i64
  %78 = trunc i64 %77 to i32
  %79 = call i32 @ecore_dmae_grc2host(%struct.ecore_hwfn* %72, %struct.ecore_ptt* %73, i64 %74, i32 %78, i32 2, %struct.ecore_dmae_params* %15)
  store i32 %79, i32* %16, align 4
  br label %80

80:                                               ; preds = %65, %52
  %81 = load i32, i32* %16, align 4
  %82 = load i32, i32* @ECORE_SUCCESS, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = load i32, i32* %16, align 4
  store i32 %85, i32* %7, align 4
  br label %197

86:                                               ; preds = %80
  %87 = load i64, i64* @NIG_REG_LLH_FUNC_FILTER_MODE_BB_K2, align 8
  %88 = load i32, i32* %11, align 4
  %89 = mul nsw i32 %88, 4
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %87, %90
  store i64 %91, i64* %17, align 8
  %92 = load i32, i32* %13, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %86
  %95 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %96 = load %struct.ecore_ptt*, %struct.ecore_ptt** %9, align 8
  %97 = load i32, i32* %10, align 4
  %98 = load i64, i64* %17, align 8
  %99 = load %struct.ecore_llh_filter_e4_details*, %struct.ecore_llh_filter_e4_details** %12, align 8
  %100 = getelementptr inbounds %struct.ecore_llh_filter_e4_details, %struct.ecore_llh_filter_e4_details* %99, i32 0, i32 3
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @ecore_ppfid_wr(%struct.ecore_hwfn* %95, %struct.ecore_ptt* %96, i32 %97, i64 %98, i8* %101)
  br label %111

103:                                              ; preds = %86
  %104 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %105 = load %struct.ecore_ptt*, %struct.ecore_ptt** %9, align 8
  %106 = load i32, i32* %10, align 4
  %107 = load i64, i64* %17, align 8
  %108 = call i8* @ecore_ppfid_rd(%struct.ecore_hwfn* %104, %struct.ecore_ptt* %105, i32 %106, i64 %107)
  %109 = load %struct.ecore_llh_filter_e4_details*, %struct.ecore_llh_filter_e4_details** %12, align 8
  %110 = getelementptr inbounds %struct.ecore_llh_filter_e4_details, %struct.ecore_llh_filter_e4_details* %109, i32 0, i32 3
  store i8* %108, i8** %110, align 8
  br label %111

111:                                              ; preds = %103, %94
  %112 = load i64, i64* @NIG_REG_LLH_FUNC_FILTER_PROTOCOL_TYPE_BB_K2, align 8
  %113 = load i32, i32* %11, align 4
  %114 = mul nsw i32 %113, 4
  %115 = sext i32 %114 to i64
  %116 = add nsw i64 %112, %115
  store i64 %116, i64* %17, align 8
  %117 = load i32, i32* %13, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %111
  %120 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %121 = load %struct.ecore_ptt*, %struct.ecore_ptt** %9, align 8
  %122 = load i32, i32* %10, align 4
  %123 = load i64, i64* %17, align 8
  %124 = load %struct.ecore_llh_filter_e4_details*, %struct.ecore_llh_filter_e4_details** %12, align 8
  %125 = getelementptr inbounds %struct.ecore_llh_filter_e4_details, %struct.ecore_llh_filter_e4_details* %124, i32 0, i32 2
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 @ecore_ppfid_wr(%struct.ecore_hwfn* %120, %struct.ecore_ptt* %121, i32 %122, i64 %123, i8* %126)
  br label %136

128:                                              ; preds = %111
  %129 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %130 = load %struct.ecore_ptt*, %struct.ecore_ptt** %9, align 8
  %131 = load i32, i32* %10, align 4
  %132 = load i64, i64* %17, align 8
  %133 = call i8* @ecore_ppfid_rd(%struct.ecore_hwfn* %129, %struct.ecore_ptt* %130, i32 %131, i64 %132)
  %134 = load %struct.ecore_llh_filter_e4_details*, %struct.ecore_llh_filter_e4_details** %12, align 8
  %135 = getelementptr inbounds %struct.ecore_llh_filter_e4_details, %struct.ecore_llh_filter_e4_details* %134, i32 0, i32 2
  store i8* %133, i8** %135, align 8
  br label %136

136:                                              ; preds = %128, %119
  %137 = load i64, i64* @NIG_REG_LLH_FUNC_FILTER_HDR_SEL_BB_K2, align 8
  %138 = load i32, i32* %11, align 4
  %139 = mul nsw i32 %138, 4
  %140 = sext i32 %139 to i64
  %141 = add nsw i64 %137, %140
  store i64 %141, i64* %17, align 8
  %142 = load i32, i32* %13, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %153

144:                                              ; preds = %136
  %145 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %146 = load %struct.ecore_ptt*, %struct.ecore_ptt** %9, align 8
  %147 = load i32, i32* %10, align 4
  %148 = load i64, i64* %17, align 8
  %149 = load %struct.ecore_llh_filter_e4_details*, %struct.ecore_llh_filter_e4_details** %12, align 8
  %150 = getelementptr inbounds %struct.ecore_llh_filter_e4_details, %struct.ecore_llh_filter_e4_details* %149, i32 0, i32 1
  %151 = load i8*, i8** %150, align 8
  %152 = call i32 @ecore_ppfid_wr(%struct.ecore_hwfn* %145, %struct.ecore_ptt* %146, i32 %147, i64 %148, i8* %151)
  br label %161

153:                                              ; preds = %136
  %154 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %155 = load %struct.ecore_ptt*, %struct.ecore_ptt** %9, align 8
  %156 = load i32, i32* %10, align 4
  %157 = load i64, i64* %17, align 8
  %158 = call i8* @ecore_ppfid_rd(%struct.ecore_hwfn* %154, %struct.ecore_ptt* %155, i32 %156, i64 %157)
  %159 = load %struct.ecore_llh_filter_e4_details*, %struct.ecore_llh_filter_e4_details** %12, align 8
  %160 = getelementptr inbounds %struct.ecore_llh_filter_e4_details, %struct.ecore_llh_filter_e4_details* %159, i32 0, i32 1
  store i8* %158, i8** %160, align 8
  br label %161

161:                                              ; preds = %153, %144
  %162 = load i32, i32* %13, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %161
  %165 = load %struct.ecore_llh_filter_e4_details*, %struct.ecore_llh_filter_e4_details** %12, align 8
  %166 = getelementptr inbounds %struct.ecore_llh_filter_e4_details, %struct.ecore_llh_filter_e4_details* %165, i32 0, i32 0
  %167 = load i8*, i8** %166, align 8
  %168 = icmp ne i8* %167, null
  br i1 %168, label %169, label %195

169:                                              ; preds = %164, %161
  %170 = load i64, i64* @NIG_REG_LLH_FUNC_FILTER_EN_BB_K2, align 8
  %171 = load i32, i32* %11, align 4
  %172 = mul nsw i32 %171, 4
  %173 = sext i32 %172 to i64
  %174 = add nsw i64 %170, %173
  store i64 %174, i64* %17, align 8
  %175 = load i32, i32* %13, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %186

177:                                              ; preds = %169
  %178 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %179 = load %struct.ecore_ptt*, %struct.ecore_ptt** %9, align 8
  %180 = load i32, i32* %10, align 4
  %181 = load i64, i64* %17, align 8
  %182 = load %struct.ecore_llh_filter_e4_details*, %struct.ecore_llh_filter_e4_details** %12, align 8
  %183 = getelementptr inbounds %struct.ecore_llh_filter_e4_details, %struct.ecore_llh_filter_e4_details* %182, i32 0, i32 0
  %184 = load i8*, i8** %183, align 8
  %185 = call i32 @ecore_ppfid_wr(%struct.ecore_hwfn* %178, %struct.ecore_ptt* %179, i32 %180, i64 %181, i8* %184)
  br label %194

186:                                              ; preds = %169
  %187 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %188 = load %struct.ecore_ptt*, %struct.ecore_ptt** %9, align 8
  %189 = load i32, i32* %10, align 4
  %190 = load i64, i64* %17, align 8
  %191 = call i8* @ecore_ppfid_rd(%struct.ecore_hwfn* %187, %struct.ecore_ptt* %188, i32 %189, i64 %190)
  %192 = load %struct.ecore_llh_filter_e4_details*, %struct.ecore_llh_filter_e4_details** %12, align 8
  %193 = getelementptr inbounds %struct.ecore_llh_filter_e4_details, %struct.ecore_llh_filter_e4_details* %192, i32 0, i32 0
  store i8* %191, i8** %193, align 8
  br label %194

194:                                              ; preds = %186, %177
  br label %195

195:                                              ; preds = %194, %164
  %196 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %196, i32* %7, align 4
  br label %197

197:                                              ; preds = %195, %84
  %198 = load i32, i32* %7, align 4
  ret i32 %198
}

declare dso_local i32 @ECORE_PFID_BY_PPFID(%struct.ecore_hwfn*, i32) #1

declare dso_local i32 @ecore_ppfid_wr(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i64, i8*) #1

declare dso_local i32 @OSAL_MEMSET(%struct.ecore_dmae_params*, i32, i32) #1

declare dso_local i32 @ecore_dmae_host2grc(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i64, i32, %struct.ecore_dmae_params*) #1

declare dso_local i32 @ecore_dmae_grc2host(%struct.ecore_hwfn*, %struct.ecore_ptt*, i64, i32, i32, %struct.ecore_dmae_params*) #1

declare dso_local i8* @ecore_ppfid_rd(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
