; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_object.c_vm_object_page_noreuse.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_object.c_vm_object_page_noreuse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64 }
%struct.mtx = type { i32 }
%struct.TYPE_11__ = type { i64 }

@OBJ_FICTITIOUS = common dso_local global i32 0, align 4
@OBJ_UNMANAGED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"vm_object_page_noreuse: illegal object %p\00", align 1
@listq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_object_page_noreuse(%struct.TYPE_12__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mtx*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %11 = call i32 @VM_OBJECT_ASSERT_LOCKED(%struct.TYPE_12__* %10)
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @OBJ_FICTITIOUS, align 4
  %16 = load i32, i32* @OBJ_UNMANAGED, align 4
  %17 = or i32 %15, %16
  %18 = and i32 %14, %17
  %19 = icmp eq i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %22 = bitcast %struct.TYPE_12__* %21 to i8*
  %23 = call i32 @KASSERT(i32 %20, i8* %22)
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  br label %65

29:                                               ; preds = %3
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %31 = load i64, i64* %5, align 8
  %32 = call %struct.TYPE_11__* @vm_page_find_least(%struct.TYPE_12__* %30, i64 %31)
  store %struct.TYPE_11__* %32, %struct.TYPE_11__** %8, align 8
  store %struct.mtx* null, %struct.mtx** %7, align 8
  br label %33

33:                                               ; preds = %57, %29
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %35 = icmp ne %struct.TYPE_11__* %34, null
  br i1 %35, label %36, label %47

36:                                               ; preds = %33
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %6, align 8
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = load i64, i64* %6, align 8
  %44 = icmp eq i64 %43, 0
  br label %45

45:                                               ; preds = %42, %36
  %46 = phi i1 [ true, %36 ], [ %44, %42 ]
  br label %47

47:                                               ; preds = %45, %33
  %48 = phi i1 [ false, %33 ], [ %46, %45 ]
  br i1 %48, label %49, label %59

49:                                               ; preds = %47
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %51 = load i32, i32* @listq, align 4
  %52 = call %struct.TYPE_11__* @TAILQ_NEXT(%struct.TYPE_11__* %50, i32 %51)
  store %struct.TYPE_11__* %52, %struct.TYPE_11__** %9, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %54 = call i32 @vm_page_change_lock(%struct.TYPE_11__* %53, %struct.mtx** %7)
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %56 = call i32 @vm_page_deactivate_noreuse(%struct.TYPE_11__* %55)
  br label %57

57:                                               ; preds = %49
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  store %struct.TYPE_11__* %58, %struct.TYPE_11__** %8, align 8
  br label %33

59:                                               ; preds = %47
  %60 = load %struct.mtx*, %struct.mtx** %7, align 8
  %61 = icmp ne %struct.mtx* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load %struct.mtx*, %struct.mtx** %7, align 8
  %64 = call i32 @mtx_unlock(%struct.mtx* %63)
  br label %65

65:                                               ; preds = %28, %62, %59
  ret void
}

declare dso_local i32 @VM_OBJECT_ASSERT_LOCKED(%struct.TYPE_12__*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.TYPE_11__* @vm_page_find_least(%struct.TYPE_12__*, i64) #1

declare dso_local %struct.TYPE_11__* @TAILQ_NEXT(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @vm_page_change_lock(%struct.TYPE_11__*, %struct.mtx**) #1

declare dso_local i32 @vm_page_deactivate_noreuse(%struct.TYPE_11__*) #1

declare dso_local i32 @mtx_unlock(%struct.mtx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
