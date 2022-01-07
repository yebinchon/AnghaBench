; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/jedec_dimm/extr_jedec_dimm.c_jedec_dimm_capacity.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/jedec_dimm/extr_jedec_dimm.c_jedec_dimm_capacity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jedec_dimm_softc = type { i32, i32, i32 }

@SPD_OFFSET_DDR3_BUS_WIDTH = common dso_local global i32 0, align 4
@SPD_OFFSET_DDR3_DIMM_RANKS = common dso_local global i32 0, align 4
@SPD_OFFSET_DDR3_SDRAM_CAPACITY = common dso_local global i32 0, align 4
@SPD_OFFSET_DDR3_SDRAM_WIDTH = common dso_local global i32 0, align 4
@SPD_OFFSET_DDR4_BUS_WIDTH = common dso_local global i32 0, align 4
@SPD_OFFSET_DDR4_DIMM_RANKS = common dso_local global i32 0, align 4
@SPD_OFFSET_DDR4_SDRAM_CAPACITY = common dso_local global i32 0, align 4
@SPD_OFFSET_DDR4_SDRAM_PKG_TYPE = common dso_local global i32 0, align 4
@SPD_OFFSET_DDR4_SDRAM_WIDTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"unsupported dram_type 0x%02x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to read bus_width: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"failed to read dimm_ranks: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"failed to read sdram_capacity: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"failed to read sdram_width: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"failed to read sdram_pkg_type: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"invalid bus width info\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"invalid DIMM Rank info\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"invalid SDRAM capacity info\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"invalid SDRAM width info\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jedec_dimm_softc*, i32, i32*)* @jedec_dimm_capacity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jedec_dimm_capacity(%struct.jedec_dimm_softc* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.jedec_dimm_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
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
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.jedec_dimm_softc* %0, %struct.jedec_dimm_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %23 = load i32, i32* %5, align 4
  switch i32 %23, label %35 [
    i32 129, label %24
    i32 128, label %29
  ]

24:                                               ; preds = %3
  %25 = load i32, i32* @SPD_OFFSET_DDR3_BUS_WIDTH, align 4
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* @SPD_OFFSET_DDR3_DIMM_RANKS, align 4
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* @SPD_OFFSET_DDR3_SDRAM_CAPACITY, align 4
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* @SPD_OFFSET_DDR3_SDRAM_WIDTH, align 4
  store i32 %28, i32* %16, align 4
  br label %42

29:                                               ; preds = %3
  %30 = load i32, i32* @SPD_OFFSET_DDR4_BUS_WIDTH, align 4
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* @SPD_OFFSET_DDR4_DIMM_RANKS, align 4
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* @SPD_OFFSET_DDR4_SDRAM_CAPACITY, align 4
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* @SPD_OFFSET_DDR4_SDRAM_PKG_TYPE, align 4
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* @SPD_OFFSET_DDR4_SDRAM_WIDTH, align 4
  store i32 %34, i32* %16, align 4
  br label %42

35:                                               ; preds = %3
  %36 = load %struct.jedec_dimm_softc*, %struct.jedec_dimm_softc** %4, align 8
  %37 = getelementptr inbounds %struct.jedec_dimm_softc, %struct.jedec_dimm_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 (i32, i8*, ...) @device_printf(i32 %38, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @EINVAL, align 4
  store i32 %41, i32* %22, align 4
  br label %256

42:                                               ; preds = %29, %24
  %43 = load %struct.jedec_dimm_softc*, %struct.jedec_dimm_softc** %4, align 8
  %44 = getelementptr inbounds %struct.jedec_dimm_softc, %struct.jedec_dimm_softc* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.jedec_dimm_softc*, %struct.jedec_dimm_softc** %4, align 8
  %47 = getelementptr inbounds %struct.jedec_dimm_softc, %struct.jedec_dimm_softc* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @smbus_readb(i32 %45, i32 %48, i32 %49, i32* %7)
  store i32 %50, i32* %22, align 4
  %51 = load i32, i32* %22, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %42
  %54 = load %struct.jedec_dimm_softc*, %struct.jedec_dimm_softc** %4, align 8
  %55 = getelementptr inbounds %struct.jedec_dimm_softc, %struct.jedec_dimm_softc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %22, align 4
  %58 = call i32 (i32, i8*, ...) @device_printf(i32 %56, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  br label %256

59:                                               ; preds = %42
  %60 = load %struct.jedec_dimm_softc*, %struct.jedec_dimm_softc** %4, align 8
  %61 = getelementptr inbounds %struct.jedec_dimm_softc, %struct.jedec_dimm_softc* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.jedec_dimm_softc*, %struct.jedec_dimm_softc** %4, align 8
  %64 = getelementptr inbounds %struct.jedec_dimm_softc, %struct.jedec_dimm_softc* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @smbus_readb(i32 %62, i32 %65, i32 %66, i32* %9)
  store i32 %67, i32* %22, align 4
  %68 = load i32, i32* %22, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %59
  %71 = load %struct.jedec_dimm_softc*, %struct.jedec_dimm_softc** %4, align 8
  %72 = getelementptr inbounds %struct.jedec_dimm_softc, %struct.jedec_dimm_softc* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %22, align 4
  %75 = call i32 (i32, i8*, ...) @device_printf(i32 %73, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  br label %256

76:                                               ; preds = %59
  %77 = load %struct.jedec_dimm_softc*, %struct.jedec_dimm_softc** %4, align 8
  %78 = getelementptr inbounds %struct.jedec_dimm_softc, %struct.jedec_dimm_softc* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.jedec_dimm_softc*, %struct.jedec_dimm_softc** %4, align 8
  %81 = getelementptr inbounds %struct.jedec_dimm_softc, %struct.jedec_dimm_softc* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %12, align 4
  %84 = call i32 @smbus_readb(i32 %79, i32 %82, i32 %83, i32* %11)
  store i32 %84, i32* %22, align 4
  %85 = load i32, i32* %22, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %76
  %88 = load %struct.jedec_dimm_softc*, %struct.jedec_dimm_softc** %4, align 8
  %89 = getelementptr inbounds %struct.jedec_dimm_softc, %struct.jedec_dimm_softc* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %22, align 4
  %92 = call i32 (i32, i8*, ...) @device_printf(i32 %90, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %91)
  br label %256

93:                                               ; preds = %76
  %94 = load %struct.jedec_dimm_softc*, %struct.jedec_dimm_softc** %4, align 8
  %95 = getelementptr inbounds %struct.jedec_dimm_softc, %struct.jedec_dimm_softc* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.jedec_dimm_softc*, %struct.jedec_dimm_softc** %4, align 8
  %98 = getelementptr inbounds %struct.jedec_dimm_softc, %struct.jedec_dimm_softc* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %16, align 4
  %101 = call i32 @smbus_readb(i32 %96, i32 %99, i32 %100, i32* %15)
  store i32 %101, i32* %22, align 4
  %102 = load i32, i32* %22, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %93
  %105 = load %struct.jedec_dimm_softc*, %struct.jedec_dimm_softc** %4, align 8
  %106 = getelementptr inbounds %struct.jedec_dimm_softc, %struct.jedec_dimm_softc* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %22, align 4
  %109 = call i32 (i32, i8*, ...) @device_printf(i32 %107, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %108)
  br label %256

110:                                              ; preds = %93
  %111 = load i32, i32* %5, align 4
  %112 = icmp eq i32 %111, 128
  br i1 %112, label %113, label %131

113:                                              ; preds = %110
  %114 = load %struct.jedec_dimm_softc*, %struct.jedec_dimm_softc** %4, align 8
  %115 = getelementptr inbounds %struct.jedec_dimm_softc, %struct.jedec_dimm_softc* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.jedec_dimm_softc*, %struct.jedec_dimm_softc** %4, align 8
  %118 = getelementptr inbounds %struct.jedec_dimm_softc, %struct.jedec_dimm_softc* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %14, align 4
  %121 = call i32 @smbus_readb(i32 %116, i32 %119, i32 %120, i32* %13)
  store i32 %121, i32* %22, align 4
  %122 = load i32, i32* %22, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %113
  %125 = load %struct.jedec_dimm_softc*, %struct.jedec_dimm_softc** %4, align 8
  %126 = getelementptr inbounds %struct.jedec_dimm_softc, %struct.jedec_dimm_softc* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %22, align 4
  %129 = call i32 (i32, i8*, ...) @device_printf(i32 %127, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %128)
  br label %256

130:                                              ; preds = %113
  br label %131

131:                                              ; preds = %130, %110
  %132 = load i32, i32* %7, align 4
  %133 = and i32 %132, 7
  store i32 %133, i32* %7, align 4
  %134 = load i32, i32* %7, align 4
  %135 = icmp sle i32 %134, 3
  br i1 %135, label %136, label %141

136:                                              ; preds = %131
  %137 = load i32, i32* %7, align 4
  %138 = shl i32 1, %137
  store i32 %138, i32* %17, align 4
  %139 = load i32, i32* %17, align 4
  %140 = mul nsw i32 %139, 8
  store i32 %140, i32* %17, align 4
  br label %147

141:                                              ; preds = %131
  %142 = load %struct.jedec_dimm_softc*, %struct.jedec_dimm_softc** %4, align 8
  %143 = getelementptr inbounds %struct.jedec_dimm_softc, %struct.jedec_dimm_softc* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 (i32, i8*, ...) @device_printf(i32 %144, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %146 = load i32, i32* @EINVAL, align 4
  store i32 %146, i32* %22, align 4
  br label %256

147:                                              ; preds = %136
  %148 = load i32, i32* %9, align 4
  %149 = ashr i32 %148, 3
  store i32 %149, i32* %9, align 4
  %150 = load i32, i32* %9, align 4
  %151 = and i32 %150, 7
  store i32 %151, i32* %9, align 4
  %152 = load i32, i32* %9, align 4
  %153 = icmp sle i32 %152, 7
  br i1 %153, label %154, label %157

154:                                              ; preds = %147
  %155 = load i32, i32* %9, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %18, align 4
  br label %163

157:                                              ; preds = %147
  %158 = load %struct.jedec_dimm_softc*, %struct.jedec_dimm_softc** %4, align 8
  %159 = getelementptr inbounds %struct.jedec_dimm_softc, %struct.jedec_dimm_softc* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 (i32, i8*, ...) @device_printf(i32 %160, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %162 = load i32, i32* @EINVAL, align 4
  store i32 %162, i32* %22, align 4
  br label %256

163:                                              ; preds = %154
  %164 = load i32, i32* %9, align 4
  %165 = icmp sge i32 %164, 4
  br i1 %165, label %166, label %175

166:                                              ; preds = %163
  %167 = load i32, i32* %5, align 4
  %168 = icmp ne i32 %167, 128
  br i1 %168, label %169, label %175

169:                                              ; preds = %166
  %170 = load %struct.jedec_dimm_softc*, %struct.jedec_dimm_softc** %4, align 8
  %171 = getelementptr inbounds %struct.jedec_dimm_softc, %struct.jedec_dimm_softc* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32 (i32, i8*, ...) @device_printf(i32 %172, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %174 = load i32, i32* @EINVAL, align 4
  store i32 %174, i32* %22, align 4
  br label %256

175:                                              ; preds = %166, %163
  %176 = load i32, i32* %11, align 4
  %177 = and i32 %176, 15
  store i32 %177, i32* %11, align 4
  %178 = load i32, i32* %11, align 4
  %179 = icmp sle i32 %178, 7
  br i1 %179, label %180, label %185

180:                                              ; preds = %175
  %181 = load i32, i32* %11, align 4
  %182 = shl i32 1, %181
  store i32 %182, i32* %19, align 4
  %183 = load i32, i32* %19, align 4
  %184 = mul nsw i32 %183, 256
  store i32 %184, i32* %19, align 4
  br label %201

185:                                              ; preds = %175
  %186 = load i32, i32* %11, align 4
  %187 = icmp sle i32 %186, 9
  br i1 %187, label %188, label %194

188:                                              ; preds = %185
  %189 = load i32, i32* %11, align 4
  %190 = sub nsw i32 %189, 8
  %191 = shl i32 12, %190
  store i32 %191, i32* %19, align 4
  %192 = load i32, i32* %19, align 4
  %193 = mul nsw i32 %192, 1024
  store i32 %193, i32* %19, align 4
  br label %200

194:                                              ; preds = %185
  %195 = load %struct.jedec_dimm_softc*, %struct.jedec_dimm_softc** %4, align 8
  %196 = getelementptr inbounds %struct.jedec_dimm_softc, %struct.jedec_dimm_softc* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = call i32 (i32, i8*, ...) @device_printf(i32 %197, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  %199 = load i32, i32* @EINVAL, align 4
  store i32 %199, i32* %22, align 4
  br label %256

200:                                              ; preds = %188
  br label %201

201:                                              ; preds = %200, %180
  %202 = load i32, i32* %11, align 4
  %203 = icmp sge i32 %202, 7
  br i1 %203, label %204, label %213

204:                                              ; preds = %201
  %205 = load i32, i32* %5, align 4
  %206 = icmp ne i32 %205, 128
  br i1 %206, label %207, label %213

207:                                              ; preds = %204
  %208 = load %struct.jedec_dimm_softc*, %struct.jedec_dimm_softc** %4, align 8
  %209 = getelementptr inbounds %struct.jedec_dimm_softc, %struct.jedec_dimm_softc* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = call i32 (i32, i8*, ...) @device_printf(i32 %210, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  %212 = load i32, i32* @EINVAL, align 4
  store i32 %212, i32* %22, align 4
  br label %256

213:                                              ; preds = %204, %201
  %214 = load i32, i32* %15, align 4
  %215 = and i32 %214, 7
  store i32 %215, i32* %15, align 4
  %216 = load i32, i32* %15, align 4
  %217 = icmp sle i32 %216, 3
  br i1 %217, label %218, label %223

218:                                              ; preds = %213
  %219 = load i32, i32* %15, align 4
  %220 = shl i32 1, %219
  store i32 %220, i32* %21, align 4
  %221 = load i32, i32* %21, align 4
  %222 = mul nsw i32 %221, 4
  store i32 %222, i32* %21, align 4
  br label %229

223:                                              ; preds = %213
  %224 = load %struct.jedec_dimm_softc*, %struct.jedec_dimm_softc** %4, align 8
  %225 = getelementptr inbounds %struct.jedec_dimm_softc, %struct.jedec_dimm_softc* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = call i32 (i32, i8*, ...) @device_printf(i32 %226, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  %228 = load i32, i32* @EINVAL, align 4
  store i32 %228, i32* %22, align 4
  br label %256

229:                                              ; preds = %218
  %230 = load i32, i32* %5, align 4
  %231 = icmp eq i32 %230, 128
  br i1 %231, label %232, label %246

232:                                              ; preds = %229
  %233 = load i32, i32* %13, align 4
  %234 = and i32 %233, 3
  %235 = icmp eq i32 %234, 2
  br i1 %235, label %236, label %246

236:                                              ; preds = %232
  %237 = load i32, i32* %13, align 4
  %238 = ashr i32 %237, 4
  store i32 %238, i32* %13, align 4
  %239 = load i32, i32* %13, align 4
  %240 = and i32 %239, 7
  store i32 %240, i32* %13, align 4
  %241 = load i32, i32* %13, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %20, align 4
  %243 = load i32, i32* %20, align 4
  %244 = load i32, i32* %18, align 4
  %245 = mul nsw i32 %244, %243
  store i32 %245, i32* %18, align 4
  br label %246

246:                                              ; preds = %236, %232, %229
  %247 = load i32, i32* %19, align 4
  %248 = sdiv i32 %247, 8
  %249 = load i32, i32* %17, align 4
  %250 = mul nsw i32 %248, %249
  %251 = load i32, i32* %21, align 4
  %252 = sdiv i32 %250, %251
  %253 = load i32, i32* %18, align 4
  %254 = mul nsw i32 %252, %253
  %255 = load i32*, i32** %6, align 8
  store i32 %254, i32* %255, align 4
  br label %256

256:                                              ; preds = %246, %223, %207, %194, %169, %157, %141, %124, %104, %87, %70, %53, %35
  %257 = load i32, i32* %22, align 4
  ret i32 %257
}

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @smbus_readb(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
