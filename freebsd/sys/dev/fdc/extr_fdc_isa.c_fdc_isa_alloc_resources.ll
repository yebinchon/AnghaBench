; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fdc/extr_fdc_isa.c_fdc_isa_alloc_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fdc/extr_fdc_isa.c_fdc_isa_alloc_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdc_data = type { i32*, i32*, i32, i32, %struct.resource*, i32, i32*, i32, i8**, %struct.resource**, i32, i32 }
%struct.resource = type { i32 }

@FDC_MAXREG = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"No FDOUT register!\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Faking up FDCTL\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"cannot reserve interrupt line\0A\00", align 1
@FDC_NODMA = common dso_local global i32 0, align 4
@SYS_RES_DRQ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"cannot reserve DMA request line\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fdc_isa_alloc_resources(i32 %0, %struct.fdc_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.fdc_data*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.fdc_data* %1, %struct.fdc_data** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %15 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %14, i32 0, i32 11
  store i32 %13, i32* %15, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %27, %2
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @FDC_MAXREG, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %16
  %21 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %22 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %21, i32 0, i32 9
  %23 = load %struct.resource**, %struct.resource*** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.resource*, %struct.resource** %23, i64 %25
  store %struct.resource* null, %struct.resource** %26, align 8
  br label %27

27:                                               ; preds = %20
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %7, align 4
  br label %16

30:                                               ; preds = %16
  %31 = load i32, i32* %4, align 4
  %32 = call i64 @isa_get_logicalid(i32 %31)
  %33 = icmp ne i64 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 1, i32 6
  store i32 %35, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %118, %30
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @SYS_RES_IOPORT, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* %11, align 4
  br label %45

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44, %42
  %46 = phi i32 [ %43, %42 ], [ 1, %44 ]
  %47 = load i32, i32* @RF_ACTIVE, align 4
  %48 = call %struct.resource* @bus_alloc_resource_anywhere(i32 %38, i32 %39, i32* %10, i32 %46, i32 %47)
  store %struct.resource* %48, %struct.resource** %6, align 8
  %49 = load %struct.resource*, %struct.resource** %6, align 8
  %50 = icmp eq %struct.resource* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %121

52:                                               ; preds = %45
  %53 = load %struct.resource*, %struct.resource** %6, align 8
  %54 = call i32 @rman_get_start(%struct.resource* %53)
  %55 = and i32 %54, 7
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.resource*, %struct.resource** %6, align 8
  %58 = call i32 @rman_get_size(%struct.resource* %57)
  %59 = add nsw i32 %56, %58
  %60 = sub nsw i32 %59, 1
  %61 = load i32, i32* @FDC_MAXREG, align 4
  %62 = icmp sgt i32 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %52
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @SYS_RES_IOPORT, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load %struct.resource*, %struct.resource** %6, align 8
  %68 = call i32 @bus_release_resource(i32 %64, i32 %65, i32 %66, %struct.resource* %67)
  %69 = load i32, i32* @ENXIO, align 4
  store i32 %69, i32* %3, align 4
  br label %290

70:                                               ; preds = %52
  store i32 0, i32* %8, align 4
  br label %71

71:                                               ; preds = %114, %70
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.resource*, %struct.resource** %6, align 8
  %74 = call i32 @rman_get_size(%struct.resource* %73)
  %75 = icmp slt i32 %72, %74
  br i1 %75, label %76, label %117

76:                                               ; preds = %71
  %77 = load %struct.resource*, %struct.resource** %6, align 8
  %78 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %79 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %78, i32 0, i32 9
  %80 = load %struct.resource**, %struct.resource*** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %81, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.resource*, %struct.resource** %80, i64 %84
  store %struct.resource* %77, %struct.resource** %85, align 8
  %86 = load i32, i32* %10, align 4
  %87 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %88 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %90, %91
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %89, i64 %93
  store i32 %86, i32* %94, align 4
  %95 = load i32, i32* %8, align 4
  %96 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %97 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %99, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %98, i64 %102
  store i32 %95, i32* %103, align 4
  %104 = load %struct.resource*, %struct.resource** %6, align 8
  %105 = call i8* @rman_get_bushandle(%struct.resource* %104)
  %106 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %107 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %106, i32 0, i32 8
  %108 = load i8**, i8*** %107, align 8
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* %8, align 4
  %111 = add nsw i32 %109, %110
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8*, i8** %108, i64 %112
  store i8* %105, i8** %113, align 8
  br label %114

114:                                              ; preds = %76
  %115 = load i32, i32* %8, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %8, align 4
  br label %71

117:                                              ; preds = %71
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %9, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %9, align 4
  br label %36

121:                                              ; preds = %51
  %122 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %123 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %122, i32 0, i32 9
  %124 = load %struct.resource**, %struct.resource*** %123, align 8
  %125 = getelementptr inbounds %struct.resource*, %struct.resource** %124, i64 2
  %126 = load %struct.resource*, %struct.resource** %125, align 8
  %127 = icmp eq %struct.resource* %126, null
  br i1 %127, label %128, label %132

128:                                              ; preds = %121
  %129 = load i32, i32* %4, align 4
  %130 = call i32 @device_printf(i32 %129, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %131 = load i32, i32* @ENXIO, align 4
  store i32 %131, i32* %3, align 4
  br label %290

132:                                              ; preds = %121
  %133 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %134 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %133, i32 0, i32 9
  %135 = load %struct.resource**, %struct.resource*** %134, align 8
  %136 = getelementptr inbounds %struct.resource*, %struct.resource** %135, i64 2
  %137 = load %struct.resource*, %struct.resource** %136, align 8
  %138 = call i32 @rman_get_bustag(%struct.resource* %137)
  %139 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %140 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %139, i32 0, i32 10
  store i32 %138, i32* %140, align 8
  %141 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %142 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %141, i32 0, i32 9
  %143 = load %struct.resource**, %struct.resource*** %142, align 8
  %144 = getelementptr inbounds %struct.resource*, %struct.resource** %143, i64 7
  %145 = load %struct.resource*, %struct.resource** %144, align 8
  %146 = icmp eq %struct.resource* %145, null
  br i1 %146, label %147, label %230

147:                                              ; preds = %132
  %148 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %149 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %148, i32 0, i32 9
  %150 = load %struct.resource**, %struct.resource*** %149, align 8
  %151 = getelementptr inbounds %struct.resource*, %struct.resource** %150, i64 2
  %152 = load %struct.resource*, %struct.resource** %151, align 8
  %153 = call i32 @rman_get_start(%struct.resource* %152)
  %154 = and i32 %153, -8
  %155 = add nsw i32 %154, 7
  store i32 %155, i32* %12, align 4
  %156 = load i32, i32* %9, align 4
  store i32 %156, i32* %10, align 4
  %157 = load i32, i32* %4, align 4
  %158 = load i32, i32* @SYS_RES_IOPORT, align 4
  %159 = load i32, i32* %12, align 4
  %160 = load i32, i32* %12, align 4
  %161 = load i32, i32* @RF_ACTIVE, align 4
  %162 = call %struct.resource* @bus_alloc_resource(i32 %157, i32 %158, i32* %10, i32 %159, i32 %160, i32 1, i32 %161)
  store %struct.resource* %162, %struct.resource** %6, align 8
  %163 = load %struct.resource*, %struct.resource** %6, align 8
  %164 = icmp eq %struct.resource* %163, null
  br i1 %164, label %165, label %205

165:                                              ; preds = %147
  %166 = load i32, i32* %4, align 4
  %167 = call i32 @device_printf(i32 %166, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %168 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %169 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %168, i32 0, i32 9
  %170 = load %struct.resource**, %struct.resource*** %169, align 8
  %171 = getelementptr inbounds %struct.resource*, %struct.resource** %170, i64 2
  %172 = load %struct.resource*, %struct.resource** %171, align 8
  %173 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %174 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %173, i32 0, i32 9
  %175 = load %struct.resource**, %struct.resource*** %174, align 8
  %176 = getelementptr inbounds %struct.resource*, %struct.resource** %175, i64 7
  store %struct.resource* %172, %struct.resource** %176, align 8
  %177 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %178 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %177, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 2
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %183 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %182, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 7
  store i32 %181, i32* %185, align 4
  %186 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %187 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %186, i32 0, i32 1
  %188 = load i32*, i32** %187, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 2
  %190 = load i32, i32* %189, align 4
  %191 = add nsw i32 %190, 5
  %192 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %193 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %192, i32 0, i32 1
  %194 = load i32*, i32** %193, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 7
  store i32 %191, i32* %195, align 4
  %196 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %197 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %196, i32 0, i32 8
  %198 = load i8**, i8*** %197, align 8
  %199 = getelementptr inbounds i8*, i8** %198, i64 2
  %200 = load i8*, i8** %199, align 8
  %201 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %202 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %201, i32 0, i32 8
  %203 = load i8**, i8*** %202, align 8
  %204 = getelementptr inbounds i8*, i8** %203, i64 7
  store i8* %200, i8** %204, align 8
  br label %229

205:                                              ; preds = %147
  %206 = load %struct.resource*, %struct.resource** %6, align 8
  %207 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %208 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %207, i32 0, i32 9
  %209 = load %struct.resource**, %struct.resource*** %208, align 8
  %210 = getelementptr inbounds %struct.resource*, %struct.resource** %209, i64 7
  store %struct.resource* %206, %struct.resource** %210, align 8
  %211 = load i32, i32* %10, align 4
  %212 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %213 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %212, i32 0, i32 0
  %214 = load i32*, i32** %213, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 7
  store i32 %211, i32* %215, align 4
  %216 = load %struct.resource*, %struct.resource** %6, align 8
  %217 = call i32 @rman_get_start(%struct.resource* %216)
  %218 = and i32 %217, 7
  %219 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %220 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %219, i32 0, i32 1
  %221 = load i32*, i32** %220, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 7
  store i32 %218, i32* %222, align 4
  %223 = load %struct.resource*, %struct.resource** %6, align 8
  %224 = call i8* @rman_get_bushandle(%struct.resource* %223)
  %225 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %226 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %225, i32 0, i32 8
  %227 = load i8**, i8*** %226, align 8
  %228 = getelementptr inbounds i8*, i8** %227, i64 7
  store i8* %224, i8** %228, align 8
  br label %229

229:                                              ; preds = %205, %165
  br label %230

230:                                              ; preds = %229, %132
  %231 = load i32, i32* %4, align 4
  %232 = load i32, i32* @SYS_RES_IRQ, align 4
  %233 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %234 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %233, i32 0, i32 7
  %235 = load i32, i32* @RF_ACTIVE, align 4
  %236 = load i32, i32* @RF_SHAREABLE, align 4
  %237 = or i32 %235, %236
  %238 = call i8* @bus_alloc_resource_any(i32 %231, i32 %232, i32* %234, i32 %237)
  %239 = bitcast i8* %238 to i32*
  %240 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %241 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %240, i32 0, i32 6
  store i32* %239, i32** %241, align 8
  %242 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %243 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %242, i32 0, i32 6
  %244 = load i32*, i32** %243, align 8
  %245 = icmp eq i32* %244, null
  br i1 %245, label %246, label %250

246:                                              ; preds = %230
  %247 = load i32, i32* %4, align 4
  %248 = call i32 @device_printf(i32 %247, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %249 = load i32, i32* @ENXIO, align 4
  store i32 %249, i32* %3, align 4
  br label %290

250:                                              ; preds = %230
  %251 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %252 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* @FDC_NODMA, align 4
  %255 = and i32 %253, %254
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %257, label %289

257:                                              ; preds = %250
  %258 = load i32, i32* %4, align 4
  %259 = load i32, i32* @SYS_RES_DRQ, align 4
  %260 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %261 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %260, i32 0, i32 5
  %262 = load i32, i32* @RF_ACTIVE, align 4
  %263 = load i32, i32* @RF_SHAREABLE, align 4
  %264 = or i32 %262, %263
  %265 = call i8* @bus_alloc_resource_any(i32 %258, i32 %259, i32* %261, i32 %264)
  %266 = bitcast i8* %265 to %struct.resource*
  %267 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %268 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %267, i32 0, i32 4
  store %struct.resource* %266, %struct.resource** %268, align 8
  %269 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %270 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %269, i32 0, i32 4
  %271 = load %struct.resource*, %struct.resource** %270, align 8
  %272 = icmp eq %struct.resource* %271, null
  br i1 %272, label %273, label %281

273:                                              ; preds = %257
  %274 = load i32, i32* %4, align 4
  %275 = call i32 @device_printf(i32 %274, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %276 = load i32, i32* @FDC_NODMA, align 4
  %277 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %278 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %277, i32 0, i32 2
  %279 = load i32, i32* %278, align 8
  %280 = or i32 %279, %276
  store i32 %280, i32* %278, align 8
  br label %288

281:                                              ; preds = %257
  %282 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %283 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %282, i32 0, i32 4
  %284 = load %struct.resource*, %struct.resource** %283, align 8
  %285 = call i32 @rman_get_start(%struct.resource* %284)
  %286 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %287 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %286, i32 0, i32 3
  store i32 %285, i32* %287, align 4
  br label %288

288:                                              ; preds = %281, %273
  br label %289

289:                                              ; preds = %288, %250
  store i32 0, i32* %3, align 4
  br label %290

290:                                              ; preds = %289, %246, %128, %63
  %291 = load i32, i32* %3, align 4
  ret i32 %291
}

declare dso_local i64 @isa_get_logicalid(i32) #1

declare dso_local %struct.resource* @bus_alloc_resource_anywhere(i32, i32, i32*, i32, i32) #1

declare dso_local i32 @rman_get_start(%struct.resource*) #1

declare dso_local i32 @rman_get_size(%struct.resource*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, %struct.resource*) #1

declare dso_local i8* @rman_get_bushandle(%struct.resource*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @rman_get_bustag(%struct.resource*) #1

declare dso_local %struct.resource* @bus_alloc_resource(i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
