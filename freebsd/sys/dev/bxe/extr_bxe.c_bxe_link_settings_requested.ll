; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_link_settings_requested.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_link_settings_requested.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32*, i64*, i32* }
%struct.TYPE_5__ = type { i32, i64*, i8**, i8**, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@DUPLEX_FULL = common dso_local global i8* null, align 8
@PORT_FEATURE_LINK_SPEED_MASK = common dso_local global i64 0, align 8
@ELINK_SUPPORTED_Autoneg = common dso_local global i32 0, align 4
@ELINK_SPEED_AUTO_NEG = common dso_local global i8* null, align 8
@ELINK_EXT_PHY1 = common dso_local global i64 0, align 8
@PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84833 = common dso_local global i32 0, align 4
@ELINK_SUPPORTED_100baseT_Half = common dso_local global i32 0, align 4
@ELINK_SUPPORTED_100baseT_Full = common dso_local global i32 0, align 4
@ELINK_SPEED_10000 = common dso_local global i8* null, align 8
@ADVERTISED_10000baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_FIBRE = common dso_local global i32 0, align 4
@ELINK_SUPPORTED_10baseT_Full = common dso_local global i32 0, align 4
@ELINK_SPEED_10 = common dso_local global i8* null, align 8
@ADVERTISED_10baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_TP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"Invalid NVRAM config link_config=0x%08x speed_cap_mask=0x%08x\0A\00", align 1
@ELINK_SUPPORTED_10baseT_Half = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i8* null, align 8
@ADVERTISED_10baseT_Half = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"driver requesting DUPLEX_HALF req_duplex = %x!\0A\00", align 1
@ELINK_SPEED_100 = common dso_local global i8* null, align 8
@ADVERTISED_100baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Half = common dso_local global i32 0, align 4
@ELINK_SUPPORTED_1000baseT_Full = common dso_local global i32 0, align 4
@ELINK_SPEED_1000 = common dso_local global i8* null, align 8
@ADVERTISED_1000baseT_Full = common dso_local global i32 0, align 4
@ELINK_SUPPORTED_2500baseX_Full = common dso_local global i32 0, align 4
@ELINK_SPEED_2500 = common dso_local global i8* null, align 8
@ADVERTISED_2500baseX_Full = common dso_local global i32 0, align 4
@ELINK_SUPPORTED_10000baseT_Full = common dso_local global i32 0, align 4
@ELINK_SPEED_20000 = common dso_local global i8* null, align 8
@PORT_FEATURE_FLOW_CONTROL_MASK = common dso_local global i64 0, align 8
@ELINK_FLOW_CTRL_AUTO = common dso_local global i64 0, align 8
@ELINK_FLOW_CTRL_NONE = common dso_local global i64 0, align 8
@DBG_LOAD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [69 x i8] c"req_line_speed=%d req_duplex=%d req_flow_ctrl=0x%x advertising=0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"req_line_speed=%d req_duplex=%d advertising=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*)* @bxe_link_settings_requested to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_link_settings_requested(%struct.bxe_softc* %0) #0 {
  %2 = alloca %struct.bxe_softc*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %2, align 8
  store i64 0, i64* %5, align 8
  %6 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %7 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  store i32 0, i32* %10, align 4
  %11 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %12 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  store i32 0, i32* %15, align 4
  %16 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %17 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %22 [
    i32 1, label %20
    i32 2, label %20
    i32 3, label %21
  ]

20:                                               ; preds = %1, %1
  store i64 1, i64* %5, align 8
  br label %22

21:                                               ; preds = %1
  store i64 2, i64* %5, align 8
  br label %22

22:                                               ; preds = %1, %21, %20
  store i64 0, i64* %4, align 8
  br label %23

23:                                               ; preds = %575, %22
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* %5, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %578

27:                                               ; preds = %23
  %28 = load i8*, i8** @DUPLEX_FULL, align 8
  %29 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %30 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 2
  %32 = load i8**, i8*** %31, align 8
  %33 = load i64, i64* %4, align 8
  %34 = getelementptr inbounds i8*, i8** %32, i64 %33
  store i8* %28, i8** %34, align 8
  %35 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %36 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i64*, i64** %37, align 8
  %39 = load i64, i64* %4, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %3, align 8
  %42 = load i64, i64* %3, align 8
  %43 = load i64, i64* @PORT_FEATURE_LINK_SPEED_MASK, align 8
  %44 = and i64 %42, %43
  switch i64 %44, label %447 [
    i64 128, label %45
    i64 133, label %122
    i64 132, label %164
    i64 136, label %222
    i64 135, label %264
    i64 131, label %313
    i64 129, label %355
    i64 134, label %397
    i64 130, label %439
  ]

45:                                               ; preds = %27
  %46 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %47 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* %4, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @ELINK_SUPPORTED_Autoneg, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %102

56:                                               ; preds = %45
  %57 = load i8*, i8** @ELINK_SPEED_AUTO_NEG, align 8
  %58 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %59 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 3
  %61 = load i8**, i8*** %60, align 8
  %62 = load i64, i64* %4, align 8
  %63 = getelementptr inbounds i8*, i8** %61, i64 %62
  store i8* %57, i8** %63, align 8
  %64 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %65 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* %4, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %72 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i64, i64* %4, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %70
  store i32 %78, i32* %76, align 4
  %79 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %80 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 5
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = load i64, i64* @ELINK_EXT_PHY1, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84833, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %101

89:                                               ; preds = %56
  %90 = load i32, i32* @ELINK_SUPPORTED_100baseT_Half, align 4
  %91 = load i32, i32* @ELINK_SUPPORTED_100baseT_Full, align 4
  %92 = or i32 %90, %91
  %93 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %94 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i64, i64* %4, align 8
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %92
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %89, %56
  br label %121

102:                                              ; preds = %45
  %103 = load i8*, i8** @ELINK_SPEED_10000, align 8
  %104 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %105 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 3
  %107 = load i8**, i8*** %106, align 8
  %108 = load i64, i64* %4, align 8
  %109 = getelementptr inbounds i8*, i8** %107, i64 %108
  store i8* %103, i8** %109, align 8
  %110 = load i32, i32* @ADVERTISED_10000baseT_Full, align 4
  %111 = load i32, i32* @ADVERTISED_FIBRE, align 4
  %112 = or i32 %110, %111
  %113 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %114 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = load i64, i64* %4, align 8
  %118 = getelementptr inbounds i32, i32* %116, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, %112
  store i32 %120, i32* %118, align 4
  br label %575

121:                                              ; preds = %101
  br label %478

122:                                              ; preds = %27
  %123 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %124 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 2
  %126 = load i32*, i32** %125, align 8
  %127 = load i64, i64* %4, align 8
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @ELINK_SUPPORTED_10baseT_Full, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %152

133:                                              ; preds = %122
  %134 = load i8*, i8** @ELINK_SPEED_10, align 8
  %135 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %136 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 3
  %138 = load i8**, i8*** %137, align 8
  %139 = load i64, i64* %4, align 8
  %140 = getelementptr inbounds i8*, i8** %138, i64 %139
  store i8* %134, i8** %140, align 8
  %141 = load i32, i32* @ADVERTISED_10baseT_Full, align 4
  %142 = load i32, i32* @ADVERTISED_TP, align 4
  %143 = or i32 %141, %142
  %144 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %145 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = load i64, i64* %4, align 8
  %149 = getelementptr inbounds i32, i32* %147, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = or i32 %150, %143
  store i32 %151, i32* %149, align 4
  br label %163

152:                                              ; preds = %122
  %153 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %154 = load i64, i64* %3, align 8
  %155 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %156 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 4
  %158 = load i32*, i32** %157, align 8
  %159 = load i64, i64* %4, align 8
  %160 = getelementptr inbounds i32, i32* %158, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @BLOGE(%struct.bxe_softc* %153, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i64 %154, i32 %161)
  br label %578

163:                                              ; preds = %133
  br label %478

164:                                              ; preds = %27
  %165 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %166 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 2
  %168 = load i32*, i32** %167, align 8
  %169 = load i64, i64* %4, align 8
  %170 = getelementptr inbounds i32, i32* %168, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @ELINK_SUPPORTED_10baseT_Half, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %210

175:                                              ; preds = %164
  %176 = load i8*, i8** @ELINK_SPEED_10, align 8
  %177 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %178 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 3
  %180 = load i8**, i8*** %179, align 8
  %181 = load i64, i64* %4, align 8
  %182 = getelementptr inbounds i8*, i8** %180, i64 %181
  store i8* %176, i8** %182, align 8
  %183 = load i8*, i8** @DUPLEX_HALF, align 8
  %184 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %185 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 2
  %187 = load i8**, i8*** %186, align 8
  %188 = load i64, i64* %4, align 8
  %189 = getelementptr inbounds i8*, i8** %187, i64 %188
  store i8* %183, i8** %189, align 8
  %190 = load i32, i32* @ADVERTISED_10baseT_Half, align 4
  %191 = load i32, i32* @ADVERTISED_TP, align 4
  %192 = or i32 %190, %191
  %193 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %194 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 0
  %196 = load i32*, i32** %195, align 8
  %197 = load i64, i64* %4, align 8
  %198 = getelementptr inbounds i32, i32* %196, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = or i32 %199, %192
  store i32 %200, i32* %198, align 4
  %201 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %202 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %203 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 2
  %205 = load i8**, i8*** %204, align 8
  %206 = load i64, i64* %4, align 8
  %207 = getelementptr inbounds i8*, i8** %205, i64 %206
  %208 = load i8*, i8** %207, align 8
  %209 = call i32 @ELINK_DEBUG_P1(%struct.bxe_softc* %201, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8* %208)
  br label %221

210:                                              ; preds = %164
  %211 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %212 = load i64, i64* %3, align 8
  %213 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %214 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 4
  %216 = load i32*, i32** %215, align 8
  %217 = load i64, i64* %4, align 8
  %218 = getelementptr inbounds i32, i32* %216, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @BLOGE(%struct.bxe_softc* %211, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i64 %212, i32 %219)
  br label %578

221:                                              ; preds = %175
  br label %478

222:                                              ; preds = %27
  %223 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %224 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 2
  %226 = load i32*, i32** %225, align 8
  %227 = load i64, i64* %4, align 8
  %228 = getelementptr inbounds i32, i32* %226, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* @ELINK_SUPPORTED_100baseT_Full, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %252

233:                                              ; preds = %222
  %234 = load i8*, i8** @ELINK_SPEED_100, align 8
  %235 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %236 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 3
  %238 = load i8**, i8*** %237, align 8
  %239 = load i64, i64* %4, align 8
  %240 = getelementptr inbounds i8*, i8** %238, i64 %239
  store i8* %234, i8** %240, align 8
  %241 = load i32, i32* @ADVERTISED_100baseT_Full, align 4
  %242 = load i32, i32* @ADVERTISED_TP, align 4
  %243 = or i32 %241, %242
  %244 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %245 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 0
  %247 = load i32*, i32** %246, align 8
  %248 = load i64, i64* %4, align 8
  %249 = getelementptr inbounds i32, i32* %247, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = or i32 %250, %243
  store i32 %251, i32* %249, align 4
  br label %263

252:                                              ; preds = %222
  %253 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %254 = load i64, i64* %3, align 8
  %255 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %256 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %256, i32 0, i32 4
  %258 = load i32*, i32** %257, align 8
  %259 = load i64, i64* %4, align 8
  %260 = getelementptr inbounds i32, i32* %258, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = call i32 @BLOGE(%struct.bxe_softc* %253, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i64 %254, i32 %261)
  br label %578

263:                                              ; preds = %233
  br label %478

264:                                              ; preds = %27
  %265 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %266 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %266, i32 0, i32 2
  %268 = load i32*, i32** %267, align 8
  %269 = load i64, i64* %4, align 8
  %270 = getelementptr inbounds i32, i32* %268, i64 %269
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* @ELINK_SUPPORTED_100baseT_Half, align 4
  %273 = and i32 %271, %272
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %301

275:                                              ; preds = %264
  %276 = load i8*, i8** @ELINK_SPEED_100, align 8
  %277 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %278 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %277, i32 0, i32 1
  %279 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %278, i32 0, i32 3
  %280 = load i8**, i8*** %279, align 8
  %281 = load i64, i64* %4, align 8
  %282 = getelementptr inbounds i8*, i8** %280, i64 %281
  store i8* %276, i8** %282, align 8
  %283 = load i8*, i8** @DUPLEX_HALF, align 8
  %284 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %285 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %284, i32 0, i32 1
  %286 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %285, i32 0, i32 2
  %287 = load i8**, i8*** %286, align 8
  %288 = load i64, i64* %4, align 8
  %289 = getelementptr inbounds i8*, i8** %287, i64 %288
  store i8* %283, i8** %289, align 8
  %290 = load i32, i32* @ADVERTISED_100baseT_Half, align 4
  %291 = load i32, i32* @ADVERTISED_TP, align 4
  %292 = or i32 %290, %291
  %293 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %294 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %294, i32 0, i32 0
  %296 = load i32*, i32** %295, align 8
  %297 = load i64, i64* %4, align 8
  %298 = getelementptr inbounds i32, i32* %296, i64 %297
  %299 = load i32, i32* %298, align 4
  %300 = or i32 %299, %292
  store i32 %300, i32* %298, align 4
  br label %312

301:                                              ; preds = %264
  %302 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %303 = load i64, i64* %3, align 8
  %304 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %305 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %304, i32 0, i32 1
  %306 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %305, i32 0, i32 4
  %307 = load i32*, i32** %306, align 8
  %308 = load i64, i64* %4, align 8
  %309 = getelementptr inbounds i32, i32* %307, i64 %308
  %310 = load i32, i32* %309, align 4
  %311 = call i32 @BLOGE(%struct.bxe_softc* %302, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i64 %303, i32 %310)
  br label %578

312:                                              ; preds = %275
  br label %478

313:                                              ; preds = %27
  %314 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %315 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %315, i32 0, i32 2
  %317 = load i32*, i32** %316, align 8
  %318 = load i64, i64* %4, align 8
  %319 = getelementptr inbounds i32, i32* %317, i64 %318
  %320 = load i32, i32* %319, align 4
  %321 = load i32, i32* @ELINK_SUPPORTED_1000baseT_Full, align 4
  %322 = and i32 %320, %321
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %343

324:                                              ; preds = %313
  %325 = load i8*, i8** @ELINK_SPEED_1000, align 8
  %326 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %327 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %326, i32 0, i32 1
  %328 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %327, i32 0, i32 3
  %329 = load i8**, i8*** %328, align 8
  %330 = load i64, i64* %4, align 8
  %331 = getelementptr inbounds i8*, i8** %329, i64 %330
  store i8* %325, i8** %331, align 8
  %332 = load i32, i32* @ADVERTISED_1000baseT_Full, align 4
  %333 = load i32, i32* @ADVERTISED_TP, align 4
  %334 = or i32 %332, %333
  %335 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %336 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %335, i32 0, i32 0
  %337 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %336, i32 0, i32 0
  %338 = load i32*, i32** %337, align 8
  %339 = load i64, i64* %4, align 8
  %340 = getelementptr inbounds i32, i32* %338, i64 %339
  %341 = load i32, i32* %340, align 4
  %342 = or i32 %341, %334
  store i32 %342, i32* %340, align 4
  br label %354

343:                                              ; preds = %313
  %344 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %345 = load i64, i64* %3, align 8
  %346 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %347 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %346, i32 0, i32 1
  %348 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %347, i32 0, i32 4
  %349 = load i32*, i32** %348, align 8
  %350 = load i64, i64* %4, align 8
  %351 = getelementptr inbounds i32, i32* %349, i64 %350
  %352 = load i32, i32* %351, align 4
  %353 = call i32 @BLOGE(%struct.bxe_softc* %344, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i64 %345, i32 %352)
  br label %578

354:                                              ; preds = %324
  br label %478

355:                                              ; preds = %27
  %356 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %357 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %356, i32 0, i32 0
  %358 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %357, i32 0, i32 2
  %359 = load i32*, i32** %358, align 8
  %360 = load i64, i64* %4, align 8
  %361 = getelementptr inbounds i32, i32* %359, i64 %360
  %362 = load i32, i32* %361, align 4
  %363 = load i32, i32* @ELINK_SUPPORTED_2500baseX_Full, align 4
  %364 = and i32 %362, %363
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %385

366:                                              ; preds = %355
  %367 = load i8*, i8** @ELINK_SPEED_2500, align 8
  %368 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %369 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %368, i32 0, i32 1
  %370 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %369, i32 0, i32 3
  %371 = load i8**, i8*** %370, align 8
  %372 = load i64, i64* %4, align 8
  %373 = getelementptr inbounds i8*, i8** %371, i64 %372
  store i8* %367, i8** %373, align 8
  %374 = load i32, i32* @ADVERTISED_2500baseX_Full, align 4
  %375 = load i32, i32* @ADVERTISED_TP, align 4
  %376 = or i32 %374, %375
  %377 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %378 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %377, i32 0, i32 0
  %379 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %378, i32 0, i32 0
  %380 = load i32*, i32** %379, align 8
  %381 = load i64, i64* %4, align 8
  %382 = getelementptr inbounds i32, i32* %380, i64 %381
  %383 = load i32, i32* %382, align 4
  %384 = or i32 %383, %376
  store i32 %384, i32* %382, align 4
  br label %396

385:                                              ; preds = %355
  %386 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %387 = load i64, i64* %3, align 8
  %388 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %389 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %388, i32 0, i32 1
  %390 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %389, i32 0, i32 4
  %391 = load i32*, i32** %390, align 8
  %392 = load i64, i64* %4, align 8
  %393 = getelementptr inbounds i32, i32* %391, i64 %392
  %394 = load i32, i32* %393, align 4
  %395 = call i32 @BLOGE(%struct.bxe_softc* %386, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i64 %387, i32 %394)
  br label %578

396:                                              ; preds = %366
  br label %478

397:                                              ; preds = %27
  %398 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %399 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %398, i32 0, i32 0
  %400 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %399, i32 0, i32 2
  %401 = load i32*, i32** %400, align 8
  %402 = load i64, i64* %4, align 8
  %403 = getelementptr inbounds i32, i32* %401, i64 %402
  %404 = load i32, i32* %403, align 4
  %405 = load i32, i32* @ELINK_SUPPORTED_10000baseT_Full, align 4
  %406 = and i32 %404, %405
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %408, label %427

408:                                              ; preds = %397
  %409 = load i8*, i8** @ELINK_SPEED_10000, align 8
  %410 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %411 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %410, i32 0, i32 1
  %412 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %411, i32 0, i32 3
  %413 = load i8**, i8*** %412, align 8
  %414 = load i64, i64* %4, align 8
  %415 = getelementptr inbounds i8*, i8** %413, i64 %414
  store i8* %409, i8** %415, align 8
  %416 = load i32, i32* @ADVERTISED_10000baseT_Full, align 4
  %417 = load i32, i32* @ADVERTISED_FIBRE, align 4
  %418 = or i32 %416, %417
  %419 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %420 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %419, i32 0, i32 0
  %421 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %420, i32 0, i32 0
  %422 = load i32*, i32** %421, align 8
  %423 = load i64, i64* %4, align 8
  %424 = getelementptr inbounds i32, i32* %422, i64 %423
  %425 = load i32, i32* %424, align 4
  %426 = or i32 %425, %418
  store i32 %426, i32* %424, align 4
  br label %438

427:                                              ; preds = %397
  %428 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %429 = load i64, i64* %3, align 8
  %430 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %431 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %430, i32 0, i32 1
  %432 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %431, i32 0, i32 4
  %433 = load i32*, i32** %432, align 8
  %434 = load i64, i64* %4, align 8
  %435 = getelementptr inbounds i32, i32* %433, i64 %434
  %436 = load i32, i32* %435, align 4
  %437 = call i32 @BLOGE(%struct.bxe_softc* %428, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i64 %429, i32 %436)
  br label %578

438:                                              ; preds = %408
  br label %478

439:                                              ; preds = %27
  %440 = load i8*, i8** @ELINK_SPEED_20000, align 8
  %441 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %442 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %441, i32 0, i32 1
  %443 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %442, i32 0, i32 3
  %444 = load i8**, i8*** %443, align 8
  %445 = load i64, i64* %4, align 8
  %446 = getelementptr inbounds i8*, i8** %444, i64 %445
  store i8* %440, i8** %446, align 8
  br label %478

447:                                              ; preds = %27
  %448 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %449 = load i64, i64* %3, align 8
  %450 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %451 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %450, i32 0, i32 1
  %452 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %451, i32 0, i32 4
  %453 = load i32*, i32** %452, align 8
  %454 = load i64, i64* %4, align 8
  %455 = getelementptr inbounds i32, i32* %453, i64 %454
  %456 = load i32, i32* %455, align 4
  %457 = call i32 @BLOGE(%struct.bxe_softc* %448, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i64 %449, i32 %456)
  %458 = load i8*, i8** @ELINK_SPEED_AUTO_NEG, align 8
  %459 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %460 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %459, i32 0, i32 1
  %461 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %460, i32 0, i32 3
  %462 = load i8**, i8*** %461, align 8
  %463 = load i64, i64* %4, align 8
  %464 = getelementptr inbounds i8*, i8** %462, i64 %463
  store i8* %458, i8** %464, align 8
  %465 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %466 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %465, i32 0, i32 0
  %467 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %466, i32 0, i32 2
  %468 = load i32*, i32** %467, align 8
  %469 = load i64, i64* %4, align 8
  %470 = getelementptr inbounds i32, i32* %468, i64 %469
  %471 = load i32, i32* %470, align 4
  %472 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %473 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %472, i32 0, i32 0
  %474 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %473, i32 0, i32 0
  %475 = load i32*, i32** %474, align 8
  %476 = load i64, i64* %4, align 8
  %477 = getelementptr inbounds i32, i32* %475, i64 %476
  store i32 %471, i32* %477, align 4
  br label %478

478:                                              ; preds = %447, %439, %438, %396, %354, %312, %263, %221, %163, %121
  %479 = load i64, i64* %3, align 8
  %480 = load i64, i64* @PORT_FEATURE_FLOW_CONTROL_MASK, align 8
  %481 = and i64 %479, %480
  %482 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %483 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %482, i32 0, i32 1
  %484 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %483, i32 0, i32 1
  %485 = load i64*, i64** %484, align 8
  %486 = load i64, i64* %4, align 8
  %487 = getelementptr inbounds i64, i64* %485, i64 %486
  store i64 %481, i64* %487, align 8
  %488 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %489 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %488, i32 0, i32 1
  %490 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %489, i32 0, i32 1
  %491 = load i64*, i64** %490, align 8
  %492 = load i64, i64* %4, align 8
  %493 = getelementptr inbounds i64, i64* %491, i64 %492
  %494 = load i64, i64* %493, align 8
  %495 = load i64, i64* @ELINK_FLOW_CTRL_AUTO, align 8
  %496 = icmp eq i64 %494, %495
  br i1 %496, label %497, label %520

497:                                              ; preds = %478
  %498 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %499 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %498, i32 0, i32 0
  %500 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %499, i32 0, i32 2
  %501 = load i32*, i32** %500, align 8
  %502 = load i64, i64* %4, align 8
  %503 = getelementptr inbounds i32, i32* %501, i64 %502
  %504 = load i32, i32* %503, align 4
  %505 = load i32, i32* @ELINK_SUPPORTED_Autoneg, align 4
  %506 = and i32 %504, %505
  %507 = icmp ne i32 %506, 0
  br i1 %507, label %516, label %508

508:                                              ; preds = %497
  %509 = load i64, i64* @ELINK_FLOW_CTRL_NONE, align 8
  %510 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %511 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %510, i32 0, i32 1
  %512 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %511, i32 0, i32 1
  %513 = load i64*, i64** %512, align 8
  %514 = load i64, i64* %4, align 8
  %515 = getelementptr inbounds i64, i64* %513, i64 %514
  store i64 %509, i64* %515, align 8
  br label %519

516:                                              ; preds = %497
  %517 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %518 = call i32 @bxe_set_requested_fc(%struct.bxe_softc* %517)
  br label %519

519:                                              ; preds = %516, %508
  br label %520

520:                                              ; preds = %519, %478
  %521 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %522 = load i32, i32* @DBG_LOAD, align 4
  %523 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %524 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %523, i32 0, i32 1
  %525 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %524, i32 0, i32 3
  %526 = load i8**, i8*** %525, align 8
  %527 = load i64, i64* %4, align 8
  %528 = getelementptr inbounds i8*, i8** %526, i64 %527
  %529 = load i8*, i8** %528, align 8
  %530 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %531 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %530, i32 0, i32 1
  %532 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %531, i32 0, i32 2
  %533 = load i8**, i8*** %532, align 8
  %534 = load i64, i64* %4, align 8
  %535 = getelementptr inbounds i8*, i8** %533, i64 %534
  %536 = load i8*, i8** %535, align 8
  %537 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %538 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %537, i32 0, i32 1
  %539 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %538, i32 0, i32 1
  %540 = load i64*, i64** %539, align 8
  %541 = load i64, i64* %4, align 8
  %542 = getelementptr inbounds i64, i64* %540, i64 %541
  %543 = load i64, i64* %542, align 8
  %544 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %545 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %544, i32 0, i32 0
  %546 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %545, i32 0, i32 0
  %547 = load i32*, i32** %546, align 8
  %548 = load i64, i64* %4, align 8
  %549 = getelementptr inbounds i32, i32* %547, i64 %548
  %550 = load i32, i32* %549, align 4
  %551 = call i32 @BLOGD(%struct.bxe_softc* %521, i32 %522, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0), i8* %529, i8* %536, i64 %543, i32 %550)
  %552 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %553 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %554 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %553, i32 0, i32 1
  %555 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %554, i32 0, i32 3
  %556 = load i8**, i8*** %555, align 8
  %557 = load i64, i64* %4, align 8
  %558 = getelementptr inbounds i8*, i8** %556, i64 %557
  %559 = load i8*, i8** %558, align 8
  %560 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %561 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %560, i32 0, i32 1
  %562 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %561, i32 0, i32 2
  %563 = load i8**, i8*** %562, align 8
  %564 = load i64, i64* %4, align 8
  %565 = getelementptr inbounds i8*, i8** %563, i64 %564
  %566 = load i8*, i8** %565, align 8
  %567 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %568 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %567, i32 0, i32 0
  %569 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %568, i32 0, i32 0
  %570 = load i32*, i32** %569, align 8
  %571 = load i64, i64* %4, align 8
  %572 = getelementptr inbounds i32, i32* %570, i64 %571
  %573 = load i32, i32* %572, align 4
  %574 = call i32 @ELINK_DEBUG_P3(%struct.bxe_softc* %552, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i8* %559, i8* %566, i32 %573)
  br label %575

575:                                              ; preds = %520, %102
  %576 = load i64, i64* %4, align 8
  %577 = add i64 %576, 1
  store i64 %577, i64* %4, align 8
  br label %23

578:                                              ; preds = %152, %210, %252, %301, %343, %385, %427, %23
  ret void
}

declare dso_local i32 @BLOGE(%struct.bxe_softc*, i8*, i64, i32) #1

declare dso_local i32 @ELINK_DEBUG_P1(%struct.bxe_softc*, i8*, i8*) #1

declare dso_local i32 @bxe_set_requested_fc(%struct.bxe_softc*) #1

declare dso_local i32 @BLOGD(%struct.bxe_softc*, i32, i8*, i8*, i8*, i64, i32) #1

declare dso_local i32 @ELINK_DEBUG_P3(%struct.bxe_softc*, i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
