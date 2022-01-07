; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/xen/extr_hvm.c_xen_hvm_disable_emulated_devices.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/xen/extr_hvm.c_xen_hvm_disable_emulated_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@xen_disable_pv_disks = common dso_local global i64 0, align 8
@xen_disable_pv_nics = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"PV devices cannot be disabled in PV guests\0A\00", align 1
@XEN_MAGIC_IOPORT = common dso_local global i32 0, align 4
@XMI_MAGIC = common dso_local global i64 0, align 8
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"XEN: disabling emulated disks\0A\00", align 1
@XMI_UNPLUG_IDE_DISKS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"XEN: disabling emulated nics\0A\00", align 1
@XMI_UNPLUG_NICS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @xen_hvm_disable_emulated_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xen_hvm_disable_emulated_devices() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i64 (...) @xen_pv_domain()
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %13

4:                                                ; preds = %0
  %5 = load i64, i64* @xen_disable_pv_disks, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = load i64, i64* @xen_disable_pv_nics, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %7, %4
  %11 = call i32 @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %7
  br label %50

13:                                               ; preds = %0
  %14 = load i32, i32* @XEN_MAGIC_IOPORT, align 4
  %15 = call i64 @inw(i32 %14)
  %16 = load i64, i64* @XMI_MAGIC, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %50

19:                                               ; preds = %13
  %20 = load i64, i64* @xen_disable_pv_disks, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = load i64, i64* @bootverbose, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %22
  %28 = load i32, i32* @XMI_UNPLUG_IDE_DISKS, align 4
  %29 = load i32, i32* %1, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %1, align 4
  br label %31

31:                                               ; preds = %27, %19
  %32 = load i64, i64* @xen_disable_pv_nics, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %31
  %35 = load i64, i64* @bootverbose, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %34
  %40 = load i32, i32* @XMI_UNPLUG_NICS, align 4
  %41 = load i32, i32* %1, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %1, align 4
  br label %43

43:                                               ; preds = %39, %31
  %44 = load i32, i32* %1, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i32, i32* @XEN_MAGIC_IOPORT, align 4
  %48 = load i32, i32* %1, align 4
  %49 = call i32 @outw(i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %12, %18, %46, %43
  ret void
}

declare dso_local i64 @xen_pv_domain(...) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @inw(i32) #1

declare dso_local i32 @outw(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
