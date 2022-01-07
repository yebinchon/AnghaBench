; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c_vm_page_rename.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c_vm_page_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"vm_page_rename: page %p has no refs\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"vm_page_rename: pindex already renamed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_page_rename(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %11 = call i32 @VM_OBJECT_ASSERT_WLOCKED(%struct.TYPE_14__* %10)
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %18 = bitcast %struct.TYPE_13__* %17 to i8*
  %19 = call i32 @KASSERT(i32 %16, i8* %18)
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load i64, i64* %7, align 8
  %23 = call %struct.TYPE_13__* @vm_radix_lookup_le(i32* %21, i64 %22)
  store %struct.TYPE_13__* %23, %struct.TYPE_13__** %8, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %25 = icmp eq %struct.TYPE_13__* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %3
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %7, align 8
  %31 = icmp ne i64 %29, %30
  br label %32

32:                                               ; preds = %26, %3
  %33 = phi i1 [ true, %3 ], [ %31, %26 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @KASSERT(i32 %34, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %9, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 1
  store i64 %39, i64* %41, align 8
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %45 = call i64 @vm_radix_insert(i32* %43, %struct.TYPE_13__* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %32
  %48 = load i64, i64* %9, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  store i32 1, i32* %4, align 4
  br label %69

51:                                               ; preds = %32
  %52 = load i64, i64* %9, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %56 = call i32 @vm_page_object_remove(%struct.TYPE_13__* %55)
  %57 = load i64, i64* %7, align 8
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 2
  store %struct.TYPE_14__* %60, %struct.TYPE_14__** %62, align 8
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %66 = call i32 @vm_page_insert_radixdone(%struct.TYPE_13__* %63, %struct.TYPE_14__* %64, %struct.TYPE_13__* %65)
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %68 = call i32 @vm_page_dirty(%struct.TYPE_13__* %67)
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %51, %47
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @VM_OBJECT_ASSERT_WLOCKED(%struct.TYPE_14__*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.TYPE_13__* @vm_radix_lookup_le(i32*, i64) #1

declare dso_local i64 @vm_radix_insert(i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @vm_page_object_remove(%struct.TYPE_13__*) #1

declare dso_local i32 @vm_page_insert_radixdone(%struct.TYPE_13__*, %struct.TYPE_14__*, %struct.TYPE_13__*) #1

declare dso_local i32 @vm_page_dirty(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
