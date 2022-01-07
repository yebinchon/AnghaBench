; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_object.c_vm_object_populate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_object.c_vm_object_populate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }

@VM_ALLOC_NORMAL = common dso_local global i32 0, align 4
@VM_PAGER_OK = common dso_local global i32 0, align 4
@listq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_object_populate(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @VM_OBJECT_ASSERT_WLOCKED(i32 %10)
  %12 = load i64, i64* %5, align 8
  store i64 %12, i64* %8, align 8
  br label %13

13:                                               ; preds = %27, %3
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* %6, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %13
  %18 = load i32, i32* %4, align 4
  %19 = load i64, i64* %8, align 8
  %20 = load i32, i32* @VM_ALLOC_NORMAL, align 4
  %21 = call i32 @vm_page_grab_valid(%struct.TYPE_7__** %7, i32 %18, i64 %19, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @VM_PAGER_OK, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %30

26:                                               ; preds = %17
  br label %27

27:                                               ; preds = %26
  %28 = load i64, i64* %8, align 8
  %29 = add nsw i64 %28, 1
  store i64 %29, i64* %8, align 8
  br label %13

30:                                               ; preds = %25, %13
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* %5, align 8
  %33 = icmp sgt i64 %31, %32
  br i1 %33, label %34, label %56

34:                                               ; preds = %30
  %35 = load i32, i32* %4, align 4
  %36 = load i64, i64* %5, align 8
  %37 = call %struct.TYPE_7__* @vm_page_lookup(i32 %35, i64 %36)
  store %struct.TYPE_7__* %37, %struct.TYPE_7__** %7, align 8
  br label %38

38:                                               ; preds = %49, %34
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %40 = icmp ne %struct.TYPE_7__* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %8, align 8
  %46 = icmp slt i64 %44, %45
  br label %47

47:                                               ; preds = %41, %38
  %48 = phi i1 [ false, %38 ], [ %46, %41 ]
  br i1 %48, label %49, label %55

49:                                               ; preds = %47
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %51 = call i32 @vm_page_xunbusy(%struct.TYPE_7__* %50)
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %53 = load i32, i32* @listq, align 4
  %54 = call %struct.TYPE_7__* @TAILQ_NEXT(%struct.TYPE_7__* %52, i32 %53)
  store %struct.TYPE_7__* %54, %struct.TYPE_7__** %7, align 8
  br label %38

55:                                               ; preds = %47
  br label %56

56:                                               ; preds = %55, %30
  %57 = load i64, i64* %8, align 8
  %58 = load i64, i64* %6, align 8
  %59 = icmp eq i64 %57, %58
  %60 = zext i1 %59 to i32
  ret i32 %60
}

declare dso_local i32 @VM_OBJECT_ASSERT_WLOCKED(i32) #1

declare dso_local i32 @vm_page_grab_valid(%struct.TYPE_7__**, i32, i64, i32) #1

declare dso_local %struct.TYPE_7__* @vm_page_lookup(i32, i64) #1

declare dso_local i32 @vm_page_xunbusy(%struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_7__* @TAILQ_NEXT(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
