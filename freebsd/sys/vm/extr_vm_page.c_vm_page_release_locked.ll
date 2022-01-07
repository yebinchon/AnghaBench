; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c_vm_page_release_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c_vm_page_release_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }

@VPO_UNMANAGED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"vm_page_release_locked: page %p is unmanaged\00", align 1
@VPR_TRYFREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_page_release_locked(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 2
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %8 = call i32 @VM_OBJECT_ASSERT_WLOCKED(%struct.TYPE_11__* %7)
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @VPO_UNMANAGED, align 4
  %13 = and i32 %11, %12
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %17 = bitcast %struct.TYPE_12__* %16 to i8*
  %18 = call i32 @KASSERT(i32 %15, i8* %17)
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %20 = call i64 @vm_page_unwire_noq(%struct.TYPE_12__* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %59

22:                                               ; preds = %2
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @VPR_TRYFREE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %50

27:                                               ; preds = %22
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %27
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %36 = call i32 @pmap_page_is_mapped(%struct.TYPE_12__* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %50, label %38

38:                                               ; preds = %34, %27
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %45 = call i32 @vm_page_busied(%struct.TYPE_12__* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %49 = call i32 @vm_page_free(%struct.TYPE_12__* %48)
  br label %58

50:                                               ; preds = %43, %38, %34, %22
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %52 = call i32 @vm_page_lock(%struct.TYPE_12__* %51)
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @vm_page_release_toq(%struct.TYPE_12__* %53, i32 %54)
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %57 = call i32 @vm_page_unlock(%struct.TYPE_12__* %56)
  br label %58

58:                                               ; preds = %50, %47
  br label %59

59:                                               ; preds = %58, %2
  ret void
}

declare dso_local i32 @VM_OBJECT_ASSERT_WLOCKED(%struct.TYPE_11__*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @vm_page_unwire_noq(%struct.TYPE_12__*) #1

declare dso_local i32 @pmap_page_is_mapped(%struct.TYPE_12__*) #1

declare dso_local i32 @vm_page_busied(%struct.TYPE_12__*) #1

declare dso_local i32 @vm_page_free(%struct.TYPE_12__*) #1

declare dso_local i32 @vm_page_lock(%struct.TYPE_12__*) #1

declare dso_local i32 @vm_page_release_toq(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @vm_page_unlock(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
