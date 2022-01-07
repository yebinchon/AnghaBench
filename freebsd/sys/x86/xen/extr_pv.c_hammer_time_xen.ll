; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/xen/extr_pv.c_hammer_time_xen.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/xen/extr_pv.c_hammer_time_xen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hvm_start_info = type { i64, i64, i32, i32 }
%struct.hvm_modlist_entry = type { i64 }
%struct.xen_add_to_physmap = type { i32, i32, i64, i32 }

@XEN_HVM_DOMAIN = common dso_local global i32 0, align 4
@xen_domain_type = common dso_local global i32 0, align 4
@VM_GUEST_XEN = common dso_local global i32 0, align 4
@vm_guest = common dso_local global i32 0, align 4
@XEN_HVM_INIT_EARLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"ERROR: failed to initialize hypercall page: %d\0A\00", align 1
@SHUTDOWN_crash = common dso_local global i32 0, align 4
@KERNBASE = common dso_local global i64 0, align 8
@start_info = common dso_local global %struct.hvm_start_info* null, align 8
@XEN_HVM_START_MAGIC_VALUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Unknown magic value in start_info struct: %#x\0A\00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8
@DOMID_SELF = common dso_local global i32 0, align 4
@XENMAPSPACE_shared_info = common dso_local global i32 0, align 4
@XENMEM_add_to_physmap = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"ERROR: failed to setup shared_info page\0A\00", align 1
@HYPERVISOR_shared_info = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [46 x i8] c"ERROR: unexpected module list memory address\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"ERROR: modlist_paddr != 0 but nr_modules == 0\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"ERROR: unexpected module memory address\0A\00", align 1
@xen_pvh_init_ops = common dso_local global i32 0, align 4
@init_ops = common dso_local global i32 0, align 4
@hvm_start_flags = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @hammer_time_xen(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.hvm_modlist_entry*, align 8
  %4 = alloca %struct.xen_add_to_physmap, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %8 = load i32, i32* @XEN_HVM_DOMAIN, align 4
  store i32 %8, i32* @xen_domain_type, align 4
  %9 = load i32, i32* @VM_GUEST_XEN, align 4
  store i32 %9, i32* @vm_guest, align 4
  %10 = load i32, i32* @XEN_HVM_INIT_EARLY, align 4
  %11 = call i32 @xen_hvm_init_hypercall_stubs(i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load i32, i32* %7, align 4
  %16 = call i32 (i8*, ...) @xc_printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @SHUTDOWN_crash, align 4
  %18 = call i32 @HYPERVISOR_shutdown(i32 %17)
  br label %19

19:                                               ; preds = %14, %1
  %20 = load i64, i64* %2, align 8
  %21 = load i64, i64* @KERNBASE, align 8
  %22 = add nsw i64 %20, %21
  %23 = inttoptr i64 %22 to %struct.hvm_start_info*
  store %struct.hvm_start_info* %23, %struct.hvm_start_info** @start_info, align 8
  %24 = load %struct.hvm_start_info*, %struct.hvm_start_info** @start_info, align 8
  %25 = getelementptr inbounds %struct.hvm_start_info, %struct.hvm_start_info* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @XEN_HVM_START_MAGIC_VALUE, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %19
  %30 = load %struct.hvm_start_info*, %struct.hvm_start_info** @start_info, align 8
  %31 = getelementptr inbounds %struct.hvm_start_info, %struct.hvm_start_info* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i8*, ...) @xc_printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @SHUTDOWN_crash, align 4
  %35 = call i32 @HYPERVISOR_shutdown(i32 %34)
  br label %36

36:                                               ; preds = %29, %19
  %37 = load i64, i64* %2, align 8
  %38 = load i64, i64* @PAGE_SIZE, align 8
  %39 = add nsw i64 %37, %38
  %40 = load i64, i64* @PAGE_SIZE, align 8
  %41 = call i64 @roundup2(i64 %39, i64 %40)
  store i64 %41, i64* %5, align 8
  %42 = load i32, i32* @DOMID_SELF, align 4
  %43 = getelementptr inbounds %struct.xen_add_to_physmap, %struct.xen_add_to_physmap* %4, i32 0, i32 3
  store i32 %42, i32* %43, align 8
  %44 = getelementptr inbounds %struct.xen_add_to_physmap, %struct.xen_add_to_physmap* %4, i32 0, i32 2
  store i64 0, i64* %44, align 8
  %45 = load i32, i32* @XENMAPSPACE_shared_info, align 4
  %46 = getelementptr inbounds %struct.xen_add_to_physmap, %struct.xen_add_to_physmap* %4, i32 0, i32 1
  store i32 %45, i32* %46, align 4
  %47 = load i64, i64* %5, align 8
  %48 = call i32 @atop(i64 %47)
  %49 = getelementptr inbounds %struct.xen_add_to_physmap, %struct.xen_add_to_physmap* %4, i32 0, i32 0
  store i32 %48, i32* %49, align 8
  %50 = load i32, i32* @XENMEM_add_to_physmap, align 4
  %51 = call i64 @HYPERVISOR_memory_op(i32 %50, %struct.xen_add_to_physmap* %4)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %36
  %54 = call i32 (i8*, ...) @xc_printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %55 = load i32, i32* @SHUTDOWN_crash, align 4
  %56 = call i32 @HYPERVISOR_shutdown(i32 %55)
  br label %57

57:                                               ; preds = %53, %36
  %58 = load i64, i64* %5, align 8
  %59 = load i64, i64* @KERNBASE, align 8
  %60 = add nsw i64 %58, %59
  %61 = inttoptr i64 %60 to i32*
  store i32* %61, i32** @HYPERVISOR_shared_info, align 8
  %62 = load i64, i64* @PAGE_SIZE, align 8
  %63 = load i64, i64* %5, align 8
  %64 = add nsw i64 %63, %62
  store i64 %64, i64* %5, align 8
  %65 = load i64, i64* %5, align 8
  %66 = load i64, i64* @KERNBASE, align 8
  %67 = add nsw i64 %65, %66
  %68 = inttoptr i64 %67 to i8*
  store i8* %68, i8** %6, align 8
  %69 = load i64, i64* @PAGE_SIZE, align 8
  %70 = load i64, i64* %5, align 8
  %71 = add nsw i64 %70, %69
  store i64 %71, i64* %5, align 8
  %72 = load i8*, i8** %6, align 8
  %73 = load i64, i64* @PAGE_SIZE, align 8
  %74 = call i32 @bzero_early(i8* %72, i64 %73)
  %75 = load i8*, i8** %6, align 8
  %76 = load i64, i64* @PAGE_SIZE, align 8
  %77 = call i32 @init_static_kenv(i8* %75, i64 %76)
  %78 = load %struct.hvm_start_info*, %struct.hvm_start_info** @start_info, align 8
  %79 = getelementptr inbounds %struct.hvm_start_info, %struct.hvm_start_info* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %119

82:                                               ; preds = %57
  %83 = load %struct.hvm_start_info*, %struct.hvm_start_info** @start_info, align 8
  %84 = getelementptr inbounds %struct.hvm_start_info, %struct.hvm_start_info* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %5, align 8
  %87 = icmp sge i64 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %82
  %89 = call i32 (i8*, ...) @xc_printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %90 = load i32, i32* @SHUTDOWN_crash, align 4
  %91 = call i32 @HYPERVISOR_shutdown(i32 %90)
  br label %92

92:                                               ; preds = %88, %82
  %93 = load %struct.hvm_start_info*, %struct.hvm_start_info** @start_info, align 8
  %94 = getelementptr inbounds %struct.hvm_start_info, %struct.hvm_start_info* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  %98 = call i32 (i8*, ...) @xc_printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  %99 = load i32, i32* @SHUTDOWN_crash, align 4
  %100 = call i32 @HYPERVISOR_shutdown(i32 %99)
  br label %101

101:                                              ; preds = %97, %92
  %102 = load %struct.hvm_start_info*, %struct.hvm_start_info** @start_info, align 8
  %103 = getelementptr inbounds %struct.hvm_start_info, %struct.hvm_start_info* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = inttoptr i64 %104 to %struct.hvm_modlist_entry*
  %106 = load i64, i64* @KERNBASE, align 8
  %107 = getelementptr inbounds %struct.hvm_modlist_entry, %struct.hvm_modlist_entry* %105, i64 %106
  store %struct.hvm_modlist_entry* %107, %struct.hvm_modlist_entry** %3, align 8
  %108 = load %struct.hvm_modlist_entry*, %struct.hvm_modlist_entry** %3, align 8
  %109 = getelementptr inbounds %struct.hvm_modlist_entry, %struct.hvm_modlist_entry* %108, i64 0
  %110 = getelementptr inbounds %struct.hvm_modlist_entry, %struct.hvm_modlist_entry* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* %5, align 8
  %113 = icmp sge i64 %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %101
  %115 = call i32 (i8*, ...) @xc_printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %116 = load i32, i32* @SHUTDOWN_crash, align 4
  %117 = call i32 @HYPERVISOR_shutdown(i32 %116)
  br label %118

118:                                              ; preds = %114, %101
  br label %119

119:                                              ; preds = %118, %57
  %120 = load i32, i32* @xen_pvh_init_ops, align 4
  store i32 %120, i32* @init_ops, align 4
  %121 = load %struct.hvm_start_info*, %struct.hvm_start_info** @start_info, align 8
  %122 = getelementptr inbounds %struct.hvm_start_info, %struct.hvm_start_info* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  store i32 %123, i32* @hvm_start_flags, align 4
  %124 = load i64, i64* %5, align 8
  %125 = call i64 @hammer_time(i32 0, i64 %124)
  ret i64 %125
}

declare dso_local i32 @xen_hvm_init_hypercall_stubs(i32) #1

declare dso_local i32 @xc_printf(i8*, ...) #1

declare dso_local i32 @HYPERVISOR_shutdown(i32) #1

declare dso_local i64 @roundup2(i64, i64) #1

declare dso_local i32 @atop(i64) #1

declare dso_local i64 @HYPERVISOR_memory_op(i32, %struct.xen_add_to_physmap*) #1

declare dso_local i32 @bzero_early(i8*, i64) #1

declare dso_local i32 @init_static_kenv(i8*, i64) #1

declare dso_local i64 @hammer_time(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
