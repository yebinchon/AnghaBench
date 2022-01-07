; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_bo_util.c_ttm_bo_kunmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_bo_util.c_ttm_bo_kunmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_bo_kmap_obj = type { i32, i32, i32*, i32*, i32*, %struct.ttm_buffer_object*, i32 }
%struct.ttm_buffer_object = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { %struct.ttm_mem_type_manager* }
%struct.ttm_mem_type_manager = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ttm_bo_kunmap(%struct.ttm_bo_kmap_obj* %0) #0 {
  %2 = alloca %struct.ttm_bo_kmap_obj*, align 8
  %3 = alloca %struct.ttm_buffer_object*, align 8
  %4 = alloca %struct.ttm_mem_type_manager*, align 8
  store %struct.ttm_bo_kmap_obj* %0, %struct.ttm_bo_kmap_obj** %2, align 8
  %5 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %2, align 8
  %6 = getelementptr inbounds %struct.ttm_bo_kmap_obj, %struct.ttm_bo_kmap_obj* %5, i32 0, i32 5
  %7 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  store %struct.ttm_buffer_object* %7, %struct.ttm_buffer_object** %3, align 8
  %8 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %9 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %11, align 8
  %13 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %14 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %12, i64 %16
  store %struct.ttm_mem_type_manager* %17, %struct.ttm_mem_type_manager** %4, align 8
  %18 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %2, align 8
  %19 = getelementptr inbounds %struct.ttm_bo_kmap_obj, %struct.ttm_bo_kmap_obj* %18, i32 0, i32 4
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  br label %84

23:                                               ; preds = %1
  %24 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %2, align 8
  %25 = getelementptr inbounds %struct.ttm_bo_kmap_obj, %struct.ttm_bo_kmap_obj* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %61 [
    i32 131, label %27
    i32 128, label %36
    i32 130, label %55
    i32 129, label %60
  ]

27:                                               ; preds = %23
  %28 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %2, align 8
  %29 = getelementptr inbounds %struct.ttm_bo_kmap_obj, %struct.ttm_bo_kmap_obj* %28, i32 0, i32 4
  %30 = load i32*, i32** %29, align 8
  %31 = ptrtoint i32* %30 to i32
  %32 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %2, align 8
  %33 = getelementptr inbounds %struct.ttm_bo_kmap_obj, %struct.ttm_bo_kmap_obj* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @pmap_unmapdev(i32 %31, i32 %34)
  br label %63

36:                                               ; preds = %23
  %37 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %2, align 8
  %38 = getelementptr inbounds %struct.ttm_bo_kmap_obj, %struct.ttm_bo_kmap_obj* %37, i32 0, i32 4
  %39 = load i32*, i32** %38, align 8
  %40 = ptrtoint i32* %39 to i32
  %41 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %2, align 8
  %42 = getelementptr inbounds %struct.ttm_bo_kmap_obj, %struct.ttm_bo_kmap_obj* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @pmap_qremove(i32 %40, i32 %43)
  %45 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %2, align 8
  %46 = getelementptr inbounds %struct.ttm_bo_kmap_obj, %struct.ttm_bo_kmap_obj* %45, i32 0, i32 4
  %47 = load i32*, i32** %46, align 8
  %48 = ptrtoint i32* %47 to i32
  %49 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %2, align 8
  %50 = getelementptr inbounds %struct.ttm_bo_kmap_obj, %struct.ttm_bo_kmap_obj* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @PAGE_SIZE, align 4
  %53 = mul nsw i32 %51, %52
  %54 = call i32 @kva_free(i32 %48, i32 %53)
  br label %63

55:                                               ; preds = %23
  %56 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %2, align 8
  %57 = getelementptr inbounds %struct.ttm_bo_kmap_obj, %struct.ttm_bo_kmap_obj* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @sf_buf_free(i32* %58)
  br label %63

60:                                               ; preds = %23
  br label %63

61:                                               ; preds = %23
  %62 = call i32 @MPASS(i32 0)
  br label %63

63:                                               ; preds = %61, %60, %55, %36, %27
  %64 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %4, align 8
  %65 = call i32 @ttm_mem_io_lock(%struct.ttm_mem_type_manager* %64, i32 0)
  %66 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %2, align 8
  %67 = getelementptr inbounds %struct.ttm_bo_kmap_obj, %struct.ttm_bo_kmap_obj* %66, i32 0, i32 5
  %68 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %67, align 8
  %69 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %68, i32 0, i32 1
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %2, align 8
  %72 = getelementptr inbounds %struct.ttm_bo_kmap_obj, %struct.ttm_bo_kmap_obj* %71, i32 0, i32 5
  %73 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %72, align 8
  %74 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %73, i32 0, i32 0
  %75 = call i32 @ttm_mem_io_free(%struct.TYPE_3__* %70, %struct.TYPE_4__* %74)
  %76 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %4, align 8
  %77 = call i32 @ttm_mem_io_unlock(%struct.ttm_mem_type_manager* %76)
  %78 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %2, align 8
  %79 = getelementptr inbounds %struct.ttm_bo_kmap_obj, %struct.ttm_bo_kmap_obj* %78, i32 0, i32 4
  store i32* null, i32** %79, align 8
  %80 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %2, align 8
  %81 = getelementptr inbounds %struct.ttm_bo_kmap_obj, %struct.ttm_bo_kmap_obj* %80, i32 0, i32 3
  store i32* null, i32** %81, align 8
  %82 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %2, align 8
  %83 = getelementptr inbounds %struct.ttm_bo_kmap_obj, %struct.ttm_bo_kmap_obj* %82, i32 0, i32 2
  store i32* null, i32** %83, align 8
  br label %84

84:                                               ; preds = %63, %22
  ret void
}

declare dso_local i32 @pmap_unmapdev(i32, i32) #1

declare dso_local i32 @pmap_qremove(i32, i32) #1

declare dso_local i32 @kva_free(i32, i32) #1

declare dso_local i32 @sf_buf_free(i32*) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @ttm_mem_io_lock(%struct.ttm_mem_type_manager*, i32) #1

declare dso_local i32 @ttm_mem_io_free(%struct.TYPE_3__*, %struct.TYPE_4__*) #1

declare dso_local i32 @ttm_mem_io_unlock(%struct.ttm_mem_type_manager*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
