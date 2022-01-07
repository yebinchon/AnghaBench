; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci_controller.c_isci_controller_allocate_memory.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci_controller.c_isci_controller_allocate_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ISCI_CONTROLLER = type { i32, i32, %struct.TYPE_4__*, i32**, i32*, i32, i32, i32, i32, i32, %struct.ISCI_MEMORY, %struct.ISCI_MEMORY, %struct.ISCI_MEMORY, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.ISCI_REQUEST* }
%struct.ISCI_REQUEST = type { i32, i32*, i8*, i32, i32, i64, i8* }
%struct.ISCI_MEMORY = type { i32, i32, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.ISCI_REMOTE_DEVICE = type { i32, i32*, i8*, i32, i32, i64, i8* }

@SCI_MDE_ATTRIBUTE_PHYSICALLY_CONTIGUOUS = common dso_local global i32 0, align 4
@SCI_MDE_ATTRIBUTE_CACHEABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"hw.isci.max_segment_size\00", align 1
@ISCI_DMA_BOUNDARY = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@SCI_MAX_SCATTER_GATHER_ELEMENTS = common dso_local global i32 0, align 4
@busdma_lock_mutex = common dso_local global i32 0, align 4
@SCI_MAX_REMOTE_DEVICES = common dso_local global i32 0, align 4
@M_ISCI = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@SCI_MAX_DOMAINS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isci_controller_allocate_memory(%struct.ISCI_CONTROLLER* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ISCI_CONTROLLER*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ISCI_MEMORY*, align 8
  %9 = alloca %struct.ISCI_MEMORY*, align 8
  %10 = alloca %struct.ISCI_MEMORY*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ISCI_REQUEST*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.ISCI_REMOTE_DEVICE*, align 8
  store %struct.ISCI_CONTROLLER* %0, %struct.ISCI_CONTROLLER** %3, align 8
  %19 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %3, align 8
  %20 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %19, i32 0, i32 13
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %5, align 4
  %24 = call i32 (...) @isci_io_request_get_max_io_size()
  store i32 %24, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %25 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %3, align 8
  %26 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %25, i32 0, i32 12
  store %struct.ISCI_MEMORY* %26, %struct.ISCI_MEMORY** %8, align 8
  %27 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %3, align 8
  %28 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %27, i32 0, i32 11
  store %struct.ISCI_MEMORY* %28, %struct.ISCI_MEMORY** %9, align 8
  %29 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %3, align 8
  %30 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %29, i32 0, i32 10
  store %struct.ISCI_MEMORY* %30, %struct.ISCI_MEMORY** %10, align 8
  %31 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %3, align 8
  %32 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %31, i32 0, i32 7
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @sci_controller_get_memory_descriptor_list_handle(i32 %33)
  %35 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %3, align 8
  %36 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %35, i32 0, i32 9
  store i32 %34, i32* %36, align 8
  %37 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %3, align 8
  %38 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %37, i32 0, i32 9
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @SCI_MDE_ATTRIBUTE_PHYSICALLY_CONTIGUOUS, align 4
  %41 = call i8* @sci_mdl_decorator_get_memory_size(i32 %39, i32 %40)
  %42 = ptrtoint i8* %41 to i32
  %43 = load %struct.ISCI_MEMORY*, %struct.ISCI_MEMORY** %8, align 8
  %44 = getelementptr inbounds %struct.ISCI_MEMORY, %struct.ISCI_MEMORY* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %3, align 8
  %47 = load %struct.ISCI_MEMORY*, %struct.ISCI_MEMORY** %8, align 8
  %48 = call i32 @isci_allocate_dma_buffer(i32 %45, %struct.ISCI_CONTROLLER* %46, %struct.ISCI_MEMORY* %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %1
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* %2, align 4
  br label %258

53:                                               ; preds = %1
  %54 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %3, align 8
  %55 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %54, i32 0, i32 9
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @SCI_MDE_ATTRIBUTE_PHYSICALLY_CONTIGUOUS, align 4
  %58 = load %struct.ISCI_MEMORY*, %struct.ISCI_MEMORY** %8, align 8
  %59 = getelementptr inbounds %struct.ISCI_MEMORY, %struct.ISCI_MEMORY* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.ISCI_MEMORY*, %struct.ISCI_MEMORY** %8, align 8
  %62 = getelementptr inbounds %struct.ISCI_MEMORY, %struct.ISCI_MEMORY* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @sci_mdl_decorator_assign_memory(i32 %56, i32 %57, i64 %60, i32 %63)
  %65 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %3, align 8
  %66 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %65, i32 0, i32 9
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @SCI_MDE_ATTRIBUTE_CACHEABLE, align 4
  %69 = load i32, i32* @SCI_MDE_ATTRIBUTE_PHYSICALLY_CONTIGUOUS, align 4
  %70 = or i32 %68, %69
  %71 = call i8* @sci_mdl_decorator_get_memory_size(i32 %67, i32 %70)
  %72 = ptrtoint i8* %71 to i32
  %73 = load %struct.ISCI_MEMORY*, %struct.ISCI_MEMORY** %9, align 8
  %74 = getelementptr inbounds %struct.ISCI_MEMORY, %struct.ISCI_MEMORY* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* %5, align 4
  %76 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %3, align 8
  %77 = load %struct.ISCI_MEMORY*, %struct.ISCI_MEMORY** %9, align 8
  %78 = call i32 @isci_allocate_dma_buffer(i32 %75, %struct.ISCI_CONTROLLER* %76, %struct.ISCI_MEMORY* %77)
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* %4, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %53
  %82 = load i32, i32* %4, align 4
  store i32 %82, i32* %2, align 4
  br label %258

83:                                               ; preds = %53
  %84 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %3, align 8
  %85 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %84, i32 0, i32 9
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @SCI_MDE_ATTRIBUTE_CACHEABLE, align 4
  %88 = load i32, i32* @SCI_MDE_ATTRIBUTE_PHYSICALLY_CONTIGUOUS, align 4
  %89 = or i32 %87, %88
  %90 = load %struct.ISCI_MEMORY*, %struct.ISCI_MEMORY** %9, align 8
  %91 = getelementptr inbounds %struct.ISCI_MEMORY, %struct.ISCI_MEMORY* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.ISCI_MEMORY*, %struct.ISCI_MEMORY** %9, align 8
  %94 = getelementptr inbounds %struct.ISCI_MEMORY, %struct.ISCI_MEMORY* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @sci_mdl_decorator_assign_memory(i32 %86, i32 %89, i64 %92, i32 %95)
  %97 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %3, align 8
  %98 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 (...) @isci_io_request_get_object_size()
  %101 = mul nsw i32 %99, %100
  %102 = load %struct.ISCI_MEMORY*, %struct.ISCI_MEMORY** %10, align 8
  %103 = getelementptr inbounds %struct.ISCI_MEMORY, %struct.ISCI_MEMORY* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  %104 = load i32, i32* %5, align 4
  %105 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %3, align 8
  %106 = load %struct.ISCI_MEMORY*, %struct.ISCI_MEMORY** %10, align 8
  %107 = call i32 @isci_allocate_dma_buffer(i32 %104, %struct.ISCI_CONTROLLER* %105, %struct.ISCI_MEMORY* %106)
  store i32 %107, i32* %4, align 4
  %108 = load i32, i32* %4, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %83
  %111 = load i32, i32* %4, align 4
  store i32 %111, i32* %2, align 4
  br label %258

112:                                              ; preds = %83
  %113 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32* %6)
  %114 = load i32, i32* %5, align 4
  %115 = call i32 @bus_get_dma_tag(i32 %114)
  %116 = load i32, i32* @ISCI_DMA_BOUNDARY, align 4
  %117 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %118 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %119 = call i32 (...) @isci_io_request_get_max_io_size()
  %120 = load i32, i32* @SCI_MAX_SCATTER_GATHER_ELEMENTS, align 4
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* @busdma_lock_mutex, align 4
  %123 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %3, align 8
  %124 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %123, i32 0, i32 8
  %125 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %3, align 8
  %126 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %125, i32 0, i32 6
  %127 = call i32 @bus_dma_tag_create(i32 %115, i32 1, i32 %116, i32 %117, i32 %118, i32* null, i32* null, i32 %119, i32 %120, i32 %121, i32 0, i32 %122, i32* %124, i32* %126)
  store i32 %127, i32* %7, align 4
  %128 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %3, align 8
  %129 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @sci_pool_initialize(i32 %130)
  %132 = load %struct.ISCI_MEMORY*, %struct.ISCI_MEMORY** %10, align 8
  %133 = getelementptr inbounds %struct.ISCI_MEMORY, %struct.ISCI_MEMORY* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  store i64 %134, i64* %11, align 8
  %135 = load %struct.ISCI_MEMORY*, %struct.ISCI_MEMORY** %10, align 8
  %136 = getelementptr inbounds %struct.ISCI_MEMORY, %struct.ISCI_MEMORY* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %138

138:                                              ; preds = %169, %112
  %139 = load i32, i32* %13, align 4
  %140 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %3, align 8
  %141 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = icmp slt i32 %139, %142
  br i1 %143, label %144, label %172

144:                                              ; preds = %138
  %145 = load i64, i64* %11, align 8
  %146 = inttoptr i64 %145 to %struct.ISCI_REQUEST*
  store %struct.ISCI_REQUEST* %146, %struct.ISCI_REQUEST** %14, align 8
  %147 = load %struct.ISCI_REQUEST*, %struct.ISCI_REQUEST** %14, align 8
  %148 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %3, align 8
  %149 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %148, i32 0, i32 7
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %3, align 8
  %152 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %151, i32 0, i32 6
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %12, align 4
  %155 = call i32 @isci_request_construct(%struct.ISCI_REQUEST* %147, i32 %150, i32 %153, i32 %154)
  %156 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %3, align 8
  %157 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %156, i32 0, i32 5
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.ISCI_REQUEST*, %struct.ISCI_REQUEST** %14, align 8
  %160 = call i32 @sci_pool_put(i32 %158, %struct.ISCI_REQUEST* %159)
  %161 = call i64 (...) @isci_request_get_object_size()
  %162 = load i64, i64* %11, align 8
  %163 = add nsw i64 %162, %161
  store i64 %163, i64* %11, align 8
  %164 = call i64 (...) @isci_request_get_object_size()
  %165 = load i32, i32* %12, align 4
  %166 = sext i32 %165 to i64
  %167 = add nsw i64 %166, %164
  %168 = trunc i64 %167 to i32
  store i32 %168, i32* %12, align 4
  br label %169

169:                                              ; preds = %144
  %170 = load i32, i32* %13, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %13, align 4
  br label %138

172:                                              ; preds = %138
  %173 = call i32 (...) @scif_remote_device_get_object_size()
  %174 = sext i32 %173 to i64
  %175 = add i64 48, %174
  %176 = trunc i64 %175 to i32
  store i32 %176, i32* %15, align 4
  %177 = load i32, i32* %15, align 4
  %178 = load i32, i32* @SCI_MAX_REMOTE_DEVICES, align 4
  %179 = mul nsw i32 %177, %178
  %180 = load i32, i32* @M_ISCI, align 4
  %181 = load i32, i32* @M_NOWAIT, align 4
  %182 = load i32, i32* @M_ZERO, align 4
  %183 = or i32 %181, %182
  %184 = call i64 @malloc(i32 %179, i32 %180, i32 %183)
  %185 = inttoptr i64 %184 to i32*
  %186 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %3, align 8
  %187 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %186, i32 0, i32 4
  store i32* %185, i32** %187, align 8
  %188 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %3, align 8
  %189 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @sci_pool_initialize(i32 %190)
  %192 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %3, align 8
  %193 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %192, i32 0, i32 4
  %194 = load i32*, i32** %193, align 8
  store i32* %194, i32** %16, align 8
  store i32 0, i32* %17, align 4
  br label %195

195:                                              ; preds = %254, %172
  %196 = load i32, i32* %17, align 4
  %197 = load i32, i32* @SCI_MAX_REMOTE_DEVICES, align 4
  %198 = icmp slt i32 %196, %197
  br i1 %198, label %199, label %257

199:                                              ; preds = %195
  %200 = load i32*, i32** %16, align 8
  %201 = bitcast i32* %200 to %struct.ISCI_REMOTE_DEVICE*
  store %struct.ISCI_REMOTE_DEVICE* %201, %struct.ISCI_REMOTE_DEVICE** %18, align 8
  %202 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %3, align 8
  %203 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %202, i32 0, i32 3
  %204 = load i32**, i32*** %203, align 8
  %205 = load i32, i32* %17, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32*, i32** %204, i64 %206
  store i32* null, i32** %207, align 8
  %208 = load i32, i32* %17, align 4
  %209 = load %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %18, align 8
  %210 = getelementptr inbounds %struct.ISCI_REMOTE_DEVICE, %struct.ISCI_REMOTE_DEVICE* %209, i32 0, i32 0
  store i32 %208, i32* %210, align 8
  %211 = load i8*, i8** @FALSE, align 8
  %212 = load %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %18, align 8
  %213 = getelementptr inbounds %struct.ISCI_REMOTE_DEVICE, %struct.ISCI_REMOTE_DEVICE* %212, i32 0, i32 6
  store i8* %211, i8** %213, align 8
  %214 = load %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %18, align 8
  %215 = getelementptr inbounds %struct.ISCI_REMOTE_DEVICE, %struct.ISCI_REMOTE_DEVICE* %214, i32 0, i32 5
  store i64 0, i64* %215, align 8
  %216 = load %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %18, align 8
  %217 = bitcast %struct.ISCI_REMOTE_DEVICE* %216 to %struct.ISCI_REQUEST*
  %218 = load %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %18, align 8
  %219 = getelementptr inbounds %struct.ISCI_REMOTE_DEVICE, %struct.ISCI_REMOTE_DEVICE* %218, i32 0, i32 4
  %220 = call i32 @sci_fast_list_element_init(%struct.ISCI_REQUEST* %217, i32* %219)
  %221 = load %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %18, align 8
  %222 = getelementptr inbounds %struct.ISCI_REMOTE_DEVICE, %struct.ISCI_REMOTE_DEVICE* %221, i32 0, i32 3
  %223 = call i32 @TAILQ_INIT(i32* %222)
  %224 = load i8*, i8** @FALSE, align 8
  %225 = load %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %18, align 8
  %226 = getelementptr inbounds %struct.ISCI_REMOTE_DEVICE, %struct.ISCI_REMOTE_DEVICE* %225, i32 0, i32 2
  store i8* %224, i8** %226, align 8
  %227 = load %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %18, align 8
  %228 = getelementptr inbounds %struct.ISCI_REMOTE_DEVICE, %struct.ISCI_REMOTE_DEVICE* %227, i32 0, i32 1
  store i32* null, i32** %228, align 8
  %229 = load i32, i32* %17, align 4
  %230 = load i32, i32* @SCI_MAX_DOMAINS, align 4
  %231 = icmp slt i32 %229, %230
  br i1 %231, label %232, label %242

232:                                              ; preds = %199
  %233 = load %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %18, align 8
  %234 = bitcast %struct.ISCI_REMOTE_DEVICE* %233 to %struct.ISCI_REQUEST*
  %235 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %3, align 8
  %236 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %235, i32 0, i32 2
  %237 = load %struct.TYPE_4__*, %struct.TYPE_4__** %236, align 8
  %238 = load i32, i32* %17, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %240, i32 0, i32 0
  store %struct.ISCI_REQUEST* %234, %struct.ISCI_REQUEST** %241, align 8
  br label %249

242:                                              ; preds = %199
  %243 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %3, align 8
  %244 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %18, align 8
  %247 = bitcast %struct.ISCI_REMOTE_DEVICE* %246 to %struct.ISCI_REQUEST*
  %248 = call i32 @sci_pool_put(i32 %245, %struct.ISCI_REQUEST* %247)
  br label %249

249:                                              ; preds = %242, %232
  %250 = load i32, i32* %15, align 4
  %251 = load i32*, i32** %16, align 8
  %252 = sext i32 %250 to i64
  %253 = getelementptr inbounds i32, i32* %251, i64 %252
  store i32* %253, i32** %16, align 8
  br label %254

254:                                              ; preds = %249
  %255 = load i32, i32* %17, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %17, align 4
  br label %195

257:                                              ; preds = %195
  store i32 0, i32* %2, align 4
  br label %258

258:                                              ; preds = %257, %110, %81, %51
  %259 = load i32, i32* %2, align 4
  ret i32 %259
}

declare dso_local i32 @isci_io_request_get_max_io_size(...) #1

declare dso_local i32 @sci_controller_get_memory_descriptor_list_handle(i32) #1

declare dso_local i8* @sci_mdl_decorator_get_memory_size(i32, i32) #1

declare dso_local i32 @isci_allocate_dma_buffer(i32, %struct.ISCI_CONTROLLER*, %struct.ISCI_MEMORY*) #1

declare dso_local i32 @sci_mdl_decorator_assign_memory(i32, i32, i64, i32) #1

declare dso_local i32 @isci_io_request_get_object_size(...) #1

declare dso_local i32 @TUNABLE_INT_FETCH(i8*, i32*) #1

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @sci_pool_initialize(i32) #1

declare dso_local i32 @isci_request_construct(%struct.ISCI_REQUEST*, i32, i32, i32) #1

declare dso_local i32 @sci_pool_put(i32, %struct.ISCI_REQUEST*) #1

declare dso_local i64 @isci_request_get_object_size(...) #1

declare dso_local i32 @scif_remote_device_get_object_size(...) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @sci_fast_list_element_init(%struct.ISCI_REQUEST*, i32*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
