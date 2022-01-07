; ModuleID = '/home/carl/AnghaBench/freebsd/tools/bus_space/extr_busdma.c_bd_mem_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/bus_space/extr_busdma.c_bd_mem_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proto_ioc_busdma = type { i32, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i64, i64, i32, i32 }
%struct.obj = type { i32, i32, %struct.obj*, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@OBJ_TYPE_TAG = common dso_local global i32 0, align 4
@OBJ_TYPE_MD = common dso_local global i32 0, align 4
@PROTO_IOC_BUSDMA_MEM_ALLOC = common dso_local global i32 0, align 4
@PROTO_IOC_BUSDMA = common dso_local global i32 0, align 4
@BUSDMA_MD_PHYS = common dso_local global i32 0, align 4
@BUSDMA_MD_BUS = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_NOCORE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i64 0, align 8
@BUSDMA_MD_VIRT = common dso_local global i32 0, align 4
@PROTO_IOC_BUSDMA_MEM_FREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bd_mem_alloc(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.proto_ioc_busdma, align 8
  %7 = alloca %struct.obj*, align 8
  %8 = alloca %struct.obj*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @OBJ_TYPE_TAG, align 4
  %13 = call %struct.obj* @obj_lookup(i32 %11, i32 %12)
  store %struct.obj* %13, %struct.obj** %8, align 8
  %14 = load %struct.obj*, %struct.obj** %8, align 8
  %15 = icmp eq %struct.obj* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %160

17:                                               ; preds = %2
  %18 = load i32, i32* @OBJ_TYPE_MD, align 4
  %19 = call %struct.obj* @obj_alloc(i32 %18)
  store %struct.obj* %19, %struct.obj** %7, align 8
  %20 = load %struct.obj*, %struct.obj** %7, align 8
  %21 = icmp eq %struct.obj* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 -1, i32* %3, align 4
  br label %160

23:                                               ; preds = %17
  %24 = call i32 @memset(%struct.proto_ioc_busdma* %6, i32 0, i32 48)
  %25 = load i32, i32* @PROTO_IOC_BUSDMA_MEM_ALLOC, align 4
  %26 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %6, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = load %struct.obj*, %struct.obj** %8, align 8
  %28 = getelementptr inbounds %struct.obj, %struct.obj* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %6, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 5
  store i32 %29, i32* %32, align 4
  %33 = load i32, i32* %5, align 4
  %34 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %6, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 4
  store i32 %33, i32* %36, align 8
  %37 = load %struct.obj*, %struct.obj** %8, align 8
  %38 = getelementptr inbounds %struct.obj, %struct.obj* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @PROTO_IOC_BUSDMA, align 4
  %41 = call i32 @ioctl(i32 %39, i32 %40, %struct.proto_ioc_busdma* %6)
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %46

43:                                               ; preds = %23
  %44 = load %struct.obj*, %struct.obj** %7, align 8
  %45 = call i32 @obj_free(%struct.obj* %44)
  store i32 -1, i32* %3, align 4
  br label %160

46:                                               ; preds = %23
  %47 = load %struct.obj*, %struct.obj** %7, align 8
  %48 = getelementptr inbounds %struct.obj, %struct.obj* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = load %struct.obj*, %struct.obj** %8, align 8
  %50 = getelementptr inbounds %struct.obj, %struct.obj* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.obj*, %struct.obj** %7, align 8
  %53 = getelementptr inbounds %struct.obj, %struct.obj* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 8
  %54 = load %struct.obj*, %struct.obj** %8, align 8
  %55 = load %struct.obj*, %struct.obj** %7, align 8
  %56 = getelementptr inbounds %struct.obj, %struct.obj* %55, i32 0, i32 2
  store %struct.obj* %54, %struct.obj** %56, align 8
  %57 = load %struct.obj*, %struct.obj** %8, align 8
  %58 = getelementptr inbounds %struct.obj, %struct.obj* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 8
  %61 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %6, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.obj*, %struct.obj** %7, align 8
  %64 = getelementptr inbounds %struct.obj, %struct.obj* %63, i32 0, i32 4
  store i32 %62, i32* %64, align 4
  %65 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %6, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp eq i32 %68, 1
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  %72 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %6, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, 1
  %77 = zext i1 %76 to i32
  %78 = call i32 @assert(i32 %77)
  %79 = load %struct.obj*, %struct.obj** %7, align 8
  %80 = load i32, i32* @BUSDMA_MD_PHYS, align 4
  %81 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %6, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.obj*, %struct.obj** %8, align 8
  %86 = getelementptr inbounds %struct.obj, %struct.obj* %85, i32 0, i32 5
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @bd_md_add_seg(%struct.obj* %79, i32 %80, i64 %84, i32 %89)
  store i32 %90, i32* %10, align 4
  %91 = load %struct.obj*, %struct.obj** %7, align 8
  %92 = load i32, i32* @BUSDMA_MD_BUS, align 4
  %93 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %6, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.obj*, %struct.obj** %8, align 8
  %98 = getelementptr inbounds %struct.obj, %struct.obj* %97, i32 0, i32 5
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @bd_md_add_seg(%struct.obj* %91, i32 %92, i64 %96, i32 %101)
  store i32 %102, i32* %10, align 4
  %103 = load %struct.obj*, %struct.obj** %8, align 8
  %104 = getelementptr inbounds %struct.obj, %struct.obj* %103, i32 0, i32 5
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @PROT_READ, align 4
  %109 = load i32, i32* @PROT_WRITE, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @MAP_NOCORE, align 4
  %112 = load i32, i32* @MAP_SHARED, align 4
  %113 = or i32 %111, %112
  %114 = load %struct.obj*, %struct.obj** %7, align 8
  %115 = getelementptr inbounds %struct.obj, %struct.obj* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %6, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = call i64 @mmap(i32* null, i32 %107, i32 %110, i32 %113, i32 %116, i64 %120)
  store i64 %121, i64* %9, align 8
  %122 = load i64, i64* %9, align 8
  %123 = load i64, i64* @MAP_FAILED, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %46
  br label %139

126:                                              ; preds = %46
  %127 = load %struct.obj*, %struct.obj** %7, align 8
  %128 = load i32, i32* @BUSDMA_MD_VIRT, align 4
  %129 = load i64, i64* %9, align 8
  %130 = load %struct.obj*, %struct.obj** %8, align 8
  %131 = getelementptr inbounds %struct.obj, %struct.obj* %130, i32 0, i32 5
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @bd_md_add_seg(%struct.obj* %127, i32 %128, i64 %129, i32 %134)
  store i32 %135, i32* %10, align 4
  %136 = load %struct.obj*, %struct.obj** %7, align 8
  %137 = getelementptr inbounds %struct.obj, %struct.obj* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  store i32 %138, i32* %3, align 4
  br label %160

139:                                              ; preds = %125
  %140 = call i32 @memset(%struct.proto_ioc_busdma* %6, i32 0, i32 48)
  %141 = load i32, i32* @PROTO_IOC_BUSDMA_MEM_FREE, align 4
  %142 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %6, i32 0, i32 1
  store i32 %141, i32* %142, align 4
  %143 = load %struct.obj*, %struct.obj** %7, align 8
  %144 = getelementptr inbounds %struct.obj, %struct.obj* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 4
  %146 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %6, i32 0, i32 0
  store i32 %145, i32* %146, align 8
  %147 = load %struct.obj*, %struct.obj** %7, align 8
  %148 = getelementptr inbounds %struct.obj, %struct.obj* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @PROTO_IOC_BUSDMA, align 4
  %151 = call i32 @ioctl(i32 %149, i32 %150, %struct.proto_ioc_busdma* %6)
  %152 = load %struct.obj*, %struct.obj** %7, align 8
  %153 = getelementptr inbounds %struct.obj, %struct.obj* %152, i32 0, i32 2
  %154 = load %struct.obj*, %struct.obj** %153, align 8
  %155 = getelementptr inbounds %struct.obj, %struct.obj* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = add nsw i32 %156, -1
  store i32 %157, i32* %155, align 8
  %158 = load %struct.obj*, %struct.obj** %7, align 8
  %159 = call i32 @obj_free(%struct.obj* %158)
  store i32 -1, i32* %3, align 4
  br label %160

160:                                              ; preds = %139, %126, %43, %22, %16
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local %struct.obj* @obj_lookup(i32, i32) #1

declare dso_local %struct.obj* @obj_alloc(i32) #1

declare dso_local i32 @memset(%struct.proto_ioc_busdma*, i32, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.proto_ioc_busdma*) #1

declare dso_local i32 @obj_free(%struct.obj*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @bd_md_add_seg(%struct.obj*, i32, i64, i32) #1

declare dso_local i64 @mmap(i32*, i32, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
