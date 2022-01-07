; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/le/extr_if_le_lebuffer.c_le_lebuffer_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/le/extr_if_le_lebuffer.c_le_lebuffer_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.le_lebuffer_softc = type { i32*, i32*, i32*, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %struct.lance_softc }
%struct.lance_softc = type { i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i64 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"cannot allocate LANCE buffer\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"cannot allocate LANCE registers\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"cannot allocate interrupt\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"busmaster-regval\00", align 1
@LE_C3_ACON = common dso_local global i32 0, align 4
@LE_C3_BCON = common dso_local global i32 0, align 4
@LE_C3_BSWP = common dso_local global i32 0, align 4
@le_lebuffer_copytodesc = common dso_local global i32 0, align 4
@le_lebuffer_copyfromdesc = common dso_local global i32 0, align 4
@le_lebuffer_copytobuf = common dso_local global i32 0, align 4
@le_lebuffer_copyfrombuf = common dso_local global i32 0, align 4
@le_lebuffer_zerobuf = common dso_local global i32 0, align 4
@le_lebuffer_rdcsr = common dso_local global i32 0, align 4
@le_lebuffer_wrcsr = common dso_local global i32 0, align 4
@le_lebuffer_media = common dso_local global i32* null, align 8
@NLEMEDIA = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"cannot attach Am7990\0A\00", align 1
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@am7990_intr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"cannot set up interrupt\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @le_lebuffer_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @le_lebuffer_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.le_lebuffer_softc*, align 8
  %5 = alloca %struct.lance_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.le_lebuffer_softc* @device_get_softc(i32 %8)
  store %struct.le_lebuffer_softc* %9, %struct.le_lebuffer_softc** %4, align 8
  %10 = load %struct.le_lebuffer_softc*, %struct.le_lebuffer_softc** %4, align 8
  %11 = getelementptr inbounds %struct.le_lebuffer_softc, %struct.le_lebuffer_softc* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store %struct.lance_softc* %12, %struct.lance_softc** %5, align 8
  %13 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @device_get_nameunit(i32 %14)
  %16 = call i32 @LE_LOCK_INIT(%struct.lance_softc* %13, i32 %15)
  store i32 0, i32* %7, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @device_get_parent(i32 %17)
  %19 = load i32, i32* @SYS_RES_MEMORY, align 4
  %20 = load i32, i32* @RF_ACTIVE, align 4
  %21 = call i8* @bus_alloc_resource_any(i32 %18, i32 %19, i32* %7, i32 %20)
  %22 = bitcast i8* %21 to i32*
  %23 = load %struct.le_lebuffer_softc*, %struct.le_lebuffer_softc** %4, align 8
  %24 = getelementptr inbounds %struct.le_lebuffer_softc, %struct.le_lebuffer_softc* %23, i32 0, i32 0
  store i32* %22, i32** %24, align 8
  %25 = load %struct.le_lebuffer_softc*, %struct.le_lebuffer_softc** %4, align 8
  %26 = getelementptr inbounds %struct.le_lebuffer_softc, %struct.le_lebuffer_softc* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %1
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @device_printf(i32 %30, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @ENXIO, align 4
  store i32 %32, i32* %6, align 4
  br label %212

33:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @SYS_RES_MEMORY, align 4
  %36 = load i32, i32* @RF_ACTIVE, align 4
  %37 = call i8* @bus_alloc_resource_any(i32 %34, i32 %35, i32* %7, i32 %36)
  %38 = bitcast i8* %37 to i32*
  %39 = load %struct.le_lebuffer_softc*, %struct.le_lebuffer_softc** %4, align 8
  %40 = getelementptr inbounds %struct.le_lebuffer_softc, %struct.le_lebuffer_softc* %39, i32 0, i32 1
  store i32* %38, i32** %40, align 8
  %41 = load %struct.le_lebuffer_softc*, %struct.le_lebuffer_softc** %4, align 8
  %42 = getelementptr inbounds %struct.le_lebuffer_softc, %struct.le_lebuffer_softc* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %33
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @device_printf(i32 %46, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @ENXIO, align 4
  store i32 %48, i32* %6, align 4
  br label %200

49:                                               ; preds = %33
  store i32 0, i32* %7, align 4
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @SYS_RES_IRQ, align 4
  %52 = load i32, i32* @RF_SHAREABLE, align 4
  %53 = load i32, i32* @RF_ACTIVE, align 4
  %54 = or i32 %52, %53
  %55 = call i8* @bus_alloc_resource_any(i32 %50, i32 %51, i32* %7, i32 %54)
  %56 = bitcast i8* %55 to i32*
  %57 = load %struct.le_lebuffer_softc*, %struct.le_lebuffer_softc** %4, align 8
  %58 = getelementptr inbounds %struct.le_lebuffer_softc, %struct.le_lebuffer_softc* %57, i32 0, i32 2
  store i32* %56, i32** %58, align 8
  %59 = icmp eq i32* %56, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %49
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @device_printf(i32 %61, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %63 = load i32, i32* @ENXIO, align 4
  store i32 %63, i32* %6, align 4
  br label %189

64:                                               ; preds = %49
  %65 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %66 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %65, i32 0, i32 20
  store i64 0, i64* %66, align 8
  %67 = load %struct.le_lebuffer_softc*, %struct.le_lebuffer_softc** %4, align 8
  %68 = getelementptr inbounds %struct.le_lebuffer_softc, %struct.le_lebuffer_softc* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @rman_get_size(i32* %69)
  %71 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %72 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %71, i32 0, i32 19
  store i32 %70, i32* %72, align 8
  %73 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %74 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %73, i32 0, i32 18
  store i64 0, i64* %74, align 8
  %75 = load i32, i32* %3, align 4
  %76 = call i32 @ofw_bus_get_node(i32 %75)
  %77 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %78 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %77, i32 0, i32 0
  %79 = call i32 @OF_getprop(i32 %76, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32* %78, i32 4)
  %80 = icmp eq i32 %79, -1
  br i1 %80, label %81, label %87

81:                                               ; preds = %64
  %82 = load i32, i32* @LE_C3_ACON, align 4
  %83 = load i32, i32* @LE_C3_BCON, align 4
  %84 = or i32 %82, %83
  %85 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %86 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  br label %87

87:                                               ; preds = %81, %64
  %88 = load i32, i32* @LE_C3_BSWP, align 4
  %89 = xor i32 %88, -1
  %90 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %91 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = and i32 %92, %89
  store i32 %93, i32* %91, align 8
  %94 = load i32, i32* %3, align 4
  %95 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %96 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %95, i32 0, i32 17
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @OF_getetheraddr(i32 %94, i32 %97)
  %99 = load i32, i32* @le_lebuffer_copytodesc, align 4
  %100 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %101 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %100, i32 0, i32 16
  store i32 %99, i32* %101, align 8
  %102 = load i32, i32* @le_lebuffer_copyfromdesc, align 4
  %103 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %104 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %103, i32 0, i32 15
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* @le_lebuffer_copytobuf, align 4
  %106 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %107 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %106, i32 0, i32 14
  store i32 %105, i32* %107, align 8
  %108 = load i32, i32* @le_lebuffer_copyfrombuf, align 4
  %109 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %110 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %109, i32 0, i32 13
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* @le_lebuffer_zerobuf, align 4
  %112 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %113 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %112, i32 0, i32 12
  store i32 %111, i32* %113, align 8
  %114 = load i32, i32* @le_lebuffer_rdcsr, align 4
  %115 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %116 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %115, i32 0, i32 11
  store i32 %114, i32* %116, align 4
  %117 = load i32, i32* @le_lebuffer_wrcsr, align 4
  %118 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %119 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %118, i32 0, i32 10
  store i32 %117, i32* %119, align 8
  %120 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %121 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %120, i32 0, i32 9
  store i32* null, i32** %121, align 8
  %122 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %123 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %122, i32 0, i32 8
  store i32* null, i32** %123, align 8
  %124 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %125 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %124, i32 0, i32 7
  store i32* null, i32** %125, align 8
  %126 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %127 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %126, i32 0, i32 6
  store i32* null, i32** %127, align 8
  %128 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %129 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %128, i32 0, i32 5
  store i32* null, i32** %129, align 8
  %130 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %131 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %130, i32 0, i32 4
  store i32* null, i32** %131, align 8
  %132 = load i32*, i32** @le_lebuffer_media, align 8
  %133 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %134 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %133, i32 0, i32 3
  store i32* %132, i32** %134, align 8
  %135 = load i32, i32* @NLEMEDIA, align 4
  %136 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %137 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %136, i32 0, i32 2
  store i32 %135, i32* %137, align 8
  %138 = load i32*, i32** @le_lebuffer_media, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %142 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 4
  %143 = load %struct.le_lebuffer_softc*, %struct.le_lebuffer_softc** %4, align 8
  %144 = getelementptr inbounds %struct.le_lebuffer_softc, %struct.le_lebuffer_softc* %143, i32 0, i32 3
  %145 = load i32, i32* %3, align 4
  %146 = call i32 @device_get_name(i32 %145)
  %147 = load i32, i32* %3, align 4
  %148 = call i32 @device_get_unit(i32 %147)
  %149 = call i32 @am7990_config(%struct.TYPE_3__* %144, i32 %146, i32 %148)
  store i32 %149, i32* %6, align 4
  %150 = load i32, i32* %6, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %87
  %153 = load i32, i32* %3, align 4
  %154 = call i32 @device_printf(i32 %153, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %178

155:                                              ; preds = %87
  %156 = load i32, i32* %3, align 4
  %157 = load %struct.le_lebuffer_softc*, %struct.le_lebuffer_softc** %4, align 8
  %158 = getelementptr inbounds %struct.le_lebuffer_softc, %struct.le_lebuffer_softc* %157, i32 0, i32 2
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* @INTR_TYPE_NET, align 4
  %161 = load i32, i32* @INTR_MPSAFE, align 4
  %162 = or i32 %160, %161
  %163 = load i32, i32* @am7990_intr, align 4
  %164 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %165 = load %struct.le_lebuffer_softc*, %struct.le_lebuffer_softc** %4, align 8
  %166 = getelementptr inbounds %struct.le_lebuffer_softc, %struct.le_lebuffer_softc* %165, i32 0, i32 4
  %167 = call i32 @bus_setup_intr(i32 %156, i32* %159, i32 %162, i32* null, i32 %163, %struct.lance_softc* %164, i32* %166)
  store i32 %167, i32* %6, align 4
  %168 = load i32, i32* %6, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %155
  %171 = load i32, i32* %3, align 4
  %172 = call i32 @device_printf(i32 %171, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %174

173:                                              ; preds = %155
  store i32 0, i32* %2, align 4
  br label %216

174:                                              ; preds = %170
  %175 = load %struct.le_lebuffer_softc*, %struct.le_lebuffer_softc** %4, align 8
  %176 = getelementptr inbounds %struct.le_lebuffer_softc, %struct.le_lebuffer_softc* %175, i32 0, i32 3
  %177 = call i32 @am7990_detach(%struct.TYPE_3__* %176)
  br label %178

178:                                              ; preds = %174, %152
  %179 = load i32, i32* %3, align 4
  %180 = load i32, i32* @SYS_RES_IRQ, align 4
  %181 = load %struct.le_lebuffer_softc*, %struct.le_lebuffer_softc** %4, align 8
  %182 = getelementptr inbounds %struct.le_lebuffer_softc, %struct.le_lebuffer_softc* %181, i32 0, i32 2
  %183 = load i32*, i32** %182, align 8
  %184 = call i32 @rman_get_rid(i32* %183)
  %185 = load %struct.le_lebuffer_softc*, %struct.le_lebuffer_softc** %4, align 8
  %186 = getelementptr inbounds %struct.le_lebuffer_softc, %struct.le_lebuffer_softc* %185, i32 0, i32 2
  %187 = load i32*, i32** %186, align 8
  %188 = call i32 @bus_release_resource(i32 %179, i32 %180, i32 %184, i32* %187)
  br label %189

189:                                              ; preds = %178, %60
  %190 = load i32, i32* %3, align 4
  %191 = load i32, i32* @SYS_RES_MEMORY, align 4
  %192 = load %struct.le_lebuffer_softc*, %struct.le_lebuffer_softc** %4, align 8
  %193 = getelementptr inbounds %struct.le_lebuffer_softc, %struct.le_lebuffer_softc* %192, i32 0, i32 1
  %194 = load i32*, i32** %193, align 8
  %195 = call i32 @rman_get_rid(i32* %194)
  %196 = load %struct.le_lebuffer_softc*, %struct.le_lebuffer_softc** %4, align 8
  %197 = getelementptr inbounds %struct.le_lebuffer_softc, %struct.le_lebuffer_softc* %196, i32 0, i32 1
  %198 = load i32*, i32** %197, align 8
  %199 = call i32 @bus_release_resource(i32 %190, i32 %191, i32 %195, i32* %198)
  br label %200

200:                                              ; preds = %189, %45
  %201 = load i32, i32* %3, align 4
  %202 = call i32 @device_get_parent(i32 %201)
  %203 = load i32, i32* @SYS_RES_MEMORY, align 4
  %204 = load %struct.le_lebuffer_softc*, %struct.le_lebuffer_softc** %4, align 8
  %205 = getelementptr inbounds %struct.le_lebuffer_softc, %struct.le_lebuffer_softc* %204, i32 0, i32 0
  %206 = load i32*, i32** %205, align 8
  %207 = call i32 @rman_get_rid(i32* %206)
  %208 = load %struct.le_lebuffer_softc*, %struct.le_lebuffer_softc** %4, align 8
  %209 = getelementptr inbounds %struct.le_lebuffer_softc, %struct.le_lebuffer_softc* %208, i32 0, i32 0
  %210 = load i32*, i32** %209, align 8
  %211 = call i32 @bus_release_resource(i32 %202, i32 %203, i32 %207, i32* %210)
  br label %212

212:                                              ; preds = %200, %29
  %213 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %214 = call i32 @LE_LOCK_DESTROY(%struct.lance_softc* %213)
  %215 = load i32, i32* %6, align 4
  store i32 %215, i32* %2, align 4
  br label %216

216:                                              ; preds = %212, %173
  %217 = load i32, i32* %2, align 4
  ret i32 %217
}

declare dso_local %struct.le_lebuffer_softc* @device_get_softc(i32) #1

declare dso_local i32 @LE_LOCK_INIT(%struct.lance_softc*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @rman_get_size(i32*) #1

declare dso_local i32 @OF_getprop(i32, i8*, i32*, i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @OF_getetheraddr(i32, i32) #1

declare dso_local i32 @am7990_config(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.lance_softc*, i32*) #1

declare dso_local i32 @am7990_detach(%struct.TYPE_3__*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @rman_get_rid(i32*) #1

declare dso_local i32 @LE_LOCK_DESTROY(%struct.lance_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
