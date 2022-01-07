; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_swap_pager.c_swap_pager_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_swap_pager.c_swap_pager_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32* }

@sw_alloc_sx = common dso_local global i32 0, align 4
@pager_object_list = common dso_local global i32 0, align 4
@OBJT_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @swap_pager_copy(%struct.TYPE_13__* %0, %struct.TYPE_13__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %10 = call i32 @VM_OBJECT_ASSERT_WLOCKED(%struct.TYPE_13__* %9)
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %12 = call i32 @VM_OBJECT_ASSERT_WLOCKED(%struct.TYPE_13__* %11)
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %46

15:                                               ; preds = %4
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %46

20:                                               ; preds = %15
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %22 = call i32 @vm_object_pip_add(%struct.TYPE_13__* %21, i32 1)
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %24 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_13__* %23)
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %26 = call i32 @vm_object_pip_add(%struct.TYPE_13__* %25, i32 1)
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %28 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_13__* %27)
  %29 = call i32 @sx_xlock(i32* @sw_alloc_sx)
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @NOBJLIST(i32* %32)
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %35 = load i32, i32* @pager_object_list, align 4
  %36 = call i32 @TAILQ_REMOVE(i32 %33, %struct.TYPE_13__* %34, i32 %35)
  %37 = call i32 @sx_xunlock(i32* @sw_alloc_sx)
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %39 = call i32 @VM_OBJECT_WLOCK(%struct.TYPE_13__* %38)
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %41 = call i32 @vm_object_pip_wakeup(%struct.TYPE_13__* %40)
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %43 = call i32 @VM_OBJECT_WLOCK(%struct.TYPE_13__* %42)
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %45 = call i32 @vm_object_pip_wakeup(%struct.TYPE_13__* %44)
  br label %46

46:                                               ; preds = %20, %15, %4
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @swp_pager_meta_transfer(%struct.TYPE_13__* %47, %struct.TYPE_13__* %48, i32 %49, i32 %52)
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %46
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %58 = call i32 @swp_pager_meta_free_all(%struct.TYPE_13__* %57)
  %59 = load i32, i32* @OBJT_DEFAULT, align 4
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  br label %62

62:                                               ; preds = %56, %46
  ret void
}

declare dso_local i32 @VM_OBJECT_ASSERT_WLOCKED(%struct.TYPE_13__*) #1

declare dso_local i32 @vm_object_pip_add(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_13__*) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @NOBJLIST(i32*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @VM_OBJECT_WLOCK(%struct.TYPE_13__*) #1

declare dso_local i32 @vm_object_pip_wakeup(%struct.TYPE_13__*) #1

declare dso_local i32 @swp_pager_meta_transfer(%struct.TYPE_13__*, %struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @swp_pager_meta_free_all(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
