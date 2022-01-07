; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_pfil.c_ipfw_hook.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_pfil.c_ipfw_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfil_hook_args = type { i32, i8*, i8*, i32, i8*, i32*, i32 }

@PFIL_VERSION = common dso_local global i32 0, align 4
@PFIL_IN = common dso_local global i32 0, align 4
@PFIL_OUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"ipfw\00", align 1
@ipfw_check_packet = common dso_local global i8* null, align 8
@PFIL_TYPE_IP4 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@V_ipfw_inet_hook = common dso_local global i32 0, align 4
@ipfw_check_frame = common dso_local global i8* null, align 8
@PFIL_TYPE_ETHERNET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"default-link\00", align 1
@PFIL_MEMPTR = common dso_local global i32 0, align 4
@V_ipfw_link_hook = common dso_local global i32 0, align 4
@PFIL_TYPE_IP6 = common dso_local global i32 0, align 4
@V_ipfw_inet6_hook = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ipfw_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipfw_hook(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pfil_hook_args, align 8
  %4 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @PFIL_VERSION, align 4
  %6 = getelementptr inbounds %struct.pfil_hook_args, %struct.pfil_hook_args* %3, i32 0, i32 6
  store i32 %5, i32* %6, align 8
  %7 = load i32, i32* @PFIL_IN, align 4
  %8 = load i32, i32* @PFIL_OUT, align 4
  %9 = or i32 %7, %8
  %10 = getelementptr inbounds %struct.pfil_hook_args, %struct.pfil_hook_args* %3, i32 0, i32 0
  store i32 %9, i32* %10, align 8
  %11 = getelementptr inbounds %struct.pfil_hook_args, %struct.pfil_hook_args* %3, i32 0, i32 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  %12 = getelementptr inbounds %struct.pfil_hook_args, %struct.pfil_hook_args* %3, i32 0, i32 5
  store i32* null, i32** %12, align 8
  %13 = load i32, i32* %2, align 4
  switch i32 %13, label %30 [
    i32 130, label %14
    i32 128, label %20
  ]

14:                                               ; preds = %1
  %15 = load i8*, i8** @ipfw_check_packet, align 8
  %16 = getelementptr inbounds %struct.pfil_hook_args, %struct.pfil_hook_args* %3, i32 0, i32 4
  store i8* %15, i8** %16, align 8
  %17 = load i32, i32* @PFIL_TYPE_IP4, align 4
  %18 = getelementptr inbounds %struct.pfil_hook_args, %struct.pfil_hook_args* %3, i32 0, i32 3
  store i32 %17, i32* %18, align 8
  %19 = getelementptr inbounds %struct.pfil_hook_args, %struct.pfil_hook_args* %3, i32 0, i32 2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %19, align 8
  store i32* @V_ipfw_inet_hook, i32** %4, align 8
  br label %30

20:                                               ; preds = %1
  %21 = load i8*, i8** @ipfw_check_frame, align 8
  %22 = getelementptr inbounds %struct.pfil_hook_args, %struct.pfil_hook_args* %3, i32 0, i32 4
  store i8* %21, i8** %22, align 8
  %23 = load i32, i32* @PFIL_TYPE_ETHERNET, align 4
  %24 = getelementptr inbounds %struct.pfil_hook_args, %struct.pfil_hook_args* %3, i32 0, i32 3
  store i32 %23, i32* %24, align 8
  %25 = getelementptr inbounds %struct.pfil_hook_args, %struct.pfil_hook_args* %3, i32 0, i32 2
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8** %25, align 8
  %26 = load i32, i32* @PFIL_MEMPTR, align 4
  %27 = getelementptr inbounds %struct.pfil_hook_args, %struct.pfil_hook_args* %3, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = or i32 %28, %26
  store i32 %29, i32* %27, align 8
  store i32* @V_ipfw_link_hook, i32** %4, align 8
  br label %30

30:                                               ; preds = %1, %20, %14
  %31 = call i32 @pfil_add_hook(%struct.pfil_hook_args* %3)
  %32 = load i32*, i32** %4, align 8
  store i32 %31, i32* %32, align 4
  ret void
}

declare dso_local i32 @pfil_add_hook(%struct.pfil_hook_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
