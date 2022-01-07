; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_host_generic_fdt.c_parse_pci_mem_ranges.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_host_generic_fdt.c_parse_pci_mem_ranges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.generic_pcie_core_softc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"#address-cells\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"#size-cells\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"Unexpected number of address or size cells in FDT\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"ranges\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@SPACE_CODE_SHIFT = common dso_local global i32 0, align 4
@SPACE_CODE_MASK = common dso_local global i32 0, align 4
@SPACE_CODE_IO_SPACE = common dso_local global i32 0, align 4
@FLAG_IO = common dso_local global i32 0, align 4
@FLAG_MEM = common dso_local global i32 0, align 4
@MAX_RANGES_TUPLES = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [48 x i8] c"\09PCI addr: 0x%jx, CPU addr: 0x%jx, Size: 0x%jx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.generic_pcie_core_softc*)* @parse_pci_mem_ranges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_pci_mem_ranges(i32 %0, %struct.generic_pcie_core_softc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.generic_pcie_core_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.generic_pcie_core_softc* %1, %struct.generic_pcie_core_softc** %5, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @ofw_bus_get_node(i32 %17)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = call i32 @OF_getencprop(i32 %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %6, i32 4)
  %21 = load i32, i32* %12, align 4
  %22 = call i32 @OF_getencprop(i32 %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* %9, i32 4)
  %23 = load i32, i32* %12, align 4
  %24 = call i32 @OF_parent(i32 %23)
  %25 = call i32 @OF_getencprop(i32 %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %7, i32 4)
  %26 = load i32, i32* %7, align 4
  %27 = icmp sgt i32 %26, 2
  br i1 %27, label %34, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 3
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %9, align 4
  %33 = icmp sgt i32 %32, 2
  br i1 %33, label %34, label %38

34:                                               ; preds = %31, %28, %2
  %35 = load i32, i32* %4, align 4
  %36 = call i32 (i32, i8*, ...) @device_printf(i32 %35, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i32, i32* @ENXIO, align 4
  store i32 %37, i32* %3, align 4
  br label %302

38:                                               ; preds = %31
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @OF_getproplen(i32 %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = udiv i64 %42, 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %44, %45
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = udiv i64 %43, %49
  %51 = trunc i64 %50 to i32
  %52 = load %struct.generic_pcie_core_softc*, %struct.generic_pcie_core_softc** %5, align 8
  %53 = getelementptr inbounds %struct.generic_pcie_core_softc, %struct.generic_pcie_core_softc* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @M_DEVBUF, align 4
  %56 = load i32, i32* @M_WAITOK, align 4
  %57 = call i32* @malloc(i32 %54, i32 %55, i32 %56)
  store i32* %57, i32** %10, align 8
  %58 = load i32, i32* %12, align 4
  %59 = load i32*, i32** %10, align 8
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @OF_getencprop(i32 %58, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32* %59, i32 %60)
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %62

62:                                               ; preds = %226, %38
  %63 = load i32, i32* %13, align 4
  %64 = load %struct.generic_pcie_core_softc*, %struct.generic_pcie_core_softc** %5, align 8
  %65 = getelementptr inbounds %struct.generic_pcie_core_softc, %struct.generic_pcie_core_softc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %229

68:                                               ; preds = %62
  %69 = load i32*, i32** %10, align 8
  %70 = load i32, i32* %14, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %14, align 4
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @SPACE_CODE_SHIFT, align 4
  %76 = ashr i32 %74, %75
  %77 = load i32, i32* @SPACE_CODE_MASK, align 4
  %78 = and i32 %76, %77
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @SPACE_CODE_IO_SPACE, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %93

82:                                               ; preds = %68
  %83 = load i32, i32* @FLAG_IO, align 4
  %84 = load %struct.generic_pcie_core_softc*, %struct.generic_pcie_core_softc** %5, align 8
  %85 = getelementptr inbounds %struct.generic_pcie_core_softc, %struct.generic_pcie_core_softc* %84, i32 0, i32 1
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = load i32, i32* %13, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %83
  store i32 %92, i32* %90, align 4
  br label %104

93:                                               ; preds = %68
  %94 = load i32, i32* @FLAG_MEM, align 4
  %95 = load %struct.generic_pcie_core_softc*, %struct.generic_pcie_core_softc** %5, align 8
  %96 = getelementptr inbounds %struct.generic_pcie_core_softc, %struct.generic_pcie_core_softc* %95, i32 0, i32 1
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = load i32, i32* %13, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %94
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %93, %82
  %105 = load %struct.generic_pcie_core_softc*, %struct.generic_pcie_core_softc** %5, align 8
  %106 = getelementptr inbounds %struct.generic_pcie_core_softc, %struct.generic_pcie_core_softc* %105, i32 0, i32 1
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = load i32, i32* %13, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  store i32 0, i32* %111, align 4
  store i32 0, i32* %15, align 4
  br label %112

112:                                              ; preds = %142, %104
  %113 = load i32, i32* %15, align 4
  %114 = load i32, i32* %6, align 4
  %115 = sub nsw i32 %114, 1
  %116 = icmp slt i32 %113, %115
  br i1 %116, label %117, label %145

117:                                              ; preds = %112
  %118 = load %struct.generic_pcie_core_softc*, %struct.generic_pcie_core_softc** %5, align 8
  %119 = getelementptr inbounds %struct.generic_pcie_core_softc, %struct.generic_pcie_core_softc* %118, i32 0, i32 1
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = load i32, i32* %13, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = shl i32 %125, 32
  store i32 %126, i32* %124, align 4
  %127 = load i32*, i32** %10, align 8
  %128 = load i32, i32* %14, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %14, align 4
  %130 = sext i32 %128 to i64
  %131 = getelementptr inbounds i32, i32* %127, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.generic_pcie_core_softc*, %struct.generic_pcie_core_softc** %5, align 8
  %134 = getelementptr inbounds %struct.generic_pcie_core_softc, %struct.generic_pcie_core_softc* %133, i32 0, i32 1
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = load i32, i32* %13, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = or i32 %140, %132
  store i32 %141, i32* %139, align 4
  br label %142

142:                                              ; preds = %117
  %143 = load i32, i32* %15, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %15, align 4
  br label %112

145:                                              ; preds = %112
  %146 = load %struct.generic_pcie_core_softc*, %struct.generic_pcie_core_softc** %5, align 8
  %147 = getelementptr inbounds %struct.generic_pcie_core_softc, %struct.generic_pcie_core_softc* %146, i32 0, i32 1
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** %147, align 8
  %149 = load i32, i32* %13, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 1
  store i32 0, i32* %152, align 4
  store i32 0, i32* %15, align 4
  br label %153

153:                                              ; preds = %182, %145
  %154 = load i32, i32* %15, align 4
  %155 = load i32, i32* %7, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %185

157:                                              ; preds = %153
  %158 = load %struct.generic_pcie_core_softc*, %struct.generic_pcie_core_softc** %5, align 8
  %159 = getelementptr inbounds %struct.generic_pcie_core_softc, %struct.generic_pcie_core_softc* %158, i32 0, i32 1
  %160 = load %struct.TYPE_2__*, %struct.TYPE_2__** %159, align 8
  %161 = load i32, i32* %13, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = shl i32 %165, 32
  store i32 %166, i32* %164, align 4
  %167 = load i32*, i32** %10, align 8
  %168 = load i32, i32* %14, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %14, align 4
  %170 = sext i32 %168 to i64
  %171 = getelementptr inbounds i32, i32* %167, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.generic_pcie_core_softc*, %struct.generic_pcie_core_softc** %5, align 8
  %174 = getelementptr inbounds %struct.generic_pcie_core_softc, %struct.generic_pcie_core_softc* %173, i32 0, i32 1
  %175 = load %struct.TYPE_2__*, %struct.TYPE_2__** %174, align 8
  %176 = load i32, i32* %13, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = or i32 %180, %172
  store i32 %181, i32* %179, align 4
  br label %182

182:                                              ; preds = %157
  %183 = load i32, i32* %15, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %15, align 4
  br label %153

185:                                              ; preds = %153
  %186 = load %struct.generic_pcie_core_softc*, %struct.generic_pcie_core_softc** %5, align 8
  %187 = getelementptr inbounds %struct.generic_pcie_core_softc, %struct.generic_pcie_core_softc* %186, i32 0, i32 1
  %188 = load %struct.TYPE_2__*, %struct.TYPE_2__** %187, align 8
  %189 = load i32, i32* %13, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 2
  store i32 0, i32* %192, align 4
  store i32 0, i32* %15, align 4
  br label %193

193:                                              ; preds = %222, %185
  %194 = load i32, i32* %15, align 4
  %195 = load i32, i32* %9, align 4
  %196 = icmp slt i32 %194, %195
  br i1 %196, label %197, label %225

197:                                              ; preds = %193
  %198 = load %struct.generic_pcie_core_softc*, %struct.generic_pcie_core_softc** %5, align 8
  %199 = getelementptr inbounds %struct.generic_pcie_core_softc, %struct.generic_pcie_core_softc* %198, i32 0, i32 1
  %200 = load %struct.TYPE_2__*, %struct.TYPE_2__** %199, align 8
  %201 = load i32, i32* %13, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  %206 = shl i32 %205, 32
  store i32 %206, i32* %204, align 4
  %207 = load i32*, i32** %10, align 8
  %208 = load i32, i32* %14, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %14, align 4
  %210 = sext i32 %208 to i64
  %211 = getelementptr inbounds i32, i32* %207, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.generic_pcie_core_softc*, %struct.generic_pcie_core_softc** %5, align 8
  %214 = getelementptr inbounds %struct.generic_pcie_core_softc, %struct.generic_pcie_core_softc* %213, i32 0, i32 1
  %215 = load %struct.TYPE_2__*, %struct.TYPE_2__** %214, align 8
  %216 = load i32, i32* %13, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 4
  %221 = or i32 %220, %212
  store i32 %221, i32* %219, align 4
  br label %222

222:                                              ; preds = %197
  %223 = load i32, i32* %15, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %15, align 4
  br label %193

225:                                              ; preds = %193
  br label %226

226:                                              ; preds = %225
  %227 = load i32, i32* %13, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %13, align 4
  br label %62

229:                                              ; preds = %62
  br label %230

230:                                              ; preds = %256, %229
  %231 = load i32, i32* %13, align 4
  %232 = load i32, i32* @MAX_RANGES_TUPLES, align 4
  %233 = icmp slt i32 %231, %232
  br i1 %233, label %234, label %259

234:                                              ; preds = %230
  %235 = load %struct.generic_pcie_core_softc*, %struct.generic_pcie_core_softc** %5, align 8
  %236 = getelementptr inbounds %struct.generic_pcie_core_softc, %struct.generic_pcie_core_softc* %235, i32 0, i32 1
  %237 = load %struct.TYPE_2__*, %struct.TYPE_2__** %236, align 8
  %238 = load i32, i32* %13, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %237, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %240, i32 0, i32 0
  store i32 0, i32* %241, align 4
  %242 = load %struct.generic_pcie_core_softc*, %struct.generic_pcie_core_softc** %5, align 8
  %243 = getelementptr inbounds %struct.generic_pcie_core_softc, %struct.generic_pcie_core_softc* %242, i32 0, i32 1
  %244 = load %struct.TYPE_2__*, %struct.TYPE_2__** %243, align 8
  %245 = load i32, i32* %13, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %244, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %247, i32 0, i32 1
  store i32 0, i32* %248, align 4
  %249 = load %struct.generic_pcie_core_softc*, %struct.generic_pcie_core_softc** %5, align 8
  %250 = getelementptr inbounds %struct.generic_pcie_core_softc, %struct.generic_pcie_core_softc* %249, i32 0, i32 1
  %251 = load %struct.TYPE_2__*, %struct.TYPE_2__** %250, align 8
  %252 = load i32, i32* %13, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %251, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %254, i32 0, i32 2
  store i32 0, i32* %255, align 4
  br label %256

256:                                              ; preds = %234
  %257 = load i32, i32* %13, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %13, align 4
  br label %230

259:                                              ; preds = %230
  %260 = load i64, i64* @bootverbose, align 8
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %298

262:                                              ; preds = %259
  store i32 0, i32* %16, align 4
  br label %263

263:                                              ; preds = %294, %262
  %264 = load i32, i32* %16, align 4
  %265 = load i32, i32* @MAX_RANGES_TUPLES, align 4
  %266 = icmp slt i32 %264, %265
  br i1 %266, label %267, label %297

267:                                              ; preds = %263
  %268 = load i32, i32* %4, align 4
  %269 = load %struct.generic_pcie_core_softc*, %struct.generic_pcie_core_softc** %5, align 8
  %270 = getelementptr inbounds %struct.generic_pcie_core_softc, %struct.generic_pcie_core_softc* %269, i32 0, i32 1
  %271 = load %struct.TYPE_2__*, %struct.TYPE_2__** %270, align 8
  %272 = load i32, i32* %16, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %271, i64 %273
  %275 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.generic_pcie_core_softc*, %struct.generic_pcie_core_softc** %5, align 8
  %278 = getelementptr inbounds %struct.generic_pcie_core_softc, %struct.generic_pcie_core_softc* %277, i32 0, i32 1
  %279 = load %struct.TYPE_2__*, %struct.TYPE_2__** %278, align 8
  %280 = load i32, i32* %16, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %279, i64 %281
  %283 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 4
  %285 = load %struct.generic_pcie_core_softc*, %struct.generic_pcie_core_softc** %5, align 8
  %286 = getelementptr inbounds %struct.generic_pcie_core_softc, %struct.generic_pcie_core_softc* %285, i32 0, i32 1
  %287 = load %struct.TYPE_2__*, %struct.TYPE_2__** %286, align 8
  %288 = load i32, i32* %16, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %287, i64 %289
  %291 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %290, i32 0, i32 2
  %292 = load i32, i32* %291, align 4
  %293 = call i32 (i32, i8*, ...) @device_printf(i32 %268, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i32 %276, i32 %284, i32 %292)
  br label %294

294:                                              ; preds = %267
  %295 = load i32, i32* %16, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %16, align 4
  br label %263

297:                                              ; preds = %263
  br label %298

298:                                              ; preds = %297, %259
  %299 = load i32*, i32** %10, align 8
  %300 = load i32, i32* @M_DEVBUF, align 4
  %301 = call i32 @free(i32* %299, i32 %300)
  store i32 0, i32* %3, align 4
  br label %302

302:                                              ; preds = %298, %34
  %303 = load i32, i32* %3, align 4
  ret i32 %303
}

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @OF_getencprop(i32, i8*, i32*, i32) #1

declare dso_local i32 @OF_parent(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @OF_getproplen(i32, i8*) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
