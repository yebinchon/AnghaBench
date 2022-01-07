; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c_vm_page_free_toq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c_vm_page_free_toq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32 }
%struct.vm_domain = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32* }

@PG_PCPU_CACHE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_page_free_toq(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.vm_domain*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %6 = call i32 @vm_page_free_prep(%struct.TYPE_9__* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %43

9:                                                ; preds = %1
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %11 = call %struct.vm_domain* @vm_pagequeue_domain(%struct.TYPE_9__* %10)
  store %struct.vm_domain* %11, %struct.vm_domain** %3, align 8
  %12 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %13 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %12, i32 0, i32 0
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %4, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @PG_PCPU_CACHE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %9
  %28 = load i32*, i32** %4, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i32*, i32** %4, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %33 = call i32 @uma_zfree(i32* %31, %struct.TYPE_9__* %32)
  br label %43

34:                                               ; preds = %27, %9
  %35 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %36 = call i32 @vm_domain_free_lock(%struct.vm_domain* %35)
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %38 = call i32 @vm_phys_free_pages(%struct.TYPE_9__* %37, i32 0)
  %39 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %40 = call i32 @vm_domain_free_unlock(%struct.vm_domain* %39)
  %41 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %42 = call i32 @vm_domain_freecnt_inc(%struct.vm_domain* %41, i32 1)
  br label %43

43:                                               ; preds = %34, %30, %8
  ret void
}

declare dso_local i32 @vm_page_free_prep(%struct.TYPE_9__*) #1

declare dso_local %struct.vm_domain* @vm_pagequeue_domain(%struct.TYPE_9__*) #1

declare dso_local i32 @uma_zfree(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @vm_domain_free_lock(%struct.vm_domain*) #1

declare dso_local i32 @vm_phys_free_pages(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @vm_domain_free_unlock(%struct.vm_domain*) #1

declare dso_local i32 @vm_domain_freecnt_inc(%struct.vm_domain*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
