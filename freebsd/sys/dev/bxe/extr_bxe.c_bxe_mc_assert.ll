; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_mc_assert.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_mc_assert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }

@BAR_XSTRORM_INTMEM = common dso_local global i64 0, align 8
@XSTORM_ASSERT_LIST_INDEX_OFFSET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"XSTORM_ASSERT_LIST_INDEX 0x%x\0A\00", align 1
@STORM_ASSERT_ARRAY_SIZE = common dso_local global i32 0, align 4
@COMMON_ASM_INVALID_ASSERT_OPCODE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [56 x i8] c"XSTORM_ASSERT_INDEX 0x%x = 0x%08x 0x%08x 0x%08x 0x%08x\0A\00", align 1
@BAR_TSTRORM_INTMEM = common dso_local global i64 0, align 8
@TSTORM_ASSERT_LIST_INDEX_OFFSET = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"TSTORM_ASSERT_LIST_INDEX 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"TSTORM_ASSERT_INDEX 0x%x = 0x%08x 0x%08x 0x%08x 0x%08x\0A\00", align 1
@BAR_CSTRORM_INTMEM = common dso_local global i64 0, align 8
@CSTORM_ASSERT_LIST_INDEX_OFFSET = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [31 x i8] c"CSTORM_ASSERT_LIST_INDEX 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [56 x i8] c"CSTORM_ASSERT_INDEX 0x%x = 0x%08x 0x%08x 0x%08x 0x%08x\0A\00", align 1
@BAR_USTRORM_INTMEM = common dso_local global i64 0, align 8
@USTORM_ASSERT_LIST_INDEX_OFFSET = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [31 x i8] c"USTORM_ASSERT_LIST_INDEX 0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [56 x i8] c"USTORM_ASSERT_INDEX 0x%x = 0x%08x 0x%08x 0x%08x 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*)* @bxe_mc_assert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_mc_assert(%struct.bxe_softc* %0) #0 {
  %2 = alloca %struct.bxe_softc*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %2, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %11 = load i64, i64* @BAR_XSTRORM_INTMEM, align 8
  %12 = load i64, i64* @XSTORM_ASSERT_LIST_INDEX_OFFSET, align 8
  %13 = add nsw i64 %11, %12
  %14 = call signext i8 @REG_RD8(%struct.bxe_softc* %10, i64 %13)
  store i8 %14, i8* %3, align 1
  %15 = load i8, i8* %3, align 1
  %16 = icmp ne i8 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %19 = load i8, i8* %3, align 1
  %20 = sext i8 %19 to i32
  %21 = call i32 (%struct.bxe_softc*, i8*, i32, ...) @BLOGE(%struct.bxe_softc* %18, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %17, %1
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %70, %22
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @STORM_ASSERT_ARRAY_SIZE, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %73

27:                                               ; preds = %23
  %28 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %29 = load i64, i64* @BAR_XSTRORM_INTMEM, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i64 @XSTORM_ASSERT_LIST_OFFSET(i32 %30)
  %32 = add nsw i64 %29, %31
  %33 = call i64 @REG_RD(%struct.bxe_softc* %28, i64 %32)
  store i64 %33, i64* %6, align 8
  %34 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %35 = load i64, i64* @BAR_XSTRORM_INTMEM, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i64 @XSTORM_ASSERT_LIST_OFFSET(i32 %36)
  %38 = add nsw i64 %35, %37
  %39 = add nsw i64 %38, 4
  %40 = call i64 @REG_RD(%struct.bxe_softc* %34, i64 %39)
  store i64 %40, i64* %7, align 8
  %41 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %42 = load i64, i64* @BAR_XSTRORM_INTMEM, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i64 @XSTORM_ASSERT_LIST_OFFSET(i32 %43)
  %45 = add nsw i64 %42, %44
  %46 = add nsw i64 %45, 8
  %47 = call i64 @REG_RD(%struct.bxe_softc* %41, i64 %46)
  store i64 %47, i64* %8, align 8
  %48 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %49 = load i64, i64* @BAR_XSTRORM_INTMEM, align 8
  %50 = load i32, i32* %4, align 4
  %51 = call i64 @XSTORM_ASSERT_LIST_OFFSET(i32 %50)
  %52 = add nsw i64 %49, %51
  %53 = add nsw i64 %52, 12
  %54 = call i64 @REG_RD(%struct.bxe_softc* %48, i64 %53)
  store i64 %54, i64* %9, align 8
  %55 = load i64, i64* %6, align 8
  %56 = load i64, i64* @COMMON_ASM_INVALID_ASSERT_OPCODE, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %27
  %59 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %60 = load i32, i32* %4, align 4
  %61 = load i64, i64* %9, align 8
  %62 = load i64, i64* %8, align 8
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* %6, align 8
  %65 = call i32 (%struct.bxe_softc*, i8*, i32, ...) @BLOGE(%struct.bxe_softc* %59, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %60, i64 %61, i64 %62, i64 %63, i64 %64)
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %5, align 4
  br label %69

68:                                               ; preds = %27
  br label %73

69:                                               ; preds = %58
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %4, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %4, align 4
  br label %23

73:                                               ; preds = %68, %23
  %74 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %75 = load i64, i64* @BAR_TSTRORM_INTMEM, align 8
  %76 = load i64, i64* @TSTORM_ASSERT_LIST_INDEX_OFFSET, align 8
  %77 = add nsw i64 %75, %76
  %78 = call signext i8 @REG_RD8(%struct.bxe_softc* %74, i64 %77)
  store i8 %78, i8* %3, align 1
  %79 = load i8, i8* %3, align 1
  %80 = icmp ne i8 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %73
  %82 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %83 = load i8, i8* %3, align 1
  %84 = sext i8 %83 to i32
  %85 = call i32 (%struct.bxe_softc*, i8*, i32, ...) @BLOGE(%struct.bxe_softc* %82, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %81, %73
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %134, %86
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* @STORM_ASSERT_ARRAY_SIZE, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %137

91:                                               ; preds = %87
  %92 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %93 = load i64, i64* @BAR_TSTRORM_INTMEM, align 8
  %94 = load i32, i32* %4, align 4
  %95 = call i64 @TSTORM_ASSERT_LIST_OFFSET(i32 %94)
  %96 = add nsw i64 %93, %95
  %97 = call i64 @REG_RD(%struct.bxe_softc* %92, i64 %96)
  store i64 %97, i64* %6, align 8
  %98 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %99 = load i64, i64* @BAR_TSTRORM_INTMEM, align 8
  %100 = load i32, i32* %4, align 4
  %101 = call i64 @TSTORM_ASSERT_LIST_OFFSET(i32 %100)
  %102 = add nsw i64 %99, %101
  %103 = add nsw i64 %102, 4
  %104 = call i64 @REG_RD(%struct.bxe_softc* %98, i64 %103)
  store i64 %104, i64* %7, align 8
  %105 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %106 = load i64, i64* @BAR_TSTRORM_INTMEM, align 8
  %107 = load i32, i32* %4, align 4
  %108 = call i64 @TSTORM_ASSERT_LIST_OFFSET(i32 %107)
  %109 = add nsw i64 %106, %108
  %110 = add nsw i64 %109, 8
  %111 = call i64 @REG_RD(%struct.bxe_softc* %105, i64 %110)
  store i64 %111, i64* %8, align 8
  %112 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %113 = load i64, i64* @BAR_TSTRORM_INTMEM, align 8
  %114 = load i32, i32* %4, align 4
  %115 = call i64 @TSTORM_ASSERT_LIST_OFFSET(i32 %114)
  %116 = add nsw i64 %113, %115
  %117 = add nsw i64 %116, 12
  %118 = call i64 @REG_RD(%struct.bxe_softc* %112, i64 %117)
  store i64 %118, i64* %9, align 8
  %119 = load i64, i64* %6, align 8
  %120 = load i64, i64* @COMMON_ASM_INVALID_ASSERT_OPCODE, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %132

122:                                              ; preds = %91
  %123 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %124 = load i32, i32* %4, align 4
  %125 = load i64, i64* %9, align 8
  %126 = load i64, i64* %8, align 8
  %127 = load i64, i64* %7, align 8
  %128 = load i64, i64* %6, align 8
  %129 = call i32 (%struct.bxe_softc*, i8*, i32, ...) @BLOGE(%struct.bxe_softc* %123, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %124, i64 %125, i64 %126, i64 %127, i64 %128)
  %130 = load i32, i32* %5, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %5, align 4
  br label %133

132:                                              ; preds = %91
  br label %137

133:                                              ; preds = %122
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %4, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %4, align 4
  br label %87

137:                                              ; preds = %132, %87
  %138 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %139 = load i64, i64* @BAR_CSTRORM_INTMEM, align 8
  %140 = load i64, i64* @CSTORM_ASSERT_LIST_INDEX_OFFSET, align 8
  %141 = add nsw i64 %139, %140
  %142 = call signext i8 @REG_RD8(%struct.bxe_softc* %138, i64 %141)
  store i8 %142, i8* %3, align 1
  %143 = load i8, i8* %3, align 1
  %144 = icmp ne i8 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %137
  %146 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %147 = load i8, i8* %3, align 1
  %148 = sext i8 %147 to i32
  %149 = call i32 (%struct.bxe_softc*, i8*, i32, ...) @BLOGE(%struct.bxe_softc* %146, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %148)
  br label %150

150:                                              ; preds = %145, %137
  store i32 0, i32* %4, align 4
  br label %151

151:                                              ; preds = %198, %150
  %152 = load i32, i32* %4, align 4
  %153 = load i32, i32* @STORM_ASSERT_ARRAY_SIZE, align 4
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %155, label %201

155:                                              ; preds = %151
  %156 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %157 = load i64, i64* @BAR_CSTRORM_INTMEM, align 8
  %158 = load i32, i32* %4, align 4
  %159 = call i64 @CSTORM_ASSERT_LIST_OFFSET(i32 %158)
  %160 = add nsw i64 %157, %159
  %161 = call i64 @REG_RD(%struct.bxe_softc* %156, i64 %160)
  store i64 %161, i64* %6, align 8
  %162 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %163 = load i64, i64* @BAR_CSTRORM_INTMEM, align 8
  %164 = load i32, i32* %4, align 4
  %165 = call i64 @CSTORM_ASSERT_LIST_OFFSET(i32 %164)
  %166 = add nsw i64 %163, %165
  %167 = add nsw i64 %166, 4
  %168 = call i64 @REG_RD(%struct.bxe_softc* %162, i64 %167)
  store i64 %168, i64* %7, align 8
  %169 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %170 = load i64, i64* @BAR_CSTRORM_INTMEM, align 8
  %171 = load i32, i32* %4, align 4
  %172 = call i64 @CSTORM_ASSERT_LIST_OFFSET(i32 %171)
  %173 = add nsw i64 %170, %172
  %174 = add nsw i64 %173, 8
  %175 = call i64 @REG_RD(%struct.bxe_softc* %169, i64 %174)
  store i64 %175, i64* %8, align 8
  %176 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %177 = load i64, i64* @BAR_CSTRORM_INTMEM, align 8
  %178 = load i32, i32* %4, align 4
  %179 = call i64 @CSTORM_ASSERT_LIST_OFFSET(i32 %178)
  %180 = add nsw i64 %177, %179
  %181 = add nsw i64 %180, 12
  %182 = call i64 @REG_RD(%struct.bxe_softc* %176, i64 %181)
  store i64 %182, i64* %9, align 8
  %183 = load i64, i64* %6, align 8
  %184 = load i64, i64* @COMMON_ASM_INVALID_ASSERT_OPCODE, align 8
  %185 = icmp ne i64 %183, %184
  br i1 %185, label %186, label %196

186:                                              ; preds = %155
  %187 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %188 = load i32, i32* %4, align 4
  %189 = load i64, i64* %9, align 8
  %190 = load i64, i64* %8, align 8
  %191 = load i64, i64* %7, align 8
  %192 = load i64, i64* %6, align 8
  %193 = call i32 (%struct.bxe_softc*, i8*, i32, ...) @BLOGE(%struct.bxe_softc* %187, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i64 0, i64 0), i32 %188, i64 %189, i64 %190, i64 %191, i64 %192)
  %194 = load i32, i32* %5, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %5, align 4
  br label %197

196:                                              ; preds = %155
  br label %201

197:                                              ; preds = %186
  br label %198

198:                                              ; preds = %197
  %199 = load i32, i32* %4, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %4, align 4
  br label %151

201:                                              ; preds = %196, %151
  %202 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %203 = load i64, i64* @BAR_USTRORM_INTMEM, align 8
  %204 = load i64, i64* @USTORM_ASSERT_LIST_INDEX_OFFSET, align 8
  %205 = add nsw i64 %203, %204
  %206 = call signext i8 @REG_RD8(%struct.bxe_softc* %202, i64 %205)
  store i8 %206, i8* %3, align 1
  %207 = load i8, i8* %3, align 1
  %208 = icmp ne i8 %207, 0
  br i1 %208, label %209, label %214

209:                                              ; preds = %201
  %210 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %211 = load i8, i8* %3, align 1
  %212 = sext i8 %211 to i32
  %213 = call i32 (%struct.bxe_softc*, i8*, i32, ...) @BLOGE(%struct.bxe_softc* %210, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %212)
  br label %214

214:                                              ; preds = %209, %201
  store i32 0, i32* %4, align 4
  br label %215

215:                                              ; preds = %262, %214
  %216 = load i32, i32* %4, align 4
  %217 = load i32, i32* @STORM_ASSERT_ARRAY_SIZE, align 4
  %218 = icmp slt i32 %216, %217
  br i1 %218, label %219, label %265

219:                                              ; preds = %215
  %220 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %221 = load i64, i64* @BAR_USTRORM_INTMEM, align 8
  %222 = load i32, i32* %4, align 4
  %223 = call i64 @USTORM_ASSERT_LIST_OFFSET(i32 %222)
  %224 = add nsw i64 %221, %223
  %225 = call i64 @REG_RD(%struct.bxe_softc* %220, i64 %224)
  store i64 %225, i64* %6, align 8
  %226 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %227 = load i64, i64* @BAR_USTRORM_INTMEM, align 8
  %228 = load i32, i32* %4, align 4
  %229 = call i64 @USTORM_ASSERT_LIST_OFFSET(i32 %228)
  %230 = add nsw i64 %227, %229
  %231 = add nsw i64 %230, 4
  %232 = call i64 @REG_RD(%struct.bxe_softc* %226, i64 %231)
  store i64 %232, i64* %7, align 8
  %233 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %234 = load i64, i64* @BAR_USTRORM_INTMEM, align 8
  %235 = load i32, i32* %4, align 4
  %236 = call i64 @USTORM_ASSERT_LIST_OFFSET(i32 %235)
  %237 = add nsw i64 %234, %236
  %238 = add nsw i64 %237, 8
  %239 = call i64 @REG_RD(%struct.bxe_softc* %233, i64 %238)
  store i64 %239, i64* %8, align 8
  %240 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %241 = load i64, i64* @BAR_USTRORM_INTMEM, align 8
  %242 = load i32, i32* %4, align 4
  %243 = call i64 @USTORM_ASSERT_LIST_OFFSET(i32 %242)
  %244 = add nsw i64 %241, %243
  %245 = add nsw i64 %244, 12
  %246 = call i64 @REG_RD(%struct.bxe_softc* %240, i64 %245)
  store i64 %246, i64* %9, align 8
  %247 = load i64, i64* %6, align 8
  %248 = load i64, i64* @COMMON_ASM_INVALID_ASSERT_OPCODE, align 8
  %249 = icmp ne i64 %247, %248
  br i1 %249, label %250, label %260

250:                                              ; preds = %219
  %251 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %252 = load i32, i32* %4, align 4
  %253 = load i64, i64* %9, align 8
  %254 = load i64, i64* %8, align 8
  %255 = load i64, i64* %7, align 8
  %256 = load i64, i64* %6, align 8
  %257 = call i32 (%struct.bxe_softc*, i8*, i32, ...) @BLOGE(%struct.bxe_softc* %251, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.7, i64 0, i64 0), i32 %252, i64 %253, i64 %254, i64 %255, i64 %256)
  %258 = load i32, i32* %5, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %5, align 4
  br label %261

260:                                              ; preds = %219
  br label %265

261:                                              ; preds = %250
  br label %262

262:                                              ; preds = %261
  %263 = load i32, i32* %4, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %4, align 4
  br label %215

265:                                              ; preds = %260, %215
  %266 = load i32, i32* %5, align 4
  ret i32 %266
}

declare dso_local signext i8 @REG_RD8(%struct.bxe_softc*, i64) #1

declare dso_local i32 @BLOGE(%struct.bxe_softc*, i8*, i32, ...) #1

declare dso_local i64 @REG_RD(%struct.bxe_softc*, i64) #1

declare dso_local i64 @XSTORM_ASSERT_LIST_OFFSET(i32) #1

declare dso_local i64 @TSTORM_ASSERT_LIST_OFFSET(i32) #1

declare dso_local i64 @CSTORM_ASSERT_LIST_OFFSET(i32) #1

declare dso_local i64 @USTORM_ASSERT_LIST_OFFSET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
