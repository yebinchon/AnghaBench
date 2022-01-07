; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_vmem.c_vmem_bt_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_vmem.c_vmem_bt_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@UMA_SLAB_KERNEL = common dso_local global i32 0, align 4
@vmem_bt_lock = common dso_local global i32 0, align 4
@vm_dom = common dso_local global %struct.TYPE_2__* null, align 8
@VMEM_ADDR_MIN = common dso_local global i32 0, align 4
@VMEM_ADDR_MAX = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_NOVM = common dso_local global i32 0, align 4
@M_USE_RESERVE = common dso_local global i32 0, align 4
@M_BESTFIT = common dso_local global i32 0, align 4
@kernel_object = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"btalloc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32, i32, i32*, i32)* @vmem_bt_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @vmem_bt_alloc(i32 %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* @UMA_SLAB_KERNEL, align 4
  %14 = load i32*, i32** %10, align 8
  store i32 %13, i32* %14, align 4
  %15 = call i32 @mtx_lock(i32* @vmem_bt_lock)
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vm_dom, align 8
  %17 = load i32, i32* %9, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @VMEM_ADDR_MIN, align 4
  %24 = load i32, i32* @VMEM_ADDR_MAX, align 4
  %25 = load i32, i32* @M_NOWAIT, align 4
  %26 = load i32, i32* @M_NOVM, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @M_USE_RESERVE, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @M_BESTFIT, align 4
  %31 = or i32 %29, %30
  %32 = call i64 @vmem_xalloc(i32 %21, i32 %22, i32 0, i32 0, i32 0, i32 %23, i32 %24, i32 %31, i64* %12)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %67

34:                                               ; preds = %5
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @kernel_object, align 4
  %37 = load i64, i64* %12, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @M_NOWAIT, align 4
  %40 = load i32, i32* @M_USE_RESERVE, align 4
  %41 = or i32 %39, %40
  %42 = call i64 @kmem_back_domain(i32 %35, i32 %36, i64 %37, i32 %38, i32 %41)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %34
  %45 = call i32 @mtx_unlock(i32* @vmem_bt_lock)
  %46 = load i64, i64* %12, align 8
  %47 = inttoptr i64 %46 to i8*
  store i8* %47, i8** %6, align 8
  br label %76

48:                                               ; preds = %34
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vm_dom, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i64, i64* %12, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @vmem_xfree(i32 %54, i64 %55, i32 %56)
  %58 = call i32 @mtx_unlock(i32* @vmem_bt_lock)
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @M_WAITOK, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %48
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @vm_wait_domain(i32 %64)
  br label %66

66:                                               ; preds = %63, %48
  store i8* null, i8** %6, align 8
  br label %76

67:                                               ; preds = %5
  %68 = call i32 @mtx_unlock(i32* @vmem_bt_lock)
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @M_WAITOK, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = call i32 @pause(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 1)
  br label %75

75:                                               ; preds = %73, %67
  store i8* null, i8** %6, align 8
  br label %76

76:                                               ; preds = %75, %66, %44
  %77 = load i8*, i8** %6, align 8
  ret i8* %77
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @vmem_xalloc(i32, i32, i32, i32, i32, i32, i32, i32, i64*) #1

declare dso_local i64 @kmem_back_domain(i32, i32, i64, i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @vmem_xfree(i32, i64, i32) #1

declare dso_local i32 @vm_wait_domain(i32) #1

declare dso_local i32 @pause(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
