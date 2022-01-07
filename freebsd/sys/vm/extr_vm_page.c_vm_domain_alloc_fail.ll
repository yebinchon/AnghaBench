; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c_vm_domain_alloc_fail.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c_vm_domain_alloc_fail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_domain = type { i32, i32 }

@VM_ALLOC_COUNT_SHIFT = common dso_local global i32 0, align 4
@VM_ALLOC_WAITOK = common dso_local global i32 0, align 4
@VM_ALLOC_WAITFAIL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_domain*, i32*, i32)* @vm_domain_alloc_fail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vm_domain_alloc_fail(%struct.vm_domain* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vm_domain*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.vm_domain* %0, %struct.vm_domain** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.vm_domain*, %struct.vm_domain** %5, align 8
  %9 = call i32 @vm_domain_free_assert_unlocked(%struct.vm_domain* %8)
  %10 = load %struct.vm_domain*, %struct.vm_domain** %5, align 8
  %11 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %10, i32 0, i32 1
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @VM_ALLOC_COUNT_SHIFT, align 4
  %14 = ashr i32 %12, %13
  %15 = call i32 @max(i32 %14, i32 1)
  %16 = call i32 @atomic_add_int(i32* %11, i32 %15)
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @VM_ALLOC_WAITOK, align 4
  %19 = load i32, i32* @VM_ALLOC_WAITFAIL, align 4
  %20 = or i32 %18, %19
  %21 = and i32 %17, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %47

23:                                               ; preds = %3
  %24 = load i32*, i32** %6, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @VM_OBJECT_WUNLOCK(i32* %27)
  br label %29

29:                                               ; preds = %26, %23
  %30 = load %struct.vm_domain*, %struct.vm_domain** %5, align 8
  %31 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @vm_wait_domain(i32 %32)
  %34 = load i32*, i32** %6, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @VM_OBJECT_WLOCK(i32* %37)
  br label %39

39:                                               ; preds = %36, %29
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @VM_ALLOC_WAITOK, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* @EAGAIN, align 4
  store i32 %45, i32* %4, align 4
  br label %48

46:                                               ; preds = %39
  br label %47

47:                                               ; preds = %46, %3
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %47, %44
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @vm_domain_free_assert_unlocked(%struct.vm_domain*) #1

declare dso_local i32 @atomic_add_int(i32*, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(i32*) #1

declare dso_local i32 @vm_wait_domain(i32) #1

declare dso_local i32 @VM_OBJECT_WLOCK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
