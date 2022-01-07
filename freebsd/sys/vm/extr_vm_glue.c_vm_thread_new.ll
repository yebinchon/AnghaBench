; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_glue.c_vm_thread_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_glue.c_vm_thread_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, i64, i32* }
%struct.TYPE_2__ = type { i32* }

@kstack_pages = common dso_local global i32 0, align 4
@KSTACK_MAX_PAGES = common dso_local global i32 0, align 4
@kstack_cache = common dso_local global i32* null, align 8
@M_NOWAIT = common dso_local global i32 0, align 4
@domain = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_thread_new(%struct.thread* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp sle i32 %8, 1
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @kstack_pages, align 4
  store i32 %11, i32* %5, align 4
  br label %19

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @KSTACK_MAX_PAGES, align 4
  %15 = icmp sgt i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i32, i32* @KSTACK_MAX_PAGES, align 4
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %16, %12
  br label %19

19:                                               ; preds = %18, %10
  store i64 0, i64* %7, align 8
  store i32* null, i32** %6, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @kstack_pages, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %19
  %24 = load i32*, i32** @kstack_cache, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %39

26:                                               ; preds = %23
  %27 = load i32*, i32** @kstack_cache, align 8
  %28 = load i32, i32* @M_NOWAIT, align 4
  %29 = call i64 @uma_zalloc(i32* %27, i32 %28)
  store i64 %29, i64* %7, align 8
  %30 = load i64, i64* %7, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @pmap_kextract(i64 %33)
  %35 = call %struct.TYPE_2__* @PHYS_TO_VM_PAGE(i32 %34)
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %6, align 8
  br label %38

38:                                               ; preds = %32, %26
  br label %39

39:                                               ; preds = %38, %23, %19
  %40 = load i64, i64* %7, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load i32, i32* @domain, align 4
  %44 = call i32 @PCPU_GET(i32 %43)
  %45 = call i32 @DOMAINSET_PREF(i32 %44)
  %46 = load i32, i32* %5, align 4
  %47 = call i64 @vm_thread_stack_create(i32 %45, i32** %6, i32 %46)
  store i64 %47, i64* %7, align 8
  br label %48

48:                                               ; preds = %42, %39
  %49 = load i64, i64* %7, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %62

52:                                               ; preds = %48
  %53 = load i32*, i32** %6, align 8
  %54 = load %struct.thread*, %struct.thread** %4, align 8
  %55 = getelementptr inbounds %struct.thread, %struct.thread* %54, i32 0, i32 2
  store i32* %53, i32** %55, align 8
  %56 = load i64, i64* %7, align 8
  %57 = load %struct.thread*, %struct.thread** %4, align 8
  %58 = getelementptr inbounds %struct.thread, %struct.thread* %57, i32 0, i32 1
  store i64 %56, i64* %58, align 8
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.thread*, %struct.thread** %4, align 8
  %61 = getelementptr inbounds %struct.thread, %struct.thread* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  store i32 1, i32* %3, align 4
  br label %62

62:                                               ; preds = %52, %51
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i64 @uma_zalloc(i32*, i32) #1

declare dso_local %struct.TYPE_2__* @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i32 @pmap_kextract(i64) #1

declare dso_local i64 @vm_thread_stack_create(i32, i32**, i32) #1

declare dso_local i32 @DOMAINSET_PREF(i32) #1

declare dso_local i32 @PCPU_GET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
