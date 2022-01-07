; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_phy_getinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_phy_getinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.bwn_softc*, %struct.bwn_phy }
%struct.bwn_softc = type { i32 }
%struct.bwn_phy = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@BWN_PHYVER = common dso_local global i32 0, align 4
@BWN_PHYVER_ANALOG = common dso_local global i32 0, align 4
@BWN_PHYVER_TYPE = common dso_local global i32 0, align 4
@BWN_PHYVER_VERSION = common dso_local global i32 0, align 4
@BWN_PHYTYPE_A = common dso_local global i32 0, align 4
@BWN_PHYTYPE_B = common dso_local global i32 0, align 4
@BWN_PHYTYPE_G = common dso_local global i32 0, align 4
@BWN_PHYTYPE_N = common dso_local global i32 0, align 4
@BWN_PHYTYPE_LP = common dso_local global i32 0, align 4
@BWN_RFCTL = common dso_local global i32 0, align 4
@BWN_RFCTL_ID = common dso_local global i32 0, align 4
@BWN_RFDATALO = common dso_local global i32 0, align 4
@BWN_RFDATAHI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"unsupported PHY (type %#x, rev %#x, analog %#x)\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"unsupported radio (manuf %#x, ver %#x, rev %#x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bwn_mac*, i32)* @bwn_phy_getinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwn_phy_getinfo(%struct.bwn_mac* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bwn_mac*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bwn_phy*, align 8
  %7 = alloca %struct.bwn_softc*, align 8
  %8 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %10 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %9, i32 0, i32 1
  store %struct.bwn_phy* %10, %struct.bwn_phy** %6, align 8
  %11 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %12 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %11, i32 0, i32 0
  %13 = load %struct.bwn_softc*, %struct.bwn_softc** %12, align 8
  store %struct.bwn_softc* %13, %struct.bwn_softc** %7, align 8
  %14 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %15 = load i32, i32* @BWN_PHYVER, align 4
  %16 = call i32 @BWN_READ_2(%struct.bwn_mac* %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.bwn_phy*, %struct.bwn_phy** %6, align 8
  %19 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.bwn_phy*, %struct.bwn_phy** %6, align 8
  %21 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %20, i32 0, i32 1
  store i32 1, i32* %21, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @BWN_PHYVER_ANALOG, align 4
  %24 = and i32 %22, %23
  %25 = ashr i32 %24, 12
  %26 = load %struct.bwn_phy*, %struct.bwn_phy** %6, align 8
  %27 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @BWN_PHYVER_TYPE, align 4
  %30 = and i32 %28, %29
  %31 = ashr i32 %30, 8
  %32 = load %struct.bwn_phy*, %struct.bwn_phy** %6, align 8
  %33 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @BWN_PHYVER_VERSION, align 4
  %36 = and i32 %34, %35
  %37 = load %struct.bwn_phy*, %struct.bwn_phy** %6, align 8
  %38 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 4
  %39 = load %struct.bwn_phy*, %struct.bwn_phy** %6, align 8
  %40 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @BWN_PHYTYPE_A, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %2
  %45 = load %struct.bwn_phy*, %struct.bwn_phy** %6, align 8
  %46 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = icmp sge i32 %47, 4
  br i1 %48, label %108, label %49

49:                                               ; preds = %44, %2
  %50 = load %struct.bwn_phy*, %struct.bwn_phy** %6, align 8
  %51 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @BWN_PHYTYPE_B, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %75

55:                                               ; preds = %49
  %56 = load %struct.bwn_phy*, %struct.bwn_phy** %6, align 8
  %57 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 2
  br i1 %59, label %60, label %75

60:                                               ; preds = %55
  %61 = load %struct.bwn_phy*, %struct.bwn_phy** %6, align 8
  %62 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 4
  br i1 %64, label %65, label %75

65:                                               ; preds = %60
  %66 = load %struct.bwn_phy*, %struct.bwn_phy** %6, align 8
  %67 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 6
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load %struct.bwn_phy*, %struct.bwn_phy** %6, align 8
  %72 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 7
  br i1 %74, label %108, label %75

75:                                               ; preds = %70, %65, %60, %55, %49
  %76 = load %struct.bwn_phy*, %struct.bwn_phy** %6, align 8
  %77 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @BWN_PHYTYPE_G, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %75
  %82 = load %struct.bwn_phy*, %struct.bwn_phy** %6, align 8
  %83 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = icmp sgt i32 %84, 9
  br i1 %85, label %108, label %86

86:                                               ; preds = %81, %75
  %87 = load %struct.bwn_phy*, %struct.bwn_phy** %6, align 8
  %88 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @BWN_PHYTYPE_N, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %86
  %93 = load %struct.bwn_phy*, %struct.bwn_phy** %6, align 8
  %94 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = icmp sgt i32 %95, 6
  br i1 %96, label %108, label %97

97:                                               ; preds = %92, %86
  %98 = load %struct.bwn_phy*, %struct.bwn_phy** %6, align 8
  %99 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @BWN_PHYTYPE_LP, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %97
  %104 = load %struct.bwn_phy*, %struct.bwn_phy** %6, align 8
  %105 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 4
  %107 = icmp sgt i32 %106, 2
  br i1 %107, label %108, label %109

108:                                              ; preds = %103, %92, %81, %70, %44
  br label %226

109:                                              ; preds = %103, %97
  %110 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %111 = load i32, i32* @BWN_RFCTL, align 4
  %112 = load i32, i32* @BWN_RFCTL_ID, align 4
  %113 = call i32 @BWN_WRITE_2(%struct.bwn_mac* %110, i32 %111, i32 %112)
  %114 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %115 = load i32, i32* @BWN_RFDATALO, align 4
  %116 = call i32 @BWN_READ_2(%struct.bwn_mac* %114, i32 %115)
  store i32 %116, i32* %8, align 4
  %117 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %118 = load i32, i32* @BWN_RFCTL, align 4
  %119 = load i32, i32* @BWN_RFCTL_ID, align 4
  %120 = call i32 @BWN_WRITE_2(%struct.bwn_mac* %117, i32 %118, i32 %119)
  %121 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %122 = load i32, i32* @BWN_RFDATAHI, align 4
  %123 = call i32 @BWN_READ_2(%struct.bwn_mac* %121, i32 %122)
  %124 = shl i32 %123, 16
  %125 = load i32, i32* %8, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* %8, align 4
  %128 = and i32 %127, -268435456
  %129 = lshr i32 %128, 28
  %130 = load %struct.bwn_phy*, %struct.bwn_phy** %6, align 8
  %131 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %130, i32 0, i32 5
  store i32 %129, i32* %131, align 4
  %132 = load i32, i32* %8, align 4
  %133 = and i32 %132, 268431360
  %134 = ashr i32 %133, 12
  %135 = load %struct.bwn_phy*, %struct.bwn_phy** %6, align 8
  %136 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %135, i32 0, i32 6
  store i32 %134, i32* %136, align 4
  %137 = load i32, i32* %8, align 4
  %138 = and i32 %137, 4095
  %139 = load %struct.bwn_phy*, %struct.bwn_phy** %6, align 8
  %140 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %139, i32 0, i32 7
  store i32 %138, i32* %140, align 4
  %141 = load %struct.bwn_phy*, %struct.bwn_phy** %6, align 8
  %142 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %141, i32 0, i32 8
  store i32 1, i32* %142, align 4
  %143 = load %struct.bwn_phy*, %struct.bwn_phy** %6, align 8
  %144 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %143, i32 0, i32 7
  %145 = load i32, i32* %144, align 4
  %146 = icmp ne i32 %145, 383
  br i1 %146, label %147, label %148

147:                                              ; preds = %109
  br label %241

148:                                              ; preds = %109
  %149 = load %struct.bwn_phy*, %struct.bwn_phy** %6, align 8
  %150 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @BWN_PHYTYPE_A, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %169

154:                                              ; preds = %148
  %155 = load %struct.bwn_phy*, %struct.bwn_phy** %6, align 8
  %156 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %155, i32 0, i32 6
  %157 = load i32, i32* %156, align 4
  %158 = icmp ne i32 %157, 8288
  br i1 %158, label %224, label %159

159:                                              ; preds = %154
  %160 = load %struct.bwn_phy*, %struct.bwn_phy** %6, align 8
  %161 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %160, i32 0, i32 5
  %162 = load i32, i32* %161, align 4
  %163 = icmp ne i32 %162, 1
  br i1 %163, label %224, label %164

164:                                              ; preds = %159
  %165 = load %struct.bwn_phy*, %struct.bwn_phy** %6, align 8
  %166 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %165, i32 0, i32 7
  %167 = load i32, i32* %166, align 4
  %168 = icmp ne i32 %167, 383
  br i1 %168, label %224, label %169

169:                                              ; preds = %164, %148
  %170 = load %struct.bwn_phy*, %struct.bwn_phy** %6, align 8
  %171 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @BWN_PHYTYPE_B, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %181

175:                                              ; preds = %169
  %176 = load %struct.bwn_phy*, %struct.bwn_phy** %6, align 8
  %177 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %176, i32 0, i32 6
  %178 = load i32, i32* %177, align 4
  %179 = and i32 %178, 65520
  %180 = icmp ne i32 %179, 8272
  br i1 %180, label %224, label %181

181:                                              ; preds = %175, %169
  %182 = load %struct.bwn_phy*, %struct.bwn_phy** %6, align 8
  %183 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @BWN_PHYTYPE_G, align 4
  %186 = icmp eq i32 %184, %185
  br i1 %186, label %187, label %192

187:                                              ; preds = %181
  %188 = load %struct.bwn_phy*, %struct.bwn_phy** %6, align 8
  %189 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %188, i32 0, i32 6
  %190 = load i32, i32* %189, align 4
  %191 = icmp ne i32 %190, 8272
  br i1 %191, label %224, label %192

192:                                              ; preds = %187, %181
  %193 = load %struct.bwn_phy*, %struct.bwn_phy** %6, align 8
  %194 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* @BWN_PHYTYPE_N, align 4
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %198, label %208

198:                                              ; preds = %192
  %199 = load %struct.bwn_phy*, %struct.bwn_phy** %6, align 8
  %200 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %199, i32 0, i32 6
  %201 = load i32, i32* %200, align 4
  %202 = icmp ne i32 %201, 8277
  br i1 %202, label %203, label %208

203:                                              ; preds = %198
  %204 = load %struct.bwn_phy*, %struct.bwn_phy** %6, align 8
  %205 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %204, i32 0, i32 6
  %206 = load i32, i32* %205, align 4
  %207 = icmp ne i32 %206, 8278
  br i1 %207, label %224, label %208

208:                                              ; preds = %203, %198, %192
  %209 = load %struct.bwn_phy*, %struct.bwn_phy** %6, align 8
  %210 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @BWN_PHYTYPE_LP, align 4
  %213 = icmp eq i32 %211, %212
  br i1 %213, label %214, label %225

214:                                              ; preds = %208
  %215 = load %struct.bwn_phy*, %struct.bwn_phy** %6, align 8
  %216 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %215, i32 0, i32 6
  %217 = load i32, i32* %216, align 4
  %218 = icmp ne i32 %217, 8290
  br i1 %218, label %219, label %225

219:                                              ; preds = %214
  %220 = load %struct.bwn_phy*, %struct.bwn_phy** %6, align 8
  %221 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %220, i32 0, i32 6
  %222 = load i32, i32* %221, align 4
  %223 = icmp ne i32 %222, 8291
  br i1 %223, label %224, label %225

224:                                              ; preds = %219, %203, %187, %175, %164, %159, %154
  br label %241

225:                                              ; preds = %219, %214, %208
  store i32 0, i32* %3, align 4
  br label %256

226:                                              ; preds = %108
  %227 = load %struct.bwn_softc*, %struct.bwn_softc** %7, align 8
  %228 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.bwn_phy*, %struct.bwn_phy** %6, align 8
  %231 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.bwn_phy*, %struct.bwn_phy** %6, align 8
  %234 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %233, i32 0, i32 4
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.bwn_phy*, %struct.bwn_phy** %6, align 8
  %237 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @device_printf(i32 %229, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %232, i32 %235, i32 %238)
  %240 = load i32, i32* @ENXIO, align 4
  store i32 %240, i32* %3, align 4
  br label %256

241:                                              ; preds = %224, %147
  %242 = load %struct.bwn_softc*, %struct.bwn_softc** %7, align 8
  %243 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.bwn_phy*, %struct.bwn_phy** %6, align 8
  %246 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %245, i32 0, i32 7
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.bwn_phy*, %struct.bwn_phy** %6, align 8
  %249 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %248, i32 0, i32 6
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.bwn_phy*, %struct.bwn_phy** %6, align 8
  %252 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %251, i32 0, i32 5
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @device_printf(i32 %244, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %247, i32 %250, i32 %253)
  %255 = load i32, i32* @ENXIO, align 4
  store i32 %255, i32* %3, align 4
  br label %256

256:                                              ; preds = %241, %226, %225
  %257 = load i32, i32* %3, align 4
  ret i32 %257
}

declare dso_local i32 @BWN_READ_2(%struct.bwn_mac*, i32) #1

declare dso_local i32 @BWN_WRITE_2(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
