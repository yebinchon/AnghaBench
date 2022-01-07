; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_ioctl.c_hook_pf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_ioctl.c_hook_pf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfil_hook_args = type { i8*, i8*, i8*, i32, i32, i32*, i8* }
%struct.pfil_link_args = type { i8*, i8*, i8*, i8* }

@V_pf_pfil_hooked = common dso_local global i32 0, align 4
@PFIL_VERSION = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"pf\00", align 1
@PFIL_HEADPTR = common dso_local global i8* null, align 8
@PFIL_HOOKPTR = common dso_local global i8* null, align 8
@PFIL_IN = common dso_local global i8* null, align 8
@PFIL_OUT = common dso_local global i8* null, align 8
@PFIL_TYPE_IP4 = common dso_local global i32 0, align 4
@PFIL_TYPE_IP6 = common dso_local global i32 0, align 4
@V_inet6_pfil_head = common dso_local global i8* null, align 8
@V_inet_pfil_head = common dso_local global i8* null, align 8
@V_pf_ip4_in_hook = common dso_local global i8* null, align 8
@V_pf_ip4_out_hook = common dso_local global i8* null, align 8
@V_pf_ip6_in_hook = common dso_local global i8* null, align 8
@V_pf_ip6_out_hook = common dso_local global i8* null, align 8
@pf_check6_in = common dso_local global i32 0, align 4
@pf_check6_out = common dso_local global i32 0, align 4
@pf_check_in = common dso_local global i32 0, align 4
@pf_check_out = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @hook_pf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hook_pf() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.pfil_hook_args, align 8
  %3 = alloca %struct.pfil_link_args, align 8
  %4 = load i32, i32* @V_pf_pfil_hooked, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %14

7:                                                ; preds = %0
  %8 = load i8*, i8** @PFIL_VERSION, align 8
  %9 = getelementptr inbounds %struct.pfil_hook_args, %struct.pfil_hook_args* %2, i32 0, i32 6
  store i8* %8, i8** %9, align 8
  %10 = getelementptr inbounds %struct.pfil_hook_args, %struct.pfil_hook_args* %2, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %11 = getelementptr inbounds %struct.pfil_hook_args, %struct.pfil_hook_args* %2, i32 0, i32 5
  store i32* null, i32** %11, align 8
  %12 = load i8*, i8** @PFIL_VERSION, align 8
  %13 = getelementptr inbounds %struct.pfil_link_args, %struct.pfil_link_args* %3, i32 0, i32 3
  store i8* %12, i8** %13, align 8
  store i32 1, i32* @V_pf_pfil_hooked, align 4
  store i32 0, i32* %1, align 4
  br label %14

14:                                               ; preds = %7, %6
  %15 = load i32, i32* %1, align 4
  ret i32 %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
