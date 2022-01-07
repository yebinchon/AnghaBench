; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_tt.c_ttm_tt_swapout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_tt.c_ttm_tt_swapout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.ttm_tt = type { i64, i64, i32, i32, i32*, %struct.TYPE_5__*, i32** }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.ttm_tt*)* }

@tt_unbound = common dso_local global i64 0, align 8
@tt_unpopulated = common dso_local global i64 0, align 8
@tt_cached = common dso_local global i64 0, align 8
@OBJT_SWAP = common dso_local global i32 0, align 4
@VM_PROT_DEFAULT = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [38 x i8] c"[TTM] Failed allocating swap storage\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@VM_ALLOC_NORMAL = common dso_local global i32 0, align 4
@TTM_PAGE_FLAG_SWAPPED = common dso_local global i32 0, align 4
@TTM_PAGE_FLAG_PERSISTENT_SWAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_tt_swapout(%struct.ttm_tt* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ttm_tt*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.ttm_tt* %0, %struct.ttm_tt** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %11 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @tt_unbound, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %17 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @tt_unpopulated, align 8
  %20 = icmp eq i64 %18, %19
  br label %21

21:                                               ; preds = %15, %2
  %22 = phi i1 [ true, %2 ], [ %20, %15 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @MPASS(i32 %23)
  %25 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %26 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @tt_cached, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @MPASS(i32 %30)
  %32 = load i32*, i32** %5, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %52

34:                                               ; preds = %21
  %35 = load i32, i32* @OBJT_SWAP, align 4
  %36 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %37 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @IDX_TO_OFF(i32 %38)
  %40 = load i32, i32* @VM_PROT_DEFAULT, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curthread, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32* @vm_pager_allocate(i32 %35, i32* null, i32 %39, i32 %40, i32 0, i32 %43)
  store i32* %44, i32** %6, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %34
  %48 = call i32 @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %127

51:                                               ; preds = %34
  br label %54

52:                                               ; preds = %21
  %53 = load i32*, i32** %5, align 8
  store i32* %53, i32** %6, align 8
  br label %54

54:                                               ; preds = %52, %51
  %55 = load i32*, i32** %6, align 8
  %56 = call i32 @VM_OBJECT_WLOCK(i32* %55)
  %57 = load i32*, i32** %6, align 8
  %58 = call i32 @vm_object_pip_add(i32* %57, i32 1)
  store i32 0, i32* %9, align 4
  br label %59

59:                                               ; preds = %93, %54
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %62 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %96

65:                                               ; preds = %59
  %66 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %67 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %66, i32 0, i32 6
  %68 = load i32**, i32*** %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32*, i32** %68, i64 %70
  %72 = load i32*, i32** %71, align 8
  store i32* %72, i32** %7, align 8
  %73 = load i32*, i32** %7, align 8
  %74 = icmp eq i32* %73, null
  %75 = zext i1 %74 to i32
  %76 = call i64 @unlikely(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %65
  br label %93

79:                                               ; preds = %65
  %80 = load i32*, i32** %6, align 8
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @VM_ALLOC_NORMAL, align 4
  %83 = call i32* @vm_page_grab(i32* %80, i32 %81, i32 %82)
  store i32* %83, i32** %8, align 8
  %84 = load i32*, i32** %7, align 8
  %85 = load i32*, i32** %8, align 8
  %86 = call i32 @pmap_copy_page(i32* %84, i32* %85)
  %87 = load i32*, i32** %8, align 8
  %88 = call i32 @vm_page_valid(i32* %87)
  %89 = load i32*, i32** %8, align 8
  %90 = call i32 @vm_page_dirty(i32* %89)
  %91 = load i32*, i32** %8, align 8
  %92 = call i32 @vm_page_xunbusy(i32* %91)
  br label %93

93:                                               ; preds = %79, %78
  %94 = load i32, i32* %9, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %9, align 4
  br label %59

96:                                               ; preds = %59
  %97 = load i32*, i32** %6, align 8
  %98 = call i32 @vm_object_pip_wakeup(i32* %97)
  %99 = load i32*, i32** %6, align 8
  %100 = call i32 @VM_OBJECT_WUNLOCK(i32* %99)
  %101 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %102 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %101, i32 0, i32 5
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32 (%struct.ttm_tt*)*, i32 (%struct.ttm_tt*)** %106, align 8
  %108 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %109 = call i32 %107(%struct.ttm_tt* %108)
  %110 = load i32*, i32** %6, align 8
  %111 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %112 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %111, i32 0, i32 4
  store i32* %110, i32** %112, align 8
  %113 = load i32, i32* @TTM_PAGE_FLAG_SWAPPED, align 4
  %114 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %115 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %113
  store i32 %117, i32* %115, align 4
  %118 = load i32*, i32** %5, align 8
  %119 = icmp ne i32* %118, null
  br i1 %119, label %120, label %126

120:                                              ; preds = %96
  %121 = load i32, i32* @TTM_PAGE_FLAG_PERSISTENT_SWAP, align 4
  %122 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %123 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %124, %121
  store i32 %125, i32* %123, align 4
  br label %126

126:                                              ; preds = %120, %96
  store i32 0, i32* %3, align 4
  br label %127

127:                                              ; preds = %126, %47
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32* @vm_pager_allocate(i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @IDX_TO_OFF(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @VM_OBJECT_WLOCK(i32*) #1

declare dso_local i32 @vm_object_pip_add(i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32* @vm_page_grab(i32*, i32, i32) #1

declare dso_local i32 @pmap_copy_page(i32*, i32*) #1

declare dso_local i32 @vm_page_valid(i32*) #1

declare dso_local i32 @vm_page_dirty(i32*) #1

declare dso_local i32 @vm_page_xunbusy(i32*) #1

declare dso_local i32 @vm_object_pip_wakeup(i32*) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
