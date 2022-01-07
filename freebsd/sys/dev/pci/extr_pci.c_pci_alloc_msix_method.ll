; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_alloc_msix_method.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_alloc_msix_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_devinfo = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i32, i64, i32, i64, i32, i32, i32, %struct.TYPE_8__*, %struct.TYPE_7__*, i32*, i32* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.resource_list_entry = type { i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@pci_do_msix = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [56 x i8] c"attempting to allocate %d MSI-X vectors (%d supported)\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"using IRQ %ju for MSI-X\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"using IRQs %ju\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"-%d\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c",%ju\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c" for MSI-X\0A\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@PCIM_MSIXCTRL_MSIX_ENABLE = common dso_local global i32 0, align 4
@PCIR_MSIX_CTRL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_alloc_msix_method(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.pci_devinfo*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.resource_list_entry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call %struct.pci_devinfo* @device_get_ivars(i32 %17)
  store %struct.pci_devinfo* %18, %struct.pci_devinfo** %8, align 8
  %19 = load %struct.pci_devinfo*, %struct.pci_devinfo** %8, align 8
  %20 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %19, i32 0, i32 1
  store %struct.TYPE_10__* %20, %struct.TYPE_10__** %9, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %4, align 4
  br label %374

26:                                               ; preds = %3
  %27 = load %struct.pci_devinfo*, %struct.pci_devinfo** %8, align 8
  %28 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %27, i32 0, i32 0
  %29 = load i32, i32* @SYS_RES_IRQ, align 4
  %30 = call %struct.resource_list_entry* @resource_list_find(i32* %28, i32 %29, i32 0)
  store %struct.resource_list_entry* %30, %struct.resource_list_entry** %10, align 8
  %31 = load %struct.resource_list_entry*, %struct.resource_list_entry** %10, align 8
  %32 = icmp ne %struct.resource_list_entry* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %26
  %34 = load %struct.resource_list_entry*, %struct.resource_list_entry** %10, align 8
  %35 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @ENXIO, align 4
  store i32 %39, i32* %4, align 4
  br label %374

40:                                               ; preds = %33, %26
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46, %40
  %53 = load i32, i32* @ENXIO, align 4
  store i32 %53, i32* %4, align 4
  br label %374

54:                                               ; preds = %46
  %55 = call i64 (...) @pci_msix_blacklisted()
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i32, i32* @ENXIO, align 4
  store i32 %58, i32* %4, align 4
  br label %374

59:                                               ; preds = %54
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %59
  %66 = load i32, i32* @pci_do_msix, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %65, %59
  %69 = load i32, i32* @ENODEV, align 4
  store i32 %69, i32* %4, align 4
  br label %374

70:                                               ; preds = %65
  %71 = load %struct.pci_devinfo*, %struct.pci_devinfo** %8, align 8
  %72 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %71, i32 0, i32 0
  %73 = load i32, i32* @SYS_RES_MEMORY, align 4
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call %struct.resource_list_entry* @resource_list_find(i32* %72, i32 %73, i32 %77)
  store %struct.resource_list_entry* %78, %struct.resource_list_entry** %10, align 8
  %79 = load %struct.resource_list_entry*, %struct.resource_list_entry** %10, align 8
  %80 = icmp eq %struct.resource_list_entry* %79, null
  br i1 %80, label %94, label %81

81:                                               ; preds = %70
  %82 = load %struct.resource_list_entry*, %struct.resource_list_entry** %10, align 8
  %83 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %94, label %86

86:                                               ; preds = %81
  %87 = load %struct.resource_list_entry*, %struct.resource_list_entry** %10, align 8
  %88 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @rman_get_flags(i32* %89)
  %91 = load i32, i32* @RF_ACTIVE, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %86, %81, %70
  %95 = load i32, i32* @ENXIO, align 4
  store i32 %95, i32* %4, align 4
  br label %374

96:                                               ; preds = %86
  %97 = load %struct.resource_list_entry*, %struct.resource_list_entry** %10, align 8
  %98 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 10
  store i32* %99, i32** %102, align 8
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = sext i32 %110 to i64
  %112 = icmp ne i64 %106, %111
  br i1 %112, label %113, label %141

113:                                              ; preds = %96
  %114 = load %struct.pci_devinfo*, %struct.pci_devinfo** %8, align 8
  %115 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %114, i32 0, i32 0
  %116 = load i32, i32* @SYS_RES_MEMORY, align 4
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = trunc i64 %120 to i32
  %122 = call %struct.resource_list_entry* @resource_list_find(i32* %115, i32 %116, i32 %121)
  store %struct.resource_list_entry* %122, %struct.resource_list_entry** %10, align 8
  %123 = load %struct.resource_list_entry*, %struct.resource_list_entry** %10, align 8
  %124 = icmp eq %struct.resource_list_entry* %123, null
  br i1 %124, label %138, label %125

125:                                              ; preds = %113
  %126 = load %struct.resource_list_entry*, %struct.resource_list_entry** %10, align 8
  %127 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = icmp eq i32* %128, null
  br i1 %129, label %138, label %130

130:                                              ; preds = %125
  %131 = load %struct.resource_list_entry*, %struct.resource_list_entry** %10, align 8
  %132 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  %134 = call i32 @rman_get_flags(i32* %133)
  %135 = load i32, i32* @RF_ACTIVE, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %140, label %138

138:                                              ; preds = %130, %125, %113
  %139 = load i32, i32* @ENXIO, align 4
  store i32 %139, i32* %4, align 4
  br label %374

140:                                              ; preds = %130
  br label %141

141:                                              ; preds = %140, %96
  %142 = load %struct.resource_list_entry*, %struct.resource_list_entry** %10, align 8
  %143 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 9
  store i32* %144, i32** %147, align 8
  %148 = load i64, i64* @bootverbose, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %159

150:                                              ; preds = %141
  %151 = load i32, i32* %6, align 4
  %152 = load i32*, i32** %7, align 8
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 8
  %158 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %151, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %153, i32 %157)
  br label %159

159:                                              ; preds = %150, %141
  %160 = load i32*, i32** %7, align 8
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @min(i32 %161, i32 %165)
  store i32 %166, i32* %15, align 4
  store i32 0, i32* %13, align 4
  br label %167

167:                                              ; preds = %193, %159
  %168 = load i32, i32* %13, align 4
  %169 = load i32, i32* %15, align 4
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %171, label %196

171:                                              ; preds = %167
  %172 = load i32, i32* %5, align 4
  %173 = call i32 @device_get_parent(i32 %172)
  %174 = load i32, i32* %6, align 4
  %175 = call i32 @PCIB_ALLOC_MSIX(i32 %173, i32 %174, i32* %14)
  store i32 %175, i32* %12, align 4
  %176 = load i32, i32* %12, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %184

178:                                              ; preds = %171
  %179 = load i32, i32* %13, align 4
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %178
  %182 = load i32, i32* %12, align 4
  store i32 %182, i32* %4, align 4
  br label %374

183:                                              ; preds = %178
  br label %196

184:                                              ; preds = %171
  %185 = load %struct.pci_devinfo*, %struct.pci_devinfo** %8, align 8
  %186 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %185, i32 0, i32 0
  %187 = load i32, i32* @SYS_RES_IRQ, align 4
  %188 = load i32, i32* %13, align 4
  %189 = add nsw i32 %188, 1
  %190 = load i32, i32* %14, align 4
  %191 = load i32, i32* %14, align 4
  %192 = call i32 @resource_list_add(i32* %186, i32 %187, i32 %189, i32 %190, i32 %191, i32 1)
  br label %193

193:                                              ; preds = %184
  %194 = load i32, i32* %13, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %13, align 4
  br label %167

196:                                              ; preds = %183, %167
  %197 = load i32, i32* %13, align 4
  store i32 %197, i32* %11, align 4
  %198 = load i64, i64* @bootverbose, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %268

200:                                              ; preds = %196
  %201 = load %struct.pci_devinfo*, %struct.pci_devinfo** %8, align 8
  %202 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %201, i32 0, i32 0
  %203 = load i32, i32* @SYS_RES_IRQ, align 4
  %204 = call %struct.resource_list_entry* @resource_list_find(i32* %202, i32 %203, i32 1)
  store %struct.resource_list_entry* %204, %struct.resource_list_entry** %10, align 8
  %205 = load i32, i32* %11, align 4
  %206 = icmp eq i32 %205, 1
  br i1 %206, label %207, label %213

207:                                              ; preds = %200
  %208 = load i32, i32* %6, align 4
  %209 = load %struct.resource_list_entry*, %struct.resource_list_entry** %10, align 8
  %210 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %208, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %211)
  br label %267

213:                                              ; preds = %200
  %214 = load i32, i32* %6, align 4
  %215 = load %struct.resource_list_entry*, %struct.resource_list_entry** %10, align 8
  %216 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %214, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %217)
  %219 = load %struct.resource_list_entry*, %struct.resource_list_entry** %10, align 8
  %220 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  store i32 %221, i32* %14, align 4
  store i32 0, i32* %16, align 4
  store i32 1, i32* %13, align 4
  br label %222

222:                                              ; preds = %256, %213
  %223 = load i32, i32* %13, align 4
  %224 = load i32, i32* %11, align 4
  %225 = icmp slt i32 %223, %224
  br i1 %225, label %226, label %259

226:                                              ; preds = %222
  %227 = load %struct.pci_devinfo*, %struct.pci_devinfo** %8, align 8
  %228 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %227, i32 0, i32 0
  %229 = load i32, i32* @SYS_RES_IRQ, align 4
  %230 = load i32, i32* %13, align 4
  %231 = add nsw i32 %230, 1
  %232 = call %struct.resource_list_entry* @resource_list_find(i32* %228, i32 %229, i32 %231)
  store %struct.resource_list_entry* %232, %struct.resource_list_entry** %10, align 8
  %233 = load %struct.resource_list_entry*, %struct.resource_list_entry** %10, align 8
  %234 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* %14, align 4
  %237 = add nsw i32 %236, 1
  %238 = icmp eq i32 %235, %237
  br i1 %238, label %239, label %242

239:                                              ; preds = %226
  store i32 1, i32* %16, align 4
  %240 = load i32, i32* %14, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %14, align 4
  br label %256

242:                                              ; preds = %226
  %243 = load i32, i32* %16, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %248

245:                                              ; preds = %242
  %246 = load i32, i32* %14, align 4
  %247 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %246)
  store i32 0, i32* %16, align 4
  br label %248

248:                                              ; preds = %245, %242
  %249 = load %struct.resource_list_entry*, %struct.resource_list_entry** %10, align 8
  %250 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %251)
  %253 = load %struct.resource_list_entry*, %struct.resource_list_entry** %10, align 8
  %254 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  store i32 %255, i32* %14, align 4
  br label %256

256:                                              ; preds = %248, %239
  %257 = load i32, i32* %13, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %13, align 4
  br label %222

259:                                              ; preds = %222
  %260 = load i32, i32* %16, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %265

262:                                              ; preds = %259
  %263 = load i32, i32* %14, align 4
  %264 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %263)
  br label %265

265:                                              ; preds = %262, %259
  %266 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  br label %267

267:                                              ; preds = %265, %207
  br label %268

268:                                              ; preds = %267, %196
  store i32 0, i32* %13, align 4
  br label %269

269:                                              ; preds = %280, %268
  %270 = load i32, i32* %13, align 4
  %271 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %272 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %272, i32 0, i32 4
  %274 = load i32, i32* %273, align 8
  %275 = icmp slt i32 %270, %274
  br i1 %275, label %276, label %283

276:                                              ; preds = %269
  %277 = load i32, i32* %6, align 4
  %278 = load i32, i32* %13, align 4
  %279 = call i32 @pci_mask_msix(i32 %277, i32 %278)
  br label %280

280:                                              ; preds = %276
  %281 = load i32, i32* %13, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %13, align 4
  br label %269

283:                                              ; preds = %269
  %284 = load i32, i32* %11, align 4
  %285 = sext i32 %284 to i64
  %286 = mul i64 4, %285
  %287 = trunc i64 %286 to i32
  %288 = load i32, i32* @M_DEVBUF, align 4
  %289 = load i32, i32* @M_WAITOK, align 4
  %290 = load i32, i32* @M_ZERO, align 4
  %291 = or i32 %289, %290
  %292 = call i8* @malloc(i32 %287, i32 %288, i32 %291)
  %293 = bitcast i8* %292 to %struct.TYPE_7__*
  %294 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %295 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %295, i32 0, i32 8
  store %struct.TYPE_7__* %293, %struct.TYPE_7__** %296, align 8
  %297 = load i32, i32* %11, align 4
  %298 = sext i32 %297 to i64
  %299 = mul i64 4, %298
  %300 = trunc i64 %299 to i32
  %301 = load i32, i32* @M_DEVBUF, align 4
  %302 = load i32, i32* @M_WAITOK, align 4
  %303 = load i32, i32* @M_ZERO, align 4
  %304 = or i32 %302, %303
  %305 = call i8* @malloc(i32 %300, i32 %301, i32 %304)
  %306 = bitcast i8* %305 to %struct.TYPE_8__*
  %307 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %308 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %308, i32 0, i32 7
  store %struct.TYPE_8__* %306, %struct.TYPE_8__** %309, align 8
  store i32 0, i32* %13, align 4
  br label %310

310:                                              ; preds = %342, %283
  %311 = load i32, i32* %13, align 4
  %312 = load i32, i32* %11, align 4
  %313 = icmp slt i32 %311, %312
  br i1 %313, label %314, label %345

314:                                              ; preds = %310
  %315 = load %struct.pci_devinfo*, %struct.pci_devinfo** %8, align 8
  %316 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %315, i32 0, i32 0
  %317 = load i32, i32* @SYS_RES_IRQ, align 4
  %318 = load i32, i32* %13, align 4
  %319 = add nsw i32 %318, 1
  %320 = call %struct.resource_list_entry* @resource_list_find(i32* %316, i32 %317, i32 %319)
  store %struct.resource_list_entry* %320, %struct.resource_list_entry** %10, align 8
  %321 = load %struct.resource_list_entry*, %struct.resource_list_entry** %10, align 8
  %322 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  %324 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %325 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %324, i32 0, i32 0
  %326 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %325, i32 0, i32 8
  %327 = load %struct.TYPE_7__*, %struct.TYPE_7__** %326, align 8
  %328 = load i32, i32* %13, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %327, i64 %329
  %331 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %330, i32 0, i32 0
  store i32 %323, i32* %331, align 4
  %332 = load i32, i32* %13, align 4
  %333 = add nsw i32 %332, 1
  %334 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %335 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %335, i32 0, i32 7
  %337 = load %struct.TYPE_8__*, %struct.TYPE_8__** %336, align 8
  %338 = load i32, i32* %13, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %337, i64 %339
  %341 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %340, i32 0, i32 0
  store i32 %333, i32* %341, align 4
  br label %342

342:                                              ; preds = %314
  %343 = load i32, i32* %13, align 4
  %344 = add nsw i32 %343, 1
  store i32 %344, i32* %13, align 4
  br label %310

345:                                              ; preds = %310
  %346 = load i32, i32* @PCIM_MSIXCTRL_MSIX_ENABLE, align 4
  %347 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %348 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %347, i32 0, i32 0
  %349 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %348, i32 0, i32 6
  %350 = load i32, i32* %349, align 8
  %351 = or i32 %350, %346
  store i32 %351, i32* %349, align 8
  %352 = load i32, i32* %6, align 4
  %353 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %354 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %353, i32 0, i32 0
  %355 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %354, i32 0, i32 1
  %356 = load i64, i64* %355, align 8
  %357 = load i64, i64* @PCIR_MSIX_CTRL, align 8
  %358 = add nsw i64 %356, %357
  %359 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %360 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %359, i32 0, i32 0
  %361 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %360, i32 0, i32 6
  %362 = load i32, i32* %361, align 8
  %363 = call i32 @pci_write_config(i32 %352, i64 %358, i32 %362, i32 2)
  %364 = load i32, i32* %11, align 4
  %365 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %366 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %365, i32 0, i32 0
  %367 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %366, i32 0, i32 0
  store i32 %364, i32* %367, align 8
  %368 = load i32, i32* %11, align 4
  %369 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %370 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %369, i32 0, i32 0
  %371 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %370, i32 0, i32 5
  store i32 %368, i32* %371, align 4
  %372 = load i32, i32* %11, align 4
  %373 = load i32*, i32** %7, align 8
  store i32 %372, i32* %373, align 4
  store i32 0, i32* %4, align 4
  br label %374

374:                                              ; preds = %345, %181, %138, %94, %68, %57, %52, %38, %24
  %375 = load i32, i32* %4, align 4
  ret i32 %375
}

declare dso_local %struct.pci_devinfo* @device_get_ivars(i32) #1

declare dso_local %struct.resource_list_entry* @resource_list_find(i32*, i32, i32) #1

declare dso_local i64 @pci_msix_blacklisted(...) #1

declare dso_local i32 @rman_get_flags(i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @PCIB_ALLOC_MSIX(i32, i32, i32*) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @resource_list_add(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @pci_mask_msix(i32, i32) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @pci_write_config(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
