; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw2.c_vnet_ipfw_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw2.c_vnet_ipfw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { %struct.ip_fw*, %struct.ip_fw*, i32 }
%struct.ip_fw = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@V_layer3_chain = common dso_local global %struct.ip_fw_chain zeroinitializer, align 8
@curvnet = common dso_local global i32 0, align 4
@V_autoinc_step = common dso_local global i32 0, align 4
@V_fw_deny_unknown_exthdrs = common dso_local global i32 0, align 4
@default_fw_tables = common dso_local global i32 0, align 4
@V_fw_tables_max = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"ipfw2: setting up tables failed\0A\00", align 1
@M_IPFW = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@IPFW_RULE_NOOPT = common dso_local global i32 0, align 4
@default_to_accept = common dso_local global i64 0, align 8
@O_ACCEPT = common dso_local global i32 0, align 4
@O_DENY = common dso_local global i32 0, align 4
@V_ipfw_vnet_ready = common dso_local global i32 0, align 4
@ipfw_ctl3 = common dso_local global i32 0, align 4
@V_ip_fw_ctl_ptr = common dso_local global i32 0, align 4
@IPFIREWALL_VERBOSE_LIMIT = common dso_local global i32 0, align 4
@V_fw_verbose = common dso_local global i32 0, align 4
@V_verbose_limit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @vnet_ipfw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vnet_ipfw_init(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ip_fw*, align 8
  %7 = alloca %struct.ip_fw_chain*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.ip_fw* null, %struct.ip_fw** %6, align 8
  store %struct.ip_fw_chain* @V_layer3_chain, %struct.ip_fw_chain** %7, align 8
  %8 = load i32, i32* @curvnet, align 4
  %9 = call i64 @IS_DEFAULT_VNET(i32 %8)
  %10 = icmp ne i64 %9, 0
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i32 1, i32 0
  store i32 %12, i32* %5, align 4
  store i32 100, i32* @V_autoinc_step, align 4
  store i32 1, i32* @V_fw_deny_unknown_exthdrs, align 4
  %13 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %7, align 8
  %14 = call i32 @ipfw_init_srv(%struct.ip_fw_chain* %13)
  %15 = call i32 (...) @ipfw_init_counters()
  %16 = load i32, i32* @default_fw_tables, align 4
  store i32 %16, i32* @V_fw_tables_max, align 4
  %17 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %7, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @ipfw_init_tables(%struct.ip_fw_chain* %17, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %1
  %23 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %7, align 8
  %25 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %24, i32 0, i32 1
  %26 = load %struct.ip_fw*, %struct.ip_fw** %25, align 8
  %27 = load i32, i32* @M_IPFW, align 4
  %28 = call i32 @free(%struct.ip_fw* %26, i32 %27)
  %29 = load %struct.ip_fw*, %struct.ip_fw** %6, align 8
  %30 = load i32, i32* @M_IPFW, align 4
  %31 = call i32 @free(%struct.ip_fw* %29, i32 %30)
  %32 = load i32, i32* @ENOSPC, align 4
  store i32 %32, i32* %2, align 4
  br label %79

33:                                               ; preds = %1
  %34 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %7, align 8
  %35 = call i32 @IPFW_LOCK_INIT(%struct.ip_fw_chain* %34)
  %36 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %7, align 8
  %37 = call %struct.ip_fw* @ipfw_alloc_rule(%struct.ip_fw_chain* %36, i32 24)
  store %struct.ip_fw* %37, %struct.ip_fw** %6, align 8
  %38 = load i32, i32* @IPFW_RULE_NOOPT, align 4
  %39 = load %struct.ip_fw*, %struct.ip_fw** %6, align 8
  %40 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 8
  %43 = load %struct.ip_fw*, %struct.ip_fw** %6, align 8
  %44 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = load %struct.ip_fw*, %struct.ip_fw** %6, align 8
  %46 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i32 1, i32* %49, align 4
  %50 = load i64, i64* @default_to_accept, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %33
  %53 = load i32, i32* @O_ACCEPT, align 4
  br label %56

54:                                               ; preds = %33
  %55 = load i32, i32* @O_DENY, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  %58 = load %struct.ip_fw*, %struct.ip_fw** %6, align 8
  %59 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  store i32 %57, i32* %62, align 4
  %63 = load %struct.ip_fw*, %struct.ip_fw** %6, align 8
  %64 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %7, align 8
  %65 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %64, i32 0, i32 0
  store %struct.ip_fw* %63, %struct.ip_fw** %65, align 8
  %66 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %7, align 8
  %67 = load %struct.ip_fw*, %struct.ip_fw** %6, align 8
  %68 = call i32 @ipfw_add_protected_rule(%struct.ip_fw_chain* %66, %struct.ip_fw* %67, i32 0)
  %69 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %7, align 8
  %70 = call i32 @ipfw_dyn_init(%struct.ip_fw_chain* %69)
  %71 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %7, align 8
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @ipfw_eaction_init(%struct.ip_fw_chain* %71, i32 %72)
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @ipfw_bpf_init(i32 %74)
  store i32 1, i32* @V_ipfw_vnet_ready, align 4
  %76 = load i32, i32* @ipfw_ctl3, align 4
  store i32 %76, i32* @V_ip_fw_ctl_ptr, align 4
  %77 = call i32 (...) @ipfw_attach_hooks()
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* %4, align 4
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %56, %22
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i64 @IS_DEFAULT_VNET(i32) #1

declare dso_local i32 @ipfw_init_srv(%struct.ip_fw_chain*) #1

declare dso_local i32 @ipfw_init_counters(...) #1

declare dso_local i32 @ipfw_init_tables(%struct.ip_fw_chain*, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @free(%struct.ip_fw*, i32) #1

declare dso_local i32 @IPFW_LOCK_INIT(%struct.ip_fw_chain*) #1

declare dso_local %struct.ip_fw* @ipfw_alloc_rule(%struct.ip_fw_chain*, i32) #1

declare dso_local i32 @ipfw_add_protected_rule(%struct.ip_fw_chain*, %struct.ip_fw*, i32) #1

declare dso_local i32 @ipfw_dyn_init(%struct.ip_fw_chain*) #1

declare dso_local i32 @ipfw_eaction_init(%struct.ip_fw_chain*, i32) #1

declare dso_local i32 @ipfw_bpf_init(i32) #1

declare dso_local i32 @ipfw_attach_hooks(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
