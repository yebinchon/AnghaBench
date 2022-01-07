; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c_vm_page_zone_import.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c_vm_page_zone_import.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_domain = type { i32 }
%struct.vm_pgcache = type { i32, i32 }

@VM_ALLOC_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i32, i32, i32)* @vm_page_zone_import to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vm_page_zone_import(i8* %0, i8** %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.vm_domain*, align 8
  %13 = alloca %struct.vm_pgcache*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.vm_pgcache*
  store %struct.vm_pgcache* %16, %struct.vm_pgcache** %13, align 8
  %17 = load %struct.vm_pgcache*, %struct.vm_pgcache** %13, align 8
  %18 = getelementptr inbounds %struct.vm_pgcache, %struct.vm_pgcache* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.vm_domain* @VM_DOMAIN(i32 %19)
  store %struct.vm_domain* %20, %struct.vm_domain** %12, align 8
  %21 = load i32, i32* %9, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %29, label %23

23:                                               ; preds = %5
  %24 = load %struct.vm_domain*, %struct.vm_domain** %12, align 8
  %25 = load i32, i32* @VM_ALLOC_NORMAL, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @vm_domain_allocate(%struct.vm_domain* %24, i32 %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %23, %5
  store i32 0, i32* %6, align 4
  br label %57

30:                                               ; preds = %23
  %31 = load %struct.vm_domain*, %struct.vm_domain** %12, align 8
  %32 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %10, align 4
  %34 = load %struct.vm_domain*, %struct.vm_domain** %12, align 8
  %35 = call i32 @vm_domain_free_lock(%struct.vm_domain* %34)
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.vm_pgcache*, %struct.vm_pgcache** %13, align 8
  %38 = getelementptr inbounds %struct.vm_pgcache, %struct.vm_pgcache* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i8**, i8*** %8, align 8
  %42 = bitcast i8** %41 to i32*
  %43 = call i32 @vm_phys_alloc_npages(i32 %36, i32 %39, i32 %40, i32* %42)
  store i32 %43, i32* %14, align 4
  %44 = load %struct.vm_domain*, %struct.vm_domain** %12, align 8
  %45 = call i32 @vm_domain_free_unlock(%struct.vm_domain* %44)
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %14, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %30
  %50 = load %struct.vm_domain*, %struct.vm_domain** %12, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %14, align 4
  %53 = sub nsw i32 %51, %52
  %54 = call i32 @vm_domain_freecnt_inc(%struct.vm_domain* %50, i32 %53)
  br label %55

55:                                               ; preds = %49, %30
  %56 = load i32, i32* %14, align 4
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %55, %29
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local %struct.vm_domain* @VM_DOMAIN(i32) #1

declare dso_local i32 @vm_domain_allocate(%struct.vm_domain*, i32, i32) #1

declare dso_local i32 @vm_domain_free_lock(%struct.vm_domain*) #1

declare dso_local i32 @vm_phys_alloc_npages(i32, i32, i32, i32*) #1

declare dso_local i32 @vm_domain_free_unlock(%struct.vm_domain*) #1

declare dso_local i32 @vm_domain_freecnt_inc(%struct.vm_domain*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
