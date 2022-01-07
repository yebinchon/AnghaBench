; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_slb.c_slb_uma_real_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_slb.c_slb_uma_real_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@slb_uma_real_alloc.realmax = internal global i64 0, align 8
@UMA_SLAB_PRIV = common dso_local global i32 0, align 4
@VM_ALLOC_NOOBJ = common dso_local global i32 0, align 4
@VM_ALLOC_WIRED = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@VM_MEMATTR_DEFAULT = common dso_local global i32 0, align 4
@hw_direct_map = common dso_local global i64 0, align 8
@DMAP_BASE_ADDRESS = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@PG_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32, i32, i32*, i32)* @slb_uma_real_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @slb_uma_real_alloc(i32 %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i64, i64* @slb_uma_real_alloc.realmax, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %5
  %17 = call i64 (...) @platform_real_maxaddr()
  store i64 %17, i64* @slb_uma_real_alloc.realmax, align 8
  br label %18

18:                                               ; preds = %16, %5
  %19 = load i32, i32* @UMA_SLAB_PRIV, align 4
  %20 = load i32*, i32** %10, align 8
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %11, align 4
  %23 = call i32 @malloc2vm_flags(i32 %22)
  %24 = load i32, i32* @VM_ALLOC_NOOBJ, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @VM_ALLOC_WIRED, align 4
  %27 = or i32 %25, %26
  %28 = load i64, i64* @slb_uma_real_alloc.realmax, align 8
  %29 = load i32, i32* @PAGE_SIZE, align 4
  %30 = load i32, i32* @PAGE_SIZE, align 4
  %31 = load i32, i32* @VM_MEMATTR_DEFAULT, align 4
  %32 = call %struct.TYPE_4__* @vm_page_alloc_contig_domain(i32* null, i32 0, i32 %21, i32 %27, i32 1, i32 0, i64 %28, i32 %29, i32 %30, i32 %31)
  store %struct.TYPE_4__* %32, %struct.TYPE_4__** %13, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %34 = icmp eq %struct.TYPE_4__* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %18
  store i8* null, i8** %6, align 8
  br label %74

36:                                               ; preds = %18
  %37 = load i64, i64* @hw_direct_map, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %41 = call i32 @VM_PAGE_TO_PHYS(%struct.TYPE_4__* %40)
  %42 = call i64 @PHYS_TO_DMAP(i32 %41)
  %43 = inttoptr i64 %42 to i8*
  store i8* %43, i8** %12, align 8
  br label %56

44:                                               ; preds = %36
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %46 = call i32 @VM_PAGE_TO_PHYS(%struct.TYPE_4__* %45)
  %47 = load i32, i32* @DMAP_BASE_ADDRESS, align 4
  %48 = or i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to i8*
  store i8* %50, i8** %12, align 8
  %51 = load i8*, i8** %12, align 8
  %52 = ptrtoint i8* %51 to i64
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %54 = call i32 @VM_PAGE_TO_PHYS(%struct.TYPE_4__* %53)
  %55 = call i32 @pmap_kenter(i64 %52, i32 %54)
  br label %56

56:                                               ; preds = %44, %39
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @M_ZERO, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %56
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @PG_ZERO, align 4
  %66 = and i32 %64, %65
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %61
  %69 = load i8*, i8** %12, align 8
  %70 = load i32, i32* @PAGE_SIZE, align 4
  %71 = call i32 @bzero(i8* %69, i32 %70)
  br label %72

72:                                               ; preds = %68, %61, %56
  %73 = load i8*, i8** %12, align 8
  store i8* %73, i8** %6, align 8
  br label %74

74:                                               ; preds = %72, %35
  %75 = load i8*, i8** %6, align 8
  ret i8* %75
}

declare dso_local i64 @platform_real_maxaddr(...) #1

declare dso_local %struct.TYPE_4__* @vm_page_alloc_contig_domain(i32*, i32, i32, i32, i32, i32, i64, i32, i32, i32) #1

declare dso_local i32 @malloc2vm_flags(i32) #1

declare dso_local i64 @PHYS_TO_DMAP(i32) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(%struct.TYPE_4__*) #1

declare dso_local i32 @pmap_kenter(i64, i32) #1

declare dso_local i32 @bzero(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
