; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_uma_machdep.c_uma_small_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_uma_machdep.c_uma_small_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@UMA_SLAB_PRIV = common dso_local global i32 0, align 4
@VM_ALLOC_WIRED = common dso_local global i32 0, align 4
@VM_ALLOC_NOOBJ = common dso_local global i32 0, align 4
@hw_direct_map = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@PG_ZERO = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@hw_uma_mdpages = common dso_local global i32 0, align 4
@M_NODUMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @uma_small_alloc(i32 %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* @UMA_SLAB_PRIV, align 4
  %16 = load i32*, i32** %10, align 8
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %11, align 4
  %19 = call i32 @malloc2vm_flags(i32 %18)
  %20 = load i32, i32* @VM_ALLOC_WIRED, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @VM_ALLOC_NOOBJ, align 4
  %23 = or i32 %21, %22
  %24 = call %struct.TYPE_4__* @vm_page_alloc_domain(i32* null, i32 0, i32 %17, i32 %23)
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** %14, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %26 = icmp eq %struct.TYPE_4__* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %5
  store i8* null, i8** %6, align 8
  br label %67

28:                                               ; preds = %5
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %30 = call i64 @VM_PAGE_TO_PHYS(%struct.TYPE_4__* %29)
  store i64 %30, i64* %13, align 8
  %31 = load i64, i64* %13, align 8
  %32 = load i64, i64* %13, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i8* null, i8** %6, align 8
  br label %67

35:                                               ; preds = %28
  %36 = load i32, i32* @hw_direct_map, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %35
  %39 = load i64, i64* %13, align 8
  %40 = load i64, i64* %13, align 8
  %41 = call i32 @pmap_kenter(i64 %39, i64 %40)
  %42 = load i64, i64* %13, align 8
  %43 = inttoptr i64 %42 to i8*
  store i8* %43, i8** %12, align 8
  br label %48

44:                                               ; preds = %35
  %45 = load i64, i64* %13, align 8
  %46 = call i64 @PHYS_TO_DMAP(i64 %45)
  %47 = inttoptr i64 %46 to i8*
  store i8* %47, i8** %12, align 8
  br label %48

48:                                               ; preds = %44, %38
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @M_ZERO, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %48
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @PG_ZERO, align 4
  %58 = and i32 %56, %57
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %53
  %61 = load i8*, i8** %12, align 8
  %62 = load i32, i32* @PAGE_SIZE, align 4
  %63 = call i32 @bzero(i8* %61, i32 %62)
  br label %64

64:                                               ; preds = %60, %53, %48
  %65 = call i32 @atomic_add_int(i32* @hw_uma_mdpages, i32 1)
  %66 = load i8*, i8** %12, align 8
  store i8* %66, i8** %6, align 8
  br label %67

67:                                               ; preds = %64, %34, %27
  %68 = load i8*, i8** %6, align 8
  ret i8* %68
}

declare dso_local %struct.TYPE_4__* @vm_page_alloc_domain(i32*, i32, i32, i32) #1

declare dso_local i32 @malloc2vm_flags(i32) #1

declare dso_local i64 @VM_PAGE_TO_PHYS(%struct.TYPE_4__*) #1

declare dso_local i32 @pmap_kenter(i64, i64) #1

declare dso_local i64 @PHYS_TO_DMAP(i64) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @atomic_add_int(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
