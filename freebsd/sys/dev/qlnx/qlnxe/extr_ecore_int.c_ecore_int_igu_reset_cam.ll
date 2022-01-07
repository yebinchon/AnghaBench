; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_int.c_ecore_int_igu_reset_cam.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_int.c_ecore_int_igu_reset_cam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32, %struct.TYPE_8__*, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { %struct.ecore_igu_info* }
%struct.ecore_igu_info = type { i32, i64, %struct.TYPE_7__, %struct.ecore_igu_block* }
%struct.TYPE_7__ = type { i32, i64, i64, i64, i64, i64 }
%struct.ecore_igu_block = type { i32, i32, i32, i32 }
%struct.ecore_ptt = type { i32 }

@ECORE_SB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"MFW notifies of 0x%04x PF SBs; IGU indicates of only 0x%04x\0A\00", align 1
@ECORE_MSG_INTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"0x%04x VF SBs in IGU CAM != PCI configuration 0x%04x\0A\00", align 1
@.str.2 = private unnamed_addr constant [80 x i8] c"Not enough SBs for VFs - 0x%04x SBs, from which %04x PFs and %04x are required\0A\00", align 1
@ECORE_INVAL = common dso_local global i32 0, align 4
@ECORE_IGU_STATUS_VALID = common dso_local global i32 0, align 4
@ECORE_IGU_STATUS_DSB = common dso_local global i32 0, align 4
@ECORE_IGU_STATUS_PF = common dso_local global i32 0, align 4
@ECORE_IGU_STATUS_FREE = common dso_local global i32 0, align 4
@IGU_MAPPING_LINE_FUNCTION_NUMBER = common dso_local global i32 0, align 4
@IGU_MAPPING_LINE_PF_VALID = common dso_local global i32 0, align 4
@IGU_MAPPING_LINE_VECTOR_NUMBER = common dso_local global i32 0, align 4
@IGU_MAPPING_LINE_VALID = common dso_local global i32 0, align 4
@IGU_REG_MAPPING_MEMORY = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [81 x i8] c"IGU reset: [SB 0x%04x] func_id = %d is_pf = %d vector_num = 0x%x [%08x -> %08x]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_int_igu_reset_cam(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_ptt*, align 8
  %6 = alloca %struct.ecore_igu_info*, align 8
  %7 = alloca %struct.ecore_igu_block*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %5, align 8
  %14 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %15 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.ecore_igu_info*, %struct.ecore_igu_info** %16, align 8
  store %struct.ecore_igu_info* %17, %struct.ecore_igu_info** %6, align 8
  %18 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %19 = load i32, i32* @ECORE_SB, align 4
  %20 = call i32 @RESC_NUM(%struct.ecore_hwfn* %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load %struct.ecore_igu_info*, %struct.ecore_igu_info** %6, align 8
  %24 = getelementptr inbounds %struct.ecore_igu_info, %struct.ecore_igu_info* %23, i32 0, i32 0
  store i32 0, i32* %24, align 8
  br label %122

25:                                               ; preds = %2
  %26 = load %struct.ecore_igu_info*, %struct.ecore_igu_info** %6, align 8
  %27 = getelementptr inbounds %struct.ecore_igu_info, %struct.ecore_igu_info* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load %struct.ecore_igu_info*, %struct.ecore_igu_info** %6, align 8
  %29 = getelementptr inbounds %struct.ecore_igu_info, %struct.ecore_igu_info* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %33 = load i32, i32* @ECORE_SB, align 4
  %34 = call i32 @RESC_NUM(%struct.ecore_hwfn* %32, i32 %33)
  %35 = sub nsw i32 %34, 1
  %36 = icmp ne i32 %31, %35
  br i1 %36, label %37, label %55

37:                                               ; preds = %25
  %38 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %39 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %40 = load i32, i32* @ECORE_SB, align 4
  %41 = call i32 @RESC_NUM(%struct.ecore_hwfn* %39, i32 %40)
  %42 = sub nsw i32 %41, 1
  %43 = load %struct.ecore_igu_info*, %struct.ecore_igu_info** %6, align 8
  %44 = getelementptr inbounds %struct.ecore_igu_info, %struct.ecore_igu_info* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @DP_INFO(%struct.ecore_hwfn* %38, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %46)
  %48 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %49 = load i32, i32* @ECORE_SB, align 4
  %50 = call i32 @RESC_NUM(%struct.ecore_hwfn* %48, i32 %49)
  %51 = sub nsw i32 %50, 1
  %52 = load %struct.ecore_igu_info*, %struct.ecore_igu_info** %6, align 8
  %53 = getelementptr inbounds %struct.ecore_igu_info, %struct.ecore_igu_info* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 8
  br label %55

55:                                               ; preds = %37, %25
  %56 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %57 = call i64 @IS_PF_SRIOV(%struct.ecore_hwfn* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %121

59:                                               ; preds = %55
  %60 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %61 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %60, i32 0, i32 1
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %13, align 8
  %67 = load i64, i64* %13, align 8
  %68 = load %struct.ecore_igu_info*, %struct.ecore_igu_info** %6, align 8
  %69 = getelementptr inbounds %struct.ecore_igu_info, %struct.ecore_igu_info* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %67, %71
  br i1 %72, label %73, label %83

73:                                               ; preds = %59
  %74 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %75 = load i32, i32* @ECORE_MSG_INTR, align 4
  %76 = load %struct.ecore_igu_info*, %struct.ecore_igu_info** %6, align 8
  %77 = getelementptr inbounds %struct.ecore_igu_info, %struct.ecore_igu_info* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %13, align 8
  %81 = trunc i64 %80 to i32
  %82 = call i32 (%struct.ecore_hwfn*, i32, i8*, i64, i32, ...) @DP_VERBOSE(%struct.ecore_hwfn* %74, i32 %75, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i64 %79, i32 %81)
  br label %83

83:                                               ; preds = %73, %59
  %84 = load i64, i64* %13, align 8
  %85 = load %struct.ecore_igu_info*, %struct.ecore_igu_info** %6, align 8
  %86 = getelementptr inbounds %struct.ecore_igu_info, %struct.ecore_igu_info* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.ecore_igu_info*, %struct.ecore_igu_info** %6, align 8
  %90 = getelementptr inbounds %struct.ecore_igu_info, %struct.ecore_igu_info* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %88, %92
  %94 = load %struct.ecore_igu_info*, %struct.ecore_igu_info** %6, align 8
  %95 = getelementptr inbounds %struct.ecore_igu_info, %struct.ecore_igu_info* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = sext i32 %97 to i64
  %99 = sub nsw i64 %93, %98
  %100 = icmp sgt i64 %84, %99
  br i1 %100, label %101, label %120

101:                                              ; preds = %83
  %102 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %103 = load %struct.ecore_igu_info*, %struct.ecore_igu_info** %6, align 8
  %104 = getelementptr inbounds %struct.ecore_igu_info, %struct.ecore_igu_info* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.ecore_igu_info*, %struct.ecore_igu_info** %6, align 8
  %108 = getelementptr inbounds %struct.ecore_igu_info, %struct.ecore_igu_info* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %106, %110
  %112 = load %struct.ecore_igu_info*, %struct.ecore_igu_info** %6, align 8
  %113 = getelementptr inbounds %struct.ecore_igu_info, %struct.ecore_igu_info* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = sext i32 %115 to i64
  %117 = load i64, i64* %13, align 8
  %118 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %102, i32 1, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.2, i64 0, i64 0), i64 %111, i64 %116, i64 %117)
  %119 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %119, i32* %3, align 4
  br label %359

120:                                              ; preds = %83
  br label %121

121:                                              ; preds = %120, %55
  br label %122

122:                                              ; preds = %121, %22
  %123 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %124 = call i64 @IS_PF_SRIOV(%struct.ecore_hwfn* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %137

126:                                              ; preds = %122
  %127 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %128 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %127, i32 0, i32 1
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.ecore_igu_info*, %struct.ecore_igu_info** %6, align 8
  %135 = getelementptr inbounds %struct.ecore_igu_info, %struct.ecore_igu_info* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 1
  store i64 %133, i64* %136, align 8
  br label %137

137:                                              ; preds = %126, %122
  %138 = load %struct.ecore_igu_info*, %struct.ecore_igu_info** %6, align 8
  %139 = getelementptr inbounds %struct.ecore_igu_info, %struct.ecore_igu_info* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = sext i32 %141 to i64
  %143 = load %struct.ecore_igu_info*, %struct.ecore_igu_info** %6, align 8
  %144 = getelementptr inbounds %struct.ecore_igu_info, %struct.ecore_igu_info* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 2
  store i64 %142, i64* %145, align 8
  %146 = load %struct.ecore_igu_info*, %struct.ecore_igu_info** %6, align 8
  %147 = getelementptr inbounds %struct.ecore_igu_info, %struct.ecore_igu_info* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.ecore_igu_info*, %struct.ecore_igu_info** %6, align 8
  %151 = getelementptr inbounds %struct.ecore_igu_info, %struct.ecore_igu_info* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 3
  store i64 %149, i64* %152, align 8
  %153 = load %struct.ecore_igu_info*, %struct.ecore_igu_info** %6, align 8
  %154 = getelementptr inbounds %struct.ecore_igu_info, %struct.ecore_igu_info* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = sext i32 %156 to i64
  %158 = load %struct.ecore_igu_info*, %struct.ecore_igu_info** %6, align 8
  %159 = getelementptr inbounds %struct.ecore_igu_info, %struct.ecore_igu_info* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 4
  store i64 %157, i64* %160, align 8
  %161 = load %struct.ecore_igu_info*, %struct.ecore_igu_info** %6, align 8
  %162 = getelementptr inbounds %struct.ecore_igu_info, %struct.ecore_igu_info* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.ecore_igu_info*, %struct.ecore_igu_info** %6, align 8
  %166 = getelementptr inbounds %struct.ecore_igu_info, %struct.ecore_igu_info* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 5
  store i64 %164, i64* %167, align 8
  %168 = load %struct.ecore_igu_info*, %struct.ecore_igu_info** %6, align 8
  %169 = getelementptr inbounds %struct.ecore_igu_info, %struct.ecore_igu_info* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  store i32 %171, i32* %8, align 4
  %172 = load %struct.ecore_igu_info*, %struct.ecore_igu_info** %6, align 8
  %173 = getelementptr inbounds %struct.ecore_igu_info, %struct.ecore_igu_info* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = trunc i64 %175 to i32
  store i32 %176, i32* %9, align 4
  %177 = load %struct.ecore_igu_info*, %struct.ecore_igu_info** %6, align 8
  %178 = getelementptr inbounds %struct.ecore_igu_info, %struct.ecore_igu_info* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  store i64 %179, i64* %10, align 8
  br label %180

180:                                              ; preds = %355, %137
  %181 = load i64, i64* %10, align 8
  %182 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %183 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %182, i32 0, i32 1
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %183, align 8
  %185 = call i64 @ECORE_MAPPING_MEMORY_SIZE(%struct.TYPE_8__* %184)
  %186 = icmp slt i64 %181, %185
  br i1 %186, label %187, label %358

187:                                              ; preds = %180
  %188 = load %struct.ecore_igu_info*, %struct.ecore_igu_info** %6, align 8
  %189 = getelementptr inbounds %struct.ecore_igu_info, %struct.ecore_igu_info* %188, i32 0, i32 3
  %190 = load %struct.ecore_igu_block*, %struct.ecore_igu_block** %189, align 8
  %191 = load i64, i64* %10, align 8
  %192 = getelementptr inbounds %struct.ecore_igu_block, %struct.ecore_igu_block* %190, i64 %191
  store %struct.ecore_igu_block* %192, %struct.ecore_igu_block** %7, align 8
  store i64 0, i64* %11, align 8
  %193 = load %struct.ecore_igu_block*, %struct.ecore_igu_block** %7, align 8
  %194 = getelementptr inbounds %struct.ecore_igu_block, %struct.ecore_igu_block* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* @ECORE_IGU_STATUS_VALID, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %200, label %199

199:                                              ; preds = %187
  br label %355

200:                                              ; preds = %187
  %201 = load %struct.ecore_igu_block*, %struct.ecore_igu_block** %7, align 8
  %202 = getelementptr inbounds %struct.ecore_igu_block, %struct.ecore_igu_block* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @ECORE_IGU_STATUS_DSB, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %224

207:                                              ; preds = %200
  %208 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %209 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.ecore_igu_block*, %struct.ecore_igu_block** %7, align 8
  %212 = getelementptr inbounds %struct.ecore_igu_block, %struct.ecore_igu_block* %211, i32 0, i32 1
  store i32 %210, i32* %212, align 4
  %213 = load %struct.ecore_igu_block*, %struct.ecore_igu_block** %7, align 8
  %214 = getelementptr inbounds %struct.ecore_igu_block, %struct.ecore_igu_block* %213, i32 0, i32 2
  store i32 1, i32* %214, align 4
  %215 = load %struct.ecore_igu_block*, %struct.ecore_igu_block** %7, align 8
  %216 = getelementptr inbounds %struct.ecore_igu_block, %struct.ecore_igu_block* %215, i32 0, i32 3
  store i32 0, i32* %216, align 4
  %217 = load i32, i32* @ECORE_IGU_STATUS_VALID, align 4
  %218 = load i32, i32* @ECORE_IGU_STATUS_PF, align 4
  %219 = or i32 %217, %218
  %220 = load i32, i32* @ECORE_IGU_STATUS_DSB, align 4
  %221 = or i32 %219, %220
  %222 = load %struct.ecore_igu_block*, %struct.ecore_igu_block** %7, align 8
  %223 = getelementptr inbounds %struct.ecore_igu_block, %struct.ecore_igu_block* %222, i32 0, i32 0
  store i32 %221, i32* %223, align 4
  br label %295

224:                                              ; preds = %200
  %225 = load i32, i32* %8, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %252

227:                                              ; preds = %224
  %228 = load i32, i32* %8, align 4
  %229 = add nsw i32 %228, -1
  store i32 %229, i32* %8, align 4
  %230 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %231 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.ecore_igu_block*, %struct.ecore_igu_block** %7, align 8
  %234 = getelementptr inbounds %struct.ecore_igu_block, %struct.ecore_igu_block* %233, i32 0, i32 1
  store i32 %232, i32* %234, align 4
  %235 = load %struct.ecore_igu_block*, %struct.ecore_igu_block** %7, align 8
  %236 = getelementptr inbounds %struct.ecore_igu_block, %struct.ecore_igu_block* %235, i32 0, i32 2
  store i32 1, i32* %236, align 4
  %237 = load %struct.ecore_igu_info*, %struct.ecore_igu_info** %6, align 8
  %238 = getelementptr inbounds %struct.ecore_igu_info, %struct.ecore_igu_info* %237, i32 0, i32 2
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* %8, align 4
  %242 = sub nsw i32 %240, %241
  %243 = load %struct.ecore_igu_block*, %struct.ecore_igu_block** %7, align 8
  %244 = getelementptr inbounds %struct.ecore_igu_block, %struct.ecore_igu_block* %243, i32 0, i32 3
  store i32 %242, i32* %244, align 4
  %245 = load i32, i32* @ECORE_IGU_STATUS_VALID, align 4
  %246 = load i32, i32* @ECORE_IGU_STATUS_PF, align 4
  %247 = or i32 %245, %246
  %248 = load i32, i32* @ECORE_IGU_STATUS_FREE, align 4
  %249 = or i32 %247, %248
  %250 = load %struct.ecore_igu_block*, %struct.ecore_igu_block** %7, align 8
  %251 = getelementptr inbounds %struct.ecore_igu_block, %struct.ecore_igu_block* %250, i32 0, i32 0
  store i32 %249, i32* %251, align 4
  br label %294

252:                                              ; preds = %224
  %253 = load i32, i32* %9, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %286

255:                                              ; preds = %252
  %256 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %257 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %256, i32 0, i32 1
  %258 = load %struct.TYPE_8__*, %struct.TYPE_8__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i32 0, i32 0
  %260 = load %struct.TYPE_6__*, %struct.TYPE_6__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 8
  %263 = sext i32 %262 to i64
  %264 = load %struct.ecore_igu_info*, %struct.ecore_igu_info** %6, align 8
  %265 = getelementptr inbounds %struct.ecore_igu_info, %struct.ecore_igu_info* %264, i32 0, i32 2
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %265, i32 0, i32 1
  %267 = load i64, i64* %266, align 8
  %268 = add nsw i64 %263, %267
  %269 = load i32, i32* %9, align 4
  %270 = sext i32 %269 to i64
  %271 = sub nsw i64 %268, %270
  %272 = trunc i64 %271 to i32
  %273 = load %struct.ecore_igu_block*, %struct.ecore_igu_block** %7, align 8
  %274 = getelementptr inbounds %struct.ecore_igu_block, %struct.ecore_igu_block* %273, i32 0, i32 1
  store i32 %272, i32* %274, align 4
  %275 = load %struct.ecore_igu_block*, %struct.ecore_igu_block** %7, align 8
  %276 = getelementptr inbounds %struct.ecore_igu_block, %struct.ecore_igu_block* %275, i32 0, i32 2
  store i32 0, i32* %276, align 4
  %277 = load %struct.ecore_igu_block*, %struct.ecore_igu_block** %7, align 8
  %278 = getelementptr inbounds %struct.ecore_igu_block, %struct.ecore_igu_block* %277, i32 0, i32 3
  store i32 0, i32* %278, align 4
  %279 = load i32, i32* @ECORE_IGU_STATUS_VALID, align 4
  %280 = load i32, i32* @ECORE_IGU_STATUS_FREE, align 4
  %281 = or i32 %279, %280
  %282 = load %struct.ecore_igu_block*, %struct.ecore_igu_block** %7, align 8
  %283 = getelementptr inbounds %struct.ecore_igu_block, %struct.ecore_igu_block* %282, i32 0, i32 0
  store i32 %281, i32* %283, align 4
  %284 = load i32, i32* %9, align 4
  %285 = add nsw i32 %284, -1
  store i32 %285, i32* %9, align 4
  br label %293

286:                                              ; preds = %252
  %287 = load %struct.ecore_igu_block*, %struct.ecore_igu_block** %7, align 8
  %288 = getelementptr inbounds %struct.ecore_igu_block, %struct.ecore_igu_block* %287, i32 0, i32 1
  store i32 0, i32* %288, align 4
  %289 = load %struct.ecore_igu_block*, %struct.ecore_igu_block** %7, align 8
  %290 = getelementptr inbounds %struct.ecore_igu_block, %struct.ecore_igu_block* %289, i32 0, i32 2
  store i32 0, i32* %290, align 4
  %291 = load %struct.ecore_igu_block*, %struct.ecore_igu_block** %7, align 8
  %292 = getelementptr inbounds %struct.ecore_igu_block, %struct.ecore_igu_block* %291, i32 0, i32 3
  store i32 0, i32* %292, align 4
  br label %293

293:                                              ; preds = %286, %255
  br label %294

294:                                              ; preds = %293, %227
  br label %295

295:                                              ; preds = %294, %207
  %296 = load i64, i64* %11, align 8
  %297 = load i32, i32* @IGU_MAPPING_LINE_FUNCTION_NUMBER, align 4
  %298 = load %struct.ecore_igu_block*, %struct.ecore_igu_block** %7, align 8
  %299 = getelementptr inbounds %struct.ecore_igu_block, %struct.ecore_igu_block* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  %301 = call i32 @SET_FIELD(i64 %296, i32 %297, i32 %300)
  %302 = load i64, i64* %11, align 8
  %303 = load i32, i32* @IGU_MAPPING_LINE_PF_VALID, align 4
  %304 = load %struct.ecore_igu_block*, %struct.ecore_igu_block** %7, align 8
  %305 = getelementptr inbounds %struct.ecore_igu_block, %struct.ecore_igu_block* %304, i32 0, i32 2
  %306 = load i32, i32* %305, align 4
  %307 = call i32 @SET_FIELD(i64 %302, i32 %303, i32 %306)
  %308 = load i64, i64* %11, align 8
  %309 = load i32, i32* @IGU_MAPPING_LINE_VECTOR_NUMBER, align 4
  %310 = load %struct.ecore_igu_block*, %struct.ecore_igu_block** %7, align 8
  %311 = getelementptr inbounds %struct.ecore_igu_block, %struct.ecore_igu_block* %310, i32 0, i32 3
  %312 = load i32, i32* %311, align 4
  %313 = call i32 @SET_FIELD(i64 %308, i32 %309, i32 %312)
  %314 = load i64, i64* %11, align 8
  %315 = load i32, i32* @IGU_MAPPING_LINE_VALID, align 4
  %316 = load %struct.ecore_igu_block*, %struct.ecore_igu_block** %7, align 8
  %317 = getelementptr inbounds %struct.ecore_igu_block, %struct.ecore_igu_block* %316, i32 0, i32 2
  %318 = load i32, i32* %317, align 4
  %319 = call i32 @SET_FIELD(i64 %314, i32 %315, i32 %318)
  %320 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %321 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %322 = load i64, i64* @IGU_REG_MAPPING_MEMORY, align 8
  %323 = load i64, i64* %10, align 8
  %324 = mul i64 8, %323
  %325 = add i64 %322, %324
  %326 = call i64 @ecore_rd(%struct.ecore_hwfn* %320, %struct.ecore_ptt* %321, i64 %325)
  store i64 %326, i64* %12, align 8
  %327 = load i64, i64* %12, align 8
  %328 = load i64, i64* %11, align 8
  %329 = icmp ne i64 %327, %328
  br i1 %329, label %330, label %354

330:                                              ; preds = %295
  %331 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %332 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %333 = load i64, i64* @IGU_REG_MAPPING_MEMORY, align 8
  %334 = load i64, i64* %10, align 8
  %335 = mul i64 8, %334
  %336 = add i64 %333, %335
  %337 = load i64, i64* %11, align 8
  %338 = call i32 @ecore_wr(%struct.ecore_hwfn* %331, %struct.ecore_ptt* %332, i64 %336, i64 %337)
  %339 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %340 = load i32, i32* @ECORE_MSG_INTR, align 4
  %341 = load i64, i64* %10, align 8
  %342 = load %struct.ecore_igu_block*, %struct.ecore_igu_block** %7, align 8
  %343 = getelementptr inbounds %struct.ecore_igu_block, %struct.ecore_igu_block* %342, i32 0, i32 1
  %344 = load i32, i32* %343, align 4
  %345 = load %struct.ecore_igu_block*, %struct.ecore_igu_block** %7, align 8
  %346 = getelementptr inbounds %struct.ecore_igu_block, %struct.ecore_igu_block* %345, i32 0, i32 2
  %347 = load i32, i32* %346, align 4
  %348 = load %struct.ecore_igu_block*, %struct.ecore_igu_block** %7, align 8
  %349 = getelementptr inbounds %struct.ecore_igu_block, %struct.ecore_igu_block* %348, i32 0, i32 3
  %350 = load i32, i32* %349, align 4
  %351 = load i64, i64* %12, align 8
  %352 = load i64, i64* %11, align 8
  %353 = call i32 (%struct.ecore_hwfn*, i32, i8*, i64, i32, ...) @DP_VERBOSE(%struct.ecore_hwfn* %339, i32 %340, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.3, i64 0, i64 0), i64 %341, i32 %344, i32 %347, i32 %350, i64 %351, i64 %352)
  br label %354

354:                                              ; preds = %330, %295
  br label %355

355:                                              ; preds = %354, %199
  %356 = load i64, i64* %10, align 8
  %357 = add nsw i64 %356, 1
  store i64 %357, i64* %10, align 8
  br label %180

358:                                              ; preds = %180
  store i32 0, i32* %3, align 4
  br label %359

359:                                              ; preds = %358, %101
  %360 = load i32, i32* %3, align 4
  ret i32 %360
}

declare dso_local i32 @RESC_NUM(%struct.ecore_hwfn*, i32) #1

declare dso_local i32 @DP_INFO(%struct.ecore_hwfn*, i8*, i32, i32) #1

declare dso_local i64 @IS_PF_SRIOV(%struct.ecore_hwfn*) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i64, i32, ...) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, i64, i64, i64) #1

declare dso_local i64 @ECORE_MAPPING_MEMORY_SIZE(%struct.TYPE_8__*) #1

declare dso_local i32 @SET_FIELD(i64, i32, i32) #1

declare dso_local i64 @ecore_rd(%struct.ecore_hwfn*, %struct.ecore_ptt*, i64) #1

declare dso_local i32 @ecore_wr(%struct.ecore_hwfn*, %struct.ecore_ptt*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
