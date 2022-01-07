; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_uninorth.c_unin_chip_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_uninorth.c_unin_chip_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unin_chip_softc = type { i8, i8, i8, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i32 }
%struct.unin_chip_devinfo = type { i64, i8*, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"#address-cells\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"#size-cells\00", align 1
@RMAN_ARRAY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"UniNorth Device Memory\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"rman_init() failed. error = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"rman_manage_region() failed. error = %d\0A\00", align 1
@unin_chip = common dso_local global i32* null, align 8
@M_UNIN = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"device has no name!\0A\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"i2c-bus\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"i2c\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"interrupt-parent\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"/u3/mpic\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"Set /u3/mpic as iparent!\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [31 x i8] c"<%s>: device_add_child failed\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [12 x i8] c"Version %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"compatible\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"gmac\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"chrp,open-pic\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"enet\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @unin_chip_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unin_chip_attach(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.unin_chip_softc*, align 8
  %5 = alloca %struct.unin_chip_devinfo*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [32 x i8], align 16
  %13 = alloca [32 x i8], align 16
  %14 = alloca i8, align 1
  %15 = alloca [3 x i8], align 1
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 0, i32* %17, align 4
  %18 = load i32*, i32** %3, align 8
  %19 = call %struct.unin_chip_softc* @device_get_softc(i32* %18)
  store %struct.unin_chip_softc* %19, %struct.unin_chip_softc** %4, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = call i64 @ofw_bus_get_node(i32* %20)
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %6, align 8
  %23 = getelementptr inbounds [3 x i8], [3 x i8]* %15, i64 0, i64 0
  %24 = call i32 (i64, i8*, ...) @OF_getprop(i64 %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %23, i64 3)
  %25 = icmp slt i32 %24, 8
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = load i32, i32* @ENXIO, align 4
  store i32 %27, i32* %2, align 4
  br label %318

28:                                               ; preds = %1
  store i32 1, i32* %11, align 4
  store i32 1, i32* %10, align 4
  %29 = load i64, i64* %6, align 8
  %30 = call i64 @OF_parent(i64 %29)
  %31 = call i32 (i64, i8*, ...) @OF_getprop(i64 %30, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32* %10, i64 4)
  %32 = load i64, i64* %6, align 8
  %33 = call i64 @OF_parent(i64 %32)
  %34 = call i32 (i64, i8*, ...) @OF_getprop(i64 %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* %11, i64 4)
  store i32 0, i32* %17, align 4
  %35 = load i32, i32* %17, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %17, align 4
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds [3 x i8], [3 x i8]* %15, i64 0, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = load %struct.unin_chip_softc*, %struct.unin_chip_softc** %4, align 8
  %41 = getelementptr inbounds %struct.unin_chip_softc, %struct.unin_chip_softc* %40, i32 0, i32 0
  store i8 %39, i8* %41, align 8
  %42 = load i32, i32* %10, align 4
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %44, label %63

44:                                               ; preds = %28
  %45 = load %struct.unin_chip_softc*, %struct.unin_chip_softc** %4, align 8
  %46 = getelementptr inbounds %struct.unin_chip_softc, %struct.unin_chip_softc* %45, i32 0, i32 0
  %47 = load i8, i8* %46, align 8
  %48 = sext i8 %47 to i32
  %49 = shl i32 %48, 32
  %50 = trunc i32 %49 to i8
  store i8 %50, i8* %46, align 8
  %51 = load i32, i32* %17, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %17, align 4
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds [3 x i8], [3 x i8]* %15, i64 0, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = load %struct.unin_chip_softc*, %struct.unin_chip_softc** %4, align 8
  %58 = getelementptr inbounds %struct.unin_chip_softc, %struct.unin_chip_softc* %57, i32 0, i32 0
  %59 = load i8, i8* %58, align 8
  %60 = sext i8 %59 to i32
  %61 = or i32 %60, %56
  %62 = trunc i32 %61 to i8
  store i8 %62, i8* %58, align 8
  br label %63

63:                                               ; preds = %44, %28
  %64 = load i32, i32* %17, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %17, align 4
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds [3 x i8], [3 x i8]* %15, i64 0, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = load %struct.unin_chip_softc*, %struct.unin_chip_softc** %4, align 8
  %70 = getelementptr inbounds %struct.unin_chip_softc, %struct.unin_chip_softc* %69, i32 0, i32 1
  store i8 %68, i8* %70, align 1
  %71 = load i32, i32* %11, align 4
  %72 = icmp eq i32 %71, 2
  br i1 %72, label %73, label %92

73:                                               ; preds = %63
  %74 = load %struct.unin_chip_softc*, %struct.unin_chip_softc** %4, align 8
  %75 = getelementptr inbounds %struct.unin_chip_softc, %struct.unin_chip_softc* %74, i32 0, i32 1
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = shl i32 %77, 32
  %79 = trunc i32 %78 to i8
  store i8 %79, i8* %75, align 1
  %80 = load i32, i32* %17, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %17, align 4
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds [3 x i8], [3 x i8]* %15, i64 0, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = load %struct.unin_chip_softc*, %struct.unin_chip_softc** %4, align 8
  %87 = getelementptr inbounds %struct.unin_chip_softc, %struct.unin_chip_softc* %86, i32 0, i32 1
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = or i32 %89, %85
  %91 = trunc i32 %90 to i8
  store i8 %91, i8* %87, align 1
  br label %92

92:                                               ; preds = %73, %63
  %93 = load i32, i32* @RMAN_ARRAY, align 4
  %94 = load %struct.unin_chip_softc*, %struct.unin_chip_softc** %4, align 8
  %95 = getelementptr inbounds %struct.unin_chip_softc, %struct.unin_chip_softc* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  store i32 %93, i32* %96, align 8
  %97 = load %struct.unin_chip_softc*, %struct.unin_chip_softc** %4, align 8
  %98 = getelementptr inbounds %struct.unin_chip_softc, %struct.unin_chip_softc* %97, i32 0, i32 4
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8** %99, align 8
  %100 = load %struct.unin_chip_softc*, %struct.unin_chip_softc** %4, align 8
  %101 = getelementptr inbounds %struct.unin_chip_softc, %struct.unin_chip_softc* %100, i32 0, i32 4
  %102 = call i32 @rman_init(%struct.TYPE_5__* %101)
  store i32 %102, i32* %16, align 4
  %103 = load i32, i32* %16, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %92
  %106 = load i32*, i32** %3, align 8
  %107 = load i32, i32* %16, align 4
  %108 = call i32 (i32*, i8*, ...) @device_printf(i32* %106, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %107)
  %109 = load i32, i32* %16, align 4
  store i32 %109, i32* %2, align 4
  br label %318

110:                                              ; preds = %92
  %111 = load %struct.unin_chip_softc*, %struct.unin_chip_softc** %4, align 8
  %112 = getelementptr inbounds %struct.unin_chip_softc, %struct.unin_chip_softc* %111, i32 0, i32 4
  %113 = load %struct.unin_chip_softc*, %struct.unin_chip_softc** %4, align 8
  %114 = getelementptr inbounds %struct.unin_chip_softc, %struct.unin_chip_softc* %113, i32 0, i32 0
  %115 = load i8, i8* %114, align 8
  %116 = load %struct.unin_chip_softc*, %struct.unin_chip_softc** %4, align 8
  %117 = getelementptr inbounds %struct.unin_chip_softc, %struct.unin_chip_softc* %116, i32 0, i32 0
  %118 = load i8, i8* %117, align 8
  %119 = sext i8 %118 to i32
  %120 = load %struct.unin_chip_softc*, %struct.unin_chip_softc** %4, align 8
  %121 = getelementptr inbounds %struct.unin_chip_softc, %struct.unin_chip_softc* %120, i32 0, i32 1
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = add nsw i32 %119, %123
  %125 = sub nsw i32 %124, 1
  %126 = call i32 @rman_manage_region(%struct.TYPE_5__* %112, i8 signext %115, i32 %125)
  store i32 %126, i32* %16, align 4
  %127 = load i32, i32* %16, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %110
  %130 = load i32*, i32** %3, align 8
  %131 = load i32, i32* %16, align 4
  %132 = call i32 (i32*, i8*, ...) @device_printf(i32* %130, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %131)
  %133 = load i32, i32* %16, align 4
  store i32 %133, i32* %2, align 4
  br label %318

134:                                              ; preds = %110
  %135 = load i32*, i32** @unin_chip, align 8
  %136 = icmp eq i32* %135, null
  br i1 %136, label %137, label %139

137:                                              ; preds = %134
  %138 = load i32*, i32** %3, align 8
  store i32* %138, i32** @unin_chip, align 8
  br label %139

139:                                              ; preds = %137, %134
  %140 = load i64, i64* %6, align 8
  %141 = call i64 @OF_child(i64 %140)
  store i64 %141, i64* %7, align 8
  br label %142

142:                                              ; preds = %249, %139
  %143 = load i64, i64* %7, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %252

145:                                              ; preds = %142
  %146 = load i32, i32* @M_UNIN, align 4
  %147 = load i32, i32* @M_WAITOK, align 4
  %148 = load i32, i32* @M_ZERO, align 4
  %149 = or i32 %147, %148
  %150 = call %struct.unin_chip_devinfo* @malloc(i32 24, i32 %146, i32 %149)
  store %struct.unin_chip_devinfo* %150, %struct.unin_chip_devinfo** %5, align 8
  %151 = load %struct.unin_chip_devinfo*, %struct.unin_chip_devinfo** %5, align 8
  %152 = getelementptr inbounds %struct.unin_chip_devinfo, %struct.unin_chip_devinfo* %151, i32 0, i32 2
  %153 = load i64, i64* %7, align 8
  %154 = call i64 @ofw_bus_gen_setup_devinfo(%struct.TYPE_6__* %152, i64 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %145
  %157 = load %struct.unin_chip_devinfo*, %struct.unin_chip_devinfo** %5, align 8
  %158 = load i32, i32* @M_UNIN, align 4
  %159 = call i32 @free(%struct.unin_chip_devinfo* %157, i32 %158)
  br label %249

160:                                              ; preds = %145
  %161 = load %struct.unin_chip_devinfo*, %struct.unin_chip_devinfo** %5, align 8
  %162 = getelementptr inbounds %struct.unin_chip_devinfo, %struct.unin_chip_devinfo* %161, i32 0, i32 3
  %163 = call i32 @resource_list_init(i32* %162)
  %164 = load %struct.unin_chip_devinfo*, %struct.unin_chip_devinfo** %5, align 8
  %165 = getelementptr inbounds %struct.unin_chip_devinfo, %struct.unin_chip_devinfo* %164, i32 0, i32 0
  store i64 0, i64* %165, align 8
  %166 = load i64, i64* %7, align 8
  %167 = load %struct.unin_chip_devinfo*, %struct.unin_chip_devinfo** %5, align 8
  %168 = call i32 @unin_chip_add_intr(i64 %166, %struct.unin_chip_devinfo* %167)
  %169 = load i64, i64* %7, align 8
  %170 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %171 = call i32 (i64, i8*, ...) @OF_getprop(i64 %169, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* %170, i64 32)
  %172 = icmp sle i32 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %160
  %174 = load i32*, i32** %3, align 8
  %175 = call i32 (i32*, i8*, ...) @device_printf(i32* %174, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  br label %176

176:                                              ; preds = %173, %160
  %177 = load %struct.unin_chip_devinfo*, %struct.unin_chip_devinfo** %5, align 8
  %178 = getelementptr inbounds %struct.unin_chip_devinfo, %struct.unin_chip_devinfo* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %181, label %221

181:                                              ; preds = %176
  %182 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %183 = call i64 @strcmp(i8* %182, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %184 = icmp eq i64 %183, 0
  br i1 %184, label %189, label %185

185:                                              ; preds = %181
  %186 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %187 = call i64 @strcmp(i8* %186, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %189, label %221

189:                                              ; preds = %185, %181
  %190 = load i64, i64* %7, align 8
  %191 = call i32 (i64, i8*, ...) @OF_getprop(i64 %190, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i64* %8, i64 8)
  %192 = icmp sle i32 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %189
  %194 = call i64 @OF_finddevice(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  store i64 %194, i64* %8, align 8
  %195 = load i32*, i32** %3, align 8
  %196 = call i32 (i32*, i8*, ...) @device_printf(i32* %195, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0))
  br label %197

197:                                              ; preds = %193, %189
  %198 = load i64, i64* %8, align 8
  %199 = call signext i8 @MAP_IRQ(i64 %198, i32 0)
  store i8 %199, i8* %14, align 1
  %200 = load %struct.unin_chip_devinfo*, %struct.unin_chip_devinfo** %5, align 8
  %201 = getelementptr inbounds %struct.unin_chip_devinfo, %struct.unin_chip_devinfo* %200, i32 0, i32 3
  %202 = load i32, i32* @SYS_RES_IRQ, align 4
  %203 = load %struct.unin_chip_devinfo*, %struct.unin_chip_devinfo** %5, align 8
  %204 = getelementptr inbounds %struct.unin_chip_devinfo, %struct.unin_chip_devinfo* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load i8, i8* %14, align 1
  %207 = load i8, i8* %14, align 1
  %208 = call i32 @resource_list_add(i32* %201, i32 %202, i64 %205, i8 signext %206, i8 signext %207, i32 1)
  %209 = load i8, i8* %14, align 1
  %210 = load %struct.unin_chip_devinfo*, %struct.unin_chip_devinfo** %5, align 8
  %211 = getelementptr inbounds %struct.unin_chip_devinfo, %struct.unin_chip_devinfo* %210, i32 0, i32 1
  %212 = load i8*, i8** %211, align 8
  %213 = load %struct.unin_chip_devinfo*, %struct.unin_chip_devinfo** %5, align 8
  %214 = getelementptr inbounds %struct.unin_chip_devinfo, %struct.unin_chip_devinfo* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = getelementptr inbounds i8, i8* %212, i64 %215
  store i8 %209, i8* %216, align 1
  %217 = load %struct.unin_chip_devinfo*, %struct.unin_chip_devinfo** %5, align 8
  %218 = getelementptr inbounds %struct.unin_chip_devinfo, %struct.unin_chip_devinfo* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = add i64 %219, 1
  store i64 %220, i64* %218, align 8
  br label %221

221:                                              ; preds = %197, %185, %176
  %222 = load i64, i64* %7, align 8
  %223 = load %struct.unin_chip_devinfo*, %struct.unin_chip_devinfo** %5, align 8
  %224 = call i32 @unin_chip_add_reg(i64 %222, %struct.unin_chip_devinfo* %223)
  %225 = load i32*, i32** %3, align 8
  %226 = call i32* @device_add_child(i32* %225, i32* null, i32 -1)
  store i32* %226, i32** %9, align 8
  %227 = load i32*, i32** %9, align 8
  %228 = icmp eq i32* %227, null
  br i1 %228, label %229, label %245

229:                                              ; preds = %221
  %230 = load i32*, i32** %3, align 8
  %231 = load %struct.unin_chip_devinfo*, %struct.unin_chip_devinfo** %5, align 8
  %232 = getelementptr inbounds %struct.unin_chip_devinfo, %struct.unin_chip_devinfo* %231, i32 0, i32 2
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = call i32 (i32*, i8*, ...) @device_printf(i32* %230, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0), i32 %234)
  %236 = load %struct.unin_chip_devinfo*, %struct.unin_chip_devinfo** %5, align 8
  %237 = getelementptr inbounds %struct.unin_chip_devinfo, %struct.unin_chip_devinfo* %236, i32 0, i32 3
  %238 = call i32 @resource_list_free(i32* %237)
  %239 = load %struct.unin_chip_devinfo*, %struct.unin_chip_devinfo** %5, align 8
  %240 = getelementptr inbounds %struct.unin_chip_devinfo, %struct.unin_chip_devinfo* %239, i32 0, i32 2
  %241 = call i32 @ofw_bus_gen_destroy_devinfo(%struct.TYPE_6__* %240)
  %242 = load %struct.unin_chip_devinfo*, %struct.unin_chip_devinfo** %5, align 8
  %243 = load i32, i32* @M_UNIN, align 4
  %244 = call i32 @free(%struct.unin_chip_devinfo* %242, i32 %243)
  br label %249

245:                                              ; preds = %221
  %246 = load i32*, i32** %9, align 8
  %247 = load %struct.unin_chip_devinfo*, %struct.unin_chip_devinfo** %5, align 8
  %248 = call i32 @device_set_ivars(i32* %246, %struct.unin_chip_devinfo* %247)
  br label %249

249:                                              ; preds = %245, %229, %156
  %250 = load i64, i64* %7, align 8
  %251 = call i64 @OF_peer(i64 %250)
  store i64 %251, i64* %7, align 8
  br label %142

252:                                              ; preds = %142
  %253 = load %struct.unin_chip_softc*, %struct.unin_chip_softc** %4, align 8
  %254 = getelementptr inbounds %struct.unin_chip_softc, %struct.unin_chip_softc* %253, i32 0, i32 0
  %255 = load i8, i8* %254, align 8
  %256 = sext i8 %255 to i32
  %257 = load i32, i32* @PAGE_SIZE, align 4
  %258 = call i64 @pmap_mapdev(i32 %256, i32 %257)
  %259 = load %struct.unin_chip_softc*, %struct.unin_chip_softc** %4, align 8
  %260 = getelementptr inbounds %struct.unin_chip_softc, %struct.unin_chip_softc* %259, i32 0, i32 3
  store i64 %258, i64* %260, align 8
  %261 = load %struct.unin_chip_softc*, %struct.unin_chip_softc** %4, align 8
  %262 = getelementptr inbounds %struct.unin_chip_softc, %struct.unin_chip_softc* %261, i32 0, i32 3
  %263 = load i64, i64* %262, align 8
  %264 = inttoptr i64 %263 to i8*
  %265 = load i8, i8* %264, align 1
  %266 = load %struct.unin_chip_softc*, %struct.unin_chip_softc** %4, align 8
  %267 = getelementptr inbounds %struct.unin_chip_softc, %struct.unin_chip_softc* %266, i32 0, i32 2
  store i8 %265, i8* %267, align 2
  %268 = load i32*, i32** %3, align 8
  %269 = load %struct.unin_chip_softc*, %struct.unin_chip_softc** %4, align 8
  %270 = getelementptr inbounds %struct.unin_chip_softc, %struct.unin_chip_softc* %269, i32 0, i32 2
  %271 = load i8, i8* %270, align 2
  %272 = sext i8 %271 to i32
  %273 = call i32 (i32*, i8*, ...) @device_printf(i32* %268, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i32 %272)
  %274 = load i64, i64* %6, align 8
  %275 = call i64 @OF_child(i64 %274)
  store i64 %275, i64* %7, align 8
  br label %276

276:                                              ; preds = %299, %252
  %277 = load i64, i64* %7, align 8
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %302

279:                                              ; preds = %276
  %280 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %281 = call i32 @memset(i8* %280, i32 0, i32 32)
  %282 = load i64, i64* %7, align 8
  %283 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %284 = call i32 (i64, i8*, ...) @OF_getprop(i64 %282, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i8* %283, i64 32)
  %285 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %286 = call i64 @strcmp(i8* %285, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  %287 = icmp eq i64 %286, 0
  br i1 %287, label %288, label %291

288:                                              ; preds = %279
  %289 = load i32*, i32** %3, align 8
  %290 = call i32 @unin_enable_gmac(i32* %289)
  br label %291

291:                                              ; preds = %288, %279
  %292 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %293 = call i64 @strcmp(i8* %292, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0))
  %294 = icmp eq i64 %293, 0
  br i1 %294, label %295, label %298

295:                                              ; preds = %291
  %296 = load i32*, i32** %3, align 8
  %297 = call i32 @unin_enable_mpic(i32* %296)
  br label %298

298:                                              ; preds = %295, %291
  br label %299

299:                                              ; preds = %298
  %300 = load i64, i64* %7, align 8
  %301 = call i64 @OF_peer(i64 %300)
  store i64 %301, i64* %7, align 8
  br label %276

302:                                              ; preds = %276
  %303 = call i64 @OF_finddevice(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0))
  store i64 %303, i64* %7, align 8
  %304 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %305 = call i32 @memset(i8* %304, i32 0, i32 32)
  %306 = load i64, i64* %7, align 8
  %307 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %308 = call i32 (i64, i8*, ...) @OF_getprop(i64 %306, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i8* %307, i64 32)
  %309 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %310 = call i64 @strcmp(i8* %309, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  %311 = icmp eq i64 %310, 0
  br i1 %311, label %312, label %315

312:                                              ; preds = %302
  %313 = load i32*, i32** %3, align 8
  %314 = call i32 @unin_enable_gmac(i32* %313)
  br label %315

315:                                              ; preds = %312, %302
  %316 = load i32*, i32** %3, align 8
  %317 = call i32 @bus_generic_attach(i32* %316)
  store i32 %317, i32* %2, align 4
  br label %318

318:                                              ; preds = %315, %129, %105, %26
  %319 = load i32, i32* %2, align 4
  ret i32 %319
}

declare dso_local %struct.unin_chip_softc* @device_get_softc(i32*) #1

declare dso_local i64 @ofw_bus_get_node(i32*) #1

declare dso_local i32 @OF_getprop(i64, i8*, ...) #1

declare dso_local i64 @OF_parent(i64) #1

declare dso_local i32 @rman_init(%struct.TYPE_5__*) #1

declare dso_local i32 @device_printf(i32*, i8*, ...) #1

declare dso_local i32 @rman_manage_region(%struct.TYPE_5__*, i8 signext, i32) #1

declare dso_local i64 @OF_child(i64) #1

declare dso_local %struct.unin_chip_devinfo* @malloc(i32, i32, i32) #1

declare dso_local i64 @ofw_bus_gen_setup_devinfo(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @free(%struct.unin_chip_devinfo*, i32) #1

declare dso_local i32 @resource_list_init(i32*) #1

declare dso_local i32 @unin_chip_add_intr(i64, %struct.unin_chip_devinfo*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @OF_finddevice(i8*) #1

declare dso_local signext i8 @MAP_IRQ(i64, i32) #1

declare dso_local i32 @resource_list_add(i32*, i32, i64, i8 signext, i8 signext, i32) #1

declare dso_local i32 @unin_chip_add_reg(i64, %struct.unin_chip_devinfo*) #1

declare dso_local i32* @device_add_child(i32*, i32*, i32) #1

declare dso_local i32 @resource_list_free(i32*) #1

declare dso_local i32 @ofw_bus_gen_destroy_devinfo(%struct.TYPE_6__*) #1

declare dso_local i32 @device_set_ivars(i32*, %struct.unin_chip_devinfo*) #1

declare dso_local i64 @OF_peer(i64) #1

declare dso_local i64 @pmap_mapdev(i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @unin_enable_gmac(i32*) #1

declare dso_local i32 @unin_enable_mpic(i32*) #1

declare dso_local i32 @bus_generic_attach(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
