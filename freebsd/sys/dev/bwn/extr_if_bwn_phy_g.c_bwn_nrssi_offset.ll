; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_g.c_bwn_nrssi_offset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_g.c_bwn_nrssi_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.bwn_phy }
%struct.bwn_phy = type { i32 }

@bwn_nrssi_offset.save_rf_regs = internal constant [2 x i32] [i32 122, i32 67], align 4
@bwn_nrssi_offset.save_phy_comm_regs = internal constant [10 x i32] [i32 1, i32 2065, i32 2066, i32 2068, i32 2069, i32 90, i32 89, i32 88, i32 10, i32 3], align 16
@bwn_nrssi_offset.save_phy6_regs = internal constant [8 x i32] [i32 46, i32 47, i32 2063, i32 2064, i32 2049, i32 96, i32 20, i32 1144], align 16
@SAVE_PHY6_MAX = common dso_local global i32 0, align 4
@SAVE_PHY_COMM_MAX = common dso_local global i32 0, align 4
@SAVE_RF_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*)* @bwn_nrssi_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_nrssi_offset(%struct.bwn_mac* %0) #0 {
  %2 = alloca %struct.bwn_mac*, align 8
  %3 = alloca %struct.bwn_phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca [10 x i32], align 16
  %8 = alloca [8 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %2, align 8
  %11 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %12 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %11, i32 0, i32 0
  store %struct.bwn_phy* %12, %struct.bwn_phy** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 65535, i32* %10, align 4
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %26, %1
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 10
  br i1 %15, label %16, label %29

16:                                               ; preds = %13
  %17 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [10 x i32], [10 x i32]* @bwn_nrssi_offset.save_phy_comm_regs, i64 0, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %17, i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 %24
  store i32 %22, i32* %25, align 4
  br label %26

26:                                               ; preds = %16
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %13

29:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %43, %29
  %31 = load i32, i32* %4, align 4
  %32 = icmp slt i32 %31, 2
  br i1 %32, label %33, label %46

33:                                               ; preds = %30
  %34 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* @bwn_nrssi_offset.save_rf_regs, i64 0, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @BWN_RF_READ(%struct.bwn_mac* %34, i32 %38)
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 %41
  store i32 %39, i32* %42, align 4
  br label %43

43:                                               ; preds = %33
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %30

46:                                               ; preds = %30
  %47 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %48 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %47, i32 1065, i32 32767)
  %49 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %50 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %49, i32 1, i32 16383, i32 16384)
  %51 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %52 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %51, i32 2065, i32 12)
  %53 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %54 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %53, i32 2066, i32 65523, i32 4)
  %55 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %56 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %55, i32 2050, i32 -4)
  %57 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %58 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp sge i32 %59, 6
  br i1 %60, label %61, label %95

61:                                               ; preds = %46
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %75, %61
  %63 = load i32, i32* %4, align 4
  %64 = icmp slt i32 %63, 8
  br i1 %64, label %65, label %78

65:                                               ; preds = %62
  %66 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [8 x i32], [8 x i32]* @bwn_nrssi_offset.save_phy6_regs, i64 0, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %66, i32 %70)
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 %73
  store i32 %71, i32* %74, align 4
  br label %75

75:                                               ; preds = %65
  %76 = load i32, i32* %4, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %4, align 4
  br label %62

78:                                               ; preds = %62
  %79 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %80 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %79, i32 46, i32 0)
  %81 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %82 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %81, i32 47, i32 0)
  %83 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %84 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %83, i32 2063, i32 0)
  %85 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %86 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %85, i32 2064, i32 0)
  %87 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %88 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %87, i32 1144, i32 256)
  %89 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %90 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %89, i32 2049, i32 64)
  %91 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %92 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %91, i32 96, i32 64)
  %93 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %94 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %93, i32 20, i32 512)
  br label %95

95:                                               ; preds = %78, %46
  %96 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %97 = call i32 @BWN_RF_SET(%struct.bwn_mac* %96, i32 122, i32 112)
  %98 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %99 = call i32 @BWN_RF_SET(%struct.bwn_mac* %98, i32 122, i32 128)
  %100 = call i32 @DELAY(i32 30)
  %101 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %102 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %101, i32 1151)
  %103 = ashr i32 %102, 8
  %104 = and i32 %103, 63
  store i32 %104, i32* %9, align 4
  %105 = load i32, i32* %9, align 4
  %106 = icmp sge i32 %105, 32
  br i1 %106, label %107, label %110

107:                                              ; preds = %95
  %108 = load i32, i32* %9, align 4
  %109 = sub nsw i32 %108, 64
  store i32 %109, i32* %9, align 4
  br label %110

110:                                              ; preds = %107, %95
  %111 = load i32, i32* %9, align 4
  %112 = icmp eq i32 %111, 31
  br i1 %112, label %113, label %148

113:                                              ; preds = %110
  store i32 7, i32* %4, align 4
  br label %114

114:                                              ; preds = %140, %113
  %115 = load i32, i32* %4, align 4
  %116 = icmp sge i32 %115, 4
  br i1 %116, label %117, label %143

117:                                              ; preds = %114
  %118 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %119 = load i32, i32* %4, align 4
  %120 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %118, i32 123, i32 %119)
  %121 = call i32 @DELAY(i32 20)
  %122 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %123 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %122, i32 1151)
  %124 = ashr i32 %123, 8
  %125 = and i32 %124, 63
  store i32 %125, i32* %9, align 4
  %126 = load i32, i32* %9, align 4
  %127 = icmp sge i32 %126, 32
  br i1 %127, label %128, label %131

128:                                              ; preds = %117
  %129 = load i32, i32* %9, align 4
  %130 = sub nsw i32 %129, 64
  store i32 %130, i32* %9, align 4
  br label %131

131:                                              ; preds = %128, %117
  %132 = load i32, i32* %9, align 4
  %133 = icmp slt i32 %132, 31
  br i1 %133, label %134, label %139

134:                                              ; preds = %131
  %135 = load i32, i32* %10, align 4
  %136 = icmp eq i32 %135, 65535
  br i1 %136, label %137, label %139

137:                                              ; preds = %134
  %138 = load i32, i32* %4, align 4
  store i32 %138, i32* %10, align 4
  br label %139

139:                                              ; preds = %137, %134, %131
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %4, align 4
  %142 = add nsw i32 %141, -1
  store i32 %142, i32* %4, align 4
  br label %114

143:                                              ; preds = %114
  %144 = load i32, i32* %10, align 4
  %145 = icmp eq i32 %144, 65535
  br i1 %145, label %146, label %147

146:                                              ; preds = %143
  store i32 4, i32* %10, align 4
  br label %147

147:                                              ; preds = %146, %143
  br label %254

148:                                              ; preds = %110
  %149 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %150 = call i32 @BWN_RF_MASK(%struct.bwn_mac* %149, i32 122, i32 127)
  %151 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %152 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = icmp ne i32 %153, 1
  br i1 %154, label %155, label %160

155:                                              ; preds = %148
  %156 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %157 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %156, i32 2068, i32 1)
  %158 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %159 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %158, i32 2069, i32 65534)
  br label %160

160:                                              ; preds = %155, %148
  %161 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %162 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %161, i32 2065, i32 12)
  %163 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %164 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %163, i32 2066, i32 12)
  %165 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %166 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %165, i32 2065, i32 48)
  %167 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %168 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %167, i32 2066, i32 48)
  %169 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %170 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %169, i32 90, i32 1152)
  %171 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %172 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %171, i32 89, i32 2064)
  %173 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %174 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %173, i32 88, i32 13)
  %175 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %176 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %160
  %180 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %181 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %180, i32 3, i32 290)
  br label %185

182:                                              ; preds = %160
  %183 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %184 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %183, i32 10, i32 8192)
  br label %185

185:                                              ; preds = %182, %179
  %186 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %187 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = icmp ne i32 %188, 1
  br i1 %189, label %190, label %195

190:                                              ; preds = %185
  %191 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %192 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %191, i32 2068, i32 4)
  %193 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %194 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %193, i32 2069, i32 65531)
  br label %195

195:                                              ; preds = %190, %185
  %196 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %197 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %196, i32 3, i32 65439, i32 64)
  %198 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %199 = call i32 @BWN_RF_SET(%struct.bwn_mac* %198, i32 122, i32 15)
  %200 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %201 = call i32 @bwn_set_all_gains(%struct.bwn_mac* %200, i32 3, i32 0, i32 1)
  %202 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %203 = call i32 @BWN_RF_SETMASK(%struct.bwn_mac* %202, i32 67, i32 240, i32 15)
  %204 = call i32 @DELAY(i32 30)
  %205 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %206 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %205, i32 1151)
  %207 = ashr i32 %206, 8
  %208 = and i32 %207, 63
  store i32 %208, i32* %9, align 4
  %209 = load i32, i32* %9, align 4
  %210 = icmp sge i32 %209, 32
  br i1 %210, label %211, label %214

211:                                              ; preds = %195
  %212 = load i32, i32* %9, align 4
  %213 = sub nsw i32 %212, 64
  store i32 %213, i32* %9, align 4
  br label %214

214:                                              ; preds = %211, %195
  %215 = load i32, i32* %9, align 4
  %216 = icmp eq i32 %215, -32
  br i1 %216, label %217, label %252

217:                                              ; preds = %214
  store i32 0, i32* %4, align 4
  br label %218

218:                                              ; preds = %244, %217
  %219 = load i32, i32* %4, align 4
  %220 = icmp slt i32 %219, 4
  br i1 %220, label %221, label %247

221:                                              ; preds = %218
  %222 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %223 = load i32, i32* %4, align 4
  %224 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %222, i32 123, i32 %223)
  %225 = call i32 @DELAY(i32 20)
  %226 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %227 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %226, i32 1151)
  %228 = ashr i32 %227, 8
  %229 = and i32 %228, 63
  store i32 %229, i32* %9, align 4
  %230 = load i32, i32* %9, align 4
  %231 = icmp sge i32 %230, 32
  br i1 %231, label %232, label %235

232:                                              ; preds = %221
  %233 = load i32, i32* %9, align 4
  %234 = sub nsw i32 %233, 64
  store i32 %234, i32* %9, align 4
  br label %235

235:                                              ; preds = %232, %221
  %236 = load i32, i32* %9, align 4
  %237 = icmp sgt i32 %236, -31
  br i1 %237, label %238, label %243

238:                                              ; preds = %235
  %239 = load i32, i32* %10, align 4
  %240 = icmp eq i32 %239, 65535
  br i1 %240, label %241, label %243

241:                                              ; preds = %238
  %242 = load i32, i32* %4, align 4
  store i32 %242, i32* %10, align 4
  br label %243

243:                                              ; preds = %241, %238, %235
  br label %244

244:                                              ; preds = %243
  %245 = load i32, i32* %4, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %4, align 4
  br label %218

247:                                              ; preds = %218
  %248 = load i32, i32* %10, align 4
  %249 = icmp eq i32 %248, 65535
  br i1 %249, label %250, label %251

250:                                              ; preds = %247
  store i32 3, i32* %10, align 4
  br label %251

251:                                              ; preds = %250, %247
  br label %253

252:                                              ; preds = %214
  store i32 0, i32* %10, align 4
  br label %253

253:                                              ; preds = %252, %251
  br label %254

254:                                              ; preds = %253, %147
  %255 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %256 = load i32, i32* %10, align 4
  %257 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %255, i32 123, i32 %256)
  %258 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %259 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = icmp sge i32 %260, 6
  br i1 %261, label %262, label %281

262:                                              ; preds = %254
  store i32 0, i32* %5, align 4
  br label %263

263:                                              ; preds = %277, %262
  %264 = load i32, i32* %5, align 4
  %265 = icmp slt i32 %264, 4
  br i1 %265, label %266, label %280

266:                                              ; preds = %263
  %267 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %268 = load i32, i32* %5, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds [8 x i32], [8 x i32]* @bwn_nrssi_offset.save_phy6_regs, i64 0, i64 %269
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* %5, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 %273
  %275 = load i32, i32* %274, align 4
  %276 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %267, i32 %271, i32 %275)
  br label %277

277:                                              ; preds = %266
  %278 = load i32, i32* %5, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %5, align 4
  br label %263

280:                                              ; preds = %263
  br label %281

281:                                              ; preds = %280, %254
  %282 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %283 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 4
  %285 = icmp ne i32 %284, 1
  br i1 %285, label %286, label %305

286:                                              ; preds = %281
  store i32 3, i32* %4, align 4
  br label %287

287:                                              ; preds = %301, %286
  %288 = load i32, i32* %4, align 4
  %289 = icmp slt i32 %288, 5
  br i1 %289, label %290, label %304

290:                                              ; preds = %287
  %291 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %292 = load i32, i32* %4, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds [10 x i32], [10 x i32]* @bwn_nrssi_offset.save_phy_comm_regs, i64 0, i64 %293
  %295 = load i32, i32* %294, align 4
  %296 = load i32, i32* %4, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 %297
  %299 = load i32, i32* %298, align 4
  %300 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %291, i32 %295, i32 %299)
  br label %301

301:                                              ; preds = %290
  %302 = load i32, i32* %4, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %4, align 4
  br label %287

304:                                              ; preds = %287
  br label %305

305:                                              ; preds = %304, %281
  store i32 5, i32* %4, align 4
  br label %306

306:                                              ; preds = %320, %305
  %307 = load i32, i32* %4, align 4
  %308 = icmp slt i32 %307, 10
  br i1 %308, label %309, label %323

309:                                              ; preds = %306
  %310 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %311 = load i32, i32* %4, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds [10 x i32], [10 x i32]* @bwn_nrssi_offset.save_phy_comm_regs, i64 0, i64 %312
  %314 = load i32, i32* %313, align 4
  %315 = load i32, i32* %4, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 %316
  %318 = load i32, i32* %317, align 4
  %319 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %310, i32 %314, i32 %318)
  br label %320

320:                                              ; preds = %309
  %321 = load i32, i32* %4, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %4, align 4
  br label %306

323:                                              ; preds = %306
  store i32 1, i32* %4, align 4
  br label %324

324:                                              ; preds = %338, %323
  %325 = load i32, i32* %4, align 4
  %326 = icmp sge i32 %325, 0
  br i1 %326, label %327, label %341

327:                                              ; preds = %324
  %328 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %329 = load i32, i32* %4, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds [2 x i32], [2 x i32]* @bwn_nrssi_offset.save_rf_regs, i64 0, i64 %330
  %332 = load i32, i32* %331, align 4
  %333 = load i32, i32* %4, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 %334
  %336 = load i32, i32* %335, align 4
  %337 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %328, i32 %332, i32 %336)
  br label %338

338:                                              ; preds = %327
  %339 = load i32, i32* %4, align 4
  %340 = add nsw i32 %339, -1
  store i32 %340, i32* %4, align 4
  br label %324

341:                                              ; preds = %324
  %342 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %343 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %344 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %343, i32 2050)
  %345 = or i32 %344, 1
  %346 = or i32 %345, 2
  %347 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %342, i32 2050, i32 %346)
  %348 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %349 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %348, i32 1065, i32 32768)
  %350 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %351 = call i32 @bwn_set_original_gains(%struct.bwn_mac* %350)
  %352 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %353 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 4
  %355 = icmp sge i32 %354, 6
  br i1 %355, label %356, label %375

356:                                              ; preds = %341
  br label %357

357:                                              ; preds = %371, %356
  %358 = load i32, i32* %5, align 4
  %359 = icmp slt i32 %358, 8
  br i1 %359, label %360, label %374

360:                                              ; preds = %357
  %361 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %362 = load i32, i32* %5, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds [8 x i32], [8 x i32]* @bwn_nrssi_offset.save_phy6_regs, i64 0, i64 %363
  %365 = load i32, i32* %364, align 4
  %366 = load i32, i32* %5, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 %367
  %369 = load i32, i32* %368, align 4
  %370 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %361, i32 %365, i32 %369)
  br label %371

371:                                              ; preds = %360
  %372 = load i32, i32* %5, align 4
  %373 = add nsw i32 %372, 1
  store i32 %373, i32* %5, align 4
  br label %357

374:                                              ; preds = %357
  br label %375

375:                                              ; preds = %374, %341
  %376 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %377 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @bwn_nrssi_offset.save_phy_comm_regs, i64 0, i64 0), align 16
  %378 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 0
  %379 = load i32, i32* %378, align 16
  %380 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %376, i32 %377, i32 %379)
  %381 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %382 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @bwn_nrssi_offset.save_phy_comm_regs, i64 0, i64 2), align 8
  %383 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 2
  %384 = load i32, i32* %383, align 8
  %385 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %381, i32 %382, i32 %384)
  %386 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %387 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @bwn_nrssi_offset.save_phy_comm_regs, i64 0, i64 1), align 4
  %388 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 1
  %389 = load i32, i32* %388, align 4
  %390 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %386, i32 %387, i32 %389)
  ret void
}

declare dso_local i32 @BWN_PHY_READ(%struct.bwn_mac*, i32) #1

declare dso_local i32 @BWN_RF_READ(%struct.bwn_mac*, i32) #1

declare dso_local i32 @BWN_PHY_MASK(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @BWN_PHY_SETMASK(%struct.bwn_mac*, i32, i32, i32) #1

declare dso_local i32 @BWN_PHY_SET(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @BWN_PHY_WRITE(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @BWN_RF_SET(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @BWN_RF_WRITE(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @BWN_RF_MASK(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @bwn_set_all_gains(%struct.bwn_mac*, i32, i32, i32) #1

declare dso_local i32 @BWN_RF_SETMASK(%struct.bwn_mac*, i32, i32, i32) #1

declare dso_local i32 @bwn_set_original_gains(%struct.bwn_mac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
