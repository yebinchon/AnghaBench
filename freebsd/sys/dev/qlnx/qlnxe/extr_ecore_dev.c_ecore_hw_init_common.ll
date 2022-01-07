; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_hw_init_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_hw_init_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i64, %struct.TYPE_4__*, %struct.ecore_dev*, %struct.ecore_qm_info }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }
%struct.ecore_dev = type { i32 }
%struct.ecore_qm_info = type { i32, i32, i32, i32, i32, i32 }
%struct.ecore_ptt = type { i32 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@PHASE_ENGINE = common dso_local global i32 0, align 4
@PSWRQ2_REG_L2P_VALIDATE_VFID = common dso_local global i32 0, align 4
@PGLUE_B_REG_USE_CLIENTID_IN_TAG = common dso_local global i32 0, align 4
@PRS_REG_SEARCH_ROCE = common dso_local global i32 0, align 4
@PRS_REG_SEARCH_TCP = common dso_local global i32 0, align 4
@MAX_NUM_VFS_K2 = common dso_local global i64 0, align 8
@MAX_NUM_VFS_BB = common dso_local global i64 0, align 8
@CCFC_REG_STRONG_ENABLE_VF = common dso_local global i32 0, align 4
@CCFC_REG_WEAK_ENABLE_VF = common dso_local global i32 0, align 4
@TCFC_REG_STRONG_ENABLE_VF = common dso_local global i32 0, align 4
@TCFC_REG_WEAK_ENABLE_VF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_ptt*, i32)* @ecore_hw_init_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_hw_init_common(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.ecore_ptt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ecore_qm_info*, align 8
  %9 = alloca %struct.ecore_dev*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %17 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %16, i32 0, i32 3
  store %struct.ecore_qm_info* %17, %struct.ecore_qm_info** %8, align 8
  %18 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %19 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %18, i32 0, i32 2
  %20 = load %struct.ecore_dev*, %struct.ecore_dev** %19, align 8
  store %struct.ecore_dev* %20, %struct.ecore_dev** %9, align 8
  %21 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %21, i32* %15, align 4
  %22 = load %struct.ecore_dev*, %struct.ecore_dev** %9, align 8
  %23 = call i32 @ecore_init_cau_rt_data(%struct.ecore_dev* %22)
  %24 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %25 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %26 = call i32 @ecore_gtt_init(%struct.ecore_hwfn* %24, %struct.ecore_ptt* %25)
  %27 = load %struct.ecore_dev*, %struct.ecore_dev** %9, align 8
  %28 = call i64 @CHIP_REV_IS_EMUL(%struct.ecore_dev* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %3
  %31 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %32 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %33 = call i32 @ecore_hw_init_chip(%struct.ecore_hwfn* %31, %struct.ecore_ptt* %32)
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %15, align 4
  %35 = load i32, i32* @ECORE_SUCCESS, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* %15, align 4
  store i32 %38, i32* %4, align 4
  br label %200

39:                                               ; preds = %30
  br label %40

40:                                               ; preds = %39, %3
  %41 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %42 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = icmp ne %struct.TYPE_4__* %43, null
  br i1 %44, label %45, label %68

45:                                               ; preds = %40
  %46 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %47 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %8, align 8
  %55 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %54, i32 0, i32 0
  store i32 1, i32* %55, align 4
  br label %56

56:                                               ; preds = %53, %45
  %57 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %58 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %57, i32 0, i32 1
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %56
  %65 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %8, align 8
  %66 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %65, i32 0, i32 1
  store i32 1, i32* %66, align 4
  br label %67

67:                                               ; preds = %64, %56
  br label %68

68:                                               ; preds = %67, %40
  %69 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %70 = load %struct.ecore_dev*, %struct.ecore_dev** %9, align 8
  %71 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %8, align 8
  %74 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %8, align 8
  %77 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %8, align 8
  %80 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %8, align 8
  %83 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %8, align 8
  %86 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %8, align 8
  %89 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @ecore_qm_common_rt_init(%struct.ecore_hwfn* %69, i32 %72, i32 %75, i32 %78, i32 %81, i32 %84, i32 %87, i32 %90)
  %92 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %93 = call i32 @ecore_cxt_hw_init_common(%struct.ecore_hwfn* %92)
  %94 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %95 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %96 = call i32 @ecore_init_cache_line_size(%struct.ecore_hwfn* %94, %struct.ecore_ptt* %95)
  %97 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %98 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %99 = load i32, i32* @PHASE_ENGINE, align 4
  %100 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %101 = call i32 @ECORE_PATH_ID(%struct.ecore_hwfn* %100)
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @ecore_init_run(%struct.ecore_hwfn* %97, %struct.ecore_ptt* %98, i32 %99, i32 %101, i32 %102)
  store i32 %103, i32* %15, align 4
  %104 = load i32, i32* %15, align 4
  %105 = load i32, i32* @ECORE_SUCCESS, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %68
  %108 = load i32, i32* %15, align 4
  store i32 %108, i32* %4, align 4
  br label %200

109:                                              ; preds = %68
  %110 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %111 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %112 = load i32, i32* @PSWRQ2_REG_L2P_VALIDATE_VFID, align 4
  %113 = call i32 @ecore_wr(%struct.ecore_hwfn* %110, %struct.ecore_ptt* %111, i32 %112, i32 0)
  %114 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %115 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %116 = load i32, i32* @PGLUE_B_REG_USE_CLIENTID_IN_TAG, align 4
  %117 = call i32 @ecore_wr(%struct.ecore_hwfn* %114, %struct.ecore_ptt* %115, i32 %116, i32 1)
  %118 = load %struct.ecore_dev*, %struct.ecore_dev** %9, align 8
  %119 = call i64 @ECORE_IS_BB(%struct.ecore_dev* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %151

121:                                              ; preds = %109
  %122 = load %struct.ecore_dev*, %struct.ecore_dev** %9, align 8
  %123 = call i64 @NUM_OF_ENG_PFS(%struct.ecore_dev* %122)
  store i64 %123, i64* %12, align 8
  store i64 0, i64* %13, align 8
  br label %124

124:                                              ; preds = %141, %121
  %125 = load i64, i64* %13, align 8
  %126 = load i64, i64* %12, align 8
  %127 = icmp slt i64 %125, %126
  br i1 %127, label %128, label %144

128:                                              ; preds = %124
  %129 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %130 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %131 = load i64, i64* %13, align 8
  %132 = call i32 @ecore_fid_pretend(%struct.ecore_hwfn* %129, %struct.ecore_ptt* %130, i64 %131)
  %133 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %134 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %135 = load i32, i32* @PRS_REG_SEARCH_ROCE, align 4
  %136 = call i32 @ecore_wr(%struct.ecore_hwfn* %133, %struct.ecore_ptt* %134, i32 %135, i32 0)
  %137 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %138 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %139 = load i32, i32* @PRS_REG_SEARCH_TCP, align 4
  %140 = call i32 @ecore_wr(%struct.ecore_hwfn* %137, %struct.ecore_ptt* %138, i32 %139, i32 0)
  br label %141

141:                                              ; preds = %128
  %142 = load i64, i64* %13, align 8
  %143 = add nsw i64 %142, 1
  store i64 %143, i64* %13, align 8
  br label %124

144:                                              ; preds = %124
  %145 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %146 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %147 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %148 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = call i32 @ecore_fid_pretend(%struct.ecore_hwfn* %145, %struct.ecore_ptt* %146, i64 %149)
  br label %151

151:                                              ; preds = %144, %109
  %152 = load %struct.ecore_dev*, %struct.ecore_dev** %9, align 8
  %153 = call i64 @ECORE_IS_AH(%struct.ecore_dev* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %151
  %156 = load i64, i64* @MAX_NUM_VFS_K2, align 8
  br label %159

157:                                              ; preds = %151
  %158 = load i64, i64* @MAX_NUM_VFS_BB, align 8
  br label %159

159:                                              ; preds = %157, %155
  %160 = phi i64 [ %156, %155 ], [ %158, %157 ]
  store i64 %160, i64* %11, align 8
  store i64 0, i64* %10, align 8
  br label %161

161:                                              ; preds = %189, %159
  %162 = load i64, i64* %10, align 8
  %163 = load i64, i64* %11, align 8
  %164 = icmp slt i64 %162, %163
  br i1 %164, label %165, label %192

165:                                              ; preds = %161
  %166 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %167 = load i64, i64* %10, align 8
  %168 = call i64 @ecore_vfid_to_concrete(%struct.ecore_hwfn* %166, i64 %167)
  store i64 %168, i64* %14, align 8
  %169 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %170 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %171 = load i64, i64* %14, align 8
  %172 = call i32 @ecore_fid_pretend(%struct.ecore_hwfn* %169, %struct.ecore_ptt* %170, i64 %171)
  %173 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %174 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %175 = load i32, i32* @CCFC_REG_STRONG_ENABLE_VF, align 4
  %176 = call i32 @ecore_wr(%struct.ecore_hwfn* %173, %struct.ecore_ptt* %174, i32 %175, i32 1)
  %177 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %178 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %179 = load i32, i32* @CCFC_REG_WEAK_ENABLE_VF, align 4
  %180 = call i32 @ecore_wr(%struct.ecore_hwfn* %177, %struct.ecore_ptt* %178, i32 %179, i32 0)
  %181 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %182 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %183 = load i32, i32* @TCFC_REG_STRONG_ENABLE_VF, align 4
  %184 = call i32 @ecore_wr(%struct.ecore_hwfn* %181, %struct.ecore_ptt* %182, i32 %183, i32 1)
  %185 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %186 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %187 = load i32, i32* @TCFC_REG_WEAK_ENABLE_VF, align 4
  %188 = call i32 @ecore_wr(%struct.ecore_hwfn* %185, %struct.ecore_ptt* %186, i32 %187, i32 0)
  br label %189

189:                                              ; preds = %165
  %190 = load i64, i64* %10, align 8
  %191 = add nsw i64 %190, 1
  store i64 %191, i64* %10, align 8
  br label %161

192:                                              ; preds = %161
  %193 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %194 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %195 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %196 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = call i32 @ecore_fid_pretend(%struct.ecore_hwfn* %193, %struct.ecore_ptt* %194, i64 %197)
  %199 = load i32, i32* %15, align 4
  store i32 %199, i32* %4, align 4
  br label %200

200:                                              ; preds = %192, %107, %37
  %201 = load i32, i32* %4, align 4
  ret i32 %201
}

declare dso_local i32 @ecore_init_cau_rt_data(%struct.ecore_dev*) #1

declare dso_local i32 @ecore_gtt_init(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

declare dso_local i64 @CHIP_REV_IS_EMUL(%struct.ecore_dev*) #1

declare dso_local i32 @ecore_hw_init_chip(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

declare dso_local i32 @ecore_qm_common_rt_init(%struct.ecore_hwfn*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ecore_cxt_hw_init_common(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_init_cache_line_size(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

declare dso_local i32 @ecore_init_run(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32, i32) #1

declare dso_local i32 @ECORE_PATH_ID(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_wr(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32) #1

declare dso_local i64 @ECORE_IS_BB(%struct.ecore_dev*) #1

declare dso_local i64 @NUM_OF_ENG_PFS(%struct.ecore_dev*) #1

declare dso_local i32 @ecore_fid_pretend(%struct.ecore_hwfn*, %struct.ecore_ptt*, i64) #1

declare dso_local i64 @ECORE_IS_AH(%struct.ecore_dev*) #1

declare dso_local i64 @ecore_vfid_to_concrete(%struct.ecore_hwfn*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
