; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c_vm_domain_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c_vm_domain_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_domain = type { i32, i32, i32 }

@vm_domainset_lock = common dso_local global i32 0, align 4
@vm_min_domains = common dso_local global i32 0, align 4
@vm_severe_domains = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_domain_set(%struct.vm_domain* %0) #0 {
  %2 = alloca %struct.vm_domain*, align 8
  store %struct.vm_domain* %0, %struct.vm_domain** %2, align 8
  %3 = call i32 @mtx_lock(i32* @vm_domainset_lock)
  %4 = load %struct.vm_domain*, %struct.vm_domain** %2, align 8
  %5 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %1
  %9 = load %struct.vm_domain*, %struct.vm_domain** %2, align 8
  %10 = call i64 @vm_paging_min(%struct.vm_domain* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %8
  %13 = load %struct.vm_domain*, %struct.vm_domain** %2, align 8
  %14 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %13, i32 0, i32 0
  store i32 1, i32* %14, align 4
  %15 = load %struct.vm_domain*, %struct.vm_domain** %2, align 8
  %16 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @DOMAINSET_SET(i32 %17, i32* @vm_min_domains)
  br label %19

19:                                               ; preds = %12, %8, %1
  %20 = load %struct.vm_domain*, %struct.vm_domain** %2, align 8
  %21 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %35, label %24

24:                                               ; preds = %19
  %25 = load %struct.vm_domain*, %struct.vm_domain** %2, align 8
  %26 = call i64 @vm_paging_severe(%struct.vm_domain* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load %struct.vm_domain*, %struct.vm_domain** %2, align 8
  %30 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %29, i32 0, i32 1
  store i32 1, i32* %30, align 4
  %31 = load %struct.vm_domain*, %struct.vm_domain** %2, align 8
  %32 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @DOMAINSET_SET(i32 %33, i32* @vm_severe_domains)
  br label %35

35:                                               ; preds = %28, %24, %19
  %36 = call i32 @mtx_unlock(i32* @vm_domainset_lock)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @vm_paging_min(%struct.vm_domain*) #1

declare dso_local i32 @DOMAINSET_SET(i32, i32*) #1

declare dso_local i64 @vm_paging_severe(%struct.vm_domain*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
