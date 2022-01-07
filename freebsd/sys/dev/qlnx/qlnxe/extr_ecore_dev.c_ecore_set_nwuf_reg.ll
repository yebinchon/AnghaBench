; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_set_nwuf_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_set_nwuf_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_dev = type { i32 }
%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@ECORE_AGAIN = common dso_local global i32 0, align 4
@NIG_REG_ACPI_PAT_0_LEN_BB = common dso_local global i32 0, align 4
@WOL_REG_ACPI_PAT_0_LEN_K2_E5 = common dso_local global i32 0, align 4
@NIG_REG_ACPI_PAT_0_CRC_BB = common dso_local global i32 0, align 4
@WOL_REG_ACPI_PAT_0_CRC_K2_E5 = common dso_local global i32 0, align 4
@NIG_REG_ACPI_PAT_1_LEN_BB = common dso_local global i32 0, align 4
@WOL_REG_ACPI_PAT_1_LEN_K2_E5 = common dso_local global i32 0, align 4
@NIG_REG_ACPI_PAT_1_CRC_BB = common dso_local global i32 0, align 4
@WOL_REG_ACPI_PAT_1_CRC_K2_E5 = common dso_local global i32 0, align 4
@NIG_REG_ACPI_PAT_2_LEN_BB = common dso_local global i32 0, align 4
@WOL_REG_ACPI_PAT_2_LEN_K2_E5 = common dso_local global i32 0, align 4
@NIG_REG_ACPI_PAT_2_CRC_BB = common dso_local global i32 0, align 4
@WOL_REG_ACPI_PAT_2_CRC_K2_E5 = common dso_local global i32 0, align 4
@NIG_REG_ACPI_PAT_3_LEN_BB = common dso_local global i32 0, align 4
@WOL_REG_ACPI_PAT_3_LEN_K2_E5 = common dso_local global i32 0, align 4
@NIG_REG_ACPI_PAT_3_CRC_BB = common dso_local global i32 0, align 4
@WOL_REG_ACPI_PAT_3_CRC_K2_E5 = common dso_local global i32 0, align 4
@NIG_REG_ACPI_PAT_4_LEN_BB = common dso_local global i32 0, align 4
@WOL_REG_ACPI_PAT_4_LEN_K2_E5 = common dso_local global i32 0, align 4
@NIG_REG_ACPI_PAT_4_CRC_BB = common dso_local global i32 0, align 4
@WOL_REG_ACPI_PAT_4_CRC_K2_E5 = common dso_local global i32 0, align 4
@NIG_REG_ACPI_PAT_5_LEN_BB = common dso_local global i32 0, align 4
@WOL_REG_ACPI_PAT_5_LEN_K2_E5 = common dso_local global i32 0, align 4
@NIG_REG_ACPI_PAT_5_CRC_BB = common dso_local global i32 0, align 4
@WOL_REG_ACPI_PAT_5_CRC_K2_E5 = common dso_local global i32 0, align 4
@NIG_REG_ACPI_PAT_6_LEN_BB = common dso_local global i32 0, align 4
@WOL_REG_ACPI_PAT_6_LEN_K2_E5 = common dso_local global i32 0, align 4
@NIG_REG_ACPI_PAT_6_CRC_BB = common dso_local global i32 0, align 4
@WOL_REG_ACPI_PAT_6_CRC_K2_E5 = common dso_local global i32 0, align 4
@NIG_REG_ACPI_PAT_7_LEN_BB = common dso_local global i32 0, align 4
@WOL_REG_ACPI_PAT_7_LEN_K2_E5 = common dso_local global i32 0, align 4
@NIG_REG_ACPI_PAT_7_CRC_BB = common dso_local global i32 0, align 4
@WOL_REG_ACPI_PAT_7_CRC_K2_E5 = common dso_local global i32 0, align 4
@ECORE_UNKNOWN_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Failed to update the ACPI pattern length\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Failed to update the ACPI pattern crc value\0A\00", align 1
@.str.2 = private unnamed_addr constant [69 x i8] c"ecore_set_nwuf_reg: idx[%d] reg_crc[0x%x=0x%08x] reg_len[0x%x=0x%x]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_set_nwuf_reg(%struct.ecore_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ecore_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ecore_hwfn*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ecore_ptt*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ecore_dev* %0, %struct.ecore_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.ecore_dev*, %struct.ecore_dev** %6, align 8
  %16 = call %struct.ecore_hwfn* @ECORE_LEADING_HWFN(%struct.ecore_dev* %15)
  store %struct.ecore_hwfn* %16, %struct.ecore_hwfn** %10, align 8
  %17 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %17, i32* %11, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %18 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %10, align 8
  %19 = call %struct.ecore_ptt* @ecore_ptt_acquire(%struct.ecore_hwfn* %18)
  store %struct.ecore_ptt* %19, %struct.ecore_ptt** %12, align 8
  %20 = load %struct.ecore_ptt*, %struct.ecore_ptt** %12, align 8
  %21 = icmp ne %struct.ecore_ptt* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* @ECORE_AGAIN, align 4
  store i32 %23, i32* %5, align 4
  br label %243

24:                                               ; preds = %4
  %25 = load i32, i32* %7, align 4
  switch i32 %25, label %178 [
    i32 0, label %26
    i32 1, label %45
    i32 2, label %64
    i32 3, label %83
    i32 4, label %102
    i32 5, label %121
    i32 6, label %140
    i32 7, label %159
  ]

26:                                               ; preds = %24
  %27 = load %struct.ecore_dev*, %struct.ecore_dev** %6, align 8
  %28 = call i64 @ECORE_IS_BB(%struct.ecore_dev* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @NIG_REG_ACPI_PAT_0_LEN_BB, align 4
  br label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @WOL_REG_ACPI_PAT_0_LEN_K2_E5, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  store i32 %35, i32* %13, align 4
  %36 = load %struct.ecore_dev*, %struct.ecore_dev** %6, align 8
  %37 = call i64 @ECORE_IS_BB(%struct.ecore_dev* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @NIG_REG_ACPI_PAT_0_CRC_BB, align 4
  br label %43

41:                                               ; preds = %34
  %42 = load i32, i32* @WOL_REG_ACPI_PAT_0_CRC_K2_E5, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  store i32 %44, i32* %14, align 4
  br label %180

45:                                               ; preds = %24
  %46 = load %struct.ecore_dev*, %struct.ecore_dev** %6, align 8
  %47 = call i64 @ECORE_IS_BB(%struct.ecore_dev* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i32, i32* @NIG_REG_ACPI_PAT_1_LEN_BB, align 4
  br label %53

51:                                               ; preds = %45
  %52 = load i32, i32* @WOL_REG_ACPI_PAT_1_LEN_K2_E5, align 4
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i32 [ %50, %49 ], [ %52, %51 ]
  store i32 %54, i32* %13, align 4
  %55 = load %struct.ecore_dev*, %struct.ecore_dev** %6, align 8
  %56 = call i64 @ECORE_IS_BB(%struct.ecore_dev* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* @NIG_REG_ACPI_PAT_1_CRC_BB, align 4
  br label %62

60:                                               ; preds = %53
  %61 = load i32, i32* @WOL_REG_ACPI_PAT_1_CRC_K2_E5, align 4
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi i32 [ %59, %58 ], [ %61, %60 ]
  store i32 %63, i32* %14, align 4
  br label %180

64:                                               ; preds = %24
  %65 = load %struct.ecore_dev*, %struct.ecore_dev** %6, align 8
  %66 = call i64 @ECORE_IS_BB(%struct.ecore_dev* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i32, i32* @NIG_REG_ACPI_PAT_2_LEN_BB, align 4
  br label %72

70:                                               ; preds = %64
  %71 = load i32, i32* @WOL_REG_ACPI_PAT_2_LEN_K2_E5, align 4
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi i32 [ %69, %68 ], [ %71, %70 ]
  store i32 %73, i32* %13, align 4
  %74 = load %struct.ecore_dev*, %struct.ecore_dev** %6, align 8
  %75 = call i64 @ECORE_IS_BB(%struct.ecore_dev* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = load i32, i32* @NIG_REG_ACPI_PAT_2_CRC_BB, align 4
  br label %81

79:                                               ; preds = %72
  %80 = load i32, i32* @WOL_REG_ACPI_PAT_2_CRC_K2_E5, align 4
  br label %81

81:                                               ; preds = %79, %77
  %82 = phi i32 [ %78, %77 ], [ %80, %79 ]
  store i32 %82, i32* %14, align 4
  br label %180

83:                                               ; preds = %24
  %84 = load %struct.ecore_dev*, %struct.ecore_dev** %6, align 8
  %85 = call i64 @ECORE_IS_BB(%struct.ecore_dev* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = load i32, i32* @NIG_REG_ACPI_PAT_3_LEN_BB, align 4
  br label %91

89:                                               ; preds = %83
  %90 = load i32, i32* @WOL_REG_ACPI_PAT_3_LEN_K2_E5, align 4
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi i32 [ %88, %87 ], [ %90, %89 ]
  store i32 %92, i32* %13, align 4
  %93 = load %struct.ecore_dev*, %struct.ecore_dev** %6, align 8
  %94 = call i64 @ECORE_IS_BB(%struct.ecore_dev* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = load i32, i32* @NIG_REG_ACPI_PAT_3_CRC_BB, align 4
  br label %100

98:                                               ; preds = %91
  %99 = load i32, i32* @WOL_REG_ACPI_PAT_3_CRC_K2_E5, align 4
  br label %100

100:                                              ; preds = %98, %96
  %101 = phi i32 [ %97, %96 ], [ %99, %98 ]
  store i32 %101, i32* %14, align 4
  br label %180

102:                                              ; preds = %24
  %103 = load %struct.ecore_dev*, %struct.ecore_dev** %6, align 8
  %104 = call i64 @ECORE_IS_BB(%struct.ecore_dev* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %102
  %107 = load i32, i32* @NIG_REG_ACPI_PAT_4_LEN_BB, align 4
  br label %110

108:                                              ; preds = %102
  %109 = load i32, i32* @WOL_REG_ACPI_PAT_4_LEN_K2_E5, align 4
  br label %110

110:                                              ; preds = %108, %106
  %111 = phi i32 [ %107, %106 ], [ %109, %108 ]
  store i32 %111, i32* %13, align 4
  %112 = load %struct.ecore_dev*, %struct.ecore_dev** %6, align 8
  %113 = call i64 @ECORE_IS_BB(%struct.ecore_dev* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %110
  %116 = load i32, i32* @NIG_REG_ACPI_PAT_4_CRC_BB, align 4
  br label %119

117:                                              ; preds = %110
  %118 = load i32, i32* @WOL_REG_ACPI_PAT_4_CRC_K2_E5, align 4
  br label %119

119:                                              ; preds = %117, %115
  %120 = phi i32 [ %116, %115 ], [ %118, %117 ]
  store i32 %120, i32* %14, align 4
  br label %180

121:                                              ; preds = %24
  %122 = load %struct.ecore_dev*, %struct.ecore_dev** %6, align 8
  %123 = call i64 @ECORE_IS_BB(%struct.ecore_dev* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %121
  %126 = load i32, i32* @NIG_REG_ACPI_PAT_5_LEN_BB, align 4
  br label %129

127:                                              ; preds = %121
  %128 = load i32, i32* @WOL_REG_ACPI_PAT_5_LEN_K2_E5, align 4
  br label %129

129:                                              ; preds = %127, %125
  %130 = phi i32 [ %126, %125 ], [ %128, %127 ]
  store i32 %130, i32* %13, align 4
  %131 = load %struct.ecore_dev*, %struct.ecore_dev** %6, align 8
  %132 = call i64 @ECORE_IS_BB(%struct.ecore_dev* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %129
  %135 = load i32, i32* @NIG_REG_ACPI_PAT_5_CRC_BB, align 4
  br label %138

136:                                              ; preds = %129
  %137 = load i32, i32* @WOL_REG_ACPI_PAT_5_CRC_K2_E5, align 4
  br label %138

138:                                              ; preds = %136, %134
  %139 = phi i32 [ %135, %134 ], [ %137, %136 ]
  store i32 %139, i32* %14, align 4
  br label %180

140:                                              ; preds = %24
  %141 = load %struct.ecore_dev*, %struct.ecore_dev** %6, align 8
  %142 = call i64 @ECORE_IS_BB(%struct.ecore_dev* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %140
  %145 = load i32, i32* @NIG_REG_ACPI_PAT_6_LEN_BB, align 4
  br label %148

146:                                              ; preds = %140
  %147 = load i32, i32* @WOL_REG_ACPI_PAT_6_LEN_K2_E5, align 4
  br label %148

148:                                              ; preds = %146, %144
  %149 = phi i32 [ %145, %144 ], [ %147, %146 ]
  store i32 %149, i32* %13, align 4
  %150 = load %struct.ecore_dev*, %struct.ecore_dev** %6, align 8
  %151 = call i64 @ECORE_IS_BB(%struct.ecore_dev* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %148
  %154 = load i32, i32* @NIG_REG_ACPI_PAT_6_CRC_BB, align 4
  br label %157

155:                                              ; preds = %148
  %156 = load i32, i32* @WOL_REG_ACPI_PAT_6_CRC_K2_E5, align 4
  br label %157

157:                                              ; preds = %155, %153
  %158 = phi i32 [ %154, %153 ], [ %156, %155 ]
  store i32 %158, i32* %14, align 4
  br label %180

159:                                              ; preds = %24
  %160 = load %struct.ecore_dev*, %struct.ecore_dev** %6, align 8
  %161 = call i64 @ECORE_IS_BB(%struct.ecore_dev* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %159
  %164 = load i32, i32* @NIG_REG_ACPI_PAT_7_LEN_BB, align 4
  br label %167

165:                                              ; preds = %159
  %166 = load i32, i32* @WOL_REG_ACPI_PAT_7_LEN_K2_E5, align 4
  br label %167

167:                                              ; preds = %165, %163
  %168 = phi i32 [ %164, %163 ], [ %166, %165 ]
  store i32 %168, i32* %13, align 4
  %169 = load %struct.ecore_dev*, %struct.ecore_dev** %6, align 8
  %170 = call i64 @ECORE_IS_BB(%struct.ecore_dev* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %167
  %173 = load i32, i32* @NIG_REG_ACPI_PAT_7_CRC_BB, align 4
  br label %176

174:                                              ; preds = %167
  %175 = load i32, i32* @WOL_REG_ACPI_PAT_7_CRC_K2_E5, align 4
  br label %176

176:                                              ; preds = %174, %172
  %177 = phi i32 [ %173, %172 ], [ %175, %174 ]
  store i32 %177, i32* %14, align 4
  br label %180

178:                                              ; preds = %24
  %179 = load i32, i32* @ECORE_UNKNOWN_ERROR, align 4
  store i32 %179, i32* %11, align 4
  br label %238

180:                                              ; preds = %176, %157, %138, %119, %100, %81, %62, %43
  br label %181

181:                                              ; preds = %185, %180
  %182 = load i32, i32* %8, align 4
  %183 = srem i32 %182, 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %181
  %186 = load i32, i32* %8, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %8, align 4
  br label %181

188:                                              ; preds = %181
  %189 = load %struct.ecore_dev*, %struct.ecore_dev** %6, align 8
  %190 = call i64 @ECORE_IS_BB(%struct.ecore_dev* %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %219

192:                                              ; preds = %188
  %193 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %10, align 8
  %194 = load %struct.ecore_ptt*, %struct.ecore_ptt** %12, align 8
  %195 = load i32, i32* %13, align 4
  %196 = load i32, i32* %8, align 4
  %197 = call i32 @ecore_all_ppfids_wr(%struct.ecore_hwfn* %193, %struct.ecore_ptt* %194, i32 %195, i32 %196)
  store i32 %197, i32* %11, align 4
  %198 = load i32, i32* %11, align 4
  %199 = load i32, i32* @ECORE_SUCCESS, align 4
  %200 = icmp ne i32 %198, %199
  br i1 %200, label %201, label %205

201:                                              ; preds = %192
  %202 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %10, align 8
  %203 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %202, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %204 = load i32, i32* %11, align 4
  store i32 %204, i32* %5, align 4
  br label %243

205:                                              ; preds = %192
  %206 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %10, align 8
  %207 = load %struct.ecore_ptt*, %struct.ecore_ptt** %12, align 8
  %208 = load i32, i32* %14, align 4
  %209 = load i32, i32* %9, align 4
  %210 = call i32 @ecore_all_ppfids_wr(%struct.ecore_hwfn* %206, %struct.ecore_ptt* %207, i32 %208, i32 %209)
  store i32 %210, i32* %11, align 4
  %211 = load i32, i32* %11, align 4
  %212 = load i32, i32* @ECORE_SUCCESS, align 4
  %213 = icmp ne i32 %211, %212
  br i1 %213, label %214, label %218

214:                                              ; preds = %205
  %215 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %10, align 8
  %216 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %215, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %217 = load i32, i32* %11, align 4
  store i32 %217, i32* %5, align 4
  br label %243

218:                                              ; preds = %205
  br label %230

219:                                              ; preds = %188
  %220 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %10, align 8
  %221 = load %struct.ecore_ptt*, %struct.ecore_ptt** %12, align 8
  %222 = load i32, i32* %13, align 4
  %223 = load i32, i32* %8, align 4
  %224 = call i32 @ecore_mcp_wol_wr(%struct.ecore_hwfn* %220, %struct.ecore_ptt* %221, i32 %222, i32 %223)
  %225 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %10, align 8
  %226 = load %struct.ecore_ptt*, %struct.ecore_ptt** %12, align 8
  %227 = load i32, i32* %14, align 4
  %228 = load i32, i32* %9, align 4
  %229 = call i32 @ecore_mcp_wol_wr(%struct.ecore_hwfn* %225, %struct.ecore_ptt* %226, i32 %227, i32 %228)
  br label %230

230:                                              ; preds = %219, %218
  %231 = load %struct.ecore_dev*, %struct.ecore_dev** %6, align 8
  %232 = load i32, i32* %7, align 4
  %233 = load i32, i32* %14, align 4
  %234 = load i32, i32* %9, align 4
  %235 = load i32, i32* %13, align 4
  %236 = load i32, i32* %8, align 4
  %237 = call i32 @DP_INFO(%struct.ecore_dev* %231, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0), i32 %232, i32 %233, i32 %234, i32 %235, i32 %236)
  br label %238

238:                                              ; preds = %230, %178
  %239 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %10, align 8
  %240 = load %struct.ecore_ptt*, %struct.ecore_ptt** %12, align 8
  %241 = call i32 @ecore_ptt_release(%struct.ecore_hwfn* %239, %struct.ecore_ptt* %240)
  %242 = load i32, i32* %11, align 4
  store i32 %242, i32* %5, align 4
  br label %243

243:                                              ; preds = %238, %214, %201, %22
  %244 = load i32, i32* %5, align 4
  ret i32 %244
}

declare dso_local %struct.ecore_hwfn* @ECORE_LEADING_HWFN(%struct.ecore_dev*) #1

declare dso_local %struct.ecore_ptt* @ecore_ptt_acquire(%struct.ecore_hwfn*) #1

declare dso_local i64 @ECORE_IS_BB(%struct.ecore_dev*) #1

declare dso_local i32 @ecore_all_ppfids_wr(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*) #1

declare dso_local i32 @ecore_mcp_wol_wr(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32) #1

declare dso_local i32 @DP_INFO(%struct.ecore_dev*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ecore_ptt_release(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
