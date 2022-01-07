; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c_vm_wait_domain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c_vm_wait_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_domain = type { i64, i64, i32, i32 }

@curproc = common dso_local global i32* null, align 8
@pageproc = common dso_local global i32* null, align 8
@vm_domainset_lock = common dso_local global i32 0, align 4
@PDROP = common dso_local global i32 0, align 4
@PSWP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"VMWait\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"vm_wait in early boot\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_wait_domain(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vm_domain*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.vm_domain* @VM_DOMAIN(i32 %5)
  store %struct.vm_domain* %6, %struct.vm_domain** %3, align 8
  %7 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %8 = call i32 @vm_domain_free_assert_unlocked(%struct.vm_domain* %7)
  %9 = load i32*, i32** @curproc, align 8
  %10 = load i32*, i32** @pageproc, align 8
  %11 = icmp eq i32* %9, %10
  br i1 %11, label %12, label %33

12:                                               ; preds = %1
  %13 = call i32 @mtx_lock(i32* @vm_domainset_lock)
  %14 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %15 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %18 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp slt i64 %16, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %12
  %22 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %23 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %22, i32 0, i32 2
  store i32 1, i32* %23, align 8
  %24 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %25 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %24, i32 0, i32 2
  %26 = load i32, i32* @PDROP, align 4
  %27 = load i32, i32* @PSWP, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @msleep(i32* %25, i32* @vm_domainset_lock, i32 %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %32

30:                                               ; preds = %12
  %31 = call i32 @mtx_unlock(i32* @vm_domainset_lock)
  br label %32

32:                                               ; preds = %30, %21
  br label %45

33:                                               ; preds = %1
  %34 = load i32*, i32** @pageproc, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = call i32 @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %33
  %39 = call i32 @DOMAINSET_ZERO(i32* %4)
  %40 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %41 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @DOMAINSET_SET(i32 %42, i32* %4)
  %44 = call i32 @vm_wait_doms(i32* %4)
  br label %45

45:                                               ; preds = %38, %32
  ret void
}

declare dso_local %struct.vm_domain* @VM_DOMAIN(i32) #1

declare dso_local i32 @vm_domain_free_assert_unlocked(%struct.vm_domain*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @msleep(i32*, i32*, i32, i8*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @DOMAINSET_ZERO(i32*) #1

declare dso_local i32 @DOMAINSET_SET(i32, i32*) #1

declare dso_local i32 @vm_wait_doms(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
