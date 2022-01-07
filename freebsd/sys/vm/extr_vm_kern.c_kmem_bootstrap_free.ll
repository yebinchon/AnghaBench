; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_kern.c_kmem_bootstrap_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_kern.c_kmem_bootstrap_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.vm_domain = type { i32 }

@VM_PROT_RW = common dso_local global i32 0, align 4
@vm_cnt = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@kernel_pmap = common dso_local global i32 0, align 4
@kernel_arena = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kmem_bootstrap_free(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.vm_domain*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* %4, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i64 @trunc_page(i64 %12)
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %3, align 8
  %15 = call i64 @round_page(i64 %14)
  store i64 %15, i64* %3, align 8
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* %3, align 8
  %19 = sub nsw i64 %17, %18
  %20 = load i32, i32* @VM_PROT_RW, align 4
  %21 = call i32 @pmap_change_prot(i64 %16, i64 %19, i32 %20)
  %22 = load i64, i64* %3, align 8
  store i64 %22, i64* %7, align 8
  br label %23

23:                                               ; preds = %44, %2
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* %6, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %48

27:                                               ; preds = %23
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @pmap_kextract(i64 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @PHYS_TO_VM_PAGE(i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call %struct.vm_domain* @vm_pagequeue_domain(i32 %32)
  store %struct.vm_domain* %33, %struct.vm_domain** %5, align 8
  %34 = load %struct.vm_domain*, %struct.vm_domain** %5, align 8
  %35 = call i32 @vm_domain_free_lock(%struct.vm_domain* %34)
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @vm_phys_free_pages(i32 %36, i32 0)
  %38 = load %struct.vm_domain*, %struct.vm_domain** %5, align 8
  %39 = call i32 @vm_domain_free_unlock(%struct.vm_domain* %38)
  %40 = load %struct.vm_domain*, %struct.vm_domain** %5, align 8
  %41 = call i32 @vm_domain_freecnt_inc(%struct.vm_domain* %40, i32 1)
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vm_cnt, i32 0, i32 0), align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vm_cnt, i32 0, i32 0), align 4
  br label %44

44:                                               ; preds = %27
  %45 = load i64, i64* @PAGE_SIZE, align 8
  %46 = load i64, i64* %7, align 8
  %47 = add nsw i64 %46, %45
  store i64 %47, i64* %7, align 8
  br label %23

48:                                               ; preds = %23
  %49 = load i32, i32* @kernel_pmap, align 4
  %50 = load i64, i64* %3, align 8
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @pmap_remove(i32 %49, i64 %50, i64 %51)
  %53 = load i32, i32* @kernel_arena, align 4
  %54 = load i64, i64* %3, align 8
  %55 = load i64, i64* %6, align 8
  %56 = load i64, i64* %3, align 8
  %57 = sub nsw i64 %55, %56
  %58 = load i32, i32* @M_WAITOK, align 4
  %59 = call i32 @vmem_add(i32 %53, i64 %54, i64 %57, i32 %58)
  ret void
}

declare dso_local i64 @trunc_page(i64) #1

declare dso_local i64 @round_page(i64) #1

declare dso_local i32 @pmap_change_prot(i64, i64, i32) #1

declare dso_local i32 @pmap_kextract(i64) #1

declare dso_local i32 @PHYS_TO_VM_PAGE(i32) #1

declare dso_local %struct.vm_domain* @vm_pagequeue_domain(i32) #1

declare dso_local i32 @vm_domain_free_lock(%struct.vm_domain*) #1

declare dso_local i32 @vm_phys_free_pages(i32, i32) #1

declare dso_local i32 @vm_domain_free_unlock(%struct.vm_domain*) #1

declare dso_local i32 @vm_domain_freecnt_inc(%struct.vm_domain*, i32) #1

declare dso_local i32 @pmap_remove(i32, i64, i64) #1

declare dso_local i32 @vmem_add(i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
