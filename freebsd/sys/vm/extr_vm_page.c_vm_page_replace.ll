; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c_vm_page_replace.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c_vm_page_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i64, %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { i32, i32 }

@VPRC_OBJREF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"vm_page_replace: page %p already in object\00", align 1
@PQ_NONE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"vm_page_replace: old page %p is on a paging queue\00", align 1
@listq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_15__* @vm_page_replace(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %9 = call i32 @VM_OBJECT_ASSERT_WLOCKED(%struct.TYPE_16__* %8)
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %13 = icmp eq %struct.TYPE_16__* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @VPRC_OBJREF, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br label %21

21:                                               ; preds = %14, %3
  %22 = phi i1 [ false, %3 ], [ %20, %14 ]
  %23 = zext i1 %22 to i32
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %25 = bitcast %struct.TYPE_15__* %24 to i8*
  %26 = call i32 @KASSERT(i32 %23, i8* %25)
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 2
  store %struct.TYPE_16__* %27, %struct.TYPE_16__** %29, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  %35 = load i32, i32* @VPRC_OBJREF, align 4
  %36 = call i32 @atomic_set_int(i32* %34, i32 %35)
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %40 = call %struct.TYPE_15__* @vm_radix_replace(i32* %38, %struct.TYPE_15__* %39)
  store %struct.TYPE_15__* %40, %struct.TYPE_15__** %7, align 8
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @PQ_NONE, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %48 = bitcast %struct.TYPE_15__* %47 to i8*
  %49 = call i32 @KASSERT(i32 %46, i8* %48)
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %54 = load i32, i32* @listq, align 4
  %55 = call i32 @TAILQ_INSERT_AFTER(i32* %51, %struct.TYPE_15__* %52, %struct.TYPE_15__* %53, i32 %54)
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %59 = load i32, i32* @listq, align 4
  %60 = call i32 @TAILQ_REMOVE(i32* %57, %struct.TYPE_15__* %58, i32 %59)
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 2
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %62, align 8
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = load i32, i32* @VPRC_OBJREF, align 4
  %66 = call i32 @atomic_clear_int(i32* %64, i32 %65)
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %68 = call i32 @vm_page_xunbusy(%struct.TYPE_15__* %67)
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %70 = call i64 @pmap_page_is_write_mapped(%struct.TYPE_15__* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %21
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %74 = call i32 @vm_object_set_writeable_dirty(%struct.TYPE_16__* %73)
  br label %75

75:                                               ; preds = %72, %21
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  ret %struct.TYPE_15__* %76
}

declare dso_local i32 @VM_OBJECT_ASSERT_WLOCKED(%struct.TYPE_16__*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @atomic_set_int(i32*, i32) #1

declare dso_local %struct.TYPE_15__* @vm_radix_replace(i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @TAILQ_INSERT_AFTER(i32*, %struct.TYPE_15__*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @atomic_clear_int(i32*, i32) #1

declare dso_local i32 @vm_page_xunbusy(%struct.TYPE_15__*) #1

declare dso_local i64 @pmap_page_is_write_mapped(%struct.TYPE_15__*) #1

declare dso_local i32 @vm_object_set_writeable_dirty(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
