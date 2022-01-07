; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c_vm_page_advise.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c_vm_page_advise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32 }

@MADV_FREE = common dso_local global i32 0, align 4
@MADV_DONTNEED = common dso_local global i32 0, align 4
@MADV_WILLNEED = common dso_local global i32 0, align 4
@PGA_REFERENCED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_page_advise(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %6 = call i32 @vm_page_assert_locked(%struct.TYPE_12__* %5)
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @VM_OBJECT_ASSERT_WLOCKED(i32 %9)
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @MADV_FREE, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %16 = call i32 @vm_page_undirty(%struct.TYPE_12__* %15)
  br label %30

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @MADV_DONTNEED, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @MADV_WILLNEED, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %27 = call i32 @vm_page_activate(%struct.TYPE_12__* %26)
  br label %28

28:                                               ; preds = %25, %21
  br label %65

29:                                               ; preds = %17
  br label %30

30:                                               ; preds = %29, %14
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %32 = load i32, i32* @PGA_REFERENCED, align 4
  %33 = call i32 @vm_page_aflag_clear(%struct.TYPE_12__* %31, i32 %32)
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @MADV_FREE, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %30
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %44 = call i64 @pmap_is_modified(%struct.TYPE_12__* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %48 = call i32 @vm_page_dirty(%struct.TYPE_12__* %47)
  br label %49

49:                                               ; preds = %46, %42, %37, %30
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %56 = call i32 @vm_page_deactivate_noreuse(%struct.TYPE_12__* %55)
  br label %65

57:                                               ; preds = %49
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %59 = call i32 @vm_page_in_laundry(%struct.TYPE_12__* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %57
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %63 = call i32 @vm_page_launder(%struct.TYPE_12__* %62)
  br label %64

64:                                               ; preds = %61, %57
  br label %65

65:                                               ; preds = %28, %64, %54
  ret void
}

declare dso_local i32 @vm_page_assert_locked(%struct.TYPE_12__*) #1

declare dso_local i32 @VM_OBJECT_ASSERT_WLOCKED(i32) #1

declare dso_local i32 @vm_page_undirty(%struct.TYPE_12__*) #1

declare dso_local i32 @vm_page_activate(%struct.TYPE_12__*) #1

declare dso_local i32 @vm_page_aflag_clear(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @pmap_is_modified(%struct.TYPE_12__*) #1

declare dso_local i32 @vm_page_dirty(%struct.TYPE_12__*) #1

declare dso_local i32 @vm_page_deactivate_noreuse(%struct.TYPE_12__*) #1

declare dso_local i32 @vm_page_in_laundry(%struct.TYPE_12__*) #1

declare dso_local i32 @vm_page_launder(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
