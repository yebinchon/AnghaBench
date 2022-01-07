; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_pmap.c_pmap_init_trm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_pmap.c_pmap_init_trm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"machdep.trm_guard\00", align 1
@trm_guard = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"i386trampoline\00", align 1
@M_WAITOK = common dso_local global i32 0, align 4
@pmap_trm_arena = common dso_local global i32 0, align 4
@pmap_trm_import = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@VM_ALLOC_NOOBJ = common dso_local global i32 0, align 4
@VM_ALLOC_NOBUSY = common dso_local global i32 0, align 4
@VM_ALLOC_NORMAL = common dso_local global i32 0, align 4
@VM_ALLOC_WIRED = common dso_local global i32 0, align 4
@VM_ALLOC_WAITOK = common dso_local global i32 0, align 4
@VM_ALLOC_ZERO = common dso_local global i32 0, align 4
@PG_ZERO = common dso_local global i32 0, align 4
@PG_M = common dso_local global i32 0, align 4
@PG_A = common dso_local global i32 0, align 4
@PG_RW = common dso_local global i32 0, align 4
@PG_V = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global i32 0, align 4
@VM_MEMATTR_DEFAULT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@PTD = common dso_local global i32* null, align 8
@TRPTDI = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_init_trm() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* @trm_guard)
  %3 = load i32, i32* @trm_guard, align 4
  %4 = load i32, i32* @PAGE_MASK, align 4
  %5 = and i32 %3, %4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  store i32 0, i32* @trm_guard, align 4
  br label %8

8:                                                ; preds = %7, %0
  %9 = load i32, i32* @M_WAITOK, align 4
  %10 = call i32 @vmem_create(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 0, i32 1, i32 0, i32 %9)
  store i32 %10, i32* @pmap_trm_arena, align 4
  %11 = load i32, i32* @pmap_trm_arena, align 4
  %12 = load i32, i32* @pmap_trm_import, align 4
  %13 = load i32, i32* @PAGE_SIZE, align 4
  %14 = call i32 @vmem_set_import(i32 %11, i32 %12, i32* null, i32* null, i32 %13)
  %15 = load i32, i32* @VM_ALLOC_NOOBJ, align 4
  %16 = load i32, i32* @VM_ALLOC_NOBUSY, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @VM_ALLOC_NORMAL, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @VM_ALLOC_WIRED, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @VM_ALLOC_WAITOK, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @VM_ALLOC_ZERO, align 4
  %25 = or i32 %23, %24
  %26 = call %struct.TYPE_5__* @vm_page_alloc(i32* null, i32 0, i32 %25)
  store %struct.TYPE_5__* %26, %struct.TYPE_5__** %1, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @PG_ZERO, align 4
  %31 = and i32 %29, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %35 = call i32 @pmap_zero_page(%struct.TYPE_5__* %34)
  br label %36

36:                                               ; preds = %33, %8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %38 = call i32 @VM_PAGE_TO_PHYS(%struct.TYPE_5__* %37)
  %39 = load i32, i32* @PG_M, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @PG_A, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @PG_RW, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @PG_V, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @kernel_pmap, align 4
  %48 = load i32, i32* @VM_MEMATTR_DEFAULT, align 4
  %49 = load i32, i32* @TRUE, align 4
  %50 = call i32 @pmap_cache_bits(i32 %47, i32 %48, i32 %49)
  %51 = or i32 %46, %50
  %52 = load i32*, i32** @PTD, align 8
  %53 = load i64, i64* @TRPTDI, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  store i32 %51, i32* %54, align 4
  ret void
}

declare dso_local i32 @TUNABLE_INT_FETCH(i8*, i32*) #1

declare dso_local i32 @vmem_create(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @vmem_set_import(i32, i32, i32*, i32*, i32) #1

declare dso_local %struct.TYPE_5__* @vm_page_alloc(i32*, i32, i32) #1

declare dso_local i32 @pmap_zero_page(%struct.TYPE_5__*) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(%struct.TYPE_5__*) #1

declare dso_local i32 @pmap_cache_bits(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
