; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c_vm_page_set_invalid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c_vm_page_set_invalid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i64, i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, i64, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }

@OBJT_VNODE = common dso_local global i64 0, align 8
@VM_PAGE_BITS_ALL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"vm_page_set_invalid: page %p is mapped\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_page_set_invalid(%struct.TYPE_15__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 3
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  store %struct.TYPE_16__* %11, %struct.TYPE_16__** %8, align 8
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %13 = call i32 @VM_OBJECT_ASSERT_WLOCKED(%struct.TYPE_16__* %12)
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %15 = call i32 @vm_page_assert_busied(%struct.TYPE_15__* %14)
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @OBJT_VNODE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %40

21:                                               ; preds = %3
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %21
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @IDX_TO_OFF(i32 %27)
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %28, %30
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp sge i64 %31, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %24
  %39 = load i64, i64* @VM_PAGE_BITS_ALL, align 8
  store i64 %39, i64* %7, align 8
  br label %44

40:                                               ; preds = %24, %21, %3
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i64 @vm_page_bits(i32 %41, i32 %42)
  store i64 %43, i64* %7, align 8
  br label %44

44:                                               ; preds = %40, %38
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %44
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %51 = call i64 @vm_page_all_valid(%struct.TYPE_15__* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load i64, i64* %7, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %58 = call i32 @pmap_remove_all(%struct.TYPE_15__* %57)
  br label %59

59:                                               ; preds = %56, %53, %49, %44
  %60 = load i64, i64* %7, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %64 = call i64 @vm_page_all_valid(%struct.TYPE_15__* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %62, %59
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %68 = call i32 @pmap_page_is_mapped(%struct.TYPE_15__* %67)
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  br label %71

71:                                               ; preds = %66, %62
  %72 = phi i1 [ true, %62 ], [ %70, %66 ]
  %73 = zext i1 %72 to i32
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %75 = bitcast %struct.TYPE_15__* %74 to i8*
  %76 = call i32 @KASSERT(i32 %73, i8* %75)
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %78 = call i64 @vm_page_xbusied(%struct.TYPE_15__* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %71
  %81 = load i64, i64* %7, align 8
  %82 = xor i64 %81, -1
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = and i64 %85, %82
  store i64 %86, i64* %84, align 8
  %87 = load i64, i64* %7, align 8
  %88 = xor i64 %87, -1
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = and i64 %91, %88
  store i64 %92, i64* %90, align 8
  br label %104

93:                                               ; preds = %71
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 0
  %97 = load i64, i64* %7, align 8
  %98 = call i32 @vm_page_bits_clear(%struct.TYPE_15__* %94, i64* %96, i64 %97)
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 1
  %102 = load i64, i64* %7, align 8
  %103 = call i32 @vm_page_bits_clear(%struct.TYPE_15__* %99, i64* %101, i64 %102)
  br label %104

104:                                              ; preds = %93, %80
  ret void
}

declare dso_local i32 @VM_OBJECT_ASSERT_WLOCKED(%struct.TYPE_16__*) #1

declare dso_local i32 @vm_page_assert_busied(%struct.TYPE_15__*) #1

declare dso_local i64 @IDX_TO_OFF(i32) #1

declare dso_local i64 @vm_page_bits(i32, i32) #1

declare dso_local i64 @vm_page_all_valid(%struct.TYPE_15__*) #1

declare dso_local i32 @pmap_remove_all(%struct.TYPE_15__*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @pmap_page_is_mapped(%struct.TYPE_15__*) #1

declare dso_local i64 @vm_page_xbusied(%struct.TYPE_15__*) #1

declare dso_local i32 @vm_page_bits_clear(%struct.TYPE_15__*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
