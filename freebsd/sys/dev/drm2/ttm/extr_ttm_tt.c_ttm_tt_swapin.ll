; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_tt.c_ttm_tt_swapin.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_tt.c_ttm_tt_swapin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_tt = type { i32, i32, i32*, i32** }

@VM_ALLOC_NORMAL = common dso_local global i32 0, align 4
@VM_ALLOC_NOBUSY = common dso_local global i32 0, align 4
@VM_PAGER_OK = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TTM_PAGE_FLAG_PERSISTENT_SWAP = common dso_local global i32 0, align 4
@TTM_PAGE_FLAG_SWAPPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_tt_swapin(%struct.ttm_tt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ttm_tt*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ttm_tt* %0, %struct.ttm_tt** %3, align 8
  %10 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %11 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %4, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @VM_OBJECT_WLOCK(i32* %13)
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @vm_object_pip_add(i32* %15, i32 1)
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %56, %1
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %20 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %59

23:                                               ; preds = %17
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @VM_ALLOC_NORMAL, align 4
  %27 = load i32, i32* @VM_ALLOC_NOBUSY, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @vm_page_grab_valid(i32** %5, i32* %24, i32 %25, i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @VM_PAGER_OK, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %23
  %34 = load i32, i32* @EIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %8, align 4
  br label %82

36:                                               ; preds = %23
  %37 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %38 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %37, i32 0, i32 3
  %39 = load i32**, i32*** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32*, i32** %39, i64 %41
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** %6, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = icmp eq i32* %44, null
  %46 = zext i1 %45 to i32
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %36
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %8, align 4
  br label %82

52:                                               ; preds = %36
  %53 = load i32*, i32** %5, align 8
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @pmap_copy_page(i32* %53, i32* %54)
  br label %56

56:                                               ; preds = %52
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %17

59:                                               ; preds = %17
  %60 = load i32*, i32** %4, align 8
  %61 = call i32 @vm_object_pip_wakeup(i32* %60)
  %62 = load i32*, i32** %4, align 8
  %63 = call i32 @VM_OBJECT_WUNLOCK(i32* %62)
  %64 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %65 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @TTM_PAGE_FLAG_PERSISTENT_SWAP, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %59
  %71 = load i32*, i32** %4, align 8
  %72 = call i32 @vm_object_deallocate(i32* %71)
  br label %73

73:                                               ; preds = %70, %59
  %74 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %75 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %74, i32 0, i32 2
  store i32* null, i32** %75, align 8
  %76 = load i32, i32* @TTM_PAGE_FLAG_SWAPPED, align 4
  %77 = xor i32 %76, -1
  %78 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %79 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, %77
  store i32 %81, i32* %79, align 4
  store i32 0, i32* %2, align 4
  br label %88

82:                                               ; preds = %49, %33
  %83 = load i32*, i32** %4, align 8
  %84 = call i32 @vm_object_pip_wakeup(i32* %83)
  %85 = load i32*, i32** %4, align 8
  %86 = call i32 @VM_OBJECT_WUNLOCK(i32* %85)
  %87 = load i32, i32* %8, align 4
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %82, %73
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @VM_OBJECT_WLOCK(i32*) #1

declare dso_local i32 @vm_object_pip_add(i32*, i32) #1

declare dso_local i32 @vm_page_grab_valid(i32**, i32*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pmap_copy_page(i32*, i32*) #1

declare dso_local i32 @vm_object_pip_wakeup(i32*) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(i32*) #1

declare dso_local i32 @vm_object_deallocate(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
