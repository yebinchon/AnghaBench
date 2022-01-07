; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c_vm_page_alloc_freelist_domain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c_vm_page_alloc_freelist_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i64 }
%struct.vm_domain = type { i32 }

@VM_FREEPOOL_DIRECT = common dso_local global i32 0, align 4
@VM_ALLOC_ZERO = common dso_local global i32 0, align 4
@PG_ZERO = common dso_local global i32 0, align 4
@VM_ALLOC_WIRED = common dso_local global i32 0, align 4
@VPO_UNMANAGED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @vm_page_alloc_freelist_domain(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.vm_domain*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.vm_domain* @VM_DOMAIN(i32 %11)
  store %struct.vm_domain* %12, %struct.vm_domain** %8, align 8
  br label %13

13:                                               ; preds = %41, %3
  %14 = load %struct.vm_domain*, %struct.vm_domain** %8, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i64 @vm_domain_allocate(%struct.vm_domain* %14, i32 %15, i32 1)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %13
  %19 = load %struct.vm_domain*, %struct.vm_domain** %8, align 8
  %20 = call i32 @vm_domain_free_lock(%struct.vm_domain* %19)
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @VM_FREEPOOL_DIRECT, align 4
  %24 = call %struct.TYPE_6__* @vm_phys_alloc_freelist_pages(i32 %21, i32 %22, i32 %23, i32 0)
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %9, align 8
  %25 = load %struct.vm_domain*, %struct.vm_domain** %8, align 8
  %26 = call i32 @vm_domain_free_unlock(%struct.vm_domain* %25)
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %28 = icmp eq %struct.TYPE_6__* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %18
  %30 = load %struct.vm_domain*, %struct.vm_domain** %8, align 8
  %31 = call i32 @vm_domain_freecnt_inc(%struct.vm_domain* %30, i32 1)
  br label %32

32:                                               ; preds = %29, %18
  br label %33

33:                                               ; preds = %32, %13
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %35 = icmp eq %struct.TYPE_6__* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load %struct.vm_domain*, %struct.vm_domain** %8, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i64 @vm_domain_alloc_fail(%struct.vm_domain* %37, i32* null, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %13

42:                                               ; preds = %36
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %75

43:                                               ; preds = %33
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %45 = call i32 @vm_page_dequeue(%struct.TYPE_6__* %44)
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %47 = call i32 @vm_page_alloc_check(%struct.TYPE_6__* %46)
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 3
  store i64 0, i64* %49, align 8
  store i32 0, i32* %10, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @VM_ALLOC_ZERO, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %43
  %55 = load i32, i32* @PG_ZERO, align 4
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %54, %43
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = and i32 %60, %57
  store i32 %61, i32* %59, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @VM_ALLOC_WIRED, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %56
  %67 = call i32 @vm_wire_add(i32 1)
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  br label %70

70:                                               ; preds = %66, %56
  %71 = load i32, i32* @VPO_UNMANAGED, align 4
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  store %struct.TYPE_6__* %74, %struct.TYPE_6__** %4, align 8
  br label %75

75:                                               ; preds = %70, %42
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  ret %struct.TYPE_6__* %76
}

declare dso_local %struct.vm_domain* @VM_DOMAIN(i32) #1

declare dso_local i64 @vm_domain_allocate(%struct.vm_domain*, i32, i32) #1

declare dso_local i32 @vm_domain_free_lock(%struct.vm_domain*) #1

declare dso_local %struct.TYPE_6__* @vm_phys_alloc_freelist_pages(i32, i32, i32, i32) #1

declare dso_local i32 @vm_domain_free_unlock(%struct.vm_domain*) #1

declare dso_local i32 @vm_domain_freecnt_inc(%struct.vm_domain*, i32) #1

declare dso_local i64 @vm_domain_alloc_fail(%struct.vm_domain*, i32*, i32) #1

declare dso_local i32 @vm_page_dequeue(%struct.TYPE_6__*) #1

declare dso_local i32 @vm_page_alloc_check(%struct.TYPE_6__*) #1

declare dso_local i32 @vm_wire_add(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
