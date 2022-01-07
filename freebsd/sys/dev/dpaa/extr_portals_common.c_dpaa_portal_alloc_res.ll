; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_portals_common.c_dpaa_portal_alloc_res.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_portals_common.c_dpaa_portal_alloc_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpaa_portals_devinfo = type { i32, i32, %struct.resource_list }
%struct.resource_list = type { i32 }
%struct.dpaa_portals_softc = type { i32*, %struct.TYPE_2__*, i64, i32** }
%struct.TYPE_2__ = type { i32, i32, i32*, i64, i32, i64, i32, i64 }
%struct.resource_list_entry = type { i64, i32, i64 }

@E_OK = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Could not allocate cache enabled memory.\0A\00", align 1
@_TLB_ENTRY_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Could not allocate cache inhibited memory.\0A\00", align 1
@_TLB_ENTRY_IO = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Could not allocate irq.\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Could not prealloc and bind interrupt\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dpaa_portal_alloc_res(i32 %0, %struct.dpaa_portals_devinfo* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.dpaa_portals_devinfo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dpaa_portals_softc*, align 8
  %9 = alloca %struct.resource_list_entry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.resource_list*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.dpaa_portals_devinfo* %1, %struct.dpaa_portals_devinfo** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.dpaa_portals_softc* @device_get_softc(i32 %12)
  store %struct.dpaa_portals_softc* %13, %struct.dpaa_portals_softc** %8, align 8
  %14 = call i32 (...) @XX_MallocSmartInit()
  %15 = load i32, i32* @E_OK, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @ENXIO, align 4
  store i32 %18, i32* %4, align 4
  br label %343

19:                                               ; preds = %3
  %20 = load %struct.dpaa_portals_devinfo*, %struct.dpaa_portals_devinfo** %6, align 8
  %21 = getelementptr inbounds %struct.dpaa_portals_devinfo, %struct.dpaa_portals_devinfo* %20, i32 0, i32 2
  store %struct.resource_list* %21, %struct.resource_list** %11, align 8
  %22 = load %struct.dpaa_portals_softc*, %struct.dpaa_portals_softc** %8, align 8
  %23 = getelementptr inbounds %struct.dpaa_portals_softc, %struct.dpaa_portals_softc* %22, i32 0, i32 3
  %24 = load i32**, i32*** %23, align 8
  %25 = getelementptr inbounds i32*, i32** %24, i64 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %181

28:                                               ; preds = %19
  %29 = load %struct.resource_list*, %struct.resource_list** %11, align 8
  %30 = load i32, i32* @SYS_RES_MEMORY, align 4
  %31 = call %struct.resource_list_entry* @resource_list_find(%struct.resource_list* %29, i32 %30, i32 0)
  store %struct.resource_list_entry* %31, %struct.resource_list_entry** %9, align 8
  %32 = load %struct.dpaa_portals_softc*, %struct.dpaa_portals_softc** %8, align 8
  %33 = getelementptr inbounds %struct.dpaa_portals_softc, %struct.dpaa_portals_softc* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  store i32 0, i32* %35, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @SYS_RES_MEMORY, align 4
  %38 = load %struct.dpaa_portals_softc*, %struct.dpaa_portals_softc** %8, align 8
  %39 = getelementptr inbounds %struct.dpaa_portals_softc, %struct.dpaa_portals_softc* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load %struct.resource_list_entry*, %struct.resource_list_entry** %9, align 8
  %43 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.dpaa_portals_softc*, %struct.dpaa_portals_softc** %8, align 8
  %46 = getelementptr inbounds %struct.dpaa_portals_softc, %struct.dpaa_portals_softc* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %44, %47
  %49 = load %struct.resource_list_entry*, %struct.resource_list_entry** %9, align 8
  %50 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.dpaa_portals_softc*, %struct.dpaa_portals_softc** %8, align 8
  %53 = getelementptr inbounds %struct.dpaa_portals_softc, %struct.dpaa_portals_softc* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %51, %54
  %56 = load %struct.resource_list_entry*, %struct.resource_list_entry** %9, align 8
  %57 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @RF_ACTIVE, align 4
  %60 = call i8* @bus_alloc_resource(i32 %36, i32 %37, i32* %41, i64 %48, i64 %55, i32 %58, i32 %59)
  %61 = bitcast i8* %60 to i32*
  %62 = load %struct.dpaa_portals_softc*, %struct.dpaa_portals_softc** %8, align 8
  %63 = getelementptr inbounds %struct.dpaa_portals_softc, %struct.dpaa_portals_softc* %62, i32 0, i32 3
  %64 = load i32**, i32*** %63, align 8
  %65 = getelementptr inbounds i32*, i32** %64, i64 0
  store i32* %61, i32** %65, align 8
  %66 = load %struct.dpaa_portals_softc*, %struct.dpaa_portals_softc** %8, align 8
  %67 = getelementptr inbounds %struct.dpaa_portals_softc, %struct.dpaa_portals_softc* %66, i32 0, i32 3
  %68 = load i32**, i32*** %67, align 8
  %69 = getelementptr inbounds i32*, i32** %68, i64 0
  %70 = load i32*, i32** %69, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %28
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @device_printf(i32 %73, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %75 = load i32, i32* @ENXIO, align 4
  store i32 %75, i32* %4, align 4
  br label %343

76:                                               ; preds = %28
  %77 = load %struct.dpaa_portals_softc*, %struct.dpaa_portals_softc** %8, align 8
  %78 = getelementptr inbounds %struct.dpaa_portals_softc, %struct.dpaa_portals_softc* %77, i32 0, i32 3
  %79 = load i32**, i32*** %78, align 8
  %80 = getelementptr inbounds i32*, i32** %79, i64 0
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @rman_get_bushandle(i32* %81)
  %83 = load %struct.resource_list_entry*, %struct.resource_list_entry** %9, align 8
  %84 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.dpaa_portals_softc*, %struct.dpaa_portals_softc** %8, align 8
  %87 = getelementptr inbounds %struct.dpaa_portals_softc, %struct.dpaa_portals_softc* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %85, %88
  %90 = load %struct.resource_list_entry*, %struct.resource_list_entry** %9, align 8
  %91 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @_TLB_ENTRY_MEM, align 4
  %94 = call i32 @tlb1_set_entry(i32 %82, i64 %89, i32 %92, i32 %93)
  %95 = load %struct.resource_list*, %struct.resource_list** %11, align 8
  %96 = load i32, i32* @SYS_RES_MEMORY, align 4
  %97 = call %struct.resource_list_entry* @resource_list_find(%struct.resource_list* %95, i32 %96, i32 1)
  store %struct.resource_list_entry* %97, %struct.resource_list_entry** %9, align 8
  %98 = load %struct.dpaa_portals_softc*, %struct.dpaa_portals_softc** %8, align 8
  %99 = getelementptr inbounds %struct.dpaa_portals_softc, %struct.dpaa_portals_softc* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 1
  store i32 1, i32* %101, align 4
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* @SYS_RES_MEMORY, align 4
  %104 = load %struct.dpaa_portals_softc*, %struct.dpaa_portals_softc** %8, align 8
  %105 = getelementptr inbounds %struct.dpaa_portals_softc, %struct.dpaa_portals_softc* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  %108 = load %struct.resource_list_entry*, %struct.resource_list_entry** %9, align 8
  %109 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.dpaa_portals_softc*, %struct.dpaa_portals_softc** %8, align 8
  %112 = getelementptr inbounds %struct.dpaa_portals_softc, %struct.dpaa_portals_softc* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %110, %113
  %115 = load %struct.resource_list_entry*, %struct.resource_list_entry** %9, align 8
  %116 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.dpaa_portals_softc*, %struct.dpaa_portals_softc** %8, align 8
  %119 = getelementptr inbounds %struct.dpaa_portals_softc, %struct.dpaa_portals_softc* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = add nsw i64 %117, %120
  %122 = load %struct.resource_list_entry*, %struct.resource_list_entry** %9, align 8
  %123 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @RF_ACTIVE, align 4
  %126 = call i8* @bus_alloc_resource(i32 %102, i32 %103, i32* %107, i64 %114, i64 %121, i32 %124, i32 %125)
  %127 = bitcast i8* %126 to i32*
  %128 = load %struct.dpaa_portals_softc*, %struct.dpaa_portals_softc** %8, align 8
  %129 = getelementptr inbounds %struct.dpaa_portals_softc, %struct.dpaa_portals_softc* %128, i32 0, i32 3
  %130 = load i32**, i32*** %129, align 8
  %131 = getelementptr inbounds i32*, i32** %130, i64 1
  store i32* %127, i32** %131, align 8
  %132 = load %struct.dpaa_portals_softc*, %struct.dpaa_portals_softc** %8, align 8
  %133 = getelementptr inbounds %struct.dpaa_portals_softc, %struct.dpaa_portals_softc* %132, i32 0, i32 3
  %134 = load i32**, i32*** %133, align 8
  %135 = getelementptr inbounds i32*, i32** %134, i64 1
  %136 = load i32*, i32** %135, align 8
  %137 = icmp eq i32* %136, null
  br i1 %137, label %138, label %155

138:                                              ; preds = %76
  %139 = load i32, i32* %5, align 4
  %140 = call i32 @device_printf(i32 %139, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %141 = load i32, i32* %5, align 4
  %142 = load i32, i32* @SYS_RES_MEMORY, align 4
  %143 = load %struct.dpaa_portals_softc*, %struct.dpaa_portals_softc** %8, align 8
  %144 = getelementptr inbounds %struct.dpaa_portals_softc, %struct.dpaa_portals_softc* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.dpaa_portals_softc*, %struct.dpaa_portals_softc** %8, align 8
  %149 = getelementptr inbounds %struct.dpaa_portals_softc, %struct.dpaa_portals_softc* %148, i32 0, i32 3
  %150 = load i32**, i32*** %149, align 8
  %151 = getelementptr inbounds i32*, i32** %150, i64 0
  %152 = load i32*, i32** %151, align 8
  %153 = call i32 @bus_release_resource(i32 %141, i32 %142, i32 %147, i32* %152)
  %154 = load i32, i32* @ENXIO, align 4
  store i32 %154, i32* %4, align 4
  br label %343

155:                                              ; preds = %76
  %156 = load %struct.dpaa_portals_softc*, %struct.dpaa_portals_softc** %8, align 8
  %157 = getelementptr inbounds %struct.dpaa_portals_softc, %struct.dpaa_portals_softc* %156, i32 0, i32 3
  %158 = load i32**, i32*** %157, align 8
  %159 = getelementptr inbounds i32*, i32** %158, i64 1
  %160 = load i32*, i32** %159, align 8
  %161 = call i32 @rman_get_bushandle(i32* %160)
  %162 = load %struct.resource_list_entry*, %struct.resource_list_entry** %9, align 8
  %163 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.dpaa_portals_softc*, %struct.dpaa_portals_softc** %8, align 8
  %166 = getelementptr inbounds %struct.dpaa_portals_softc, %struct.dpaa_portals_softc* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = add nsw i64 %164, %167
  %169 = load %struct.resource_list_entry*, %struct.resource_list_entry** %9, align 8
  %170 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @_TLB_ENTRY_IO, align 4
  %173 = call i32 @tlb1_set_entry(i32 %161, i64 %168, i32 %171, i32 %172)
  %174 = load %struct.dpaa_portals_softc*, %struct.dpaa_portals_softc** %8, align 8
  %175 = getelementptr inbounds %struct.dpaa_portals_softc, %struct.dpaa_portals_softc* %174, i32 0, i32 1
  %176 = load %struct.TYPE_2__*, %struct.TYPE_2__** %175, align 8
  %177 = load i32, i32* %7, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 0
  store i32 1, i32* %180, align 8
  br label %181

181:                                              ; preds = %155, %19
  %182 = load %struct.resource_list*, %struct.resource_list** %11, align 8
  %183 = load i32, i32* @SYS_RES_MEMORY, align 4
  %184 = call %struct.resource_list_entry* @resource_list_find(%struct.resource_list* %182, i32 %183, i32 0)
  store %struct.resource_list_entry* %184, %struct.resource_list_entry** %9, align 8
  %185 = load %struct.resource_list_entry*, %struct.resource_list_entry** %9, align 8
  %186 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.dpaa_portals_softc*, %struct.dpaa_portals_softc** %8, align 8
  %189 = getelementptr inbounds %struct.dpaa_portals_softc, %struct.dpaa_portals_softc* %188, i32 0, i32 2
  %190 = load i64, i64* %189, align 8
  %191 = add nsw i64 %187, %190
  %192 = load %struct.dpaa_portals_softc*, %struct.dpaa_portals_softc** %8, align 8
  %193 = getelementptr inbounds %struct.dpaa_portals_softc, %struct.dpaa_portals_softc* %192, i32 0, i32 1
  %194 = load %struct.TYPE_2__*, %struct.TYPE_2__** %193, align 8
  %195 = load i32, i32* %7, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 7
  store i64 %191, i64* %198, align 8
  %199 = load %struct.resource_list_entry*, %struct.resource_list_entry** %9, align 8
  %200 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.dpaa_portals_softc*, %struct.dpaa_portals_softc** %8, align 8
  %203 = getelementptr inbounds %struct.dpaa_portals_softc, %struct.dpaa_portals_softc* %202, i32 0, i32 1
  %204 = load %struct.TYPE_2__*, %struct.TYPE_2__** %203, align 8
  %205 = load i32, i32* %7, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i32 0, i32 6
  store i32 %201, i32* %208, align 8
  %209 = load %struct.resource_list*, %struct.resource_list** %11, align 8
  %210 = load i32, i32* @SYS_RES_MEMORY, align 4
  %211 = call %struct.resource_list_entry* @resource_list_find(%struct.resource_list* %209, i32 %210, i32 1)
  store %struct.resource_list_entry* %211, %struct.resource_list_entry** %9, align 8
  %212 = load %struct.resource_list_entry*, %struct.resource_list_entry** %9, align 8
  %213 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load %struct.dpaa_portals_softc*, %struct.dpaa_portals_softc** %8, align 8
  %216 = getelementptr inbounds %struct.dpaa_portals_softc, %struct.dpaa_portals_softc* %215, i32 0, i32 2
  %217 = load i64, i64* %216, align 8
  %218 = add nsw i64 %214, %217
  %219 = load %struct.dpaa_portals_softc*, %struct.dpaa_portals_softc** %8, align 8
  %220 = getelementptr inbounds %struct.dpaa_portals_softc, %struct.dpaa_portals_softc* %219, i32 0, i32 1
  %221 = load %struct.TYPE_2__*, %struct.TYPE_2__** %220, align 8
  %222 = load i32, i32* %7, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %224, i32 0, i32 5
  store i64 %218, i64* %225, align 8
  %226 = load %struct.resource_list_entry*, %struct.resource_list_entry** %9, align 8
  %227 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.dpaa_portals_softc*, %struct.dpaa_portals_softc** %8, align 8
  %230 = getelementptr inbounds %struct.dpaa_portals_softc, %struct.dpaa_portals_softc* %229, i32 0, i32 1
  %231 = load %struct.TYPE_2__*, %struct.TYPE_2__** %230, align 8
  %232 = load i32, i32* %7, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %231, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %234, i32 0, i32 4
  store i32 %228, i32* %235, align 8
  %236 = load %struct.resource_list*, %struct.resource_list** %11, align 8
  %237 = load i32, i32* @SYS_RES_IRQ, align 4
  %238 = call %struct.resource_list_entry* @resource_list_find(%struct.resource_list* %236, i32 %237, i32 0)
  store %struct.resource_list_entry* %238, %struct.resource_list_entry** %9, align 8
  %239 = load %struct.dpaa_portals_softc*, %struct.dpaa_portals_softc** %8, align 8
  %240 = getelementptr inbounds %struct.dpaa_portals_softc, %struct.dpaa_portals_softc* %239, i32 0, i32 1
  %241 = load %struct.TYPE_2__*, %struct.TYPE_2__** %240, align 8
  %242 = load i32, i32* %7, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %241, i64 %243
  %245 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %244, i32 0, i32 1
  store i32 0, i32* %245, align 4
  %246 = load i32, i32* %5, align 4
  %247 = load i32, i32* @SYS_RES_IRQ, align 4
  %248 = load %struct.dpaa_portals_softc*, %struct.dpaa_portals_softc** %8, align 8
  %249 = getelementptr inbounds %struct.dpaa_portals_softc, %struct.dpaa_portals_softc* %248, i32 0, i32 1
  %250 = load %struct.TYPE_2__*, %struct.TYPE_2__** %249, align 8
  %251 = load i32, i32* %7, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %250, i64 %252
  %254 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %253, i32 0, i32 1
  %255 = load %struct.resource_list_entry*, %struct.resource_list_entry** %9, align 8
  %256 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = load %struct.resource_list_entry*, %struct.resource_list_entry** %9, align 8
  %259 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %258, i32 0, i32 2
  %260 = load i64, i64* %259, align 8
  %261 = load %struct.resource_list_entry*, %struct.resource_list_entry** %9, align 8
  %262 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* @RF_ACTIVE, align 4
  %265 = call i8* @bus_alloc_resource(i32 %246, i32 %247, i32* %254, i64 %257, i64 %260, i32 %263, i32 %264)
  %266 = bitcast i8* %265 to i32*
  %267 = load %struct.dpaa_portals_softc*, %struct.dpaa_portals_softc** %8, align 8
  %268 = getelementptr inbounds %struct.dpaa_portals_softc, %struct.dpaa_portals_softc* %267, i32 0, i32 1
  %269 = load %struct.TYPE_2__*, %struct.TYPE_2__** %268, align 8
  %270 = load i32, i32* %7, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %269, i64 %271
  %273 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %272, i32 0, i32 2
  store i32* %266, i32** %273, align 8
  %274 = load %struct.resource_list_entry*, %struct.resource_list_entry** %9, align 8
  %275 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = load %struct.dpaa_portals_softc*, %struct.dpaa_portals_softc** %8, align 8
  %278 = getelementptr inbounds %struct.dpaa_portals_softc, %struct.dpaa_portals_softc* %277, i32 0, i32 1
  %279 = load %struct.TYPE_2__*, %struct.TYPE_2__** %278, align 8
  %280 = load i32, i32* %7, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %279, i64 %281
  %283 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %282, i32 0, i32 3
  store i64 %276, i64* %283, align 8
  %284 = load %struct.dpaa_portals_softc*, %struct.dpaa_portals_softc** %8, align 8
  %285 = getelementptr inbounds %struct.dpaa_portals_softc, %struct.dpaa_portals_softc* %284, i32 0, i32 1
  %286 = load %struct.TYPE_2__*, %struct.TYPE_2__** %285, align 8
  %287 = load i32, i32* %7, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %286, i64 %288
  %290 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %289, i32 0, i32 2
  %291 = load i32*, i32** %290, align 8
  %292 = icmp eq i32* %291, null
  br i1 %292, label %293, label %297

293:                                              ; preds = %181
  %294 = load i32, i32* %5, align 4
  %295 = call i32 @device_printf(i32 %294, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %296 = load i32, i32* @ENXIO, align 4
  store i32 %296, i32* %4, align 4
  br label %343

297:                                              ; preds = %181
  %298 = load %struct.dpaa_portals_softc*, %struct.dpaa_portals_softc** %8, align 8
  %299 = getelementptr inbounds %struct.dpaa_portals_softc, %struct.dpaa_portals_softc* %298, i32 0, i32 1
  %300 = load %struct.TYPE_2__*, %struct.TYPE_2__** %299, align 8
  %301 = load i32, i32* %7, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %300, i64 %302
  %304 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %303, i32 0, i32 2
  %305 = load i32*, i32** %304, align 8
  %306 = ptrtoint i32* %305 to i64
  %307 = load i32, i32* %7, align 4
  %308 = call i32 @XX_PreallocAndBindIntr(i64 %306, i32 %307)
  store i32 %308, i32* %10, align 4
  %309 = load i32, i32* %10, align 4
  %310 = load i32, i32* @E_OK, align 4
  %311 = icmp ne i32 %309, %310
  br i1 %311, label %312, label %342

312:                                              ; preds = %297
  %313 = load i32, i32* %5, align 4
  %314 = call i32 @device_printf(i32 %313, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %315 = load i32, i32* %5, align 4
  %316 = load i32, i32* @SYS_RES_IRQ, align 4
  %317 = load %struct.dpaa_portals_softc*, %struct.dpaa_portals_softc** %8, align 8
  %318 = getelementptr inbounds %struct.dpaa_portals_softc, %struct.dpaa_portals_softc* %317, i32 0, i32 1
  %319 = load %struct.TYPE_2__*, %struct.TYPE_2__** %318, align 8
  %320 = load i32, i32* %7, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %319, i64 %321
  %323 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %322, i32 0, i32 1
  %324 = load i32, i32* %323, align 4
  %325 = load %struct.dpaa_portals_softc*, %struct.dpaa_portals_softc** %8, align 8
  %326 = getelementptr inbounds %struct.dpaa_portals_softc, %struct.dpaa_portals_softc* %325, i32 0, i32 1
  %327 = load %struct.TYPE_2__*, %struct.TYPE_2__** %326, align 8
  %328 = load i32, i32* %7, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %327, i64 %329
  %331 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %330, i32 0, i32 2
  %332 = load i32*, i32** %331, align 8
  %333 = call i32 @bus_release_resource(i32 %315, i32 %316, i32 %324, i32* %332)
  %334 = load %struct.dpaa_portals_softc*, %struct.dpaa_portals_softc** %8, align 8
  %335 = getelementptr inbounds %struct.dpaa_portals_softc, %struct.dpaa_portals_softc* %334, i32 0, i32 1
  %336 = load %struct.TYPE_2__*, %struct.TYPE_2__** %335, align 8
  %337 = load i32, i32* %7, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %336, i64 %338
  %340 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %339, i32 0, i32 2
  store i32* null, i32** %340, align 8
  %341 = load i32, i32* @ENXIO, align 4
  store i32 %341, i32* %4, align 4
  br label %343

342:                                              ; preds = %297
  store i32 0, i32* %4, align 4
  br label %343

343:                                              ; preds = %342, %312, %293, %138, %72, %17
  %344 = load i32, i32* %4, align 4
  ret i32 %344
}

declare dso_local %struct.dpaa_portals_softc* @device_get_softc(i32) #1

declare dso_local i32 @XX_MallocSmartInit(...) #1

declare dso_local %struct.resource_list_entry* @resource_list_find(%struct.resource_list*, i32, i32) #1

declare dso_local i8* @bus_alloc_resource(i32, i32, i32*, i64, i64, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @tlb1_set_entry(i32, i64, i32, i32) #1

declare dso_local i32 @rman_get_bushandle(i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @XX_PreallocAndBindIntr(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
