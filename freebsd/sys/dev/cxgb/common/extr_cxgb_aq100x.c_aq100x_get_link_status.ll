; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_aq100x.c_aq100x_get_link_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_aq100x.c_aq100x_get_link_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cphy = type { i32 }

@MDIO_DEV_PMA_PMD = common dso_local global i32 0, align 4
@AQ_LINK_STAT = common dso_local global i32 0, align 4
@MDIO_DEV_ANEG = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@AQ_ANEG_STAT = common dso_local global i32 0, align 4
@SPEED_10000 = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@AQ_100M_CTRL = common dso_local global i32 0, align 4
@ADVERTISE_PAUSE_CAP = common dso_local global i32 0, align 4
@PAUSE_RX = common dso_local global i32 0, align 4
@PAUSE_TX = common dso_local global i32 0, align 4
@ADVERTISE_PAUSE_ASYM = common dso_local global i32 0, align 4
@BMCR_SPEED1000 = common dso_local global i32 0, align 4
@BMCR_SPEED100 = common dso_local global i32 0, align 4
@PHY_LINK_UP = common dso_local global i32 0, align 4
@PHY_LINK_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cphy*, i32*, i32*, i32*, i32*)* @aq100x_get_link_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aq100x_get_link_status(%struct.cphy* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cphy*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.cphy* %0, %struct.cphy** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %14, align 4
  %17 = load %struct.cphy*, %struct.cphy** %7, align 8
  %18 = load i32, i32* @MDIO_DEV_PMA_PMD, align 4
  %19 = load i32, i32* @AQ_LINK_STAT, align 4
  %20 = call i32 @mdio_read(%struct.cphy* %17, i32 %18, i32 %19, i32* %13)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = load i32, i32* %12, align 4
  store i32 %24, i32* %6, align 4
  br label %243

25:                                               ; preds = %5
  %26 = load i32, i32* %13, align 4
  %27 = icmp eq i32 %26, 65535
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %13, align 4
  %30 = and i32 %29, 1
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28, %25
  br label %229

33:                                               ; preds = %28
  %34 = load %struct.cphy*, %struct.cphy** %7, align 8
  %35 = load i32, i32* @MDIO_DEV_ANEG, align 4
  %36 = load i32, i32* @MII_BMCR, align 4
  %37 = call i32 @mdio_read(%struct.cphy* %34, i32 %35, i32 %36, i32* %13)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* %12, align 4
  store i32 %41, i32* %6, align 4
  br label %243

42:                                               ; preds = %33
  %43 = load i32, i32* %13, align 4
  %44 = and i32 %43, 32768
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %229

47:                                               ; preds = %42
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* @BMCR_ANENABLE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %175

52:                                               ; preds = %47
  %53 = load %struct.cphy*, %struct.cphy** %7, align 8
  %54 = load i32, i32* @MDIO_DEV_ANEG, align 4
  %55 = call i32 @mdio_read(%struct.cphy* %53, i32 %54, i32 1, i32* %13)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i32, i32* %12, align 4
  store i32 %59, i32* %6, align 4
  br label %243

60:                                               ; preds = %52
  %61 = load i32, i32* %13, align 4
  %62 = and i32 %61, 32
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %229

65:                                               ; preds = %60
  %66 = load %struct.cphy*, %struct.cphy** %7, align 8
  %67 = load i32, i32* @MDIO_DEV_ANEG, align 4
  %68 = load i32, i32* @AQ_ANEG_STAT, align 4
  %69 = call i32 @mdio_read(%struct.cphy* %66, i32 %67, i32 %68, i32* %13)
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  %73 = load i32, i32* %12, align 4
  store i32 %73, i32* %6, align 4
  br label %243

74:                                               ; preds = %65
  %75 = load i32*, i32** %9, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %93

77:                                               ; preds = %74
  %78 = load i32, i32* %13, align 4
  %79 = and i32 %78, 6
  switch i32 %79, label %92 [
    i32 6, label %80
    i32 4, label %83
    i32 2, label %86
    i32 0, label %89
  ]

80:                                               ; preds = %77
  %81 = load i32, i32* @SPEED_10000, align 4
  %82 = load i32*, i32** %9, align 8
  store i32 %81, i32* %82, align 4
  br label %92

83:                                               ; preds = %77
  %84 = load i32, i32* @SPEED_1000, align 4
  %85 = load i32*, i32** %9, align 8
  store i32 %84, i32* %85, align 4
  br label %92

86:                                               ; preds = %77
  %87 = load i32, i32* @SPEED_100, align 4
  %88 = load i32*, i32** %9, align 8
  store i32 %87, i32* %88, align 4
  br label %92

89:                                               ; preds = %77
  %90 = load i32, i32* @SPEED_10, align 4
  %91 = load i32*, i32** %9, align 8
  store i32 %90, i32* %91, align 4
  br label %92

92:                                               ; preds = %77, %89, %86, %83, %80
  br label %93

93:                                               ; preds = %92, %74
  %94 = load i32*, i32** %10, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %107

96:                                               ; preds = %93
  %97 = load i32, i32* %13, align 4
  %98 = and i32 %97, 1
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = load i32, i32* @DUPLEX_FULL, align 4
  br label %104

102:                                              ; preds = %96
  %103 = load i32, i32* @DUPLEX_HALF, align 4
  br label %104

104:                                              ; preds = %102, %100
  %105 = phi i32 [ %101, %100 ], [ %103, %102 ]
  %106 = load i32*, i32** %10, align 8
  store i32 %105, i32* %106, align 4
  br label %107

107:                                              ; preds = %104, %93
  %108 = load i32*, i32** %11, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %110, label %174

110:                                              ; preds = %107
  %111 = load %struct.cphy*, %struct.cphy** %7, align 8
  %112 = load i32, i32* @MDIO_DEV_ANEG, align 4
  %113 = call i32 @mdio_read(%struct.cphy* %111, i32 %112, i32 19, i32* %15)
  store i32 %113, i32* %12, align 4
  %114 = load i32, i32* %12, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %121, label %116

116:                                              ; preds = %110
  %117 = load %struct.cphy*, %struct.cphy** %7, align 8
  %118 = load i32, i32* @MDIO_DEV_ANEG, align 4
  %119 = load i32, i32* @AQ_100M_CTRL, align 4
  %120 = call i32 @mdio_read(%struct.cphy* %117, i32 %118, i32 %119, i32* %16)
  store i32 %120, i32* %12, align 4
  br label %121

121:                                              ; preds = %116, %110
  %122 = load i32, i32* %12, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %121
  %125 = load i32, i32* %12, align 4
  store i32 %125, i32* %6, align 4
  br label %243

126:                                              ; preds = %121
  %127 = load i32, i32* %15, align 4
  %128 = load i32, i32* %16, align 4
  %129 = and i32 %127, %128
  %130 = load i32, i32* @ADVERTISE_PAUSE_CAP, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %126
  %134 = load i32, i32* @PAUSE_RX, align 4
  %135 = load i32, i32* @PAUSE_TX, align 4
  %136 = or i32 %134, %135
  %137 = load i32*, i32** %11, align 8
  store i32 %136, i32* %137, align 4
  br label %173

138:                                              ; preds = %126
  %139 = load i32, i32* %15, align 4
  %140 = load i32, i32* @ADVERTISE_PAUSE_CAP, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %156

143:                                              ; preds = %138
  %144 = load i32, i32* %15, align 4
  %145 = load i32, i32* @ADVERTISE_PAUSE_ASYM, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %156

148:                                              ; preds = %143
  %149 = load i32, i32* %16, align 4
  %150 = load i32, i32* @ADVERTISE_PAUSE_ASYM, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %148
  %154 = load i32, i32* @PAUSE_TX, align 4
  %155 = load i32*, i32** %11, align 8
  store i32 %154, i32* %155, align 4
  br label %172

156:                                              ; preds = %148, %143, %138
  %157 = load i32, i32* %15, align 4
  %158 = load i32, i32* @ADVERTISE_PAUSE_ASYM, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %169

161:                                              ; preds = %156
  %162 = load i32, i32* %16, align 4
  %163 = load i32, i32* @ADVERTISE_PAUSE_CAP, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %161
  %167 = load i32, i32* @PAUSE_RX, align 4
  %168 = load i32*, i32** %11, align 8
  store i32 %167, i32* %168, align 4
  br label %171

169:                                              ; preds = %161, %156
  %170 = load i32*, i32** %11, align 8
  store i32 0, i32* %170, align 4
  br label %171

171:                                              ; preds = %169, %166
  br label %172

172:                                              ; preds = %171, %153
  br label %173

173:                                              ; preds = %172, %133
  br label %174

174:                                              ; preds = %173, %107
  br label %228

175:                                              ; preds = %47
  %176 = load %struct.cphy*, %struct.cphy** %7, align 8
  %177 = load i32, i32* @MDIO_DEV_PMA_PMD, align 4
  %178 = load i32, i32* @MII_BMCR, align 4
  %179 = call i32 @mdio_read(%struct.cphy* %176, i32 %177, i32 %178, i32* %13)
  store i32 %179, i32* %12, align 4
  %180 = load i32, i32* %12, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %175
  %183 = load i32, i32* %12, align 4
  store i32 %183, i32* %6, align 4
  br label %243

184:                                              ; preds = %175
  %185 = load i32, i32* @BMCR_SPEED1000, align 4
  %186 = load i32, i32* @BMCR_SPEED100, align 4
  %187 = or i32 %185, %186
  %188 = load i32, i32* %13, align 4
  %189 = and i32 %188, %187
  store i32 %189, i32* %13, align 4
  %190 = load i32*, i32** %9, align 8
  %191 = icmp ne i32* %190, null
  br i1 %191, label %192, label %221

192:                                              ; preds = %184
  %193 = load i32, i32* %13, align 4
  %194 = load i32, i32* @BMCR_SPEED1000, align 4
  %195 = load i32, i32* @BMCR_SPEED100, align 4
  %196 = or i32 %194, %195
  %197 = icmp eq i32 %193, %196
  br i1 %197, label %198, label %201

198:                                              ; preds = %192
  %199 = load i32, i32* @SPEED_10000, align 4
  %200 = load i32*, i32** %9, align 8
  store i32 %199, i32* %200, align 4
  br label %220

201:                                              ; preds = %192
  %202 = load i32, i32* %13, align 4
  %203 = load i32, i32* @BMCR_SPEED1000, align 4
  %204 = icmp eq i32 %202, %203
  br i1 %204, label %205, label %208

205:                                              ; preds = %201
  %206 = load i32, i32* @SPEED_1000, align 4
  %207 = load i32*, i32** %9, align 8
  store i32 %206, i32* %207, align 4
  br label %219

208:                                              ; preds = %201
  %209 = load i32, i32* %13, align 4
  %210 = load i32, i32* @BMCR_SPEED100, align 4
  %211 = icmp eq i32 %209, %210
  br i1 %211, label %212, label %215

212:                                              ; preds = %208
  %213 = load i32, i32* @SPEED_100, align 4
  %214 = load i32*, i32** %9, align 8
  store i32 %213, i32* %214, align 4
  br label %218

215:                                              ; preds = %208
  %216 = load i32, i32* @SPEED_10, align 4
  %217 = load i32*, i32** %9, align 8
  store i32 %216, i32* %217, align 4
  br label %218

218:                                              ; preds = %215, %212
  br label %219

219:                                              ; preds = %218, %205
  br label %220

220:                                              ; preds = %219, %198
  br label %221

221:                                              ; preds = %220, %184
  %222 = load i32*, i32** %10, align 8
  %223 = icmp ne i32* %222, null
  br i1 %223, label %224, label %227

224:                                              ; preds = %221
  %225 = load i32, i32* @DUPLEX_FULL, align 4
  %226 = load i32*, i32** %10, align 8
  store i32 %225, i32* %226, align 4
  br label %227

227:                                              ; preds = %224, %221
  br label %228

228:                                              ; preds = %227, %174
  store i32 1, i32* %14, align 4
  br label %229

229:                                              ; preds = %228, %64, %46, %32
  %230 = load i32*, i32** %8, align 8
  %231 = icmp ne i32* %230, null
  br i1 %231, label %232, label %242

232:                                              ; preds = %229
  %233 = load i32, i32* %14, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %237

235:                                              ; preds = %232
  %236 = load i32, i32* @PHY_LINK_UP, align 4
  br label %239

237:                                              ; preds = %232
  %238 = load i32, i32* @PHY_LINK_DOWN, align 4
  br label %239

239:                                              ; preds = %237, %235
  %240 = phi i32 [ %236, %235 ], [ %238, %237 ]
  %241 = load i32*, i32** %8, align 8
  store i32 %240, i32* %241, align 4
  br label %242

242:                                              ; preds = %239, %229
  store i32 0, i32* %6, align 4
  br label %243

243:                                              ; preds = %242, %182, %124, %72, %58, %40, %23
  %244 = load i32, i32* %6, align 4
  ret i32 %244
}

declare dso_local i32 @mdio_read(%struct.cphy*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
