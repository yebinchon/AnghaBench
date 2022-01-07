; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hme/extr_if_hme_sbus.c_hme_sbus_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hme/extr_if_hme_sbus.c_hme_sbus_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hme_sbus_softc = type { i32*, i32*, i32*, i32*, i32*, i32*, i32, %struct.hme_softc }
%struct.hme_softc = type { i32, i32, i64, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@MTX_NETWORK_LOCK = common dso_local global i32 0, align 4
@MTX_DEF = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"cannot map SEB registers\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"cannot map ETX registers\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"cannot map ERX registers\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"cannot map MAC registers\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"cannot get MIF registers\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"cannot move MIF registers to MAC bank\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"could not allocate interrupt\0A\00", align 1
@SBUS_BURST_64 = common dso_local global i32 0, align 4
@SBUS_BURST_32 = common dso_local global i32 0, align 4
@SBUS_BURST_16 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"could not be configured\0A\00", align 1
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@hme_intr = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [30 x i8] c"couldn't establish interrupt\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @hme_sbus_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hme_sbus_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.hme_sbus_softc*, align 8
  %5 = alloca %struct.hme_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.hme_sbus_softc* @device_get_softc(i32 %11)
  store %struct.hme_sbus_softc* %12, %struct.hme_sbus_softc** %4, align 8
  %13 = load %struct.hme_sbus_softc*, %struct.hme_sbus_softc** %4, align 8
  %14 = getelementptr inbounds %struct.hme_sbus_softc, %struct.hme_sbus_softc* %13, i32 0, i32 7
  store %struct.hme_softc* %14, %struct.hme_softc** %5, align 8
  %15 = load %struct.hme_softc*, %struct.hme_softc** %5, align 8
  %16 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %15, i32 0, i32 1
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @device_get_nameunit(i32 %17)
  %19 = load i32, i32* @MTX_NETWORK_LOCK, align 4
  %20 = load i32, i32* @MTX_DEF, align 4
  %21 = call i32 @mtx_init(i32* %16, i32 %18, i32 %19, i32 %20)
  store i32 0, i32* %9, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @SYS_RES_MEMORY, align 4
  %24 = load i32, i32* @RF_ACTIVE, align 4
  %25 = call i8* @bus_alloc_resource_any(i32 %22, i32 %23, i32* %9, i32 %24)
  %26 = bitcast i8* %25 to i32*
  %27 = load %struct.hme_sbus_softc*, %struct.hme_sbus_softc** %4, align 8
  %28 = getelementptr inbounds %struct.hme_sbus_softc, %struct.hme_sbus_softc* %27, i32 0, i32 0
  store i32* %26, i32** %28, align 8
  %29 = load %struct.hme_sbus_softc*, %struct.hme_sbus_softc** %4, align 8
  %30 = getelementptr inbounds %struct.hme_sbus_softc, %struct.hme_sbus_softc* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %1
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @device_printf(i32 %34, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @ENXIO, align 4
  store i32 %36, i32* %10, align 4
  br label %369

37:                                               ; preds = %1
  %38 = load %struct.hme_sbus_softc*, %struct.hme_sbus_softc** %4, align 8
  %39 = getelementptr inbounds %struct.hme_sbus_softc, %struct.hme_sbus_softc* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = call i8* @rman_get_bustag(i32* %40)
  %42 = load %struct.hme_softc*, %struct.hme_softc** %5, align 8
  %43 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %42, i32 0, i32 14
  store i8* %41, i8** %43, align 8
  %44 = load %struct.hme_sbus_softc*, %struct.hme_sbus_softc** %4, align 8
  %45 = getelementptr inbounds %struct.hme_sbus_softc, %struct.hme_sbus_softc* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = call i8* @rman_get_bushandle(i32* %46)
  %48 = load %struct.hme_softc*, %struct.hme_softc** %5, align 8
  %49 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %48, i32 0, i32 13
  store i8* %47, i8** %49, align 8
  store i32 1, i32* %9, align 4
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @SYS_RES_MEMORY, align 4
  %52 = load i32, i32* @RF_ACTIVE, align 4
  %53 = call i8* @bus_alloc_resource_any(i32 %50, i32 %51, i32* %9, i32 %52)
  %54 = bitcast i8* %53 to i32*
  %55 = load %struct.hme_sbus_softc*, %struct.hme_sbus_softc** %4, align 8
  %56 = getelementptr inbounds %struct.hme_sbus_softc, %struct.hme_sbus_softc* %55, i32 0, i32 1
  store i32* %54, i32** %56, align 8
  %57 = load %struct.hme_sbus_softc*, %struct.hme_sbus_softc** %4, align 8
  %58 = getelementptr inbounds %struct.hme_sbus_softc, %struct.hme_sbus_softc* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %37
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @device_printf(i32 %62, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32, i32* @ENXIO, align 4
  store i32 %64, i32* %10, align 4
  br label %358

65:                                               ; preds = %37
  %66 = load %struct.hme_sbus_softc*, %struct.hme_sbus_softc** %4, align 8
  %67 = getelementptr inbounds %struct.hme_sbus_softc, %struct.hme_sbus_softc* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = call i8* @rman_get_bustag(i32* %68)
  %70 = load %struct.hme_softc*, %struct.hme_softc** %5, align 8
  %71 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %70, i32 0, i32 12
  store i8* %69, i8** %71, align 8
  %72 = load %struct.hme_sbus_softc*, %struct.hme_sbus_softc** %4, align 8
  %73 = getelementptr inbounds %struct.hme_sbus_softc, %struct.hme_sbus_softc* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = call i8* @rman_get_bushandle(i32* %74)
  %76 = load %struct.hme_softc*, %struct.hme_softc** %5, align 8
  %77 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %76, i32 0, i32 11
  store i8* %75, i8** %77, align 8
  store i32 2, i32* %9, align 4
  %78 = load i32, i32* %3, align 4
  %79 = load i32, i32* @SYS_RES_MEMORY, align 4
  %80 = load i32, i32* @RF_ACTIVE, align 4
  %81 = call i8* @bus_alloc_resource_any(i32 %78, i32 %79, i32* %9, i32 %80)
  %82 = bitcast i8* %81 to i32*
  %83 = load %struct.hme_sbus_softc*, %struct.hme_sbus_softc** %4, align 8
  %84 = getelementptr inbounds %struct.hme_sbus_softc, %struct.hme_sbus_softc* %83, i32 0, i32 2
  store i32* %82, i32** %84, align 8
  %85 = load %struct.hme_sbus_softc*, %struct.hme_sbus_softc** %4, align 8
  %86 = getelementptr inbounds %struct.hme_sbus_softc, %struct.hme_sbus_softc* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = icmp eq i32* %87, null
  br i1 %88, label %89, label %93

89:                                               ; preds = %65
  %90 = load i32, i32* %3, align 4
  %91 = call i32 @device_printf(i32 %90, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %92 = load i32, i32* @ENXIO, align 4
  store i32 %92, i32* %10, align 4
  br label %347

93:                                               ; preds = %65
  %94 = load %struct.hme_sbus_softc*, %struct.hme_sbus_softc** %4, align 8
  %95 = getelementptr inbounds %struct.hme_sbus_softc, %struct.hme_sbus_softc* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = call i8* @rman_get_bustag(i32* %96)
  %98 = load %struct.hme_softc*, %struct.hme_softc** %5, align 8
  %99 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %98, i32 0, i32 10
  store i8* %97, i8** %99, align 8
  %100 = load %struct.hme_sbus_softc*, %struct.hme_sbus_softc** %4, align 8
  %101 = getelementptr inbounds %struct.hme_sbus_softc, %struct.hme_sbus_softc* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = call i8* @rman_get_bushandle(i32* %102)
  %104 = load %struct.hme_softc*, %struct.hme_softc** %5, align 8
  %105 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %104, i32 0, i32 9
  store i8* %103, i8** %105, align 8
  store i32 3, i32* %9, align 4
  %106 = load i32, i32* %3, align 4
  %107 = load i32, i32* @SYS_RES_MEMORY, align 4
  %108 = load i32, i32* @RF_ACTIVE, align 4
  %109 = call i8* @bus_alloc_resource_any(i32 %106, i32 %107, i32* %9, i32 %108)
  %110 = bitcast i8* %109 to i32*
  %111 = load %struct.hme_sbus_softc*, %struct.hme_sbus_softc** %4, align 8
  %112 = getelementptr inbounds %struct.hme_sbus_softc, %struct.hme_sbus_softc* %111, i32 0, i32 3
  store i32* %110, i32** %112, align 8
  %113 = load %struct.hme_sbus_softc*, %struct.hme_sbus_softc** %4, align 8
  %114 = getelementptr inbounds %struct.hme_sbus_softc, %struct.hme_sbus_softc* %113, i32 0, i32 3
  %115 = load i32*, i32** %114, align 8
  %116 = icmp eq i32* %115, null
  br i1 %116, label %117, label %121

117:                                              ; preds = %93
  %118 = load i32, i32* %3, align 4
  %119 = call i32 @device_printf(i32 %118, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %120 = load i32, i32* @ENXIO, align 4
  store i32 %120, i32* %10, align 4
  br label %336

121:                                              ; preds = %93
  %122 = load %struct.hme_sbus_softc*, %struct.hme_sbus_softc** %4, align 8
  %123 = getelementptr inbounds %struct.hme_sbus_softc, %struct.hme_sbus_softc* %122, i32 0, i32 3
  %124 = load i32*, i32** %123, align 8
  %125 = call i8* @rman_get_bustag(i32* %124)
  %126 = load %struct.hme_softc*, %struct.hme_softc** %5, align 8
  %127 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %126, i32 0, i32 8
  store i8* %125, i8** %127, align 8
  %128 = load %struct.hme_sbus_softc*, %struct.hme_sbus_softc** %4, align 8
  %129 = getelementptr inbounds %struct.hme_sbus_softc, %struct.hme_sbus_softc* %128, i32 0, i32 3
  %130 = load i32*, i32** %129, align 8
  %131 = call i8* @rman_get_bushandle(i32* %130)
  %132 = load %struct.hme_softc*, %struct.hme_softc** %5, align 8
  %133 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %132, i32 0, i32 7
  store i8* %131, i8** %133, align 8
  store i32 4, i32* %9, align 4
  %134 = load i32, i32* %3, align 4
  %135 = load i32, i32* @SYS_RES_MEMORY, align 4
  %136 = load i32, i32* @RF_ACTIVE, align 4
  %137 = call i8* @bus_alloc_resource_any(i32 %134, i32 %135, i32* %9, i32 %136)
  %138 = bitcast i8* %137 to i32*
  %139 = load %struct.hme_sbus_softc*, %struct.hme_sbus_softc** %4, align 8
  %140 = getelementptr inbounds %struct.hme_sbus_softc, %struct.hme_sbus_softc* %139, i32 0, i32 4
  store i32* %138, i32** %140, align 8
  %141 = load %struct.hme_sbus_softc*, %struct.hme_sbus_softc** %4, align 8
  %142 = getelementptr inbounds %struct.hme_sbus_softc, %struct.hme_sbus_softc* %141, i32 0, i32 4
  %143 = load i32*, i32** %142, align 8
  %144 = icmp eq i32* %143, null
  br i1 %144, label %145, label %198

145:                                              ; preds = %121
  %146 = load i32, i32* %3, align 4
  %147 = load i32, i32* @SYS_RES_MEMORY, align 4
  %148 = load i32, i32* %9, align 4
  %149 = call i64 @bus_get_resource(i32 %146, i32 %147, i32 %148, i32* %6, i32* %7)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %145
  %152 = load i32, i32* %3, align 4
  %153 = call i32 @device_printf(i32 %152, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %154 = load i32, i32* @ENXIO, align 4
  store i32 %154, i32* %10, align 4
  br label %325

155:                                              ; preds = %145
  %156 = load i32, i32* %6, align 4
  %157 = load %struct.hme_sbus_softc*, %struct.hme_sbus_softc** %4, align 8
  %158 = getelementptr inbounds %struct.hme_sbus_softc, %struct.hme_sbus_softc* %157, i32 0, i32 3
  %159 = load i32*, i32** %158, align 8
  %160 = call i32 @rman_get_start(i32* %159)
  %161 = icmp slt i32 %156, %160
  br i1 %161, label %172, label %162

162:                                              ; preds = %155
  %163 = load i32, i32* %6, align 4
  %164 = load i32, i32* %7, align 4
  %165 = add nsw i32 %163, %164
  %166 = sub nsw i32 %165, 1
  %167 = load %struct.hme_sbus_softc*, %struct.hme_sbus_softc** %4, align 8
  %168 = getelementptr inbounds %struct.hme_sbus_softc, %struct.hme_sbus_softc* %167, i32 0, i32 3
  %169 = load i32*, i32** %168, align 8
  %170 = call i32 @rman_get_end(i32* %169)
  %171 = icmp sgt i32 %166, %170
  br i1 %171, label %172, label %176

172:                                              ; preds = %162, %155
  %173 = load i32, i32* %3, align 4
  %174 = call i32 @device_printf(i32 %173, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %175 = load i32, i32* @ENXIO, align 4
  store i32 %175, i32* %10, align 4
  br label %325

176:                                              ; preds = %162
  %177 = load %struct.hme_softc*, %struct.hme_softc** %5, align 8
  %178 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %177, i32 0, i32 8
  %179 = load i8*, i8** %178, align 8
  %180 = load %struct.hme_softc*, %struct.hme_softc** %5, align 8
  %181 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %180, i32 0, i32 6
  store i8* %179, i8** %181, align 8
  %182 = load %struct.hme_softc*, %struct.hme_softc** %5, align 8
  %183 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %182, i32 0, i32 8
  %184 = load i8*, i8** %183, align 8
  %185 = load %struct.hme_softc*, %struct.hme_softc** %5, align 8
  %186 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %185, i32 0, i32 7
  %187 = load i8*, i8** %186, align 8
  %188 = load i32, i32* %6, align 4
  %189 = load %struct.hme_sbus_softc*, %struct.hme_sbus_softc** %4, align 8
  %190 = getelementptr inbounds %struct.hme_sbus_softc, %struct.hme_sbus_softc* %189, i32 0, i32 3
  %191 = load i32*, i32** %190, align 8
  %192 = call i32 @rman_get_start(i32* %191)
  %193 = sub nsw i32 %188, %192
  %194 = load i32, i32* %7, align 4
  %195 = load %struct.hme_softc*, %struct.hme_softc** %5, align 8
  %196 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %195, i32 0, i32 5
  %197 = call i32 @bus_space_subregion(i8* %184, i8* %187, i32 %193, i32 %194, i8** %196)
  br label %211

198:                                              ; preds = %121
  %199 = load %struct.hme_sbus_softc*, %struct.hme_sbus_softc** %4, align 8
  %200 = getelementptr inbounds %struct.hme_sbus_softc, %struct.hme_sbus_softc* %199, i32 0, i32 4
  %201 = load i32*, i32** %200, align 8
  %202 = call i8* @rman_get_bustag(i32* %201)
  %203 = load %struct.hme_softc*, %struct.hme_softc** %5, align 8
  %204 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %203, i32 0, i32 6
  store i8* %202, i8** %204, align 8
  %205 = load %struct.hme_sbus_softc*, %struct.hme_sbus_softc** %4, align 8
  %206 = getelementptr inbounds %struct.hme_sbus_softc, %struct.hme_sbus_softc* %205, i32 0, i32 4
  %207 = load i32*, i32** %206, align 8
  %208 = call i8* @rman_get_bushandle(i32* %207)
  %209 = load %struct.hme_softc*, %struct.hme_softc** %5, align 8
  %210 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %209, i32 0, i32 5
  store i8* %208, i8** %210, align 8
  br label %211

211:                                              ; preds = %198, %176
  store i32 0, i32* %9, align 4
  %212 = load i32, i32* %3, align 4
  %213 = load i32, i32* @SYS_RES_IRQ, align 4
  %214 = load i32, i32* @RF_SHAREABLE, align 4
  %215 = load i32, i32* @RF_ACTIVE, align 4
  %216 = or i32 %214, %215
  %217 = call i8* @bus_alloc_resource_any(i32 %212, i32 %213, i32* %9, i32 %216)
  %218 = bitcast i8* %217 to i32*
  %219 = load %struct.hme_sbus_softc*, %struct.hme_sbus_softc** %4, align 8
  %220 = getelementptr inbounds %struct.hme_sbus_softc, %struct.hme_sbus_softc* %219, i32 0, i32 5
  store i32* %218, i32** %220, align 8
  %221 = load %struct.hme_sbus_softc*, %struct.hme_sbus_softc** %4, align 8
  %222 = getelementptr inbounds %struct.hme_sbus_softc, %struct.hme_sbus_softc* %221, i32 0, i32 5
  %223 = load i32*, i32** %222, align 8
  %224 = icmp eq i32* %223, null
  br i1 %224, label %225, label %229

225:                                              ; preds = %211
  %226 = load i32, i32* %3, align 4
  %227 = call i32 @device_printf(i32 %226, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %228 = load i32, i32* @ENXIO, align 4
  store i32 %228, i32* %10, align 4
  br label %308

229:                                              ; preds = %211
  %230 = load i32, i32* %3, align 4
  %231 = load %struct.hme_softc*, %struct.hme_softc** %5, align 8
  %232 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %231, i32 0, i32 4
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @OF_getetheraddr(i32 %230, i32 %233)
  %235 = load i32, i32* %3, align 4
  %236 = call i32 @sbus_get_burstsz(i32 %235)
  store i32 %236, i32* %8, align 4
  %237 = load i32, i32* %8, align 4
  %238 = load i32, i32* @SBUS_BURST_64, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %244

241:                                              ; preds = %229
  %242 = load %struct.hme_softc*, %struct.hme_softc** %5, align 8
  %243 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %242, i32 0, i32 0
  store i32 64, i32* %243, align 8
  br label %265

244:                                              ; preds = %229
  %245 = load i32, i32* %8, align 4
  %246 = load i32, i32* @SBUS_BURST_32, align 4
  %247 = and i32 %245, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %252

249:                                              ; preds = %244
  %250 = load %struct.hme_softc*, %struct.hme_softc** %5, align 8
  %251 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %250, i32 0, i32 0
  store i32 32, i32* %251, align 8
  br label %264

252:                                              ; preds = %244
  %253 = load i32, i32* %8, align 4
  %254 = load i32, i32* @SBUS_BURST_16, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %260

257:                                              ; preds = %252
  %258 = load %struct.hme_softc*, %struct.hme_softc** %5, align 8
  %259 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %258, i32 0, i32 0
  store i32 16, i32* %259, align 8
  br label %263

260:                                              ; preds = %252
  %261 = load %struct.hme_softc*, %struct.hme_softc** %5, align 8
  %262 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %261, i32 0, i32 0
  store i32 0, i32* %262, align 8
  br label %263

263:                                              ; preds = %260, %257
  br label %264

264:                                              ; preds = %263, %249
  br label %265

265:                                              ; preds = %264, %241
  %266 = load i32, i32* %3, align 4
  %267 = load %struct.hme_softc*, %struct.hme_softc** %5, align 8
  %268 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %267, i32 0, i32 3
  store i32 %266, i32* %268, align 8
  %269 = load %struct.hme_softc*, %struct.hme_softc** %5, align 8
  %270 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %269, i32 0, i32 2
  store i64 0, i64* %270, align 8
  %271 = load %struct.hme_softc*, %struct.hme_softc** %5, align 8
  %272 = call i32 @hme_config(%struct.hme_softc* %271)
  store i32 %272, i32* %10, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %277

274:                                              ; preds = %265
  %275 = load i32, i32* %3, align 4
  %276 = call i32 @device_printf(i32 %275, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  br label %297

277:                                              ; preds = %265
  %278 = load i32, i32* %3, align 4
  %279 = load %struct.hme_sbus_softc*, %struct.hme_sbus_softc** %4, align 8
  %280 = getelementptr inbounds %struct.hme_sbus_softc, %struct.hme_sbus_softc* %279, i32 0, i32 5
  %281 = load i32*, i32** %280, align 8
  %282 = load i32, i32* @INTR_TYPE_NET, align 4
  %283 = load i32, i32* @INTR_MPSAFE, align 4
  %284 = or i32 %282, %283
  %285 = load i32, i32* @hme_intr, align 4
  %286 = load %struct.hme_softc*, %struct.hme_softc** %5, align 8
  %287 = load %struct.hme_sbus_softc*, %struct.hme_sbus_softc** %4, align 8
  %288 = getelementptr inbounds %struct.hme_sbus_softc, %struct.hme_sbus_softc* %287, i32 0, i32 6
  %289 = call i32 @bus_setup_intr(i32 %278, i32* %281, i32 %284, i32* null, i32 %285, %struct.hme_softc* %286, i32* %288)
  store i32 %289, i32* %10, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %296

291:                                              ; preds = %277
  %292 = load i32, i32* %3, align 4
  %293 = call i32 @device_printf(i32 %292, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  %294 = load %struct.hme_softc*, %struct.hme_softc** %5, align 8
  %295 = call i32 @hme_detach(%struct.hme_softc* %294)
  br label %297

296:                                              ; preds = %277
  store i32 0, i32* %2, align 4
  br label %374

297:                                              ; preds = %291, %274
  %298 = load i32, i32* %3, align 4
  %299 = load i32, i32* @SYS_RES_IRQ, align 4
  %300 = load %struct.hme_sbus_softc*, %struct.hme_sbus_softc** %4, align 8
  %301 = getelementptr inbounds %struct.hme_sbus_softc, %struct.hme_sbus_softc* %300, i32 0, i32 5
  %302 = load i32*, i32** %301, align 8
  %303 = call i32 @rman_get_rid(i32* %302)
  %304 = load %struct.hme_sbus_softc*, %struct.hme_sbus_softc** %4, align 8
  %305 = getelementptr inbounds %struct.hme_sbus_softc, %struct.hme_sbus_softc* %304, i32 0, i32 5
  %306 = load i32*, i32** %305, align 8
  %307 = call i32 @bus_release_resource(i32 %298, i32 %299, i32 %303, i32* %306)
  br label %308

308:                                              ; preds = %297, %225
  %309 = load %struct.hme_sbus_softc*, %struct.hme_sbus_softc** %4, align 8
  %310 = getelementptr inbounds %struct.hme_sbus_softc, %struct.hme_sbus_softc* %309, i32 0, i32 4
  %311 = load i32*, i32** %310, align 8
  %312 = icmp ne i32* %311, null
  br i1 %312, label %313, label %324

313:                                              ; preds = %308
  %314 = load i32, i32* %3, align 4
  %315 = load i32, i32* @SYS_RES_MEMORY, align 4
  %316 = load %struct.hme_sbus_softc*, %struct.hme_sbus_softc** %4, align 8
  %317 = getelementptr inbounds %struct.hme_sbus_softc, %struct.hme_sbus_softc* %316, i32 0, i32 4
  %318 = load i32*, i32** %317, align 8
  %319 = call i32 @rman_get_rid(i32* %318)
  %320 = load %struct.hme_sbus_softc*, %struct.hme_sbus_softc** %4, align 8
  %321 = getelementptr inbounds %struct.hme_sbus_softc, %struct.hme_sbus_softc* %320, i32 0, i32 4
  %322 = load i32*, i32** %321, align 8
  %323 = call i32 @bus_release_resource(i32 %314, i32 %315, i32 %319, i32* %322)
  br label %324

324:                                              ; preds = %313, %308
  br label %325

325:                                              ; preds = %324, %172, %151
  %326 = load i32, i32* %3, align 4
  %327 = load i32, i32* @SYS_RES_MEMORY, align 4
  %328 = load %struct.hme_sbus_softc*, %struct.hme_sbus_softc** %4, align 8
  %329 = getelementptr inbounds %struct.hme_sbus_softc, %struct.hme_sbus_softc* %328, i32 0, i32 3
  %330 = load i32*, i32** %329, align 8
  %331 = call i32 @rman_get_rid(i32* %330)
  %332 = load %struct.hme_sbus_softc*, %struct.hme_sbus_softc** %4, align 8
  %333 = getelementptr inbounds %struct.hme_sbus_softc, %struct.hme_sbus_softc* %332, i32 0, i32 3
  %334 = load i32*, i32** %333, align 8
  %335 = call i32 @bus_release_resource(i32 %326, i32 %327, i32 %331, i32* %334)
  br label %336

336:                                              ; preds = %325, %117
  %337 = load i32, i32* %3, align 4
  %338 = load i32, i32* @SYS_RES_MEMORY, align 4
  %339 = load %struct.hme_sbus_softc*, %struct.hme_sbus_softc** %4, align 8
  %340 = getelementptr inbounds %struct.hme_sbus_softc, %struct.hme_sbus_softc* %339, i32 0, i32 2
  %341 = load i32*, i32** %340, align 8
  %342 = call i32 @rman_get_rid(i32* %341)
  %343 = load %struct.hme_sbus_softc*, %struct.hme_sbus_softc** %4, align 8
  %344 = getelementptr inbounds %struct.hme_sbus_softc, %struct.hme_sbus_softc* %343, i32 0, i32 2
  %345 = load i32*, i32** %344, align 8
  %346 = call i32 @bus_release_resource(i32 %337, i32 %338, i32 %342, i32* %345)
  br label %347

347:                                              ; preds = %336, %89
  %348 = load i32, i32* %3, align 4
  %349 = load i32, i32* @SYS_RES_MEMORY, align 4
  %350 = load %struct.hme_sbus_softc*, %struct.hme_sbus_softc** %4, align 8
  %351 = getelementptr inbounds %struct.hme_sbus_softc, %struct.hme_sbus_softc* %350, i32 0, i32 1
  %352 = load i32*, i32** %351, align 8
  %353 = call i32 @rman_get_rid(i32* %352)
  %354 = load %struct.hme_sbus_softc*, %struct.hme_sbus_softc** %4, align 8
  %355 = getelementptr inbounds %struct.hme_sbus_softc, %struct.hme_sbus_softc* %354, i32 0, i32 1
  %356 = load i32*, i32** %355, align 8
  %357 = call i32 @bus_release_resource(i32 %348, i32 %349, i32 %353, i32* %356)
  br label %358

358:                                              ; preds = %347, %61
  %359 = load i32, i32* %3, align 4
  %360 = load i32, i32* @SYS_RES_MEMORY, align 4
  %361 = load %struct.hme_sbus_softc*, %struct.hme_sbus_softc** %4, align 8
  %362 = getelementptr inbounds %struct.hme_sbus_softc, %struct.hme_sbus_softc* %361, i32 0, i32 0
  %363 = load i32*, i32** %362, align 8
  %364 = call i32 @rman_get_rid(i32* %363)
  %365 = load %struct.hme_sbus_softc*, %struct.hme_sbus_softc** %4, align 8
  %366 = getelementptr inbounds %struct.hme_sbus_softc, %struct.hme_sbus_softc* %365, i32 0, i32 0
  %367 = load i32*, i32** %366, align 8
  %368 = call i32 @bus_release_resource(i32 %359, i32 %360, i32 %364, i32* %367)
  br label %369

369:                                              ; preds = %358, %33
  %370 = load %struct.hme_softc*, %struct.hme_softc** %5, align 8
  %371 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %370, i32 0, i32 1
  %372 = call i32 @mtx_destroy(i32* %371)
  %373 = load i32, i32* %10, align 4
  store i32 %373, i32* %2, align 4
  br label %374

374:                                              ; preds = %369, %296
  %375 = load i32, i32* %2, align 4
  ret i32 %375
}

declare dso_local %struct.hme_sbus_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i32, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i8* @rman_get_bustag(i32*) #1

declare dso_local i8* @rman_get_bushandle(i32*) #1

declare dso_local i64 @bus_get_resource(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @rman_get_start(i32*) #1

declare dso_local i32 @rman_get_end(i32*) #1

declare dso_local i32 @bus_space_subregion(i8*, i8*, i32, i32, i8**) #1

declare dso_local i32 @OF_getetheraddr(i32, i32) #1

declare dso_local i32 @sbus_get_burstsz(i32) #1

declare dso_local i32 @hme_config(%struct.hme_softc*) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.hme_softc*, i32*) #1

declare dso_local i32 @hme_detach(%struct.hme_softc*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @rman_get_rid(i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
