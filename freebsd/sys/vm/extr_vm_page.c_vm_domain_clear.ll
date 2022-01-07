; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c_vm_domain_clear.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c_vm_domain_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_domain = type { i64, i64, i64, i32, i64, i64 }

@vm_domainset_lock = common dso_local global i32 0, align 4
@vm_min_domains = common dso_local global i64 0, align 8
@vm_min_waiters = common dso_local global i64 0, align 8
@vm_severe_domains = common dso_local global i64 0, align 8
@vm_severe_waiters = common dso_local global i64 0, align 8
@vm_pageproc_waiters = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_domain_clear(%struct.vm_domain* %0) #0 {
  %2 = alloca %struct.vm_domain*, align 8
  store %struct.vm_domain* %0, %struct.vm_domain** %2, align 8
  %3 = call i32 @mtx_lock(i32* @vm_domainset_lock)
  %4 = load %struct.vm_domain*, %struct.vm_domain** %2, align 8
  %5 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %4, i32 0, i32 5
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %24

8:                                                ; preds = %1
  %9 = load %struct.vm_domain*, %struct.vm_domain** %2, align 8
  %10 = call i32 @vm_paging_min(%struct.vm_domain* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %8
  %13 = load %struct.vm_domain*, %struct.vm_domain** %2, align 8
  %14 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %13, i32 0, i32 5
  store i64 0, i64* %14, align 8
  %15 = load %struct.vm_domain*, %struct.vm_domain** %2, align 8
  %16 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @DOMAINSET_CLR(i32 %17, i64* @vm_min_domains)
  %19 = load i64, i64* @vm_min_waiters, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %12
  store i64 0, i64* @vm_min_waiters, align 8
  %22 = call i32 @wakeup(i64* @vm_min_domains)
  br label %23

23:                                               ; preds = %21, %12
  br label %24

24:                                               ; preds = %23, %8, %1
  %25 = load %struct.vm_domain*, %struct.vm_domain** %2, align 8
  %26 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %24
  %30 = load %struct.vm_domain*, %struct.vm_domain** %2, align 8
  %31 = call i32 @vm_paging_severe(%struct.vm_domain* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %45, label %33

33:                                               ; preds = %29
  %34 = load %struct.vm_domain*, %struct.vm_domain** %2, align 8
  %35 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %34, i32 0, i32 4
  store i64 0, i64* %35, align 8
  %36 = load %struct.vm_domain*, %struct.vm_domain** %2, align 8
  %37 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @DOMAINSET_CLR(i32 %38, i64* @vm_severe_domains)
  %40 = load i64, i64* @vm_severe_waiters, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  store i64 0, i64* @vm_severe_waiters, align 8
  %43 = call i32 @wakeup(i64* @vm_severe_domains)
  br label %44

44:                                               ; preds = %42, %33
  br label %45

45:                                               ; preds = %44, %29, %24
  %46 = load %struct.vm_domain*, %struct.vm_domain** %2, align 8
  %47 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %45
  %51 = load %struct.vm_domain*, %struct.vm_domain** %2, align 8
  %52 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.vm_domain*, %struct.vm_domain** %2, align 8
  %55 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp sge i64 %53, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %50
  %59 = load %struct.vm_domain*, %struct.vm_domain** %2, align 8
  %60 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %59, i32 0, i32 2
  %61 = call i32 @wakeup(i64* %60)
  %62 = load %struct.vm_domain*, %struct.vm_domain** %2, align 8
  %63 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %62, i32 0, i32 2
  store i64 0, i64* %63, align 8
  br label %64

64:                                               ; preds = %58, %50, %45
  %65 = load i64, i64* @vm_pageproc_waiters, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  store i64 0, i64* @vm_pageproc_waiters, align 8
  %68 = call i32 @wakeup(i64* @vm_pageproc_waiters)
  br label %69

69:                                               ; preds = %67, %64
  %70 = call i32 @mtx_unlock(i32* @vm_domainset_lock)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @vm_paging_min(%struct.vm_domain*) #1

declare dso_local i32 @DOMAINSET_CLR(i32, i64*) #1

declare dso_local i32 @wakeup(i64*) #1

declare dso_local i32 @vm_paging_severe(%struct.vm_domain*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
