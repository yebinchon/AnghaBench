; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_uma_core.c_uma_large_malloc_domain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_uma_core.c_uma_large_malloc_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domainset = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i8* }

@UMA_ANYDOMAIN = common dso_local global i32 0, align 4
@slabzone = common dso_local global i32 0, align 4
@UMA_SLAB_KERNEL = common dso_local global i32 0, align 4
@UMA_SLAB_MALLOC = common dso_local global i32 0, align 4
@SKIP_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @uma_large_malloc_domain(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.domainset*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @UMA_ANYDOMAIN, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = call i64 @VM_DOMAIN_EMPTY(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i32, i32* @UMA_ANYDOMAIN, align 4
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %18, %14
  br label %21

21:                                               ; preds = %20, %3
  %22 = load i32, i32* @slabzone, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call %struct.TYPE_5__* @zone_alloc_item(i32 %22, i32* null, i32 %23, i32 %24)
  store %struct.TYPE_5__* %25, %struct.TYPE_5__** %10, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %27 = icmp eq %struct.TYPE_5__* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i8* null, i8** %4, align 8
  br label %78

29:                                               ; preds = %21
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @UMA_ANYDOMAIN, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = call %struct.domainset* (...) @DOMAINSET_RR()
  br label %38

35:                                               ; preds = %29
  %36 = load i32, i32* %6, align 4
  %37 = call %struct.domainset* @DOMAINSET_FIXED(i32 %36)
  br label %38

38:                                               ; preds = %35, %33
  %39 = phi %struct.domainset* [ %34, %33 ], [ %37, %35 ]
  store %struct.domainset* %39, %struct.domainset** %8, align 8
  %40 = load %struct.domainset*, %struct.domainset** %8, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i64 @kmem_malloc_domainset(%struct.domainset* %40, i32 %41, i32 %42)
  store i64 %43, i64* %9, align 8
  %44 = load i64, i64* %9, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %70

46:                                               ; preds = %38
  %47 = load i64, i64* %9, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %49 = call i32 @vsetslab(i64 %47, %struct.TYPE_5__* %48)
  %50 = load i64, i64* %9, align 8
  %51 = inttoptr i64 %50 to i8*
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 3
  store i8* %51, i8** %53, align 8
  %54 = load i32, i32* @UMA_SLAB_KERNEL, align 4
  %55 = load i32, i32* @UMA_SLAB_MALLOC, align 4
  %56 = or i32 %54, %55
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  %62 = load i64, i64* %9, align 8
  %63 = call i32 @pmap_kextract(i64 %62)
  %64 = call i32 @PHYS_TO_VM_PAGE(i32 %63)
  %65 = call i32 @vm_phys_domain(i32 %64)
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @uma_total_inc(i32 %68)
  br label %75

70:                                               ; preds = %38
  %71 = load i32, i32* @slabzone, align 4
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %73 = load i32, i32* @SKIP_NONE, align 4
  %74 = call i32 @zone_free_item(i32 %71, %struct.TYPE_5__* %72, i32* null, i32 %73)
  br label %75

75:                                               ; preds = %70, %46
  %76 = load i64, i64* %9, align 8
  %77 = inttoptr i64 %76 to i8*
  store i8* %77, i8** %4, align 8
  br label %78

78:                                               ; preds = %75, %28
  %79 = load i8*, i8** %4, align 8
  ret i8* %79
}

declare dso_local i64 @VM_DOMAIN_EMPTY(i32) #1

declare dso_local %struct.TYPE_5__* @zone_alloc_item(i32, i32*, i32, i32) #1

declare dso_local %struct.domainset* @DOMAINSET_RR(...) #1

declare dso_local %struct.domainset* @DOMAINSET_FIXED(i32) #1

declare dso_local i64 @kmem_malloc_domainset(%struct.domainset*, i32, i32) #1

declare dso_local i32 @vsetslab(i64, %struct.TYPE_5__*) #1

declare dso_local i32 @vm_phys_domain(i32) #1

declare dso_local i32 @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i32 @pmap_kextract(i64) #1

declare dso_local i32 @uma_total_inc(i32) #1

declare dso_local i32 @zone_free_item(i32, %struct.TYPE_5__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
