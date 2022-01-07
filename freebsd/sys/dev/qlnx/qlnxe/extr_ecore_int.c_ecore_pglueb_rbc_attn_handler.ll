; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_int.c_ecore_pglueb_rbc_attn_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_int.c_ecore_pglueb_rbc_attn_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }

@PGLUE_B_REG_TX_ERR_WR_DETAILS2 = common dso_local global i32 0, align 4
@ECORE_PGLUE_ATTENTION_VALID = common dso_local global i32 0, align 4
@PGLUE_B_REG_TX_ERR_WR_ADD_31_0 = common dso_local global i32 0, align 4
@PGLUE_B_REG_TX_ERR_WR_ADD_63_32 = common dso_local global i32 0, align 4
@PGLUE_B_REG_TX_ERR_WR_DETAILS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [173 x i8] c"Illegal write by chip to [%08x:%08x] blocked. Details: %08x [PFID %02x, VFID %02x, VF_VALID %02x] Details2 %08x [Was_error %02x BME deassert %02x FID_enable deassert %02x]\0A\00", align 1
@ECORE_PGLUE_ATTENTION_DETAILS_PFID_MASK = common dso_local global i32 0, align 4
@ECORE_PGLUE_ATTENTION_DETAILS_PFID_SHIFT = common dso_local global i32 0, align 4
@ECORE_PGLUE_ATTENTION_DETAILS_VFID_MASK = common dso_local global i32 0, align 4
@ECORE_PGLUE_ATTENTION_DETAILS_VFID_SHIFT = common dso_local global i32 0, align 4
@ECORE_PGLUE_ATTENTION_DETAILS_VF_VALID = common dso_local global i32 0, align 4
@ECORE_PGLUE_ATTENTION_DETAILS2_WAS_ERR = common dso_local global i32 0, align 4
@ECORE_PGLUE_ATTENTION_DETAILS2_BME = common dso_local global i32 0, align 4
@ECORE_PGLUE_ATTENTION_DETAILS2_FID_EN = common dso_local global i32 0, align 4
@PGLUE_B_REG_TX_ERR_RD_DETAILS2 = common dso_local global i32 0, align 4
@ECORE_PGLUE_ATTENTION_RD_VALID = common dso_local global i32 0, align 4
@PGLUE_B_REG_TX_ERR_RD_ADD_31_0 = common dso_local global i32 0, align 4
@PGLUE_B_REG_TX_ERR_RD_ADD_63_32 = common dso_local global i32 0, align 4
@PGLUE_B_REG_TX_ERR_RD_DETAILS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [174 x i8] c"Illegal read by chip from [%08x:%08x] blocked. Details: %08x [PFID %02x, VFID %02x, VF_VALID %02x] Details2 %08x [Was_error %02x BME deassert %02x FID_enable deassert %02x]\0A\00", align 1
@PGLUE_B_REG_TX_ERR_WR_DETAILS_ICPL = common dso_local global i32 0, align 4
@ECORE_PGLUE_ATTENTION_ICPL_VALID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"ICPL eror - %08x\0A\00", align 1
@PGLUE_B_REG_MASTER_ZLR_ERR_DETAILS = common dso_local global i32 0, align 4
@ECORE_PGLUE_ATTENTION_ZLR_VALID = common dso_local global i32 0, align 4
@PGLUE_B_REG_MASTER_ZLR_ERR_ADD_31_0 = common dso_local global i32 0, align 4
@PGLUE_B_REG_MASTER_ZLR_ERR_ADD_63_32 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"ICPL eror - %08x [Address %08x:%08x]\0A\00", align 1
@PGLUE_B_REG_VF_ILT_ERR_DETAILS2 = common dso_local global i32 0, align 4
@ECORE_PGLUE_ATTENTION_ILT_VALID = common dso_local global i32 0, align 4
@PGLUE_B_REG_VF_ILT_ERR_ADD_31_0 = common dso_local global i32 0, align 4
@PGLUE_B_REG_VF_ILT_ERR_ADD_63_32 = common dso_local global i32 0, align 4
@PGLUE_B_REG_VF_ILT_ERR_DETAILS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [60 x i8] c"ILT error - Details %08x Details2 %08x [Address %08x:%08x]\0A\00", align 1
@PGLUE_B_REG_LATCHED_ERRORS_CLR = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_pglueb_rbc_attn_handler(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1) #0 {
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca %struct.ecore_ptt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %4, align 8
  %17 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %18 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %19 = load i32, i32* @PGLUE_B_REG_TX_ERR_WR_DETAILS2, align 4
  %20 = call i32 @ecore_rd(%struct.ecore_hwfn* %17, %struct.ecore_ptt* %18, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @ECORE_PGLUE_ATTENTION_VALID, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %78

25:                                               ; preds = %2
  %26 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %27 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %28 = load i32, i32* @PGLUE_B_REG_TX_ERR_WR_ADD_31_0, align 4
  %29 = call i32 @ecore_rd(%struct.ecore_hwfn* %26, %struct.ecore_ptt* %27, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %31 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %32 = load i32, i32* @PGLUE_B_REG_TX_ERR_WR_ADD_63_32, align 4
  %33 = call i32 @ecore_rd(%struct.ecore_hwfn* %30, %struct.ecore_ptt* %31, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %35 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %36 = load i32, i32* @PGLUE_B_REG_TX_ERR_WR_DETAILS, align 4
  %37 = call i32 @ecore_rd(%struct.ecore_hwfn* %34, %struct.ecore_ptt* %35, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @ECORE_PGLUE_ATTENTION_DETAILS_PFID_MASK, align 4
  %44 = and i32 %42, %43
  %45 = load i32, i32* @ECORE_PGLUE_ATTENTION_DETAILS_PFID_SHIFT, align 4
  %46 = ashr i32 %44, %45
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @ECORE_PGLUE_ATTENTION_DETAILS_VFID_MASK, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* @ECORE_PGLUE_ATTENTION_DETAILS_VFID_SHIFT, align 4
  %51 = ashr i32 %49, %50
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @ECORE_PGLUE_ATTENTION_DETAILS_VF_VALID, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 1, i32 0
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @ECORE_PGLUE_ATTENTION_DETAILS2_WAS_ERR, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i32 1, i32 0
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @ECORE_PGLUE_ATTENTION_DETAILS2_BME, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i32 1, i32 0
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @ECORE_PGLUE_ATTENTION_DETAILS2_FID_EN, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i32 1, i32 0
  %77 = call i32 (%struct.ecore_hwfn*, i32, i8*, i32, ...) @DP_NOTICE(%struct.ecore_hwfn* %38, i32 0, i8* getelementptr inbounds ([173 x i8], [173 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40, i32 %41, i32 %46, i32 %51, i32 %57, i32 %58, i32 %64, i32 %70, i32 %76)
  br label %78

78:                                               ; preds = %25, %2
  %79 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %80 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %81 = load i32, i32* @PGLUE_B_REG_TX_ERR_RD_DETAILS2, align 4
  %82 = call i32 @ecore_rd(%struct.ecore_hwfn* %79, %struct.ecore_ptt* %80, i32 %81)
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* @ECORE_PGLUE_ATTENTION_RD_VALID, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %140

87:                                               ; preds = %78
  %88 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %89 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %90 = load i32, i32* @PGLUE_B_REG_TX_ERR_RD_ADD_31_0, align 4
  %91 = call i32 @ecore_rd(%struct.ecore_hwfn* %88, %struct.ecore_ptt* %89, i32 %90)
  store i32 %91, i32* %9, align 4
  %92 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %93 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %94 = load i32, i32* @PGLUE_B_REG_TX_ERR_RD_ADD_63_32, align 4
  %95 = call i32 @ecore_rd(%struct.ecore_hwfn* %92, %struct.ecore_ptt* %93, i32 %94)
  store i32 %95, i32* %10, align 4
  %96 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %97 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %98 = load i32, i32* @PGLUE_B_REG_TX_ERR_RD_DETAILS, align 4
  %99 = call i32 @ecore_rd(%struct.ecore_hwfn* %96, %struct.ecore_ptt* %97, i32 %98)
  store i32 %99, i32* %11, align 4
  %100 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* @ECORE_PGLUE_ATTENTION_DETAILS_PFID_MASK, align 4
  %106 = and i32 %104, %105
  %107 = load i32, i32* @ECORE_PGLUE_ATTENTION_DETAILS_PFID_SHIFT, align 4
  %108 = ashr i32 %106, %107
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* @ECORE_PGLUE_ATTENTION_DETAILS_VFID_MASK, align 4
  %111 = and i32 %109, %110
  %112 = load i32, i32* @ECORE_PGLUE_ATTENTION_DETAILS_VFID_SHIFT, align 4
  %113 = ashr i32 %111, %112
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* @ECORE_PGLUE_ATTENTION_DETAILS_VF_VALID, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  %118 = zext i1 %117 to i64
  %119 = select i1 %117, i32 1, i32 0
  %120 = load i32, i32* %5, align 4
  %121 = load i32, i32* %5, align 4
  %122 = load i32, i32* @ECORE_PGLUE_ATTENTION_DETAILS2_WAS_ERR, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  %125 = zext i1 %124 to i64
  %126 = select i1 %124, i32 1, i32 0
  %127 = load i32, i32* %5, align 4
  %128 = load i32, i32* @ECORE_PGLUE_ATTENTION_DETAILS2_BME, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  %131 = zext i1 %130 to i64
  %132 = select i1 %130, i32 1, i32 0
  %133 = load i32, i32* %5, align 4
  %134 = load i32, i32* @ECORE_PGLUE_ATTENTION_DETAILS2_FID_EN, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  %137 = zext i1 %136 to i64
  %138 = select i1 %136, i32 1, i32 0
  %139 = call i32 (%struct.ecore_hwfn*, i32, i8*, i32, ...) @DP_NOTICE(%struct.ecore_hwfn* %100, i32 0, i8* getelementptr inbounds ([174 x i8], [174 x i8]* @.str.1, i64 0, i64 0), i32 %101, i32 %102, i32 %103, i32 %108, i32 %113, i32 %119, i32 %120, i32 %126, i32 %132, i32 %138)
  br label %140

140:                                              ; preds = %87, %78
  %141 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %142 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %143 = load i32, i32* @PGLUE_B_REG_TX_ERR_WR_DETAILS_ICPL, align 4
  %144 = call i32 @ecore_rd(%struct.ecore_hwfn* %141, %struct.ecore_ptt* %142, i32 %143)
  store i32 %144, i32* %5, align 4
  %145 = load i32, i32* %5, align 4
  %146 = load i32, i32* @ECORE_PGLUE_ATTENTION_ICPL_VALID, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %140
  %150 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %151 = load i32, i32* %5, align 4
  %152 = call i32 (%struct.ecore_hwfn*, i32, i8*, i32, ...) @DP_NOTICE(%struct.ecore_hwfn* %150, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %151)
  br label %153

153:                                              ; preds = %149, %140
  %154 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %155 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %156 = load i32, i32* @PGLUE_B_REG_MASTER_ZLR_ERR_DETAILS, align 4
  %157 = call i32 @ecore_rd(%struct.ecore_hwfn* %154, %struct.ecore_ptt* %155, i32 %156)
  store i32 %157, i32* %5, align 4
  %158 = load i32, i32* %5, align 4
  %159 = load i32, i32* @ECORE_PGLUE_ATTENTION_ZLR_VALID, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %176

162:                                              ; preds = %153
  %163 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %164 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %165 = load i32, i32* @PGLUE_B_REG_MASTER_ZLR_ERR_ADD_31_0, align 4
  %166 = call i32 @ecore_rd(%struct.ecore_hwfn* %163, %struct.ecore_ptt* %164, i32 %165)
  store i32 %166, i32* %13, align 4
  %167 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %168 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %169 = load i32, i32* @PGLUE_B_REG_MASTER_ZLR_ERR_ADD_63_32, align 4
  %170 = call i32 @ecore_rd(%struct.ecore_hwfn* %167, %struct.ecore_ptt* %168, i32 %169)
  store i32 %170, i32* %12, align 4
  %171 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %172 = load i32, i32* %5, align 4
  %173 = load i32, i32* %12, align 4
  %174 = load i32, i32* %13, align 4
  %175 = call i32 (%struct.ecore_hwfn*, i32, i8*, i32, ...) @DP_NOTICE(%struct.ecore_hwfn* %171, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %172, i32 %173, i32 %174)
  br label %176

176:                                              ; preds = %162, %153
  %177 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %178 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %179 = load i32, i32* @PGLUE_B_REG_VF_ILT_ERR_DETAILS2, align 4
  %180 = call i32 @ecore_rd(%struct.ecore_hwfn* %177, %struct.ecore_ptt* %178, i32 %179)
  store i32 %180, i32* %5, align 4
  %181 = load i32, i32* %5, align 4
  %182 = load i32, i32* @ECORE_PGLUE_ATTENTION_ILT_VALID, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %204

185:                                              ; preds = %176
  %186 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %187 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %188 = load i32, i32* @PGLUE_B_REG_VF_ILT_ERR_ADD_31_0, align 4
  %189 = call i32 @ecore_rd(%struct.ecore_hwfn* %186, %struct.ecore_ptt* %187, i32 %188)
  store i32 %189, i32* %15, align 4
  %190 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %191 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %192 = load i32, i32* @PGLUE_B_REG_VF_ILT_ERR_ADD_63_32, align 4
  %193 = call i32 @ecore_rd(%struct.ecore_hwfn* %190, %struct.ecore_ptt* %191, i32 %192)
  store i32 %193, i32* %14, align 4
  %194 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %195 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %196 = load i32, i32* @PGLUE_B_REG_VF_ILT_ERR_DETAILS, align 4
  %197 = call i32 @ecore_rd(%struct.ecore_hwfn* %194, %struct.ecore_ptt* %195, i32 %196)
  store i32 %197, i32* %16, align 4
  %198 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %199 = load i32, i32* %16, align 4
  %200 = load i32, i32* %5, align 4
  %201 = load i32, i32* %14, align 4
  %202 = load i32, i32* %15, align 4
  %203 = call i32 (%struct.ecore_hwfn*, i32, i8*, i32, ...) @DP_NOTICE(%struct.ecore_hwfn* %198, i32 0, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0), i32 %199, i32 %200, i32 %201, i32 %202)
  br label %204

204:                                              ; preds = %185, %176
  %205 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %206 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %207 = load i32, i32* @PGLUE_B_REG_LATCHED_ERRORS_CLR, align 4
  %208 = call i32 @ecore_wr(%struct.ecore_hwfn* %205, %struct.ecore_ptt* %206, i32 %207, i32 4)
  %209 = load i32, i32* @ECORE_SUCCESS, align 4
  ret i32 %209
}

declare dso_local i32 @ecore_rd(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, i32, ...) #1

declare dso_local i32 @ecore_wr(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
