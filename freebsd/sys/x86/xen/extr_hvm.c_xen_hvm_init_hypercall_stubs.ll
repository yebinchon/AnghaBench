; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/xen/extr_hvm.c_xen_hvm_init_hypercall_stubs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/xen/extr_hvm.c_xen_hvm_init_hypercall_stubs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cpuid_base = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@XEN_HVM_INIT_LATE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@XEN_HVM_INIT_EARLY = common dso_local global i32 0, align 4
@hypercall_page = common dso_local global i32 0, align 4
@KERNBASE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xen_hvm_init_hypercall_stubs(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [4 x i32], align 16
  store i32 %0, i32* %3, align 4
  %5 = load i64, i64* @cpuid_base, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i64 (...) @xen_hvm_cpuid_base()
  store i64 %8, i64* @cpuid_base, align 8
  br label %9

9:                                                ; preds = %7, %1
  %10 = load i64, i64* @cpuid_base, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = load i32, i32* @ENXIO, align 4
  store i32 %13, i32* %2, align 4
  br label %53

14:                                               ; preds = %9
  %15 = call i64 (...) @xen_domain()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @XEN_HVM_INIT_LATE, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = call i32 (...) @hypervisor_version()
  store i32 0, i32* %2, align 4
  br label %53

23:                                               ; preds = %17, %14
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @XEN_HVM_INIT_LATE, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = call i32 (...) @hypervisor_version()
  br label %29

29:                                               ; preds = %27, %23
  %30 = load i64, i64* @cpuid_base, align 8
  %31 = add nsw i64 %30, 2
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %33 = call i32 @do_cpuid(i64 %31, i32* %32)
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %35 = load i32, i32* %34, align 16
  %36 = icmp ne i32 %35, 1
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i32, i32* @EINVAL, align 4
  store i32 %38, i32* %2, align 4
  br label %53

39:                                               ; preds = %29
  %40 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @XEN_HVM_INIT_EARLY, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i64, i64* @KERNBASE, align 8
  %47 = sub nsw i64 ptrtoint (i32* @hypercall_page to i64), %46
  br label %50

48:                                               ; preds = %39
  %49 = call i64 @vtophys(i32* @hypercall_page)
  br label %50

50:                                               ; preds = %48, %45
  %51 = phi i64 [ %47, %45 ], [ %49, %48 ]
  %52 = call i32 @wrmsr(i32 %41, i64 %51)
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %50, %37, %21, %12
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i64 @xen_hvm_cpuid_base(...) #1

declare dso_local i64 @xen_domain(...) #1

declare dso_local i32 @hypervisor_version(...) #1

declare dso_local i32 @do_cpuid(i64, i32*) #1

declare dso_local i32 @wrmsr(i32, i64) #1

declare dso_local i64 @vtophys(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
