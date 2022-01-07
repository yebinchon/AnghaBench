; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_int.c_ecore_int_igu_relocate_sb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_int.c_ecore_int_igu_relocate_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_igu_block = type { i32, i32, i32, i32 }
%struct.ecore_hwfn = type { i32, %struct.TYPE_8__, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i32*, %struct.ecore_igu_info* }
%struct.ecore_igu_info = type { %struct.TYPE_7__, %struct.ecore_igu_block*, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.ecore_ptt = type { i32 }

@OSAL_NULL = common dso_local global %struct.ecore_igu_block* null, align 8
@ECORE_INVAL = common dso_local global i32 0, align 4
@ECORE_SP_SB_ID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"Can't relocate SBs as MFW is too old.\0A\00", align 1
@ECORE_SB_INVALID_IDX = common dso_local global i64 0, align 8
@ECORE_IGU_STATUS_VALID = common dso_local global i32 0, align 4
@ECORE_IGU_STATUS_FREE = common dso_local global i32 0, align 4
@ECORE_IGU_STATUS_PF = common dso_local global i32 0, align 4
@ECORE_MSG_INTR = common dso_local global i32 0, align 4
@ECORE_MSG_IOV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to find a free SB to move\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"SB address (p_block) is NULL\0A\00", align 1
@ECORE_PF_L2_QUE = common dso_local global i64 0, align 8
@ECORE_VF_L2_QUE = common dso_local global i64 0, align 8
@IGU_MAPPING_LINE_FUNCTION_NUMBER = common dso_local global i32 0, align 4
@IGU_MAPPING_LINE_PF_VALID = common dso_local global i32 0, align 4
@IGU_MAPPING_LINE_VALID = common dso_local global i32 0, align 4
@IGU_MAPPING_LINE_VECTOR_NUMBER = common dso_local global i32 0, align 4
@IGU_REG_MAPPING_MEMORY = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [67 x i8] c"Relocation: [SB 0x%04x] func_id = %d is_pf = %d vector_num = 0x%x\0A\00", align 1
@ECORE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_int_igu_relocate_sb(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ecore_hwfn*, align 8
  %7 = alloca %struct.ecore_ptt*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ecore_igu_info*, align 8
  %11 = alloca %struct.ecore_igu_block*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %6, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %16 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = load %struct.ecore_igu_info*, %struct.ecore_igu_info** %17, align 8
  store %struct.ecore_igu_info* %18, %struct.ecore_igu_info** %10, align 8
  %19 = load %struct.ecore_igu_block*, %struct.ecore_igu_block** @OSAL_NULL, align 8
  store %struct.ecore_igu_block* %19, %struct.ecore_igu_block** %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i32 0, i32* %14, align 4
  %20 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %21 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %20, i32 0, i32 2
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = call i64 @IS_VF(%struct.TYPE_9__* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %4
  %26 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %27 = call i32 @IS_PF_SRIOV(%struct.ecore_hwfn* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %25, %4
  %30 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %30, i32* %5, align 4
  br label %320

31:                                               ; preds = %25
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* @ECORE_SP_SB_ID, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %36, i32* %5, align 4
  br label %320

37:                                               ; preds = %31
  %38 = load %struct.ecore_igu_info*, %struct.ecore_igu_info** %10, align 8
  %39 = getelementptr inbounds %struct.ecore_igu_info, %struct.ecore_igu_info* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %37
  %43 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %44 = call i32 @DP_INFO(%struct.ecore_hwfn* %43, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %45, i32* %5, align 4
  br label %320

46:                                               ; preds = %37
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %46
  %50 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %51 = load i64, i64* %8, align 8
  %52 = add nsw i64 %51, 1
  %53 = call i64 @ecore_get_pf_igu_sb_id(%struct.ecore_hwfn* %50, i64 %52)
  store i64 %53, i64* %12, align 8
  %54 = load i64, i64* %12, align 8
  %55 = load i64, i64* @ECORE_SB_INVALID_IDX, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %58, i32* %5, align 4
  br label %320

59:                                               ; preds = %49
  br label %60

60:                                               ; preds = %59, %46
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %73, label %63

63:                                               ; preds = %60
  %64 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %65 = load i64, i64* %8, align 8
  %66 = add nsw i64 %65, 1
  %67 = call i64 @ecore_get_pf_igu_sb_id(%struct.ecore_hwfn* %64, i64 %66)
  %68 = load i64, i64* @ECORE_SB_INVALID_IDX, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %71, i32* %5, align 4
  br label %320

72:                                               ; preds = %63
  br label %73

73:                                               ; preds = %72, %60
  br label %74

74:                                               ; preds = %119, %73
  %75 = load i64, i64* %12, align 8
  %76 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %77 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %76, i32 0, i32 2
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %77, align 8
  %79 = call i64 @ECORE_MAPPING_MEMORY_SIZE(%struct.TYPE_9__* %78)
  %80 = icmp slt i64 %75, %79
  br i1 %80, label %81, label %122

81:                                               ; preds = %74
  %82 = load %struct.ecore_igu_info*, %struct.ecore_igu_info** %10, align 8
  %83 = getelementptr inbounds %struct.ecore_igu_info, %struct.ecore_igu_info* %82, i32 0, i32 1
  %84 = load %struct.ecore_igu_block*, %struct.ecore_igu_block** %83, align 8
  %85 = load i64, i64* %12, align 8
  %86 = getelementptr inbounds %struct.ecore_igu_block, %struct.ecore_igu_block* %84, i64 %85
  store %struct.ecore_igu_block* %86, %struct.ecore_igu_block** %11, align 8
  %87 = load %struct.ecore_igu_block*, %struct.ecore_igu_block** %11, align 8
  %88 = getelementptr inbounds %struct.ecore_igu_block, %struct.ecore_igu_block* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @ECORE_IGU_STATUS_VALID, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %112

93:                                               ; preds = %81
  %94 = load %struct.ecore_igu_block*, %struct.ecore_igu_block** %11, align 8
  %95 = getelementptr inbounds %struct.ecore_igu_block, %struct.ecore_igu_block* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @ECORE_IGU_STATUS_FREE, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %112

100:                                              ; preds = %93
  %101 = load %struct.ecore_igu_block*, %struct.ecore_igu_block** %11, align 8
  %102 = getelementptr inbounds %struct.ecore_igu_block, %struct.ecore_igu_block* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @ECORE_IGU_STATUS_PF, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  %107 = xor i1 %106, true
  %108 = xor i1 %107, true
  %109 = zext i1 %108 to i32
  %110 = load i32, i32* %9, align 4
  %111 = icmp ne i32 %109, %110
  br i1 %111, label %112, label %118

112:                                              ; preds = %100, %93, %81
  %113 = load i32, i32* %9, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %112
  %116 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %116, i32* %5, align 4
  br label %320

117:                                              ; preds = %112
  br label %119

118:                                              ; preds = %100
  br label %122

119:                                              ; preds = %117
  %120 = load i64, i64* %12, align 8
  %121 = add nsw i64 %120, 1
  store i64 %121, i64* %12, align 8
  br label %74

122:                                              ; preds = %118, %74
  %123 = load i64, i64* %12, align 8
  %124 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %125 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %124, i32 0, i32 2
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %125, align 8
  %127 = call i64 @ECORE_MAPPING_MEMORY_SIZE(%struct.TYPE_9__* %126)
  %128 = icmp eq i64 %123, %127
  br i1 %128, label %129, label %136

129:                                              ; preds = %122
  %130 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %131 = load i32, i32* @ECORE_MSG_INTR, align 4
  %132 = load i32, i32* @ECORE_MSG_IOV, align 4
  %133 = or i32 %131, %132
  %134 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %130, i32 %133, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %135 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %135, i32* %5, align 4
  br label %320

136:                                              ; preds = %122
  %137 = load %struct.ecore_igu_block*, %struct.ecore_igu_block** %11, align 8
  %138 = load %struct.ecore_igu_block*, %struct.ecore_igu_block** @OSAL_NULL, align 8
  %139 = icmp eq %struct.ecore_igu_block* %137, %138
  br i1 %139, label %140, label %147

140:                                              ; preds = %136
  %141 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %142 = load i32, i32* @ECORE_MSG_INTR, align 4
  %143 = load i32, i32* @ECORE_MSG_IOV, align 4
  %144 = or i32 %142, %143
  %145 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %141, i32 %144, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %146 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %146, i32* %5, align 4
  br label %320

147:                                              ; preds = %136
  %148 = load i32, i32* %9, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %208

150:                                              ; preds = %147
  %151 = load i32, i32* @ECORE_IGU_STATUS_PF, align 4
  %152 = xor i32 %151, -1
  %153 = load %struct.ecore_igu_block*, %struct.ecore_igu_block** %11, align 8
  %154 = getelementptr inbounds %struct.ecore_igu_block, %struct.ecore_igu_block* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = and i32 %155, %152
  store i32 %156, i32* %154, align 4
  %157 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %158 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %157, i32 0, i32 2
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  store i64 %163, i64* %13, align 8
  %164 = load i64, i64* %13, align 8
  %165 = trunc i64 %164 to i32
  %166 = load %struct.ecore_igu_block*, %struct.ecore_igu_block** %11, align 8
  %167 = getelementptr inbounds %struct.ecore_igu_block, %struct.ecore_igu_block* %166, i32 0, i32 1
  store i32 %165, i32* %167, align 4
  %168 = load %struct.ecore_igu_block*, %struct.ecore_igu_block** %11, align 8
  %169 = getelementptr inbounds %struct.ecore_igu_block, %struct.ecore_igu_block* %168, i32 0, i32 2
  store i32 0, i32* %169, align 4
  %170 = load %struct.ecore_igu_block*, %struct.ecore_igu_block** %11, align 8
  %171 = getelementptr inbounds %struct.ecore_igu_block, %struct.ecore_igu_block* %170, i32 0, i32 3
  store i32 0, i32* %171, align 4
  %172 = load %struct.ecore_igu_info*, %struct.ecore_igu_info** %10, align 8
  %173 = getelementptr inbounds %struct.ecore_igu_info, %struct.ecore_igu_info* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = add nsw i32 %175, -1
  store i32 %176, i32* %174, align 4
  %177 = load %struct.ecore_igu_info*, %struct.ecore_igu_info** %10, align 8
  %178 = getelementptr inbounds %struct.ecore_igu_info, %struct.ecore_igu_info* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = add nsw i32 %180, -1
  store i32 %181, i32* %179, align 8
  %182 = load %struct.ecore_igu_info*, %struct.ecore_igu_info** %10, align 8
  %183 = getelementptr inbounds %struct.ecore_igu_info, %struct.ecore_igu_info* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %184, align 4
  %187 = load %struct.ecore_igu_info*, %struct.ecore_igu_info** %10, align 8
  %188 = getelementptr inbounds %struct.ecore_igu_info, %struct.ecore_igu_info* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %189, align 8
  %192 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %193 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 0
  %195 = load i32*, i32** %194, align 8
  %196 = load i64, i64* @ECORE_PF_L2_QUE, align 8
  %197 = getelementptr inbounds i32, i32* %195, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = add nsw i32 %198, -1
  store i32 %199, i32* %197, align 4
  %200 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %201 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 0
  %203 = load i32*, i32** %202, align 8
  %204 = load i64, i64* @ECORE_VF_L2_QUE, align 8
  %205 = getelementptr inbounds i32, i32* %203, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %205, align 4
  br label %262

208:                                              ; preds = %147
  %209 = load i32, i32* @ECORE_IGU_STATUS_PF, align 4
  %210 = load %struct.ecore_igu_block*, %struct.ecore_igu_block** %11, align 8
  %211 = getelementptr inbounds %struct.ecore_igu_block, %struct.ecore_igu_block* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = or i32 %212, %209
  store i32 %213, i32* %211, align 4
  %214 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %215 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.ecore_igu_block*, %struct.ecore_igu_block** %11, align 8
  %218 = getelementptr inbounds %struct.ecore_igu_block, %struct.ecore_igu_block* %217, i32 0, i32 1
  store i32 %216, i32* %218, align 4
  %219 = load %struct.ecore_igu_block*, %struct.ecore_igu_block** %11, align 8
  %220 = getelementptr inbounds %struct.ecore_igu_block, %struct.ecore_igu_block* %219, i32 0, i32 2
  store i32 1, i32* %220, align 4
  %221 = load i64, i64* %8, align 8
  %222 = add nsw i64 %221, 1
  %223 = trunc i64 %222 to i32
  %224 = load %struct.ecore_igu_block*, %struct.ecore_igu_block** %11, align 8
  %225 = getelementptr inbounds %struct.ecore_igu_block, %struct.ecore_igu_block* %224, i32 0, i32 3
  store i32 %223, i32* %225, align 4
  %226 = load %struct.ecore_igu_info*, %struct.ecore_igu_info** %10, align 8
  %227 = getelementptr inbounds %struct.ecore_igu_info, %struct.ecore_igu_info* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 3
  %229 = load i32, i32* %228, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %228, align 4
  %231 = load %struct.ecore_igu_info*, %struct.ecore_igu_info** %10, align 8
  %232 = getelementptr inbounds %struct.ecore_igu_info, %struct.ecore_igu_info* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 8
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %233, align 8
  %236 = load %struct.ecore_igu_info*, %struct.ecore_igu_info** %10, align 8
  %237 = getelementptr inbounds %struct.ecore_igu_info, %struct.ecore_igu_info* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = add nsw i32 %239, -1
  store i32 %240, i32* %238, align 4
  %241 = load %struct.ecore_igu_info*, %struct.ecore_igu_info** %10, align 8
  %242 = getelementptr inbounds %struct.ecore_igu_info, %struct.ecore_igu_info* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = add nsw i32 %244, -1
  store i32 %245, i32* %243, align 8
  %246 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %247 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 0
  %249 = load i32*, i32** %248, align 8
  %250 = load i64, i64* @ECORE_PF_L2_QUE, align 8
  %251 = getelementptr inbounds i32, i32* %249, i64 %250
  %252 = load i32, i32* %251, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %251, align 4
  %254 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %255 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %254, i32 0, i32 1
  %256 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %255, i32 0, i32 0
  %257 = load i32*, i32** %256, align 8
  %258 = load i64, i64* @ECORE_VF_L2_QUE, align 8
  %259 = getelementptr inbounds i32, i32* %257, i64 %258
  %260 = load i32, i32* %259, align 4
  %261 = add nsw i32 %260, -1
  store i32 %261, i32* %259, align 4
  br label %262

262:                                              ; preds = %208, %150
  %263 = load i32, i32* %14, align 4
  %264 = load i32, i32* @IGU_MAPPING_LINE_FUNCTION_NUMBER, align 4
  %265 = load %struct.ecore_igu_block*, %struct.ecore_igu_block** %11, align 8
  %266 = getelementptr inbounds %struct.ecore_igu_block, %struct.ecore_igu_block* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = call i32 @SET_FIELD(i32 %263, i32 %264, i32 %267)
  %269 = load i32, i32* %14, align 4
  %270 = load i32, i32* @IGU_MAPPING_LINE_PF_VALID, align 4
  %271 = load %struct.ecore_igu_block*, %struct.ecore_igu_block** %11, align 8
  %272 = getelementptr inbounds %struct.ecore_igu_block, %struct.ecore_igu_block* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 4
  %274 = call i32 @SET_FIELD(i32 %269, i32 %270, i32 %273)
  %275 = load i32, i32* %14, align 4
  %276 = load i32, i32* @IGU_MAPPING_LINE_VALID, align 4
  %277 = load %struct.ecore_igu_block*, %struct.ecore_igu_block** %11, align 8
  %278 = getelementptr inbounds %struct.ecore_igu_block, %struct.ecore_igu_block* %277, i32 0, i32 2
  %279 = load i32, i32* %278, align 4
  %280 = call i32 @SET_FIELD(i32 %275, i32 %276, i32 %279)
  %281 = load i32, i32* %14, align 4
  %282 = load i32, i32* @IGU_MAPPING_LINE_VECTOR_NUMBER, align 4
  %283 = load %struct.ecore_igu_block*, %struct.ecore_igu_block** %11, align 8
  %284 = getelementptr inbounds %struct.ecore_igu_block, %struct.ecore_igu_block* %283, i32 0, i32 3
  %285 = load i32, i32* %284, align 4
  %286 = call i32 @SET_FIELD(i32 %281, i32 %282, i32 %285)
  %287 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %288 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %289 = load i64, i64* @IGU_REG_MAPPING_MEMORY, align 8
  %290 = load i64, i64* %12, align 8
  %291 = mul i64 4, %290
  %292 = add i64 %289, %291
  %293 = load i32, i32* %14, align 4
  %294 = call i32 @ecore_wr(%struct.ecore_hwfn* %287, %struct.ecore_ptt* %288, i64 %292, i32 %293)
  %295 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %296 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %297 = load i64, i64* %12, align 8
  %298 = load i64, i64* %13, align 8
  %299 = load %struct.ecore_igu_block*, %struct.ecore_igu_block** %11, align 8
  %300 = getelementptr inbounds %struct.ecore_igu_block, %struct.ecore_igu_block* %299, i32 0, i32 2
  %301 = load i32, i32* %300, align 4
  %302 = icmp ne i32 %301, 0
  %303 = zext i1 %302 to i64
  %304 = select i1 %302, i32 0, i32 1
  %305 = call i32 @ecore_int_cau_conf_sb(%struct.ecore_hwfn* %295, %struct.ecore_ptt* %296, i32 0, i64 %297, i64 %298, i32 %304)
  %306 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %307 = load i32, i32* @ECORE_MSG_INTR, align 4
  %308 = load i64, i64* %12, align 8
  %309 = load %struct.ecore_igu_block*, %struct.ecore_igu_block** %11, align 8
  %310 = getelementptr inbounds %struct.ecore_igu_block, %struct.ecore_igu_block* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 4
  %312 = load %struct.ecore_igu_block*, %struct.ecore_igu_block** %11, align 8
  %313 = getelementptr inbounds %struct.ecore_igu_block, %struct.ecore_igu_block* %312, i32 0, i32 2
  %314 = load i32, i32* %313, align 4
  %315 = load %struct.ecore_igu_block*, %struct.ecore_igu_block** %11, align 8
  %316 = getelementptr inbounds %struct.ecore_igu_block, %struct.ecore_igu_block* %315, i32 0, i32 3
  %317 = load i32, i32* %316, align 4
  %318 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %306, i32 %307, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), i64 %308, i32 %311, i32 %314, i32 %317)
  %319 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %319, i32* %5, align 4
  br label %320

320:                                              ; preds = %262, %140, %129, %115, %70, %57, %42, %35, %29
  %321 = load i32, i32* %5, align 4
  ret i32 %321
}

declare dso_local i64 @IS_VF(%struct.TYPE_9__*) #1

declare dso_local i32 @IS_PF_SRIOV(%struct.ecore_hwfn*) #1

declare dso_local i32 @DP_INFO(%struct.ecore_hwfn*, i8*) #1

declare dso_local i64 @ecore_get_pf_igu_sb_id(%struct.ecore_hwfn*, i64) #1

declare dso_local i64 @ECORE_MAPPING_MEMORY_SIZE(%struct.TYPE_9__*) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, ...) #1

declare dso_local i32 @SET_FIELD(i32, i32, i32) #1

declare dso_local i32 @ecore_wr(%struct.ecore_hwfn*, %struct.ecore_ptt*, i64, i32) #1

declare dso_local i32 @ecore_int_cau_conf_sb(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
