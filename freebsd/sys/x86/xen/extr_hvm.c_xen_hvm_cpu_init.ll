; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/xen/extr_hvm.c_xen_hvm_cpu_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/xen/extr_hvm.c_xen_hvm_cpu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.vcpu_info* }
%struct.vcpu_info = type { i32 }
%struct.vcpu_register_vcpu_info = type { i32, i64 }

@cpuid_base = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Invalid base Xen CPUID leaf\00", align 1
@XEN_HVM_CPUID_VCPU_ID_PRESENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Xen PV domain without vcpu_id in cpuid\00", align 1
@vcpu_id = common dso_local global i32 0, align 4
@acpi_id = common dso_local global i32 0, align 4
@xen_evtchn_needs_ack = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"Event channel upcall vector setup failed: %d\00", align 1
@vcpu_local_info = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@VCPUOP_register_vcpu_info = common dso_local global i32 0, align 4
@HYPERVISOR_shared_info = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @xen_hvm_cpu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xen_hvm_cpu_init() #0 {
  %1 = alloca %struct.vcpu_register_vcpu_info, align 8
  %2 = alloca %struct.vcpu_info*, align 8
  %3 = alloca [4 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = call i32 (...) @xen_domain()
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  br label %102

9:                                                ; preds = %0
  %10 = load %struct.vcpu_info*, %struct.vcpu_info** %2, align 8
  %11 = call i32* @DPCPU_GET(%struct.vcpu_info* %10)
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  br label %102

14:                                               ; preds = %9
  %15 = load i64, i64* @cpuid_base, align 8
  %16 = icmp ne i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @KASSERT(i32 %17, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %19 = load i64, i64* @cpuid_base, align 8
  %20 = add nsw i64 %19, 4
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %22 = call i32 @cpuid_count(i64 %20, i32 0, i32* %21)
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %24 = load i32, i32* %23, align 16
  %25 = load i32, i32* @XEN_HVM_CPUID_VCPU_ID_PRESENT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %14
  %29 = call i32 (...) @xen_pv_domain()
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br label %32

32:                                               ; preds = %28, %14
  %33 = phi i1 [ true, %14 ], [ %31, %28 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @KASSERT(i32 %34, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @vcpu_id, align 4
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %38 = load i32, i32* %37, align 16
  %39 = load i32, i32* @XEN_HVM_CPUID_VCPU_ID_PRESENT, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %32
  %43 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 1
  %44 = load i32, i32* %43, align 4
  br label %48

45:                                               ; preds = %32
  %46 = load i32, i32* @acpi_id, align 4
  %47 = call i32 @PCPU_GET(i32 %46)
  br label %48

48:                                               ; preds = %45, %42
  %49 = phi i32 [ %44, %42 ], [ %47, %45 ]
  %50 = call i32 @PCPU_SET(i32 %36, i32 %49)
  %51 = load i64, i64* @xen_evtchn_needs_ack, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %48
  %54 = call i32 (...) @IS_BSP()
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %66, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* @vcpu_id, align 4
  %58 = call i32 @PCPU_GET(i32 %57)
  %59 = call i32 @set_percpu_callback(i32 %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @panic(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %62, %56
  br label %66

66:                                               ; preds = %65, %53, %48
  %67 = load i32, i32* @vcpu_local_info, align 4
  %68 = call %struct.vcpu_info* @DPCPU_PTR(i32 %67)
  store %struct.vcpu_info* %68, %struct.vcpu_info** %2, align 8
  %69 = load i32, i32* @vcpu_id, align 4
  %70 = call i32 @PCPU_GET(i32 %69)
  store i32 %70, i32* %4, align 4
  %71 = load %struct.vcpu_info*, %struct.vcpu_info** %2, align 8
  %72 = call i32 @vtophys(%struct.vcpu_info* %71)
  %73 = load i32, i32* @PAGE_SHIFT, align 4
  %74 = ashr i32 %72, %73
  %75 = getelementptr inbounds %struct.vcpu_register_vcpu_info, %struct.vcpu_register_vcpu_info* %1, i32 0, i32 0
  store i32 %74, i32* %75, align 8
  %76 = load %struct.vcpu_info*, %struct.vcpu_info** %2, align 8
  %77 = call i32 @vtophys(%struct.vcpu_info* %76)
  %78 = sext i32 %77 to i64
  %79 = load %struct.vcpu_info*, %struct.vcpu_info** %2, align 8
  %80 = call i32 @vtophys(%struct.vcpu_info* %79)
  %81 = call i64 @trunc_page(i32 %80)
  %82 = sub nsw i64 %78, %81
  %83 = getelementptr inbounds %struct.vcpu_register_vcpu_info, %struct.vcpu_register_vcpu_info* %1, i32 0, i32 1
  store i64 %82, i64* %83, align 8
  %84 = load i32, i32* @VCPUOP_register_vcpu_info, align 4
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @HYPERVISOR_vcpu_op(i32 %84, i32 %85, %struct.vcpu_register_vcpu_info* %1)
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* %5, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %66
  %90 = load %struct.vcpu_info*, %struct.vcpu_info** %2, align 8
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** @HYPERVISOR_shared_info, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load %struct.vcpu_info*, %struct.vcpu_info** %92, align 8
  %94 = load i32, i32* %4, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.vcpu_info, %struct.vcpu_info* %93, i64 %95
  %97 = call i32 @DPCPU_SET(%struct.vcpu_info* %90, %struct.vcpu_info* %96)
  br label %102

98:                                               ; preds = %66
  %99 = load %struct.vcpu_info*, %struct.vcpu_info** %2, align 8
  %100 = load %struct.vcpu_info*, %struct.vcpu_info** %2, align 8
  %101 = call i32 @DPCPU_SET(%struct.vcpu_info* %99, %struct.vcpu_info* %100)
  br label %102

102:                                              ; preds = %8, %13, %98, %89
  ret void
}

declare dso_local i32 @xen_domain(...) #1

declare dso_local i32* @DPCPU_GET(%struct.vcpu_info*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @cpuid_count(i64, i32, i32*) #1

declare dso_local i32 @xen_pv_domain(...) #1

declare dso_local i32 @PCPU_SET(i32, i32) #1

declare dso_local i32 @PCPU_GET(i32) #1

declare dso_local i32 @IS_BSP(...) #1

declare dso_local i32 @set_percpu_callback(i32) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local %struct.vcpu_info* @DPCPU_PTR(i32) #1

declare dso_local i32 @vtophys(%struct.vcpu_info*) #1

declare dso_local i64 @trunc_page(i32) #1

declare dso_local i32 @HYPERVISOR_vcpu_op(i32, i32, %struct.vcpu_register_vcpu_info*) #1

declare dso_local i32 @DPCPU_SET(%struct.vcpu_info*, %struct.vcpu_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
