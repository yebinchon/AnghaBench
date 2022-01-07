; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c_vm_page_alloc_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c_vm_page_alloc_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i64, i64, i64, i32* }

@.str = private unnamed_addr constant [19 x i8] c"page %p has object\00", align 1
@PQ_NONE = common dso_local global i64 0, align 8
@PGA_QUEUE_STATE_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"page %p has unexpected queue %d, flags %#x\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"page %p has references\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"page %p is busy\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"page %p is dirty\00", align 1
@VM_MEMATTR_DEFAULT = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [34 x i8] c"page %p has unexpected memattr %d\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"free page %p is valid\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @vm_page_alloc_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vm_page_alloc_check(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 5
  %5 = load i32*, i32** %4, align 8
  %6 = icmp eq i32* %5, null
  %7 = zext i1 %6 to i32
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %9 = bitcast %struct.TYPE_5__* %8 to i8*
  %10 = call i32 @KASSERT(i32 %7, i8* %9)
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @PQ_NONE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @PGA_QUEUE_STATE_MASK, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br label %23

23:                                               ; preds = %16, %1
  %24 = phi i1 [ false, %1 ], [ %22, %16 ]
  %25 = zext i1 %24 to i32
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @PGA_QUEUE_STATE_MASK, align 4
  %34 = and i32 %32, %33
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to i8*
  %37 = call i32 @KASSERT(i32 %25, i8* %36)
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  %42 = zext i1 %41 to i32
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %44 = bitcast %struct.TYPE_5__* %43 to i8*
  %45 = call i32 @KASSERT(i32 %42, i8* %44)
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %47 = call i32 @vm_page_busied(%struct.TYPE_5__* %46)
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %52 = bitcast %struct.TYPE_5__* %51 to i8*
  %53 = call i32 @KASSERT(i32 %50, i8* %52)
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  %58 = zext i1 %57 to i32
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %60 = bitcast %struct.TYPE_5__* %59 to i8*
  %61 = call i32 @KASSERT(i32 %58, i8* %60)
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %63 = call i64 @pmap_page_get_memattr(%struct.TYPE_5__* %62)
  %64 = load i64, i64* @VM_MEMATTR_DEFAULT, align 8
  %65 = icmp eq i64 %63, %64
  %66 = zext i1 %65 to i32
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %69 = call i64 @pmap_page_get_memattr(%struct.TYPE_5__* %68)
  %70 = inttoptr i64 %69 to i8*
  %71 = call i32 @KASSERT(i32 %66, i8* %70)
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 4
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %74, 0
  %76 = zext i1 %75 to i32
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %78 = bitcast %struct.TYPE_5__* %77 to i8*
  %79 = call i32 @KASSERT(i32 %76, i8* %78)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @vm_page_busied(%struct.TYPE_5__*) #1

declare dso_local i64 @pmap_page_get_memattr(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
