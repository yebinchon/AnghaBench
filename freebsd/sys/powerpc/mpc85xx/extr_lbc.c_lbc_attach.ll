; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_lbc.c_lbc_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_lbc.c_lbc_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbc_softc = type { i32, i32, i32*, i64, %struct.TYPE_4__*, %struct.rman, i32, i32*, i64, i32, i32, i32, i32* }
%struct.TYPE_4__ = type { i32, i32, i32, i64, i32, i32, i32 }
%struct.rman = type { i8*, i32, i32, i32 }
%struct.lbc_devinfo = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@LBC_DEV_MAX = common dso_local global i32 0, align 4
@LBC85XX_LBCR = common dso_local global i32 0, align 4
@LBC85XX_LCRR = common dso_local global i32 0, align 4
@LBC85XX_LTEDR = common dso_local global i32 0, align 4
@LBC85XX_LTESR = common dso_local global i32 0, align 4
@LBC85XX_LTEIR = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@lbc_intr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not activate interrupt\0A\00", align 1
@RMAN_ARRAY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Local Bus Space\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"unsupported parent #addr-cells\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"ranges\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"could not retrieve 'ranges' property\0A\00", align 1
@.str.5 = private unnamed_addr constant [85 x i8] c"par addr_cells = %d, addr_cells = %d, size_cells = %d, tuple_size = %d, tuples = %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"bank out of range: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"bank = %d, start = %jx, size = %jx\0A\00", align 1
@LBCRES_MSEL_GPCM = common dso_local global i32 0, align 4
@LBCRES_DECC_DISABLED = common dso_local global i32 0, align 4
@LBCRES_ATOM_DISABLED = common dso_local global i32 0, align 4
@M_LBC = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [26 x i8] c"could not set up devinfo\0A\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"could not process 'reg' property\0A\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"could not add child: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"added child name='%s', node=%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lbc_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbc_attach(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.lbc_softc*, align 8
  %5 = alloca %struct.lbc_devinfo*, align 8
  %6 = alloca %struct.rman*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = call %struct.lbc_softc* @device_get_softc(i32* %22)
  store %struct.lbc_softc* %23, %struct.lbc_softc** %4, align 8
  %24 = load i32*, i32** %3, align 8
  %25 = load %struct.lbc_softc*, %struct.lbc_softc** %4, align 8
  %26 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %25, i32 0, i32 12
  store i32* %24, i32** %26, align 8
  %27 = load %struct.lbc_softc*, %struct.lbc_softc** %4, align 8
  %28 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %27, i32 0, i32 3
  store i64 0, i64* %28, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* @SYS_RES_MEMORY, align 4
  %31 = load %struct.lbc_softc*, %struct.lbc_softc** %4, align 8
  %32 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %31, i32 0, i32 3
  %33 = load i32, i32* @RF_ACTIVE, align 4
  %34 = call i8* @bus_alloc_resource_any(i32* %29, i32 %30, i64* %32, i32 %33)
  %35 = bitcast i8* %34 to i32*
  %36 = load %struct.lbc_softc*, %struct.lbc_softc** %4, align 8
  %37 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %36, i32 0, i32 2
  store i32* %35, i32** %37, align 8
  %38 = load %struct.lbc_softc*, %struct.lbc_softc** %4, align 8
  %39 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %1
  %43 = load i32, i32* @ENXIO, align 4
  store i32 %43, i32* %2, align 4
  br label %495

44:                                               ; preds = %1
  %45 = load %struct.lbc_softc*, %struct.lbc_softc** %4, align 8
  %46 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @rman_get_bustag(i32* %47)
  %49 = load %struct.lbc_softc*, %struct.lbc_softc** %4, align 8
  %50 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %49, i32 0, i32 11
  store i32 %48, i32* %50, align 8
  %51 = load %struct.lbc_softc*, %struct.lbc_softc** %4, align 8
  %52 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @rman_get_bushandle(i32* %53)
  %55 = load %struct.lbc_softc*, %struct.lbc_softc** %4, align 8
  %56 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %55, i32 0, i32 10
  store i32 %54, i32* %56, align 4
  store i32 0, i32* %18, align 4
  br label %57

57:                                               ; preds = %80, %44
  %58 = load i32, i32* %18, align 4
  %59 = load i32, i32* @LBC_DEV_MAX, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %83

61:                                               ; preds = %57
  %62 = load %struct.lbc_softc*, %struct.lbc_softc** %4, align 8
  %63 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %62, i32 0, i32 11
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.lbc_softc*, %struct.lbc_softc** %4, align 8
  %66 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %65, i32 0, i32 10
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %18, align 4
  %69 = call i32 @LBC85XX_BR(i32 %68)
  %70 = call i32 @bus_space_write_4(i32 %64, i32 %67, i32 %69, i32 0)
  %71 = load %struct.lbc_softc*, %struct.lbc_softc** %4, align 8
  %72 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %71, i32 0, i32 11
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.lbc_softc*, %struct.lbc_softc** %4, align 8
  %75 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %74, i32 0, i32 10
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %18, align 4
  %78 = call i32 @LBC85XX_OR(i32 %77)
  %79 = call i32 @bus_space_write_4(i32 %73, i32 %76, i32 %78, i32 0)
  br label %80

80:                                               ; preds = %61
  %81 = load i32, i32* %18, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %18, align 4
  br label %57

83:                                               ; preds = %57
  %84 = load %struct.lbc_softc*, %struct.lbc_softc** %4, align 8
  %85 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %84, i32 0, i32 11
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.lbc_softc*, %struct.lbc_softc** %4, align 8
  %88 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %87, i32 0, i32 10
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @LBC85XX_LBCR, align 4
  %91 = call i32 @bus_space_write_4(i32 %86, i32 %89, i32 %90, i32 0)
  %92 = load %struct.lbc_softc*, %struct.lbc_softc** %4, align 8
  %93 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %92, i32 0, i32 11
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.lbc_softc*, %struct.lbc_softc** %4, align 8
  %96 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %95, i32 0, i32 10
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @LBC85XX_LCRR, align 4
  %99 = call i32 @bus_space_write_4(i32 %94, i32 %97, i32 %98, i32 196616)
  %100 = load %struct.lbc_softc*, %struct.lbc_softc** %4, align 8
  %101 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %100, i32 0, i32 11
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.lbc_softc*, %struct.lbc_softc** %4, align 8
  %104 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %103, i32 0, i32 10
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @LBC85XX_LTEDR, align 4
  %107 = call i32 @bus_space_write_4(i32 %102, i32 %105, i32 %106, i32 0)
  %108 = load %struct.lbc_softc*, %struct.lbc_softc** %4, align 8
  %109 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %108, i32 0, i32 11
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.lbc_softc*, %struct.lbc_softc** %4, align 8
  %112 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %111, i32 0, i32 10
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @LBC85XX_LTESR, align 4
  %115 = call i32 @bus_space_write_4(i32 %110, i32 %113, i32 %114, i32 -1)
  %116 = load %struct.lbc_softc*, %struct.lbc_softc** %4, align 8
  %117 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %116, i32 0, i32 11
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.lbc_softc*, %struct.lbc_softc** %4, align 8
  %120 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %119, i32 0, i32 10
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @LBC85XX_LTEIR, align 4
  %123 = call i32 @bus_space_write_4(i32 %118, i32 %121, i32 %122, i32 1678245889)
  %124 = load %struct.lbc_softc*, %struct.lbc_softc** %4, align 8
  %125 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %124, i32 0, i32 8
  store i64 0, i64* %125, align 8
  %126 = load i32*, i32** %3, align 8
  %127 = load i32, i32* @SYS_RES_IRQ, align 4
  %128 = load %struct.lbc_softc*, %struct.lbc_softc** %4, align 8
  %129 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %128, i32 0, i32 8
  %130 = load i32, i32* @RF_ACTIVE, align 4
  %131 = load i32, i32* @RF_SHAREABLE, align 4
  %132 = or i32 %130, %131
  %133 = call i8* @bus_alloc_resource_any(i32* %126, i32 %127, i64* %129, i32 %132)
  %134 = bitcast i8* %133 to i32*
  %135 = load %struct.lbc_softc*, %struct.lbc_softc** %4, align 8
  %136 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %135, i32 0, i32 7
  store i32* %134, i32** %136, align 8
  %137 = load %struct.lbc_softc*, %struct.lbc_softc** %4, align 8
  %138 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %137, i32 0, i32 7
  %139 = load i32*, i32** %138, align 8
  %140 = icmp ne i32* %139, null
  br i1 %140, label %141, label %171

141:                                              ; preds = %83
  %142 = load i32*, i32** %3, align 8
  %143 = load %struct.lbc_softc*, %struct.lbc_softc** %4, align 8
  %144 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %143, i32 0, i32 7
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* @INTR_TYPE_MISC, align 4
  %147 = load i32, i32* @INTR_MPSAFE, align 4
  %148 = or i32 %146, %147
  %149 = load i32, i32* @lbc_intr, align 4
  %150 = load %struct.lbc_softc*, %struct.lbc_softc** %4, align 8
  %151 = load %struct.lbc_softc*, %struct.lbc_softc** %4, align 8
  %152 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %151, i32 0, i32 9
  %153 = call i32 @bus_setup_intr(i32* %142, i32* %145, i32 %148, i32* null, i32 %149, %struct.lbc_softc* %150, i32* %152)
  store i32 %153, i32* %19, align 4
  %154 = load i32, i32* %19, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %170

156:                                              ; preds = %141
  %157 = load i32*, i32** %3, align 8
  %158 = call i32 (i32*, i8*, ...) @device_printf(i32* %157, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %159 = load i32*, i32** %3, align 8
  %160 = load i32, i32* @SYS_RES_IRQ, align 4
  %161 = load %struct.lbc_softc*, %struct.lbc_softc** %4, align 8
  %162 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %161, i32 0, i32 8
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.lbc_softc*, %struct.lbc_softc** %4, align 8
  %165 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %164, i32 0, i32 7
  %166 = load i32*, i32** %165, align 8
  %167 = call i32 @bus_release_resource(i32* %159, i32 %160, i64 %163, i32* %166)
  %168 = load %struct.lbc_softc*, %struct.lbc_softc** %4, align 8
  %169 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %168, i32 0, i32 7
  store i32* null, i32** %169, align 8
  br label %170

170:                                              ; preds = %156, %141
  br label %171

171:                                              ; preds = %170, %83
  %172 = load %struct.lbc_softc*, %struct.lbc_softc** %4, align 8
  %173 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %172, i32 0, i32 6
  store i32 -1, i32* %173, align 8
  store i32* null, i32** %14, align 8
  %174 = load %struct.lbc_softc*, %struct.lbc_softc** %4, align 8
  %175 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %174, i32 0, i32 5
  store %struct.rman* %175, %struct.rman** %6, align 8
  %176 = load i32, i32* @RMAN_ARRAY, align 4
  %177 = load %struct.rman*, %struct.rman** %6, align 8
  %178 = getelementptr inbounds %struct.rman, %struct.rman* %177, i32 0, i32 3
  store i32 %176, i32* %178, align 8
  %179 = load %struct.rman*, %struct.rman** %6, align 8
  %180 = getelementptr inbounds %struct.rman, %struct.rman* %179, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8** %180, align 8
  %181 = load %struct.rman*, %struct.rman** %6, align 8
  %182 = call i32 @rman_init(%struct.rman* %181)
  store i32 %182, i32* %19, align 4
  %183 = load i32, i32* %19, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %171
  br label %482

186:                                              ; preds = %171
  %187 = load %struct.rman*, %struct.rman** %6, align 8
  %188 = load %struct.rman*, %struct.rman** %6, align 8
  %189 = getelementptr inbounds %struct.rman, %struct.rman* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.rman*, %struct.rman** %6, align 8
  %192 = getelementptr inbounds %struct.rman, %struct.rman* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @rman_manage_region(%struct.rman* %187, i32 %190, i32 %193)
  store i32 %194, i32* %19, align 4
  %195 = load i32, i32* %19, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %186
  %198 = load %struct.rman*, %struct.rman** %6, align 8
  %199 = call i32 @rman_fini(%struct.rman* %198)
  br label %482

200:                                              ; preds = %186
  %201 = load i32*, i32** %3, align 8
  %202 = call i32 @ofw_bus_get_node(i32* %201)
  store i32 %202, i32* %11, align 4
  %203 = load i32, i32* %11, align 4
  %204 = load %struct.lbc_softc*, %struct.lbc_softc** %4, align 8
  %205 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %204, i32 0, i32 0
  %206 = load %struct.lbc_softc*, %struct.lbc_softc** %4, align 8
  %207 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %206, i32 0, i32 1
  %208 = call i64 @fdt_addrsize_cells(i32 %203, i32* %205, i32* %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %200
  %211 = load i32, i32* @ENXIO, align 4
  store i32 %211, i32* %19, align 4
  br label %482

212:                                              ; preds = %200
  %213 = load i32, i32* %11, align 4
  %214 = call i32 @fdt_parent_addr_cells(i32 %213)
  store i32 %214, i32* %17, align 4
  %215 = load i32, i32* %17, align 4
  %216 = icmp sgt i32 %215, 2
  br i1 %216, label %217, label %221

217:                                              ; preds = %212
  %218 = load i32*, i32** %3, align 8
  %219 = call i32 (i32*, i8*, ...) @device_printf(i32* %218, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %220 = load i32, i32* @ERANGE, align 4
  store i32 %220, i32* %19, align 4
  br label %482

221:                                              ; preds = %212
  %222 = load %struct.lbc_softc*, %struct.lbc_softc** %4, align 8
  %223 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* %17, align 4
  %226 = add nsw i32 %224, %225
  %227 = load %struct.lbc_softc*, %struct.lbc_softc** %4, align 8
  %228 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = add nsw i32 %226, %229
  %231 = sext i32 %230 to i64
  %232 = mul i64 4, %231
  %233 = trunc i64 %232 to i32
  store i32 %233, i32* %15, align 4
  %234 = load i32, i32* %11, align 4
  %235 = load i32, i32* %15, align 4
  %236 = bitcast i32** %13 to i8**
  %237 = call i32 @OF_getencprop_alloc_multi(i32 %234, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %235, i8** %236)
  store i32 %237, i32* %16, align 4
  %238 = load i32, i32* %16, align 4
  %239 = icmp slt i32 %238, 0
  br i1 %239, label %240, label %244

240:                                              ; preds = %221
  %241 = load i32*, i32** %3, align 8
  %242 = call i32 (i32*, i8*, ...) @device_printf(i32* %241, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %243 = load i32, i32* @ENXIO, align 4
  store i32 %243, i32* %19, align 4
  br label %482

244:                                              ; preds = %221
  %245 = load i32*, i32** %13, align 8
  store i32* %245, i32** %14, align 8
  %246 = load i32, i32* %17, align 4
  %247 = load %struct.lbc_softc*, %struct.lbc_softc** %4, align 8
  %248 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = load %struct.lbc_softc*, %struct.lbc_softc** %4, align 8
  %251 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* %15, align 4
  %254 = load i32, i32* %16, align 4
  %255 = call i32 (i8*, i32, i32, ...) @debugf(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.5, i64 0, i64 0), i32 %246, i32 %249, i32 %252, i32 %253, i32 %254)
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %20, align 4
  br label %256

256:                                              ; preds = %387, %244
  %257 = load i32, i32* %20, align 4
  %258 = load i32, i32* %16, align 4
  %259 = icmp slt i32 %257, %258
  br i1 %259, label %260, label %390

260:                                              ; preds = %256
  %261 = load i32*, i32** %13, align 8
  %262 = bitcast i32* %261 to i8*
  %263 = call i32 @fdt_data_get(i8* %262, i32 1)
  store i32 %263, i32* %18, align 4
  %264 = load i32, i32* %18, align 4
  %265 = icmp slt i32 %264, 0
  br i1 %265, label %270, label %266

266:                                              ; preds = %260
  %267 = load i32, i32* %18, align 4
  %268 = load i32, i32* @LBC_DEV_MAX, align 4
  %269 = icmp sgt i32 %267, %268
  br i1 %269, label %270, label %275

270:                                              ; preds = %266, %260
  %271 = load i32*, i32** %3, align 8
  %272 = load i32, i32* %18, align 4
  %273 = call i32 (i32*, i8*, ...) @device_printf(i32* %271, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %272)
  %274 = load i32, i32* @ERANGE, align 4
  store i32 %274, i32* %19, align 4
  br label %482

275:                                              ; preds = %266
  %276 = load i32*, i32** %13, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 1
  store i32* %277, i32** %13, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %21, align 4
  br label %278

278:                                              ; preds = %294, %275
  %279 = load i32, i32* %21, align 4
  %280 = load %struct.lbc_softc*, %struct.lbc_softc** %4, align 8
  %281 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = sub nsw i32 %282, 1
  %284 = icmp slt i32 %279, %283
  br i1 %284, label %285, label %297

285:                                              ; preds = %278
  %286 = load i32, i32* %7, align 4
  %287 = shl i32 %286, 32
  store i32 %287, i32* %7, align 4
  %288 = load i32*, i32** %13, align 8
  %289 = load i32, i32* %288, align 4
  %290 = load i32, i32* %7, align 4
  %291 = or i32 %290, %289
  store i32 %291, i32* %7, align 4
  %292 = load i32*, i32** %13, align 8
  %293 = getelementptr inbounds i32, i32* %292, i32 1
  store i32* %293, i32** %13, align 8
  br label %294

294:                                              ; preds = %285
  %295 = load i32, i32* %21, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %21, align 4
  br label %278

297:                                              ; preds = %278
  store i32 0, i32* %9, align 4
  store i32 0, i32* %21, align 4
  br label %298

298:                                              ; preds = %311, %297
  %299 = load i32, i32* %21, align 4
  %300 = load i32, i32* %17, align 4
  %301 = icmp slt i32 %299, %300
  br i1 %301, label %302, label %314

302:                                              ; preds = %298
  %303 = load i32, i32* %9, align 4
  %304 = shl i32 %303, 32
  store i32 %304, i32* %9, align 4
  %305 = load i32*, i32** %13, align 8
  %306 = load i32, i32* %305, align 4
  %307 = load i32, i32* %9, align 4
  %308 = or i32 %307, %306
  store i32 %308, i32* %9, align 4
  %309 = load i32*, i32** %13, align 8
  %310 = getelementptr inbounds i32, i32* %309, i32 1
  store i32* %310, i32** %13, align 8
  br label %311

311:                                              ; preds = %302
  %312 = load i32, i32* %21, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %21, align 4
  br label %298

314:                                              ; preds = %298
  %315 = load i32*, i32** %13, align 8
  %316 = bitcast i32* %315 to i8*
  %317 = load %struct.lbc_softc*, %struct.lbc_softc** %4, align 8
  %318 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 4
  %320 = call i32 @fdt_data_get(i8* %316, i32 %319)
  store i32 %320, i32* %8, align 4
  %321 = load %struct.lbc_softc*, %struct.lbc_softc** %4, align 8
  %322 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 4
  %324 = load i32*, i32** %13, align 8
  %325 = sext i32 %323 to i64
  %326 = getelementptr inbounds i32, i32* %324, i64 %325
  store i32* %326, i32** %13, align 8
  %327 = load i32, i32* %18, align 4
  %328 = load i32, i32* %9, align 4
  %329 = load i32, i32* %8, align 4
  %330 = call i32 (i8*, i32, i32, ...) @debugf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %327, i32 %328, i32 %329)
  %331 = load i32, i32* %9, align 4
  %332 = load i32, i32* %7, align 4
  %333 = add nsw i32 %331, %332
  %334 = load %struct.lbc_softc*, %struct.lbc_softc** %4, align 8
  %335 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %334, i32 0, i32 4
  %336 = load %struct.TYPE_4__*, %struct.TYPE_4__** %335, align 8
  %337 = load i32, i32* %18, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %336, i64 %338
  %340 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %339, i32 0, i32 0
  store i32 %333, i32* %340, align 8
  %341 = load i32, i32* %8, align 4
  %342 = load %struct.lbc_softc*, %struct.lbc_softc** %4, align 8
  %343 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %342, i32 0, i32 4
  %344 = load %struct.TYPE_4__*, %struct.TYPE_4__** %343, align 8
  %345 = load i32, i32* %18, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %344, i64 %346
  %348 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %347, i32 0, i32 1
  store i32 %341, i32* %348, align 4
  %349 = load %struct.lbc_softc*, %struct.lbc_softc** %4, align 8
  %350 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %349, i32 0, i32 4
  %351 = load %struct.TYPE_4__*, %struct.TYPE_4__** %350, align 8
  %352 = load i32, i32* %18, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %351, i64 %353
  %355 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %354, i32 0, i32 2
  store i32 16, i32* %355, align 8
  %356 = load i32, i32* @LBCRES_MSEL_GPCM, align 4
  %357 = load %struct.lbc_softc*, %struct.lbc_softc** %4, align 8
  %358 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %357, i32 0, i32 4
  %359 = load %struct.TYPE_4__*, %struct.TYPE_4__** %358, align 8
  %360 = load i32, i32* %18, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %359, i64 %361
  %363 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %362, i32 0, i32 6
  store i32 %356, i32* %363, align 8
  %364 = load i32, i32* @LBCRES_DECC_DISABLED, align 4
  %365 = load %struct.lbc_softc*, %struct.lbc_softc** %4, align 8
  %366 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %365, i32 0, i32 4
  %367 = load %struct.TYPE_4__*, %struct.TYPE_4__** %366, align 8
  %368 = load i32, i32* %18, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %367, i64 %369
  %371 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %370, i32 0, i32 5
  store i32 %364, i32* %371, align 4
  %372 = load i32, i32* @LBCRES_ATOM_DISABLED, align 4
  %373 = load %struct.lbc_softc*, %struct.lbc_softc** %4, align 8
  %374 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %373, i32 0, i32 4
  %375 = load %struct.TYPE_4__*, %struct.TYPE_4__** %374, align 8
  %376 = load i32, i32* %18, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %375, i64 %377
  %379 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %378, i32 0, i32 4
  store i32 %372, i32* %379, align 8
  %380 = load %struct.lbc_softc*, %struct.lbc_softc** %4, align 8
  %381 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %380, i32 0, i32 4
  %382 = load %struct.TYPE_4__*, %struct.TYPE_4__** %381, align 8
  %383 = load i32, i32* %18, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %382, i64 %384
  %386 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %385, i32 0, i32 3
  store i64 0, i64* %386, align 8
  br label %387

387:                                              ; preds = %314
  %388 = load i32, i32* %20, align 4
  %389 = add nsw i32 %388, 1
  store i32 %389, i32* %20, align 4
  br label %256

390:                                              ; preds = %256
  %391 = load %struct.lbc_softc*, %struct.lbc_softc** %4, align 8
  %392 = call i32 @lbc_banks_map(%struct.lbc_softc* %391)
  store i32 %392, i32* %19, align 4
  %393 = load i32, i32* %19, align 4
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %396

395:                                              ; preds = %390
  br label %482

396:                                              ; preds = %390
  %397 = load i32, i32* %11, align 4
  %398 = call i32 @OF_child(i32 %397)
  store i32 %398, i32* %12, align 4
  br label %399

399:                                              ; preds = %472, %396
  %400 = load i32, i32* %12, align 4
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %402, label %475

402:                                              ; preds = %399
  %403 = load i32, i32* @M_LBC, align 4
  %404 = load i32, i32* @M_WAITOK, align 4
  %405 = load i32, i32* @M_ZERO, align 4
  %406 = or i32 %404, %405
  %407 = call %struct.lbc_devinfo* @malloc(i32 8, i32 %403, i32 %406)
  store %struct.lbc_devinfo* %407, %struct.lbc_devinfo** %5, align 8
  %408 = load %struct.lbc_devinfo*, %struct.lbc_devinfo** %5, align 8
  %409 = getelementptr inbounds %struct.lbc_devinfo, %struct.lbc_devinfo* %408, i32 0, i32 0
  %410 = load i32, i32* %12, align 4
  %411 = call i64 @ofw_bus_gen_setup_devinfo(%struct.TYPE_5__* %409, i32 %410)
  %412 = icmp ne i64 %411, 0
  br i1 %412, label %413, label %419

413:                                              ; preds = %402
  %414 = load %struct.lbc_devinfo*, %struct.lbc_devinfo** %5, align 8
  %415 = load i32, i32* @M_LBC, align 4
  %416 = call i32 @free(%struct.lbc_devinfo* %414, i32 %415)
  %417 = load i32*, i32** %3, align 8
  %418 = call i32 (i32*, i8*, ...) @device_printf(i32* %417, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  br label %472

419:                                              ; preds = %402
  %420 = load %struct.lbc_devinfo*, %struct.lbc_devinfo** %5, align 8
  %421 = getelementptr inbounds %struct.lbc_devinfo, %struct.lbc_devinfo* %420, i32 0, i32 1
  %422 = call i32 @resource_list_init(i32* %421)
  %423 = load i32, i32* %12, align 4
  %424 = load %struct.lbc_softc*, %struct.lbc_softc** %4, align 8
  %425 = load %struct.lbc_devinfo*, %struct.lbc_devinfo** %5, align 8
  %426 = call i64 @fdt_lbc_reg_decode(i32 %423, %struct.lbc_softc* %424, %struct.lbc_devinfo* %425)
  %427 = icmp ne i64 %426, 0
  br i1 %427, label %428, label %437

428:                                              ; preds = %419
  %429 = load i32*, i32** %3, align 8
  %430 = call i32 (i32*, i8*, ...) @device_printf(i32* %429, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0))
  %431 = load %struct.lbc_devinfo*, %struct.lbc_devinfo** %5, align 8
  %432 = getelementptr inbounds %struct.lbc_devinfo, %struct.lbc_devinfo* %431, i32 0, i32 0
  %433 = call i32 @ofw_bus_gen_destroy_devinfo(%struct.TYPE_5__* %432)
  %434 = load %struct.lbc_devinfo*, %struct.lbc_devinfo** %5, align 8
  %435 = load i32, i32* @M_LBC, align 4
  %436 = call i32 @free(%struct.lbc_devinfo* %434, i32 %435)
  br label %472

437:                                              ; preds = %419
  %438 = load i32, i32* %12, align 4
  %439 = load %struct.lbc_softc*, %struct.lbc_softc** %4, align 8
  %440 = load %struct.lbc_devinfo*, %struct.lbc_devinfo** %5, align 8
  %441 = call i32 @fdt_lbc_fixup(i32 %438, %struct.lbc_softc* %439, %struct.lbc_devinfo* %440)
  %442 = load i32*, i32** %3, align 8
  %443 = call i32* @device_add_child(i32* %442, i32* null, i32 -1)
  store i32* %443, i32** %10, align 8
  %444 = load i32*, i32** %10, align 8
  %445 = icmp eq i32* %444, null
  br i1 %445, label %446, label %462

446:                                              ; preds = %437
  %447 = load i32*, i32** %3, align 8
  %448 = load %struct.lbc_devinfo*, %struct.lbc_devinfo** %5, align 8
  %449 = getelementptr inbounds %struct.lbc_devinfo, %struct.lbc_devinfo* %448, i32 0, i32 0
  %450 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %449, i32 0, i32 0
  %451 = load i32, i32* %450, align 4
  %452 = call i32 (i32*, i8*, ...) @device_printf(i32* %447, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i32 %451)
  %453 = load %struct.lbc_devinfo*, %struct.lbc_devinfo** %5, align 8
  %454 = getelementptr inbounds %struct.lbc_devinfo, %struct.lbc_devinfo* %453, i32 0, i32 1
  %455 = call i32 @resource_list_free(i32* %454)
  %456 = load %struct.lbc_devinfo*, %struct.lbc_devinfo** %5, align 8
  %457 = getelementptr inbounds %struct.lbc_devinfo, %struct.lbc_devinfo* %456, i32 0, i32 0
  %458 = call i32 @ofw_bus_gen_destroy_devinfo(%struct.TYPE_5__* %457)
  %459 = load %struct.lbc_devinfo*, %struct.lbc_devinfo** %5, align 8
  %460 = load i32, i32* @M_LBC, align 4
  %461 = call i32 @free(%struct.lbc_devinfo* %459, i32 %460)
  br label %472

462:                                              ; preds = %437
  %463 = load %struct.lbc_devinfo*, %struct.lbc_devinfo** %5, align 8
  %464 = getelementptr inbounds %struct.lbc_devinfo, %struct.lbc_devinfo* %463, i32 0, i32 0
  %465 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %464, i32 0, i32 0
  %466 = load i32, i32* %465, align 4
  %467 = load i32, i32* %12, align 4
  %468 = call i32 (i8*, i32, i32, ...) @debugf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i32 %466, i32 %467)
  %469 = load i32*, i32** %10, align 8
  %470 = load %struct.lbc_devinfo*, %struct.lbc_devinfo** %5, align 8
  %471 = call i32 @device_set_ivars(i32* %469, %struct.lbc_devinfo* %470)
  br label %472

472:                                              ; preds = %462, %446, %428, %413
  %473 = load i32, i32* %12, align 4
  %474 = call i32 @OF_peer(i32 %473)
  store i32 %474, i32* %12, align 4
  br label %399

475:                                              ; preds = %399
  %476 = load %struct.lbc_softc*, %struct.lbc_softc** %4, align 8
  %477 = call i32 @lbc_banks_enable(%struct.lbc_softc* %476)
  %478 = load i32*, i32** %14, align 8
  %479 = call i32 @OF_prop_free(i32* %478)
  %480 = load i32*, i32** %3, align 8
  %481 = call i32 @bus_generic_attach(i32* %480)
  store i32 %481, i32* %2, align 4
  br label %495

482:                                              ; preds = %395, %270, %240, %217, %210, %197, %185
  %483 = load i32*, i32** %14, align 8
  %484 = call i32 @OF_prop_free(i32* %483)
  %485 = load i32*, i32** %3, align 8
  %486 = load i32, i32* @SYS_RES_MEMORY, align 4
  %487 = load %struct.lbc_softc*, %struct.lbc_softc** %4, align 8
  %488 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %487, i32 0, i32 3
  %489 = load i64, i64* %488, align 8
  %490 = load %struct.lbc_softc*, %struct.lbc_softc** %4, align 8
  %491 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %490, i32 0, i32 2
  %492 = load i32*, i32** %491, align 8
  %493 = call i32 @bus_release_resource(i32* %485, i32 %486, i64 %489, i32* %492)
  %494 = load i32, i32* %19, align 4
  store i32 %494, i32* %2, align 4
  br label %495

495:                                              ; preds = %482, %475, %42
  %496 = load i32, i32* %2, align 4
  ret i32 %496
}

declare dso_local %struct.lbc_softc* @device_get_softc(i32*) #1

declare dso_local i8* @bus_alloc_resource_any(i32*, i32, i64*, i32) #1

declare dso_local i32 @rman_get_bustag(i32*) #1

declare dso_local i32 @rman_get_bushandle(i32*) #1

declare dso_local i32 @bus_space_write_4(i32, i32, i32, i32) #1

declare dso_local i32 @LBC85XX_BR(i32) #1

declare dso_local i32 @LBC85XX_OR(i32) #1

declare dso_local i32 @bus_setup_intr(i32*, i32*, i32, i32*, i32, %struct.lbc_softc*, i32*) #1

declare dso_local i32 @device_printf(i32*, i8*, ...) #1

declare dso_local i32 @bus_release_resource(i32*, i32, i64, i32*) #1

declare dso_local i32 @rman_init(%struct.rman*) #1

declare dso_local i32 @rman_manage_region(%struct.rman*, i32, i32) #1

declare dso_local i32 @rman_fini(%struct.rman*) #1

declare dso_local i32 @ofw_bus_get_node(i32*) #1

declare dso_local i64 @fdt_addrsize_cells(i32, i32*, i32*) #1

declare dso_local i32 @fdt_parent_addr_cells(i32) #1

declare dso_local i32 @OF_getencprop_alloc_multi(i32, i8*, i32, i8**) #1

declare dso_local i32 @debugf(i8*, i32, i32, ...) #1

declare dso_local i32 @fdt_data_get(i8*, i32) #1

declare dso_local i32 @lbc_banks_map(%struct.lbc_softc*) #1

declare dso_local i32 @OF_child(i32) #1

declare dso_local %struct.lbc_devinfo* @malloc(i32, i32, i32) #1

declare dso_local i64 @ofw_bus_gen_setup_devinfo(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @free(%struct.lbc_devinfo*, i32) #1

declare dso_local i32 @resource_list_init(i32*) #1

declare dso_local i64 @fdt_lbc_reg_decode(i32, %struct.lbc_softc*, %struct.lbc_devinfo*) #1

declare dso_local i32 @ofw_bus_gen_destroy_devinfo(%struct.TYPE_5__*) #1

declare dso_local i32 @fdt_lbc_fixup(i32, %struct.lbc_softc*, %struct.lbc_devinfo*) #1

declare dso_local i32* @device_add_child(i32*, i32*, i32) #1

declare dso_local i32 @resource_list_free(i32*) #1

declare dso_local i32 @device_set_ivars(i32*, %struct.lbc_devinfo*) #1

declare dso_local i32 @OF_peer(i32) #1

declare dso_local i32 @lbc_banks_enable(%struct.lbc_softc*) #1

declare dso_local i32 @OF_prop_free(i32*) #1

declare dso_local i32 @bus_generic_attach(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
