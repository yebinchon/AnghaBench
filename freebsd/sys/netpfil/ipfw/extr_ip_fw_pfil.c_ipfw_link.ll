; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_pfil.c_ipfw_link.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_pfil.c_ipfw_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfil_link_args = type { i32, i32, i32, i32 }

@PFIL_VERSION = common dso_local global i32 0, align 4
@PFIL_IN = common dso_local global i32 0, align 4
@PFIL_OUT = common dso_local global i32 0, align 4
@PFIL_HEADPTR = common dso_local global i32 0, align 4
@PFIL_HOOKPTR = common dso_local global i32 0, align 4
@PFIL_UNLINK = common dso_local global i32 0, align 4
@V_inet_pfil_head = common dso_local global i32 0, align 4
@V_ipfw_inet_hook = common dso_local global i32 0, align 4
@V_link_pfil_head = common dso_local global i32 0, align 4
@V_ipfw_link_hook = common dso_local global i32 0, align 4
@V_inet6_pfil_head = common dso_local global i32 0, align 4
@V_ipfw_inet6_hook = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @ipfw_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipfw_link(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.pfil_link_args, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @PFIL_VERSION, align 4
  %7 = getelementptr inbounds %struct.pfil_link_args, %struct.pfil_link_args* %5, i32 0, i32 3
  store i32 %6, i32* %7, align 4
  %8 = load i32, i32* @PFIL_IN, align 4
  %9 = load i32, i32* @PFIL_OUT, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @PFIL_HEADPTR, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @PFIL_HOOKPTR, align 4
  %14 = or i32 %12, %13
  %15 = getelementptr inbounds %struct.pfil_link_args, %struct.pfil_link_args* %5, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load i32, i32* @PFIL_UNLINK, align 4
  %20 = getelementptr inbounds %struct.pfil_link_args, %struct.pfil_link_args* %5, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %19
  store i32 %22, i32* %20, align 4
  br label %23

23:                                               ; preds = %18, %2
  %24 = load i32, i32* %3, align 4
  switch i32 %24, label %35 [
    i32 130, label %25
    i32 128, label %30
  ]

25:                                               ; preds = %23
  %26 = load i32, i32* @V_inet_pfil_head, align 4
  %27 = getelementptr inbounds %struct.pfil_link_args, %struct.pfil_link_args* %5, i32 0, i32 2
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @V_ipfw_inet_hook, align 4
  %29 = getelementptr inbounds %struct.pfil_link_args, %struct.pfil_link_args* %5, i32 0, i32 1
  store i32 %28, i32* %29, align 4
  br label %35

30:                                               ; preds = %23
  %31 = load i32, i32* @V_link_pfil_head, align 4
  %32 = getelementptr inbounds %struct.pfil_link_args, %struct.pfil_link_args* %5, i32 0, i32 2
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* @V_ipfw_link_hook, align 4
  %34 = getelementptr inbounds %struct.pfil_link_args, %struct.pfil_link_args* %5, i32 0, i32 1
  store i32 %33, i32* %34, align 4
  br label %35

35:                                               ; preds = %23, %30, %25
  %36 = call i32 @pfil_link(%struct.pfil_link_args* %5)
  ret i32 %36
}

declare dso_local i32 @pfil_link(%struct.pfil_link_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
