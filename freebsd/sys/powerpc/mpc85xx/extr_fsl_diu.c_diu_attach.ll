; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_fsl_diu.c_diu_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_fsl_diu.c_diu_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edid_info = type { %struct.videomode* }
%struct.videomode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.diu_softc = type { i32*, i32*, %struct.TYPE_4__, i8*, %struct.TYPE_3__, i32, i32*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@diu_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not allocate resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@INTR_TYPE_BIO = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@diu_intr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Unable to alloc interrupt resource.\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"edid\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"No EDID data and no video-mode env set\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Error parsing EDID\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"%dx%d@%d\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Cannot parse video mode: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Cannot find mode for %dx%d@%d\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@FB_FLAG_MEMATTR = common dso_local global i32 0, align 4
@VM_MEMATTR_DEFAULT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [4 x i8] c"fbd\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"Can't attach fbd device\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"Failed to attach fbd device: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @diu_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @diu_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.edid_info, align 8
  %5 = alloca %struct.diu_softc*, align 8
  %6 = alloca %struct.videomode*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call %struct.diu_softc* @device_get_softc(i32 %15)
  store %struct.diu_softc* %16, %struct.diu_softc** %5, align 8
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.diu_softc*, %struct.diu_softc** %5, align 8
  %19 = getelementptr inbounds %struct.diu_softc, %struct.diu_softc* %18, i32 0, i32 7
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @diu_spec, align 4
  %22 = load %struct.diu_softc*, %struct.diu_softc** %5, align 8
  %23 = getelementptr inbounds %struct.diu_softc, %struct.diu_softc* %22, i32 0, i32 6
  %24 = load i32*, i32** %23, align 8
  %25 = call i64 @bus_alloc_resources(i32 %20, i32 %21, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %1
  %28 = load i32, i32* %3, align 4
  %29 = call i32 (i32, i8*, ...) @device_printf(i32 %28, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @ENXIO, align 4
  store i32 %30, i32* %2, align 4
  br label %319

31:                                               ; preds = %1
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @ofw_bus_get_node(i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %3, align 4
  %35 = load %struct.diu_softc*, %struct.diu_softc** %5, align 8
  %36 = getelementptr inbounds %struct.diu_softc, %struct.diu_softc* %35, i32 0, i32 6
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @INTR_TYPE_BIO, align 4
  %41 = load i32, i32* @INTR_MPSAFE, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @diu_intr, align 4
  %44 = load %struct.diu_softc*, %struct.diu_softc** %5, align 8
  %45 = load %struct.diu_softc*, %struct.diu_softc** %5, align 8
  %46 = getelementptr inbounds %struct.diu_softc, %struct.diu_softc* %45, i32 0, i32 5
  %47 = call i32 @bus_setup_intr(i32 %34, i32 %39, i32 %42, i32* null, i32 %43, %struct.diu_softc* %44, i32* %46)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %31
  %51 = load i32, i32* %3, align 4
  %52 = call i32 (i32, i8*, ...) @device_printf(i32 %51, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* @ENXIO, align 4
  store i32 %53, i32* %2, align 4
  br label %319

54:                                               ; preds = %31
  %55 = load i32, i32* %9, align 4
  %56 = call i64 @OF_getprop_alloc(i32 %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %7)
  %57 = icmp sle i64 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %54
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @device_get_name(i32 %59)
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @device_get_unit(i32 %61)
  %63 = call i64 @resource_string_value(i32 %60, i32 %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %8)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %58
  %66 = load i32, i32* %3, align 4
  %67 = call i32 (i32, i8*, ...) @device_printf(i32 %66, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  %68 = load i32, i32* @ENXIO, align 4
  store i32 %68, i32* %2, align 4
  br label %319

69:                                               ; preds = %58
  br label %70

70:                                               ; preds = %69, %54
  %71 = load i8*, i8** %7, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %86

73:                                               ; preds = %70
  %74 = load i8*, i8** %7, align 8
  %75 = call i64 @edid_parse(i8* %74, %struct.edid_info* %4)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %73
  %78 = load i32, i32* %3, align 4
  %79 = call i32 (i32, i8*, ...) @device_printf(i32 %78, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %80 = load i8*, i8** %7, align 8
  %81 = call i32 @OF_prop_free(i8* %80)
  %82 = load i32, i32* @ENXIO, align 4
  store i32 %82, i32* %2, align 4
  br label %319

83:                                               ; preds = %73
  %84 = getelementptr inbounds %struct.edid_info, %struct.edid_info* %4, i32 0, i32 0
  %85 = load %struct.videomode*, %struct.videomode** %84, align 8
  store %struct.videomode* %85, %struct.videomode** %6, align 8
  br label %110

86:                                               ; preds = %70
  %87 = load i8*, i8** %8, align 8
  %88 = call i32 @sscanf(i8* %87, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32* %12, i32* %10, i32* %11)
  store i32 %88, i32* %13, align 4
  %89 = icmp ne i32 %88, 3
  br i1 %89, label %90, label %95

90:                                               ; preds = %86
  %91 = load i32, i32* %3, align 4
  %92 = load i8*, i8** %8, align 8
  %93 = call i32 (i32, i8*, ...) @device_printf(i32 %91, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i8* %92)
  %94 = load i32, i32* @ENXIO, align 4
  store i32 %94, i32* %2, align 4
  br label %319

95:                                               ; preds = %86
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* %11, align 4
  %99 = call %struct.videomode* @pick_mode_by_ref(i32 %96, i32 %97, i32 %98)
  store %struct.videomode* %99, %struct.videomode** %6, align 8
  %100 = load %struct.videomode*, %struct.videomode** %6, align 8
  %101 = icmp eq %struct.videomode* %100, null
  br i1 %101, label %102, label %109

102:                                              ; preds = %95
  %103 = load i32, i32* %3, align 4
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* %11, align 4
  %107 = call i32 (i32, i8*, ...) @device_printf(i32 %103, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %104, i32 %105, i32 %106)
  %108 = load i32, i32* @ENXIO, align 4
  store i32 %108, i32* %2, align 4
  br label %319

109:                                              ; preds = %95
  br label %110

110:                                              ; preds = %109, %83
  %111 = load %struct.videomode*, %struct.videomode** %6, align 8
  %112 = getelementptr inbounds %struct.videomode, %struct.videomode* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.diu_softc*, %struct.diu_softc** %5, align 8
  %115 = getelementptr inbounds %struct.diu_softc, %struct.diu_softc* %114, i32 0, i32 4
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  store i32 %113, i32* %116, align 8
  %117 = load %struct.videomode*, %struct.videomode** %6, align 8
  %118 = getelementptr inbounds %struct.videomode, %struct.videomode* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.diu_softc*, %struct.diu_softc** %5, align 8
  %121 = getelementptr inbounds %struct.diu_softc, %struct.diu_softc* %120, i32 0, i32 4
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 1
  store i32 %119, i32* %122, align 4
  %123 = load %struct.videomode*, %struct.videomode** %6, align 8
  %124 = getelementptr inbounds %struct.videomode, %struct.videomode* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.videomode*, %struct.videomode** %6, align 8
  %127 = getelementptr inbounds %struct.videomode, %struct.videomode* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = sub nsw i32 %125, %128
  %130 = load %struct.diu_softc*, %struct.diu_softc** %5, align 8
  %131 = getelementptr inbounds %struct.diu_softc, %struct.diu_softc* %130, i32 0, i32 4
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 2
  store i32 %129, i32* %132, align 8
  %133 = load %struct.videomode*, %struct.videomode** %6, align 8
  %134 = getelementptr inbounds %struct.videomode, %struct.videomode* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.videomode*, %struct.videomode** %6, align 8
  %137 = getelementptr inbounds %struct.videomode, %struct.videomode* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 4
  %139 = sub nsw i32 %135, %138
  %140 = load %struct.diu_softc*, %struct.diu_softc** %5, align 8
  %141 = getelementptr inbounds %struct.diu_softc, %struct.diu_softc* %140, i32 0, i32 4
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 3
  store i32 %139, i32* %142, align 4
  %143 = load %struct.videomode*, %struct.videomode** %6, align 8
  %144 = getelementptr inbounds %struct.videomode, %struct.videomode* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.videomode*, %struct.videomode** %6, align 8
  %147 = getelementptr inbounds %struct.videomode, %struct.videomode* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = sub nsw i32 %145, %148
  %150 = load %struct.diu_softc*, %struct.diu_softc** %5, align 8
  %151 = getelementptr inbounds %struct.diu_softc, %struct.diu_softc* %150, i32 0, i32 4
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 4
  store i32 %149, i32* %152, align 8
  %153 = load %struct.videomode*, %struct.videomode** %6, align 8
  %154 = getelementptr inbounds %struct.videomode, %struct.videomode* %153, i32 0, i32 5
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.videomode*, %struct.videomode** %6, align 8
  %157 = getelementptr inbounds %struct.videomode, %struct.videomode* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = sub nsw i32 %155, %158
  %160 = load %struct.diu_softc*, %struct.diu_softc** %5, align 8
  %161 = getelementptr inbounds %struct.diu_softc, %struct.diu_softc* %160, i32 0, i32 4
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 5
  store i32 %159, i32* %162, align 4
  %163 = load %struct.videomode*, %struct.videomode** %6, align 8
  %164 = getelementptr inbounds %struct.videomode, %struct.videomode* %163, i32 0, i32 6
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.videomode*, %struct.videomode** %6, align 8
  %167 = getelementptr inbounds %struct.videomode, %struct.videomode* %166, i32 0, i32 7
  %168 = load i32, i32* %167, align 4
  %169 = sub nsw i32 %165, %168
  %170 = load %struct.diu_softc*, %struct.diu_softc** %5, align 8
  %171 = getelementptr inbounds %struct.diu_softc, %struct.diu_softc* %170, i32 0, i32 4
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 6
  store i32 %169, i32* %172, align 8
  %173 = load %struct.videomode*, %struct.videomode** %6, align 8
  %174 = getelementptr inbounds %struct.videomode, %struct.videomode* %173, i32 0, i32 7
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.videomode*, %struct.videomode** %6, align 8
  %177 = getelementptr inbounds %struct.videomode, %struct.videomode* %176, i32 0, i32 5
  %178 = load i32, i32* %177, align 4
  %179 = sub nsw i32 %175, %178
  %180 = load %struct.diu_softc*, %struct.diu_softc** %5, align 8
  %181 = getelementptr inbounds %struct.diu_softc, %struct.diu_softc* %180, i32 0, i32 4
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 7
  store i32 %179, i32* %182, align 4
  %183 = load %struct.videomode*, %struct.videomode** %6, align 8
  %184 = getelementptr inbounds %struct.videomode, %struct.videomode* %183, i32 0, i32 8
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.diu_softc*, %struct.diu_softc** %5, align 8
  %187 = getelementptr inbounds %struct.diu_softc, %struct.diu_softc* %186, i32 0, i32 4
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 8
  store i32 %185, i32* %188, align 8
  %189 = load %struct.diu_softc*, %struct.diu_softc** %5, align 8
  %190 = getelementptr inbounds %struct.diu_softc, %struct.diu_softc* %189, i32 0, i32 4
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.diu_softc*, %struct.diu_softc** %5, align 8
  %194 = getelementptr inbounds %struct.diu_softc, %struct.diu_softc* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 0
  store i32 %192, i32* %195, align 8
  %196 = load %struct.diu_softc*, %struct.diu_softc** %5, align 8
  %197 = getelementptr inbounds %struct.diu_softc, %struct.diu_softc* %196, i32 0, i32 4
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.diu_softc*, %struct.diu_softc** %5, align 8
  %201 = getelementptr inbounds %struct.diu_softc, %struct.diu_softc* %200, i32 0, i32 2
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 1
  store i32 %199, i32* %202, align 4
  %203 = load %struct.diu_softc*, %struct.diu_softc** %5, align 8
  %204 = getelementptr inbounds %struct.diu_softc, %struct.diu_softc* %203, i32 0, i32 2
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = mul nsw i32 %206, 4
  %208 = load %struct.diu_softc*, %struct.diu_softc** %5, align 8
  %209 = getelementptr inbounds %struct.diu_softc, %struct.diu_softc* %208, i32 0, i32 2
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 2
  store i32 %207, i32* %210, align 8
  %211 = load %struct.diu_softc*, %struct.diu_softc** %5, align 8
  %212 = getelementptr inbounds %struct.diu_softc, %struct.diu_softc* %211, i32 0, i32 2
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 4
  store i32 32, i32* %213, align 8
  %214 = load %struct.diu_softc*, %struct.diu_softc** %5, align 8
  %215 = getelementptr inbounds %struct.diu_softc, %struct.diu_softc* %214, i32 0, i32 2
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 3
  store i32 32, i32* %216, align 4
  %217 = load %struct.diu_softc*, %struct.diu_softc** %5, align 8
  %218 = getelementptr inbounds %struct.diu_softc, %struct.diu_softc* %217, i32 0, i32 2
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.diu_softc*, %struct.diu_softc** %5, align 8
  %222 = getelementptr inbounds %struct.diu_softc, %struct.diu_softc* %221, i32 0, i32 2
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  %225 = mul nsw i32 %220, %224
  %226 = load %struct.diu_softc*, %struct.diu_softc** %5, align 8
  %227 = getelementptr inbounds %struct.diu_softc, %struct.diu_softc* %226, i32 0, i32 2
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 5
  store i32 %225, i32* %228, align 4
  %229 = load %struct.diu_softc*, %struct.diu_softc** %5, align 8
  %230 = getelementptr inbounds %struct.diu_softc, %struct.diu_softc* %229, i32 0, i32 2
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 5
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* @M_DEVBUF, align 4
  %234 = load i32, i32* @M_ZERO, align 4
  %235 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %236 = load i32, i32* @PAGE_SIZE, align 4
  %237 = call i8* @contigmalloc(i32 %232, i32 %233, i32 %234, i32 0, i32 %235, i32 %236, i32 0)
  %238 = ptrtoint i8* %237 to i64
  %239 = load %struct.diu_softc*, %struct.diu_softc** %5, align 8
  %240 = getelementptr inbounds %struct.diu_softc, %struct.diu_softc* %239, i32 0, i32 2
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %240, i32 0, i32 6
  store i64 %238, i64* %241, align 8
  %242 = load %struct.diu_softc*, %struct.diu_softc** %5, align 8
  %243 = getelementptr inbounds %struct.diu_softc, %struct.diu_softc* %242, i32 0, i32 2
  %244 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %243, i32 0, i32 6
  %245 = load i64, i64* %244, align 8
  %246 = call i64 @vtophys(i64 %245)
  %247 = load %struct.diu_softc*, %struct.diu_softc** %5, align 8
  %248 = getelementptr inbounds %struct.diu_softc, %struct.diu_softc* %247, i32 0, i32 2
  %249 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %248, i32 0, i32 7
  store i64 %246, i64* %249, align 8
  %250 = load i32, i32* @FB_FLAG_MEMATTR, align 4
  %251 = load %struct.diu_softc*, %struct.diu_softc** %5, align 8
  %252 = getelementptr inbounds %struct.diu_softc, %struct.diu_softc* %251, i32 0, i32 2
  %253 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %252, i32 0, i32 10
  store i32 %250, i32* %253, align 8
  %254 = load i32, i32* @VM_MEMATTR_DEFAULT, align 4
  %255 = load %struct.diu_softc*, %struct.diu_softc** %5, align 8
  %256 = getelementptr inbounds %struct.diu_softc, %struct.diu_softc* %255, i32 0, i32 2
  %257 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %256, i32 0, i32 9
  store i32 %254, i32* %257, align 4
  %258 = load i32, i32* @M_DEVBUF, align 4
  %259 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %260 = load i32, i32* @PAGE_SIZE, align 4
  %261 = call i8* @contigmalloc(i32 768, i32 %258, i32 0, i32 0, i32 %259, i32 %260, i32 0)
  %262 = bitcast i8* %261 to i32*
  %263 = load %struct.diu_softc*, %struct.diu_softc** %5, align 8
  %264 = getelementptr inbounds %struct.diu_softc, %struct.diu_softc* %263, i32 0, i32 0
  store i32* %262, i32** %264, align 8
  store i32 0, i32* %14, align 4
  br label %265

265:                                              ; preds = %277, %110
  %266 = load i32, i32* %14, align 4
  %267 = icmp slt i32 %266, 768
  br i1 %267, label %268, label %280

268:                                              ; preds = %265
  %269 = load i32, i32* %14, align 4
  %270 = srem i32 %269, 256
  %271 = load %struct.diu_softc*, %struct.diu_softc** %5, align 8
  %272 = getelementptr inbounds %struct.diu_softc, %struct.diu_softc* %271, i32 0, i32 0
  %273 = load i32*, i32** %272, align 8
  %274 = load i32, i32* %14, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i32, i32* %273, i64 %275
  store i32 %270, i32* %276, align 4
  br label %277

277:                                              ; preds = %268
  %278 = load i32, i32* %14, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %14, align 4
  br label %265

280:                                              ; preds = %265
  %281 = load i32, i32* @M_DEVBUF, align 4
  %282 = load i32, i32* @M_ZERO, align 4
  %283 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %284 = load i32, i32* @PAGE_SIZE, align 4
  %285 = call i8* @contigmalloc(i32 2048, i32 %281, i32 %282, i32 0, i32 %283, i32 %284, i32 0)
  %286 = load %struct.diu_softc*, %struct.diu_softc** %5, align 8
  %287 = getelementptr inbounds %struct.diu_softc, %struct.diu_softc* %286, i32 0, i32 3
  store i8* %285, i8** %287, align 8
  %288 = load %struct.diu_softc*, %struct.diu_softc** %5, align 8
  %289 = call i32 @diu_init(%struct.diu_softc* %288)
  %290 = load i32, i32* %3, align 4
  %291 = call i32 @device_get_nameunit(i32 %290)
  %292 = load %struct.diu_softc*, %struct.diu_softc** %5, align 8
  %293 = getelementptr inbounds %struct.diu_softc, %struct.diu_softc* %292, i32 0, i32 2
  %294 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %293, i32 0, i32 8
  store i32 %291, i32* %294, align 8
  %295 = load i32, i32* %3, align 4
  %296 = load i32, i32* %3, align 4
  %297 = call i32 @device_get_unit(i32 %296)
  %298 = call i32* @device_add_child(i32 %295, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 %297)
  %299 = load %struct.diu_softc*, %struct.diu_softc** %5, align 8
  %300 = getelementptr inbounds %struct.diu_softc, %struct.diu_softc* %299, i32 0, i32 1
  store i32* %298, i32** %300, align 8
  %301 = load %struct.diu_softc*, %struct.diu_softc** %5, align 8
  %302 = getelementptr inbounds %struct.diu_softc, %struct.diu_softc* %301, i32 0, i32 1
  %303 = load i32*, i32** %302, align 8
  %304 = icmp eq i32* %303, null
  br i1 %304, label %305, label %308

305:                                              ; preds = %280
  %306 = load i32, i32* %3, align 4
  %307 = call i32 (i32, i8*, ...) @device_printf(i32 %306, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  br label %308

308:                                              ; preds = %305, %280
  %309 = load %struct.diu_softc*, %struct.diu_softc** %5, align 8
  %310 = getelementptr inbounds %struct.diu_softc, %struct.diu_softc* %309, i32 0, i32 1
  %311 = load i32*, i32** %310, align 8
  %312 = call i32 @device_probe_and_attach(i32* %311)
  store i32 %312, i32* %13, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %318

314:                                              ; preds = %308
  %315 = load i32, i32* %3, align 4
  %316 = load i32, i32* %13, align 4
  %317 = call i32 (i32, i8*, ...) @device_printf(i32 %315, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0), i32 %316)
  br label %318

318:                                              ; preds = %314, %308
  store i32 0, i32* %2, align 4
  br label %319

319:                                              ; preds = %318, %102, %90, %77, %65, %50, %27
  %320 = load i32, i32* %2, align 4
  ret i32 %320
}

declare dso_local %struct.diu_softc* @device_get_softc(i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @bus_setup_intr(i32, i32, i32, i32*, i32, %struct.diu_softc*, i32*) #1

declare dso_local i64 @OF_getprop_alloc(i32, i8*, i8**) #1

declare dso_local i64 @resource_string_value(i32, i32, i8*, i8**) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i64 @edid_parse(i8*, %struct.edid_info*) #1

declare dso_local i32 @OF_prop_free(i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*) #1

declare dso_local %struct.videomode* @pick_mode_by_ref(i32, i32, i32) #1

declare dso_local i8* @contigmalloc(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @vtophys(i64) #1

declare dso_local i32 @diu_init(%struct.diu_softc*) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32* @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @device_probe_and_attach(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
