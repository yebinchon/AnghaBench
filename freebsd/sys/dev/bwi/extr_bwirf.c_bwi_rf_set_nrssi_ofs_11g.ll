; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwirf.c_bwi_rf_set_nrssi_ofs_11g.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwirf.c_bwi_rf_set_nrssi_ofs_11g.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_mac = type { %struct.bwi_phy }
%struct.bwi_phy = type { i32, i64 }
%struct.bwi_gains = type { i32, i32, i64 }

@bwi_rf_set_nrssi_ofs_11g.save_rf_regs = internal constant [2 x i32] [i32 122, i32 67], align 4
@bwi_rf_set_nrssi_ofs_11g.save_phy_comm_regs = internal constant [10 x i32] [i32 1, i32 2065, i32 2066, i32 2068, i32 2069, i32 90, i32 89, i32 88, i32 10, i32 3], align 16
@bwi_rf_set_nrssi_ofs_11g.save_phy6_regs = internal constant [8 x i32] [i32 46, i32 47, i32 2063, i32 2064, i32 2049, i32 96, i32 20, i32 1144], align 16
@SAVE_PHY6_MAX = common dso_local global i32 0, align 4
@SAVE_PHY_COMM_MAX = common dso_local global i32 0, align 4
@SAVE_RF_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwi_mac*)* @bwi_rf_set_nrssi_ofs_11g to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwi_rf_set_nrssi_ofs_11g(%struct.bwi_mac* %0) #0 {
  %2 = alloca %struct.bwi_mac*, align 8
  %3 = alloca %struct.bwi_phy*, align 8
  %4 = alloca [2 x i32], align 4
  %5 = alloca [10 x i32], align 16
  %6 = alloca [8 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.bwi_gains, align 8
  store %struct.bwi_mac* %0, %struct.bwi_mac** %2, align 8
  %12 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %13 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %12, i32 0, i32 0
  store %struct.bwi_phy* %13, %struct.bwi_phy** %3, align 8
  store i32 65535, i32* %7, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %27, %1
  %15 = load i32, i32* %9, align 4
  %16 = icmp slt i32 %15, 10
  br i1 %16, label %17, label %30

17:                                               ; preds = %14
  %18 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [10 x i32], [10 x i32]* @bwi_rf_set_nrssi_ofs_11g.save_phy_comm_regs, i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @PHY_READ(%struct.bwi_mac* %18, i32 %22)
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 %25
  store i32 %23, i32* %26, align 4
  br label %27

27:                                               ; preds = %17
  %28 = load i32, i32* %9, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %9, align 4
  br label %14

30:                                               ; preds = %14
  store i32 0, i32* %9, align 4
  br label %31

31:                                               ; preds = %44, %30
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 2
  br i1 %33, label %34, label %47

34:                                               ; preds = %31
  %35 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* @bwi_rf_set_nrssi_ofs_11g.save_rf_regs, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @RF_READ(%struct.bwi_mac* %35, i32 %39)
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 %42
  store i32 %40, i32* %43, align 4
  br label %44

44:                                               ; preds = %34
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %9, align 4
  br label %31

47:                                               ; preds = %31
  %48 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %49 = call i32 @PHY_CLRBITS(%struct.bwi_mac* %48, i32 1065, i32 32768)
  %50 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %51 = call i32 @PHY_FILT_SETBITS(%struct.bwi_mac* %50, i32 1, i32 16383, i32 16384)
  %52 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %53 = call i32 @PHY_SETBITS(%struct.bwi_mac* %52, i32 2065, i32 12)
  %54 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %55 = call i32 @PHY_FILT_SETBITS(%struct.bwi_mac* %54, i32 2066, i32 65523, i32 4)
  %56 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %57 = call i32 @PHY_CLRBITS(%struct.bwi_mac* %56, i32 2050, i32 3)
  %58 = load %struct.bwi_phy*, %struct.bwi_phy** %3, align 8
  %59 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp sge i32 %60, 6
  br i1 %61, label %62, label %96

62:                                               ; preds = %47
  store i32 0, i32* %9, align 4
  br label %63

63:                                               ; preds = %76, %62
  %64 = load i32, i32* %9, align 4
  %65 = icmp slt i32 %64, 8
  br i1 %65, label %66, label %79

66:                                               ; preds = %63
  %67 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [8 x i32], [8 x i32]* @bwi_rf_set_nrssi_ofs_11g.save_phy6_regs, i64 0, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @PHY_READ(%struct.bwi_mac* %67, i32 %71)
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 %74
  store i32 %72, i32* %75, align 4
  br label %76

76:                                               ; preds = %66
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %9, align 4
  br label %63

79:                                               ; preds = %63
  %80 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %81 = call i32 @PHY_WRITE(%struct.bwi_mac* %80, i32 46, i32 0)
  %82 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %83 = call i32 @PHY_WRITE(%struct.bwi_mac* %82, i32 47, i32 0)
  %84 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %85 = call i32 @PHY_WRITE(%struct.bwi_mac* %84, i32 2063, i32 0)
  %86 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %87 = call i32 @PHY_WRITE(%struct.bwi_mac* %86, i32 2064, i32 0)
  %88 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %89 = call i32 @PHY_SETBITS(%struct.bwi_mac* %88, i32 1144, i32 256)
  %90 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %91 = call i32 @PHY_SETBITS(%struct.bwi_mac* %90, i32 2049, i32 64)
  %92 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %93 = call i32 @PHY_SETBITS(%struct.bwi_mac* %92, i32 96, i32 64)
  %94 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %95 = call i32 @PHY_SETBITS(%struct.bwi_mac* %94, i32 20, i32 512)
  br label %96

96:                                               ; preds = %79, %47
  %97 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %98 = call i32 @RF_SETBITS(%struct.bwi_mac* %97, i32 122, i32 112)
  %99 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %100 = call i32 @RF_SETBITS(%struct.bwi_mac* %99, i32 122, i32 128)
  %101 = call i32 @DELAY(i32 30)
  %102 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %103 = call i32 @bwi_nrssi_11g(%struct.bwi_mac* %102)
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* %8, align 4
  %105 = icmp eq i32 %104, 31
  br i1 %105, label %106, label %133

106:                                              ; preds = %96
  store i32 7, i32* %9, align 4
  br label %107

107:                                              ; preds = %125, %106
  %108 = load i32, i32* %9, align 4
  %109 = icmp sge i32 %108, 4
  br i1 %109, label %110, label %128

110:                                              ; preds = %107
  %111 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @RF_WRITE(%struct.bwi_mac* %111, i32 123, i32 %112)
  %114 = call i32 @DELAY(i32 20)
  %115 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %116 = call i32 @bwi_nrssi_11g(%struct.bwi_mac* %115)
  store i32 %116, i32* %8, align 4
  %117 = load i32, i32* %8, align 4
  %118 = icmp slt i32 %117, 31
  br i1 %118, label %119, label %124

119:                                              ; preds = %110
  %120 = load i32, i32* %7, align 4
  %121 = icmp eq i32 %120, 65535
  br i1 %121, label %122, label %124

122:                                              ; preds = %119
  %123 = load i32, i32* %9, align 4
  store i32 %123, i32* %7, align 4
  br label %124

124:                                              ; preds = %122, %119, %110
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %9, align 4
  %127 = add nsw i32 %126, -1
  store i32 %127, i32* %9, align 4
  br label %107

128:                                              ; preds = %107
  %129 = load i32, i32* %7, align 4
  %130 = icmp eq i32 %129, 65535
  br i1 %130, label %131, label %132

131:                                              ; preds = %128
  store i32 4, i32* %7, align 4
  br label %132

132:                                              ; preds = %131, %128
  br label %215

133:                                              ; preds = %96
  %134 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %135 = call i32 @RF_CLRBITS(%struct.bwi_mac* %134, i32 122, i32 65408)
  %136 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %137 = call i32 @PHY_SETBITS(%struct.bwi_mac* %136, i32 2068, i32 1)
  %138 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %139 = call i32 @PHY_CLRBITS(%struct.bwi_mac* %138, i32 2069, i32 1)
  %140 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %141 = call i32 @PHY_SETBITS(%struct.bwi_mac* %140, i32 2065, i32 12)
  %142 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %143 = call i32 @PHY_SETBITS(%struct.bwi_mac* %142, i32 2066, i32 12)
  %144 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %145 = call i32 @PHY_SETBITS(%struct.bwi_mac* %144, i32 2065, i32 48)
  %146 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %147 = call i32 @PHY_SETBITS(%struct.bwi_mac* %146, i32 2066, i32 48)
  %148 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %149 = call i32 @PHY_WRITE(%struct.bwi_mac* %148, i32 90, i32 1152)
  %150 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %151 = call i32 @PHY_WRITE(%struct.bwi_mac* %150, i32 89, i32 2064)
  %152 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %153 = call i32 @PHY_WRITE(%struct.bwi_mac* %152, i32 88, i32 13)
  %154 = load %struct.bwi_phy*, %struct.bwi_phy** %3, align 8
  %155 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %133
  %159 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %160 = call i32 @PHY_WRITE(%struct.bwi_mac* %159, i32 3, i32 290)
  br label %164

161:                                              ; preds = %133
  %162 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %163 = call i32 @PHY_SETBITS(%struct.bwi_mac* %162, i32 10, i32 8192)
  br label %164

164:                                              ; preds = %161, %158
  %165 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %166 = call i32 @PHY_SETBITS(%struct.bwi_mac* %165, i32 2068, i32 4)
  %167 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %168 = call i32 @PHY_CLRBITS(%struct.bwi_mac* %167, i32 2069, i32 4)
  %169 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %170 = call i32 @PHY_FILT_SETBITS(%struct.bwi_mac* %169, i32 3, i32 65439, i32 64)
  %171 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %172 = call i32 @RF_SETBITS(%struct.bwi_mac* %171, i32 122, i32 15)
  %173 = call i32 @bzero(%struct.bwi_gains* %11, i32 16)
  %174 = getelementptr inbounds %struct.bwi_gains, %struct.bwi_gains* %11, i32 0, i32 0
  store i32 3, i32* %174, align 8
  %175 = getelementptr inbounds %struct.bwi_gains, %struct.bwi_gains* %11, i32 0, i32 2
  store i64 0, i64* %175, align 8
  %176 = getelementptr inbounds %struct.bwi_gains, %struct.bwi_gains* %11, i32 0, i32 1
  store i32 1, i32* %176, align 4
  %177 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %178 = call i32 @bwi_set_gains(%struct.bwi_mac* %177, %struct.bwi_gains* %11)
  %179 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %180 = call i32 @RF_FILT_SETBITS(%struct.bwi_mac* %179, i32 67, i32 240, i32 15)
  %181 = call i32 @DELAY(i32 30)
  %182 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %183 = call i32 @bwi_nrssi_11g(%struct.bwi_mac* %182)
  store i32 %183, i32* %8, align 4
  %184 = load i32, i32* %8, align 4
  %185 = icmp eq i32 %184, -32
  br i1 %185, label %186, label %213

186:                                              ; preds = %164
  store i32 0, i32* %9, align 4
  br label %187

187:                                              ; preds = %205, %186
  %188 = load i32, i32* %9, align 4
  %189 = icmp slt i32 %188, 4
  br i1 %189, label %190, label %208

190:                                              ; preds = %187
  %191 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %192 = load i32, i32* %9, align 4
  %193 = call i32 @RF_WRITE(%struct.bwi_mac* %191, i32 123, i32 %192)
  %194 = call i32 @DELAY(i32 20)
  %195 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %196 = call i32 @bwi_nrssi_11g(%struct.bwi_mac* %195)
  store i32 %196, i32* %8, align 4
  %197 = load i32, i32* %8, align 4
  %198 = icmp sgt i32 %197, -31
  br i1 %198, label %199, label %204

199:                                              ; preds = %190
  %200 = load i32, i32* %7, align 4
  %201 = icmp eq i32 %200, 65535
  br i1 %201, label %202, label %204

202:                                              ; preds = %199
  %203 = load i32, i32* %9, align 4
  store i32 %203, i32* %7, align 4
  br label %204

204:                                              ; preds = %202, %199, %190
  br label %205

205:                                              ; preds = %204
  %206 = load i32, i32* %9, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %9, align 4
  br label %187

208:                                              ; preds = %187
  %209 = load i32, i32* %7, align 4
  %210 = icmp eq i32 %209, 65535
  br i1 %210, label %211, label %212

211:                                              ; preds = %208
  store i32 3, i32* %7, align 4
  br label %212

212:                                              ; preds = %211, %208
  br label %214

213:                                              ; preds = %164
  store i32 0, i32* %7, align 4
  br label %214

214:                                              ; preds = %213, %212
  br label %215

215:                                              ; preds = %214, %132
  %216 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %217 = load i32, i32* %7, align 4
  %218 = call i32 @RF_WRITE(%struct.bwi_mac* %216, i32 123, i32 %217)
  %219 = load %struct.bwi_phy*, %struct.bwi_phy** %3, align 8
  %220 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = icmp sge i32 %221, 6
  br i1 %222, label %223, label %242

223:                                              ; preds = %215
  store i32 0, i32* %10, align 4
  br label %224

224:                                              ; preds = %238, %223
  %225 = load i32, i32* %10, align 4
  %226 = icmp slt i32 %225, 4
  br i1 %226, label %227, label %241

227:                                              ; preds = %224
  %228 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %229 = load i32, i32* %10, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds [8 x i32], [8 x i32]* @bwi_rf_set_nrssi_ofs_11g.save_phy6_regs, i64 0, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* %10, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 %234
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @PHY_WRITE(%struct.bwi_mac* %228, i32 %232, i32 %236)
  br label %238

238:                                              ; preds = %227
  %239 = load i32, i32* %10, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %10, align 4
  br label %224

241:                                              ; preds = %224
  br label %242

242:                                              ; preds = %241, %215
  store i32 3, i32* %9, align 4
  br label %243

243:                                              ; preds = %257, %242
  %244 = load i32, i32* %9, align 4
  %245 = icmp slt i32 %244, 10
  br i1 %245, label %246, label %260

246:                                              ; preds = %243
  %247 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %248 = load i32, i32* %9, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds [10 x i32], [10 x i32]* @bwi_rf_set_nrssi_ofs_11g.save_phy_comm_regs, i64 0, i64 %249
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* %9, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 %253
  %255 = load i32, i32* %254, align 4
  %256 = call i32 @PHY_WRITE(%struct.bwi_mac* %247, i32 %251, i32 %255)
  br label %257

257:                                              ; preds = %246
  %258 = load i32, i32* %9, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %9, align 4
  br label %243

260:                                              ; preds = %243
  store i32 1, i32* %9, align 4
  br label %261

261:                                              ; preds = %275, %260
  %262 = load i32, i32* %9, align 4
  %263 = icmp sge i32 %262, 0
  br i1 %263, label %264, label %278

264:                                              ; preds = %261
  %265 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %266 = load i32, i32* %9, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds [2 x i32], [2 x i32]* @bwi_rf_set_nrssi_ofs_11g.save_rf_regs, i64 0, i64 %267
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* %9, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = call i32 @RF_WRITE(%struct.bwi_mac* %265, i32 %269, i32 %273)
  br label %275

275:                                              ; preds = %264
  %276 = load i32, i32* %9, align 4
  %277 = add nsw i32 %276, -1
  store i32 %277, i32* %9, align 4
  br label %261

278:                                              ; preds = %261
  %279 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %280 = call i32 @PHY_SETBITS(%struct.bwi_mac* %279, i32 2050, i32 3)
  %281 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %282 = call i32 @PHY_SETBITS(%struct.bwi_mac* %281, i32 1065, i32 32768)
  %283 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %284 = call i32 @bwi_set_gains(%struct.bwi_mac* %283, %struct.bwi_gains* null)
  %285 = load %struct.bwi_phy*, %struct.bwi_phy** %3, align 8
  %286 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = icmp sge i32 %287, 6
  br i1 %288, label %289, label %308

289:                                              ; preds = %278
  br label %290

290:                                              ; preds = %304, %289
  %291 = load i32, i32* %10, align 4
  %292 = icmp slt i32 %291, 8
  br i1 %292, label %293, label %307

293:                                              ; preds = %290
  %294 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %295 = load i32, i32* %10, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds [8 x i32], [8 x i32]* @bwi_rf_set_nrssi_ofs_11g.save_phy6_regs, i64 0, i64 %296
  %298 = load i32, i32* %297, align 4
  %299 = load i32, i32* %10, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 %300
  %302 = load i32, i32* %301, align 4
  %303 = call i32 @PHY_WRITE(%struct.bwi_mac* %294, i32 %298, i32 %302)
  br label %304

304:                                              ; preds = %293
  %305 = load i32, i32* %10, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %10, align 4
  br label %290

307:                                              ; preds = %290
  br label %308

308:                                              ; preds = %307, %278
  %309 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %310 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @bwi_rf_set_nrssi_ofs_11g.save_phy_comm_regs, i64 0, i64 0), align 16
  %311 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 0
  %312 = load i32, i32* %311, align 16
  %313 = call i32 @PHY_WRITE(%struct.bwi_mac* %309, i32 %310, i32 %312)
  %314 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %315 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @bwi_rf_set_nrssi_ofs_11g.save_phy_comm_regs, i64 0, i64 2), align 8
  %316 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 2
  %317 = load i32, i32* %316, align 8
  %318 = call i32 @PHY_WRITE(%struct.bwi_mac* %314, i32 %315, i32 %317)
  %319 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %320 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @bwi_rf_set_nrssi_ofs_11g.save_phy_comm_regs, i64 0, i64 1), align 4
  %321 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 1
  %322 = load i32, i32* %321, align 4
  %323 = call i32 @PHY_WRITE(%struct.bwi_mac* %319, i32 %320, i32 %322)
  ret void
}

declare dso_local i32 @PHY_READ(%struct.bwi_mac*, i32) #1

declare dso_local i32 @RF_READ(%struct.bwi_mac*, i32) #1

declare dso_local i32 @PHY_CLRBITS(%struct.bwi_mac*, i32, i32) #1

declare dso_local i32 @PHY_FILT_SETBITS(%struct.bwi_mac*, i32, i32, i32) #1

declare dso_local i32 @PHY_SETBITS(%struct.bwi_mac*, i32, i32) #1

declare dso_local i32 @PHY_WRITE(%struct.bwi_mac*, i32, i32) #1

declare dso_local i32 @RF_SETBITS(%struct.bwi_mac*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @bwi_nrssi_11g(%struct.bwi_mac*) #1

declare dso_local i32 @RF_WRITE(%struct.bwi_mac*, i32, i32) #1

declare dso_local i32 @RF_CLRBITS(%struct.bwi_mac*, i32, i32) #1

declare dso_local i32 @bzero(%struct.bwi_gains*, i32) #1

declare dso_local i32 @bwi_set_gains(%struct.bwi_mac*, %struct.bwi_gains*) #1

declare dso_local i32 @RF_FILT_SETBITS(%struct.bwi_mac*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
