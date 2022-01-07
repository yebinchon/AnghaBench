; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_kern.c_kmem_init_zero_region.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_kern.c_kmem_init_zero_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@ZERO_REGION_SIZE = common dso_local global i64 0, align 8
@VM_ALLOC_NORMAL = common dso_local global i32 0, align 4
@VM_ALLOC_NOOBJ = common dso_local global i32 0, align 4
@VM_ALLOC_WIRED = common dso_local global i32 0, align 4
@VM_ALLOC_ZERO = common dso_local global i32 0, align 4
@PG_ZERO = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@kernel_pmap = common dso_local global i32 0, align 4
@VM_PROT_READ = common dso_local global i32 0, align 4
@zero_region = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kmem_init_zero_region() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = load i64, i64* @ZERO_REGION_SIZE, align 8
  %5 = call i64 @kva_alloc(i64 %4)
  store i64 %5, i64* %1, align 8
  %6 = load i32, i32* @VM_ALLOC_NORMAL, align 4
  %7 = load i32, i32* @VM_ALLOC_NOOBJ, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @VM_ALLOC_WIRED, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @VM_ALLOC_ZERO, align 4
  %12 = or i32 %10, %11
  %13 = call %struct.TYPE_5__* @vm_page_alloc(i32* null, i32 0, i32 %12)
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %3, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @PG_ZERO, align 4
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %22 = call i32 @pmap_zero_page(%struct.TYPE_5__* %21)
  br label %23

23:                                               ; preds = %20, %0
  store i64 0, i64* %2, align 8
  br label %24

24:                                               ; preds = %33, %23
  %25 = load i64, i64* %2, align 8
  %26 = load i64, i64* @ZERO_REGION_SIZE, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %24
  %29 = load i64, i64* %1, align 8
  %30 = load i64, i64* %2, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @pmap_qenter(i64 %31, %struct.TYPE_5__** %3, i32 1)
  br label %33

33:                                               ; preds = %28
  %34 = load i64, i64* @PAGE_SIZE, align 8
  %35 = load i64, i64* %2, align 8
  %36 = add nsw i64 %35, %34
  store i64 %36, i64* %2, align 8
  br label %24

37:                                               ; preds = %24
  %38 = load i32, i32* @kernel_pmap, align 4
  %39 = load i64, i64* %1, align 8
  %40 = load i64, i64* %1, align 8
  %41 = load i64, i64* @ZERO_REGION_SIZE, align 8
  %42 = add nsw i64 %40, %41
  %43 = load i32, i32* @VM_PROT_READ, align 4
  %44 = call i32 @pmap_protect(i32 %38, i64 %39, i64 %42, i32 %43)
  %45 = load i64, i64* %1, align 8
  %46 = inttoptr i64 %45 to i8*
  store i8* %46, i8** @zero_region, align 8
  ret void
}

declare dso_local i64 @kva_alloc(i64) #1

declare dso_local %struct.TYPE_5__* @vm_page_alloc(i32*, i32, i32) #1

declare dso_local i32 @pmap_zero_page(%struct.TYPE_5__*) #1

declare dso_local i32 @pmap_qenter(i64, %struct.TYPE_5__**, i32) #1

declare dso_local i32 @pmap_protect(i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
