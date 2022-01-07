; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_pmap.c_pmap_remove_kernel_pde.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_pmap.c_pmap_remove_kernel_pde.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@MA_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"pmap_remove_kernel_pde: Missing pt page.\00", align 1
@PG_M = common dso_local global i32 0, align 4
@PG_A = common dso_local global i32 0, align 4
@PG_RW = common dso_local global i32 0, align 4
@PG_V = common dso_local global i32 0, align 4
@KPTmap = common dso_local global i32* null, align 8
@workaround_erratum383 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32)* @pmap_remove_kernel_pde to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmap_remove_kernel_pde(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @MA_OWNED, align 4
  %12 = call i32 @PMAP_LOCK_ASSERT(i32 %10, i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call %struct.TYPE_4__* @pmap_remove_pt_page(i32 %13, i32 %14)
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %9, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %17 = icmp eq %struct.TYPE_4__* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = call i32 @panic(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %3
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %22 = call i32 @VM_PAGE_TO_PHYS(%struct.TYPE_4__* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @PG_M, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @PG_A, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @PG_RW, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @PG_V, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %7, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %20
  %37 = load i32*, i32** @KPTmap, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @trunc_4mpage(i32 %38)
  %40 = call i64 @i386_btop(i32 %39)
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  %42 = bitcast i32* %41 to i8*
  %43 = call i32 @pagezero(i8* %42)
  br label %44

44:                                               ; preds = %36, %20
  %45 = load i64, i64* @workaround_erratum383, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @pmap_update_pde(i32 %48, i32 %49, i32* %50, i32 %51)
  br label %57

53:                                               ; preds = %44
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @pmap_kenter_pde(i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %53, %47
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* %6, align 4
  %60 = call i64 @vtopte(i32 %59)
  %61 = trunc i64 %60 to i32
  %62 = call i32 @pmap_invalidate_page_int(i32 %58, i32 %61)
  ret void
}

declare dso_local i32 @PMAP_LOCK_ASSERT(i32, i32) #1

declare dso_local %struct.TYPE_4__* @pmap_remove_pt_page(i32, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(%struct.TYPE_4__*) #1

declare dso_local i32 @pagezero(i8*) #1

declare dso_local i64 @i386_btop(i32) #1

declare dso_local i32 @trunc_4mpage(i32) #1

declare dso_local i32 @pmap_update_pde(i32, i32, i32*, i32) #1

declare dso_local i32 @pmap_kenter_pde(i32, i32) #1

declare dso_local i32 @pmap_invalidate_page_int(i32, i32) #1

declare dso_local i64 @vtopte(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
