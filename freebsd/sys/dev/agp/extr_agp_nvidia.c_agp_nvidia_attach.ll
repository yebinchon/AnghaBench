; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_nvidia.c_agp_nvidia_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_nvidia.c_agp_nvidia_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_nvidia_softc = type { i32, i32, i32, i32, i32, i32*, i32*, %struct.agp_gatt*, i32*, %struct.TYPE_2__, i32* }
%struct.agp_gatt = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"Bad chip id\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Unable to find NVIDIA Memory Controller 1.\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Unable to find NVIDIA Memory Controller 2.\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"Unable to find NVIDIA AGP Host to PCI Bridge.\0A\00", align 1
@AGP_NVIDIA_2_APBASE = common dso_local global i32 0, align 4
@AGP_NVIDIA_2_APLIMIT = common dso_local global i32 0, align 4
@AGP_NVIDIA_3_APBASE = common dso_local global i32 0, align 4
@AGP_NVIDIA_3_APLIMIT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"Failed to setup IORRs\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@AGP_NVIDIA_2_GARTCTRL = common dso_local global i32 0, align 4
@AGP_NVIDIA_0_APSIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @agp_nvidia_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @agp_nvidia_attach(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.agp_nvidia_softc*, align 8
  %5 = alloca %struct.agp_gatt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call %struct.agp_nvidia_softc* @device_get_softc(i32* %12)
  store %struct.agp_nvidia_softc* %13, %struct.agp_nvidia_softc** %4, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @pci_get_device(i32* %14)
  switch i32 %15, label %22 [
    i32 129, label %16
    i32 128, label %19
  ]

16:                                               ; preds = %1
  %17 = load %struct.agp_nvidia_softc*, %struct.agp_nvidia_softc** %4, align 8
  %18 = getelementptr inbounds %struct.agp_nvidia_softc, %struct.agp_nvidia_softc* %17, i32 0, i32 0
  store i32 65536, i32* %18, align 8
  br label %26

19:                                               ; preds = %1
  %20 = load %struct.agp_nvidia_softc*, %struct.agp_nvidia_softc** %4, align 8
  %21 = getelementptr inbounds %struct.agp_nvidia_softc, %struct.agp_nvidia_softc* %20, i32 0, i32 0
  store i32 -2147483648, i32* %21, align 8
  br label %26

22:                                               ; preds = %1
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @device_printf(i32* %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ENODEV, align 4
  store i32 %25, i32* %2, align 4
  br label %249

26:                                               ; preds = %19, %16
  %27 = load i32*, i32** %3, align 8
  %28 = load %struct.agp_nvidia_softc*, %struct.agp_nvidia_softc** %4, align 8
  %29 = getelementptr inbounds %struct.agp_nvidia_softc, %struct.agp_nvidia_softc* %28, i32 0, i32 5
  store i32* %27, i32** %29, align 8
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @pci_get_bus(i32* %30)
  %32 = call i8* @pci_find_bsf(i32 %31, i32 0, i32 1)
  %33 = bitcast i8* %32 to i32*
  %34 = load %struct.agp_nvidia_softc*, %struct.agp_nvidia_softc** %4, align 8
  %35 = getelementptr inbounds %struct.agp_nvidia_softc, %struct.agp_nvidia_softc* %34, i32 0, i32 10
  store i32* %33, i32** %35, align 8
  %36 = load %struct.agp_nvidia_softc*, %struct.agp_nvidia_softc** %4, align 8
  %37 = getelementptr inbounds %struct.agp_nvidia_softc, %struct.agp_nvidia_softc* %36, i32 0, i32 10
  %38 = load i32*, i32** %37, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %26
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 @device_printf(i32* %41, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @ENODEV, align 4
  store i32 %43, i32* %2, align 4
  br label %249

44:                                               ; preds = %26
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 @pci_get_bus(i32* %45)
  %47 = call i8* @pci_find_bsf(i32 %46, i32 0, i32 2)
  %48 = bitcast i8* %47 to i32*
  %49 = load %struct.agp_nvidia_softc*, %struct.agp_nvidia_softc** %4, align 8
  %50 = getelementptr inbounds %struct.agp_nvidia_softc, %struct.agp_nvidia_softc* %49, i32 0, i32 6
  store i32* %48, i32** %50, align 8
  %51 = load %struct.agp_nvidia_softc*, %struct.agp_nvidia_softc** %4, align 8
  %52 = getelementptr inbounds %struct.agp_nvidia_softc, %struct.agp_nvidia_softc* %51, i32 0, i32 6
  %53 = load i32*, i32** %52, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %44
  %56 = load i32*, i32** %3, align 8
  %57 = call i32 @device_printf(i32* %56, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %58 = load i32, i32* @ENODEV, align 4
  store i32 %58, i32* %2, align 4
  br label %249

59:                                               ; preds = %44
  %60 = load i32*, i32** %3, align 8
  %61 = call i32 @pci_get_bus(i32* %60)
  %62 = call i8* @pci_find_bsf(i32 %61, i32 30, i32 0)
  %63 = bitcast i8* %62 to i32*
  %64 = load %struct.agp_nvidia_softc*, %struct.agp_nvidia_softc** %4, align 8
  %65 = getelementptr inbounds %struct.agp_nvidia_softc, %struct.agp_nvidia_softc* %64, i32 0, i32 8
  store i32* %63, i32** %65, align 8
  %66 = load %struct.agp_nvidia_softc*, %struct.agp_nvidia_softc** %4, align 8
  %67 = getelementptr inbounds %struct.agp_nvidia_softc, %struct.agp_nvidia_softc* %66, i32 0, i32 8
  %68 = load i32*, i32** %67, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %59
  %71 = load i32*, i32** %3, align 8
  %72 = call i32 @device_printf(i32* %71, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  %73 = load i32, i32* @ENODEV, align 4
  store i32 %73, i32* %2, align 4
  br label %249

74:                                               ; preds = %59
  %75 = load i32*, i32** %3, align 8
  %76 = call i32 @agp_generic_attach(i32* %75)
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %11, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load i32, i32* %11, align 4
  store i32 %80, i32* %2, align 4
  br label %249

81:                                               ; preds = %74
  %82 = load i32*, i32** %3, align 8
  %83 = call i32 @AGP_GET_APERTURE(i32* %82)
  %84 = load %struct.agp_nvidia_softc*, %struct.agp_nvidia_softc** %4, align 8
  %85 = getelementptr inbounds %struct.agp_nvidia_softc, %struct.agp_nvidia_softc* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  br label %86

86:                                               ; preds = %100, %81
  %87 = load i32*, i32** %3, align 8
  %88 = call %struct.agp_gatt* @agp_alloc_gatt(i32* %87)
  store %struct.agp_gatt* %88, %struct.agp_gatt** %5, align 8
  %89 = load %struct.agp_gatt*, %struct.agp_gatt** %5, align 8
  %90 = icmp ne %struct.agp_gatt* %89, null
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  br label %101

92:                                               ; preds = %86
  %93 = load i32*, i32** %3, align 8
  %94 = load i32*, i32** %3, align 8
  %95 = call i32 @AGP_GET_APERTURE(i32* %94)
  %96 = sdiv i32 %95, 2
  %97 = call i64 @AGP_SET_APERTURE(i32* %93, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  br label %245

100:                                              ; preds = %92
  br label %86

101:                                              ; preds = %91
  %102 = load %struct.agp_gatt*, %struct.agp_gatt** %5, align 8
  %103 = load %struct.agp_nvidia_softc*, %struct.agp_nvidia_softc** %4, align 8
  %104 = getelementptr inbounds %struct.agp_nvidia_softc, %struct.agp_nvidia_softc* %103, i32 0, i32 7
  store %struct.agp_gatt* %102, %struct.agp_gatt** %104, align 8
  %105 = load %struct.agp_nvidia_softc*, %struct.agp_nvidia_softc** %4, align 8
  %106 = getelementptr inbounds %struct.agp_nvidia_softc, %struct.agp_nvidia_softc* %105, i32 0, i32 9
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @rman_get_start(i32 %108)
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* %6, align 4
  %111 = load i32*, i32** %3, align 8
  %112 = call i32 @AGP_GET_APERTURE(i32* %111)
  %113 = add nsw i32 %110, %112
  %114 = sub nsw i32 %113, 1
  store i32 %114, i32* %7, align 4
  %115 = load %struct.agp_nvidia_softc*, %struct.agp_nvidia_softc** %4, align 8
  %116 = getelementptr inbounds %struct.agp_nvidia_softc, %struct.agp_nvidia_softc* %115, i32 0, i32 6
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* @AGP_NVIDIA_2_APBASE, align 4
  %119 = load i32, i32* %6, align 4
  %120 = call i32 @pci_write_config(i32* %117, i32 %118, i32 %119, i32 4)
  %121 = load %struct.agp_nvidia_softc*, %struct.agp_nvidia_softc** %4, align 8
  %122 = getelementptr inbounds %struct.agp_nvidia_softc, %struct.agp_nvidia_softc* %121, i32 0, i32 6
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* @AGP_NVIDIA_2_APLIMIT, align 4
  %125 = load i32, i32* %7, align 4
  %126 = call i32 @pci_write_config(i32* %123, i32 %124, i32 %125, i32 4)
  %127 = load %struct.agp_nvidia_softc*, %struct.agp_nvidia_softc** %4, align 8
  %128 = getelementptr inbounds %struct.agp_nvidia_softc, %struct.agp_nvidia_softc* %127, i32 0, i32 8
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* @AGP_NVIDIA_3_APBASE, align 4
  %131 = load i32, i32* %6, align 4
  %132 = call i32 @pci_write_config(i32* %129, i32 %130, i32 %131, i32 4)
  %133 = load %struct.agp_nvidia_softc*, %struct.agp_nvidia_softc** %4, align 8
  %134 = getelementptr inbounds %struct.agp_nvidia_softc, %struct.agp_nvidia_softc* %133, i32 0, i32 8
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* @AGP_NVIDIA_3_APLIMIT, align 4
  %137 = load i32, i32* %7, align 4
  %138 = call i32 @pci_write_config(i32* %135, i32 %136, i32 %137, i32 4)
  %139 = load i32, i32* %6, align 4
  %140 = load i32*, i32** %3, align 8
  %141 = call i32 @AGP_GET_APERTURE(i32* %140)
  %142 = call i32 @nvidia_init_iorr(i32 %139, i32 %141)
  store i32 %142, i32* %11, align 4
  %143 = load i32, i32* %11, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %101
  %146 = load i32*, i32** %3, align 8
  %147 = call i32 @device_printf(i32* %146, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %245

148:                                              ; preds = %101
  %149 = load i32*, i32** %3, align 8
  %150 = call i32 @AGP_GET_APERTURE(i32* %149)
  %151 = sdiv i32 %150, 1024
  %152 = sdiv i32 %151, 1024
  store i32 %152, i32* %9, align 4
  %153 = load i32, i32* %9, align 4
  %154 = sdiv i32 %153, 64
  %155 = load %struct.agp_nvidia_softc*, %struct.agp_nvidia_softc** %4, align 8
  %156 = getelementptr inbounds %struct.agp_nvidia_softc, %struct.agp_nvidia_softc* %155, i32 0, i32 2
  store i32 %154, i32* %156, align 8
  %157 = load i32, i32* %9, align 4
  %158 = icmp eq i32 %157, 32
  br i1 %158, label %159, label %160

159:                                              ; preds = %148
  br label %164

160:                                              ; preds = %148
  %161 = load i32, i32* %9, align 4
  %162 = mul nsw i32 %161, 1024
  %163 = sdiv i32 %162, 4
  br label %164

164:                                              ; preds = %160, %159
  %165 = phi i32 [ 16384, %159 ], [ %163, %160 ]
  %166 = load %struct.agp_nvidia_softc*, %struct.agp_nvidia_softc** %4, align 8
  %167 = getelementptr inbounds %struct.agp_nvidia_softc, %struct.agp_nvidia_softc* %166, i32 0, i32 3
  store i32 %165, i32* %167, align 4
  %168 = load %struct.agp_nvidia_softc*, %struct.agp_nvidia_softc** %4, align 8
  %169 = getelementptr inbounds %struct.agp_nvidia_softc, %struct.agp_nvidia_softc* %168, i32 0, i32 4
  store i32 0, i32* %169, align 8
  %170 = load %struct.agp_nvidia_softc*, %struct.agp_nvidia_softc** %4, align 8
  %171 = getelementptr inbounds %struct.agp_nvidia_softc, %struct.agp_nvidia_softc* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %192

174:                                              ; preds = %164
  %175 = load %struct.agp_nvidia_softc*, %struct.agp_nvidia_softc** %4, align 8
  %176 = getelementptr inbounds %struct.agp_nvidia_softc, %struct.agp_nvidia_softc* %175, i32 0, i32 2
  store i32 1, i32* %176, align 8
  %177 = load i32, i32* %9, align 4
  %178 = sdiv i32 64, %177
  %179 = load %struct.agp_nvidia_softc*, %struct.agp_nvidia_softc** %4, align 8
  %180 = getelementptr inbounds %struct.agp_nvidia_softc, %struct.agp_nvidia_softc* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = sdiv i32 %181, %178
  store i32 %182, i32* %180, align 4
  %183 = load i32, i32* %6, align 4
  %184 = and i32 %183, 67108863
  %185 = load i32*, i32** %3, align 8
  %186 = call i32 @AGP_GET_APERTURE(i32* %185)
  %187 = call i32 @rounddown2(i32 %184, i32 %186)
  %188 = load i32, i32* @PAGE_SIZE, align 4
  %189 = sdiv i32 %187, %188
  %190 = load %struct.agp_nvidia_softc*, %struct.agp_nvidia_softc** %4, align 8
  %191 = getelementptr inbounds %struct.agp_nvidia_softc, %struct.agp_nvidia_softc* %190, i32 0, i32 4
  store i32 %189, i32* %191, align 8
  br label %192

192:                                              ; preds = %174, %164
  store i32 0, i32* %10, align 4
  br label %193

193:                                              ; preds = %217, %192
  %194 = load i32, i32* %10, align 4
  %195 = icmp slt i32 %194, 8
  br i1 %195, label %196, label %220

196:                                              ; preds = %193
  %197 = load %struct.agp_nvidia_softc*, %struct.agp_nvidia_softc** %4, align 8
  %198 = getelementptr inbounds %struct.agp_nvidia_softc, %struct.agp_nvidia_softc* %197, i32 0, i32 6
  %199 = load i32*, i32** %198, align 8
  %200 = load i32, i32* %10, align 4
  %201 = call i32 @AGP_NVIDIA_2_ATTBASE(i32 %200)
  %202 = load %struct.agp_nvidia_softc*, %struct.agp_nvidia_softc** %4, align 8
  %203 = getelementptr inbounds %struct.agp_nvidia_softc, %struct.agp_nvidia_softc* %202, i32 0, i32 7
  %204 = load %struct.agp_gatt*, %struct.agp_gatt** %203, align 8
  %205 = getelementptr inbounds %struct.agp_gatt, %struct.agp_gatt* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* %10, align 4
  %208 = load %struct.agp_nvidia_softc*, %struct.agp_nvidia_softc** %4, align 8
  %209 = getelementptr inbounds %struct.agp_nvidia_softc, %struct.agp_nvidia_softc* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = srem i32 %207, %210
  %212 = mul nsw i32 %211, 64
  %213 = mul nsw i32 %212, 1024
  %214 = add nsw i32 %206, %213
  %215 = or i32 %214, 1
  %216 = call i32 @pci_write_config(i32* %199, i32 %201, i32 %215, i32 4)
  br label %217

217:                                              ; preds = %196
  %218 = load i32, i32* %10, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %10, align 4
  br label %193

220:                                              ; preds = %193
  %221 = load %struct.agp_nvidia_softc*, %struct.agp_nvidia_softc** %4, align 8
  %222 = getelementptr inbounds %struct.agp_nvidia_softc, %struct.agp_nvidia_softc* %221, i32 0, i32 6
  %223 = load i32*, i32** %222, align 8
  %224 = load i32, i32* @AGP_NVIDIA_2_GARTCTRL, align 4
  %225 = call i32 @pci_read_config(i32* %223, i32 %224, i32 4)
  store i32 %225, i32* %8, align 4
  %226 = load %struct.agp_nvidia_softc*, %struct.agp_nvidia_softc** %4, align 8
  %227 = getelementptr inbounds %struct.agp_nvidia_softc, %struct.agp_nvidia_softc* %226, i32 0, i32 6
  %228 = load i32*, i32** %227, align 8
  %229 = load i32, i32* @AGP_NVIDIA_2_GARTCTRL, align 4
  %230 = load i32, i32* %8, align 4
  %231 = or i32 %230, 17
  %232 = call i32 @pci_write_config(i32* %228, i32 %229, i32 %231, i32 4)
  %233 = load %struct.agp_nvidia_softc*, %struct.agp_nvidia_softc** %4, align 8
  %234 = getelementptr inbounds %struct.agp_nvidia_softc, %struct.agp_nvidia_softc* %233, i32 0, i32 5
  %235 = load i32*, i32** %234, align 8
  %236 = load i32, i32* @AGP_NVIDIA_0_APSIZE, align 4
  %237 = call i32 @pci_read_config(i32* %235, i32 %236, i32 4)
  store i32 %237, i32* %8, align 4
  %238 = load %struct.agp_nvidia_softc*, %struct.agp_nvidia_softc** %4, align 8
  %239 = getelementptr inbounds %struct.agp_nvidia_softc, %struct.agp_nvidia_softc* %238, i32 0, i32 5
  %240 = load i32*, i32** %239, align 8
  %241 = load i32, i32* @AGP_NVIDIA_0_APSIZE, align 4
  %242 = load i32, i32* %8, align 4
  %243 = or i32 %242, 256
  %244 = call i32 @pci_write_config(i32* %240, i32 %241, i32 %243, i32 4)
  store i32 0, i32* %2, align 4
  br label %249

245:                                              ; preds = %145, %99
  %246 = load i32*, i32** %3, align 8
  %247 = call i32 @agp_generic_detach(i32* %246)
  %248 = load i32, i32* @ENOMEM, align 4
  store i32 %248, i32* %2, align 4
  br label %249

249:                                              ; preds = %245, %220, %79, %70, %55, %40, %22
  %250 = load i32, i32* %2, align 4
  ret i32 %250
}

declare dso_local %struct.agp_nvidia_softc* @device_get_softc(i32*) #1

declare dso_local i32 @pci_get_device(i32*) #1

declare dso_local i32 @device_printf(i32*, i8*) #1

declare dso_local i8* @pci_find_bsf(i32, i32, i32) #1

declare dso_local i32 @pci_get_bus(i32*) #1

declare dso_local i32 @agp_generic_attach(i32*) #1

declare dso_local i32 @AGP_GET_APERTURE(i32*) #1

declare dso_local %struct.agp_gatt* @agp_alloc_gatt(i32*) #1

declare dso_local i64 @AGP_SET_APERTURE(i32*, i32) #1

declare dso_local i32 @rman_get_start(i32) #1

declare dso_local i32 @pci_write_config(i32*, i32, i32, i32) #1

declare dso_local i32 @nvidia_init_iorr(i32, i32) #1

declare dso_local i32 @rounddown2(i32, i32) #1

declare dso_local i32 @AGP_NVIDIA_2_ATTBASE(i32) #1

declare dso_local i32 @pci_read_config(i32*, i32, i32) #1

declare dso_local i32 @agp_generic_detach(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
