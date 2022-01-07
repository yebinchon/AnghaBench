; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_vm_machdep.c_uma_small_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_vm_machdep.c_uma_small_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64* }

@uma_nsmall_alloc = common dso_local global i32 0, align 4
@UMA_SLAB_PRIV = common dso_local global i32 0, align 4
@VM_ALLOC_WIRED = common dso_local global i32 0, align 4
@VM_ALLOC_NOOBJ = common dso_local global i32 0, align 4
@dcache_color_ignore = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"uma_small_alloc: free page %p still has mappings!\00", align 1
@uma_nsmall_alloc_oc = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@PG_ZERO = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @uma_small_alloc(i32 %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca i8*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* @uma_nsmall_alloc, align 4
  %16 = call i32 @PMAP_STATS_INC(i32 %15)
  %17 = load i32, i32* @UMA_SLAB_PRIV, align 4
  %18 = load i32*, i32** %10, align 8
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %11, align 4
  %21 = call i32 @malloc2vm_flags(i32 %20)
  %22 = load i32, i32* @VM_ALLOC_WIRED, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @VM_ALLOC_NOOBJ, align 4
  %25 = or i32 %23, %24
  %26 = call %struct.TYPE_6__* @vm_page_alloc_domain(i32* null, i32 0, i32 %19, i32 %25)
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %13, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %28 = icmp eq %struct.TYPE_6__* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %5
  store i8* null, i8** %6, align 8
  br label %95

30:                                               ; preds = %5
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %32 = call i32 @VM_PAGE_TO_PHYS(%struct.TYPE_6__* %31)
  store i32 %32, i32* %12, align 4
  %33 = load i64, i64* @dcache_color_ignore, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %74

35:                                               ; preds = %30
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* %12, align 4
  %41 = call i64 @DCACHE_COLOR(i32 %40)
  %42 = icmp ne i64 %39, %41
  br i1 %42, label %43, label %74

43:                                               ; preds = %35
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %43
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i64*, i64** %54, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %57, 0
  br label %59

59:                                               ; preds = %51, %43
  %60 = phi i1 [ false, %43 ], [ %58, %51 ]
  %61 = zext i1 %60 to i32
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %63 = bitcast %struct.TYPE_6__* %62 to i8*
  %64 = call i32 @KASSERT(i32 %61, i8* %63)
  %65 = load i32, i32* @uma_nsmall_alloc_oc, align 4
  %66 = call i32 @PMAP_STATS_INC(i32 %65)
  %67 = load i32, i32* %12, align 4
  %68 = call i64 @DCACHE_COLOR(i32 %67)
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  store i64 %68, i64* %71, align 8
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @dcache_page_inval(i32 %72)
  br label %74

74:                                               ; preds = %59, %35, %30
  %75 = load i32, i32* %12, align 4
  %76 = call i64 @TLB_PHYS_TO_DIRECT(i32 %75)
  %77 = inttoptr i64 %76 to i8*
  store i8* %77, i8** %14, align 8
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* @M_ZERO, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %74
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @PG_ZERO, align 4
  %87 = and i32 %85, %86
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %82
  %90 = load i8*, i8** %14, align 8
  %91 = load i32, i32* @PAGE_SIZE, align 4
  %92 = call i32 @cpu_block_zero(i8* %90, i32 %91)
  br label %93

93:                                               ; preds = %89, %82, %74
  %94 = load i8*, i8** %14, align 8
  store i8* %94, i8** %6, align 8
  br label %95

95:                                               ; preds = %93, %29
  %96 = load i8*, i8** %6, align 8
  ret i8* %96
}

declare dso_local i32 @PMAP_STATS_INC(i32) #1

declare dso_local %struct.TYPE_6__* @vm_page_alloc_domain(i32*, i32, i32, i32) #1

declare dso_local i32 @malloc2vm_flags(i32) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(%struct.TYPE_6__*) #1

declare dso_local i64 @DCACHE_COLOR(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @dcache_page_inval(i32) #1

declare dso_local i64 @TLB_PHYS_TO_DIRECT(i32) #1

declare dso_local i32 @cpu_block_zero(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
