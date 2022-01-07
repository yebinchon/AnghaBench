; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_iflib.c_iflib_msix_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_iflib.c_iflib_msix_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i64, i32*, i32, %struct.TYPE_5__, %struct.TYPE_6__*, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i64 }
%struct.TYPE_6__ = type { i32 }

@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"msix_init qsets capped at %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"MSI-X not supported or disabled\0A\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Unable to map MSI-X table\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"intr CPUs: %d queue msgs: %d admincnt: %d\0A\00", align 1
@mp_ncpus = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [62 x i8] c"insufficient number of MSI-X vectors (supported %d, need %d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Using %d RX queues %d TX queues\0A\00", align 1
@.str.6 = private unnamed_addr constant [63 x i8] c"Unable to allocate sufficient MSI-X vectors (got %d, need %d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"Using MSI-X interrupts with %d vectors\0A\00", align 1
@IFLIB_INTR_MSIX = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [46 x i8] c"failed to allocate %d MSI-X vectors, err: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"Using an MSI interrupt\0A\00", align 1
@IFLIB_INTR_MSI = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [26 x i8] c"Using a Legacy interrupt\0A\00", align 1
@IFLIB_INTR_LEGACY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @iflib_msix_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iflib_msix_init(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 7
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %4, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 6
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %5, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 5
  store %struct.TYPE_5__* %25, %struct.TYPE_5__** %6, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %11, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %10, align 4
  %32 = load i64, i64* @bootverbose, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %1
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @imax(i32 %38, i32 %41)
  %43 = call i32 (i32, i8*, ...) @device_printf(i32 %35, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %34, %1
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 5
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %243

50:                                               ; preds = %44
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @pci_msix_count(i32 %51)
  store i32 %52, i32* %12, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %50
  %55 = load i64, i64* @bootverbose, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32, i32* %4, align 4
  %59 = call i32 (i32, i8*, ...) @device_printf(i32 %58, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %60

60:                                               ; preds = %57, %54
  br label %243

61:                                               ; preds = %50
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 5
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, -1
  br i1 %67, label %68, label %83

68:                                               ; preds = %61
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @SYS_RES_MEMORY, align 4
  %71 = load i32, i32* @RF_ACTIVE, align 4
  %72 = call i32* @bus_alloc_resource_any(i32 %69, i32 %70, i32* %8, i32 %71)
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 3
  store i32* %72, i32** %74, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 3
  %77 = load i32*, i32** %76, align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %68
  %80 = load i32, i32* %4, align 4
  %81 = call i32 (i32, i8*, ...) @device_printf(i32 %80, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %243

82:                                               ; preds = %68
  br label %83

83:                                               ; preds = %82, %61
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* %7, align 4
  %89 = sub nsw i32 %87, %88
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* %13, align 4
  store i32 %90, i32* %14, align 4
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 4
  %93 = call i32 @CPU_COUNT(i32* %92)
  %94 = load i32, i32* %14, align 4
  %95 = call i32 @imin(i32 %93, i32 %94)
  store i32 %95, i32* %14, align 4
  %96 = load i64, i64* @bootverbose, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %83
  %99 = load i32, i32* %4, align 4
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 4
  %102 = call i32 @CPU_COUNT(i32* %101)
  %103 = load i32, i32* %13, align 4
  %104 = load i32, i32* %7, align 4
  %105 = call i32 (i32, i8*, ...) @device_printf(i32 %99, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %102, i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %98, %83
  %107 = load i32, i32* %10, align 4
  %108 = icmp sgt i32 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %106
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* %7, align 4
  %113 = sub nsw i32 %111, %112
  %114 = icmp slt i32 %110, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %109
  %116 = load i32, i32* %10, align 4
  store i32 %116, i32* %15, align 4
  br label %119

117:                                              ; preds = %109, %106
  %118 = load i32, i32* %14, align 4
  store i32 %118, i32* %15, align 4
  br label %119

119:                                              ; preds = %117, %115
  %120 = load i32, i32* %15, align 4
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp sgt i32 %120, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %119
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %15, align 4
  br label %129

129:                                              ; preds = %125, %119
  %130 = load i32, i32* %11, align 4
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %129
  %133 = load i32, i32* %11, align 4
  %134 = load i32, i32* %14, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %132
  %137 = load i32, i32* %11, align 4
  store i32 %137, i32* %16, align 4
  br label %140

138:                                              ; preds = %132, %129
  %139 = load i32, i32* @mp_ncpus, align 4
  store i32 %139, i32* %16, align 4
  br label %140

140:                                              ; preds = %138, %136
  %141 = load i32, i32* %16, align 4
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = icmp sgt i32 %141, %144
  br i1 %145, label %146, label %150

146:                                              ; preds = %140
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  store i32 %149, i32* %16, align 4
  br label %150

150:                                              ; preds = %146, %140
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %162

155:                                              ; preds = %150
  %156 = load i32, i32* %15, align 4
  %157 = load i32, i32* %16, align 4
  %158 = call i32 @min(i32 %156, i32 %157)
  store i32 %158, i32* %16, align 4
  %159 = load i32, i32* %15, align 4
  %160 = load i32, i32* %16, align 4
  %161 = call i32 @min(i32 %159, i32 %160)
  store i32 %161, i32* %15, align 4
  br label %162

162:                                              ; preds = %155, %150
  %163 = load i32, i32* %15, align 4
  %164 = load i32, i32* %7, align 4
  %165 = add nsw i32 %163, %164
  store i32 %165, i32* %17, align 4
  %166 = load i32, i32* %12, align 4
  %167 = load i32, i32* %17, align 4
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %169, label %174

169:                                              ; preds = %162
  %170 = load i32, i32* %4, align 4
  %171 = load i32, i32* %12, align 4
  %172 = load i32, i32* %17, align 4
  %173 = call i32 (i32, i8*, ...) @device_printf(i32 %170, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0), i32 %171, i32 %172)
  br label %243

174:                                              ; preds = %162
  %175 = load i32, i32* %4, align 4
  %176 = load i32, i32* %15, align 4
  %177 = load i32, i32* %16, align 4
  %178 = call i32 (i32, i8*, ...) @device_printf(i32 %175, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %176, i32 %177)
  %179 = load i32, i32* %17, align 4
  store i32 %179, i32* %12, align 4
  %180 = load i32, i32* %4, align 4
  %181 = call i32 @pci_alloc_msix(i32 %180, i32* %17)
  store i32 %181, i32* %9, align 4
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %224

183:                                              ; preds = %174
  %184 = load i32, i32* %17, align 4
  %185 = load i32, i32* %12, align 4
  %186 = icmp ne i32 %184, %185
  br i1 %186, label %187, label %207

187:                                              ; preds = %183
  %188 = load i32, i32* %4, align 4
  %189 = load i32, i32* %17, align 4
  %190 = load i32, i32* %12, align 4
  %191 = call i32 (i32, i8*, ...) @device_printf(i32 %188, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.6, i64 0, i64 0), i32 %189, i32 %190)
  %192 = load i32, i32* %4, align 4
  %193 = call i32 @pci_release_msi(i32 %192)
  %194 = load i32, i32* %8, align 4
  %195 = icmp ne i32 %194, -1
  br i1 %195, label %196, label %206

196:                                              ; preds = %187
  %197 = load i32, i32* %4, align 4
  %198 = load i32, i32* @SYS_RES_MEMORY, align 4
  %199 = load i32, i32* %8, align 4
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 3
  %202 = load i32*, i32** %201, align 8
  %203 = call i32 @bus_release_resource(i32 %197, i32 %198, i32 %199, i32* %202)
  %204 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 3
  store i32* null, i32** %205, align 8
  br label %206

206:                                              ; preds = %196, %187
  br label %243

207:                                              ; preds = %183
  %208 = load i32, i32* %4, align 4
  %209 = load i32, i32* %17, align 4
  %210 = call i32 (i32, i8*, ...) @device_printf(i32 %208, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i32 %209)
  %211 = load i32, i32* %17, align 4
  %212 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 3
  store i32 %211, i32* %213, align 4
  %214 = load i32, i32* %15, align 4
  %215 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i32 0, i32 1
  store i32 %214, i32* %216, align 4
  %217 = load i32, i32* %16, align 4
  %218 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 0
  store i32 %217, i32* %219, align 8
  %220 = load i32, i32* @IFLIB_INTR_MSIX, align 4
  %221 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i32 0, i32 4
  store i32 %220, i32* %222, align 8
  %223 = load i32, i32* %17, align 4
  store i32 %223, i32* %2, align 4
  br label %275

224:                                              ; preds = %174
  %225 = load i32, i32* %4, align 4
  %226 = load i32, i32* %17, align 4
  %227 = load i32, i32* %9, align 4
  %228 = call i32 (i32, i8*, ...) @device_printf(i32 %225, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0), i32 %226, i32 %227)
  %229 = load i32, i32* %8, align 4
  %230 = icmp ne i32 %229, -1
  br i1 %230, label %231, label %241

231:                                              ; preds = %224
  %232 = load i32, i32* %4, align 4
  %233 = load i32, i32* @SYS_RES_MEMORY, align 4
  %234 = load i32, i32* %8, align 4
  %235 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %235, i32 0, i32 3
  %237 = load i32*, i32** %236, align 8
  %238 = call i32 @bus_release_resource(i32 %232, i32 %233, i32 %234, i32* %237)
  %239 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %239, i32 0, i32 3
  store i32* null, i32** %240, align 8
  br label %241

241:                                              ; preds = %231, %224
  br label %242

242:                                              ; preds = %241
  br label %243

243:                                              ; preds = %242, %206, %169, %79, %60, %49
  %244 = load i32, i32* %4, align 4
  %245 = call i32 @pci_msi_count(i32 %244)
  store i32 %245, i32* %17, align 4
  %246 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %247 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %246, i32 0, i32 1
  store i32 1, i32* %247, align 4
  %248 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %248, i32 0, i32 0
  store i32 1, i32* %249, align 8
  %250 = load i32, i32* %17, align 4
  %251 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %252 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %251, i32 0, i32 3
  store i32 %250, i32* %252, align 4
  %253 = load i32, i32* %17, align 4
  %254 = icmp eq i32 %253, 1
  br i1 %254, label %255, label %265

255:                                              ; preds = %243
  %256 = load i32, i32* %4, align 4
  %257 = call i64 @pci_alloc_msi(i32 %256, i32* %17)
  %258 = icmp eq i64 %257, 0
  br i1 %258, label %259, label %265

259:                                              ; preds = %255
  %260 = load i32, i32* %4, align 4
  %261 = call i32 (i32, i8*, ...) @device_printf(i32 %260, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  %262 = load i32, i32* @IFLIB_INTR_MSI, align 4
  %263 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %264 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %263, i32 0, i32 4
  store i32 %262, i32* %264, align 8
  br label %273

265:                                              ; preds = %255, %243
  %266 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %267 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %266, i32 0, i32 3
  store i32 1, i32* %267, align 4
  %268 = load i32, i32* %4, align 4
  %269 = call i32 (i32, i8*, ...) @device_printf(i32 %268, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  %270 = load i32, i32* @IFLIB_INTR_LEGACY, align 4
  %271 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %272 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %271, i32 0, i32 4
  store i32 %270, i32* %272, align 8
  br label %273

273:                                              ; preds = %265, %259
  %274 = load i32, i32* %17, align 4
  store i32 %274, i32* %2, align 4
  br label %275

275:                                              ; preds = %273, %207
  %276 = load i32, i32* %2, align 4
  ret i32 %276
}

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @imax(i32, i32) #1

declare dso_local i32 @pci_msix_count(i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @imin(i32, i32) #1

declare dso_local i32 @CPU_COUNT(i32*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @pci_alloc_msix(i32, i32*) #1

declare dso_local i32 @pci_release_msi(i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @pci_msi_count(i32) #1

declare dso_local i64 @pci_alloc_msi(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
