; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_bpf.c_ipfwlog_clone_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_bpf.c_ipfwlog_clone_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i32, i32, i32 }
%struct.if_clone = type { i32 }

@IFT_PFLOG = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@ipfwlogname = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@ipfw_bpf_ioctl = common dso_local global i32 0, align 4
@ipfw_bpf_output = common dso_local global i32 0, align 4
@PFLOG_HDRLEN = common dso_local global i32 0, align 4
@DLT_PFLOG = common dso_local global i32 0, align 4
@V_pflog_if = common dso_local global %struct.ifnet* null, align 8
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.if_clone*, i32, i32)* @ipfwlog_clone_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipfwlog_clone_create(%struct.if_clone* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.if_clone*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ifnet*, align 8
  store %struct.if_clone* %0, %struct.if_clone** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @IFT_PFLOG, align 4
  %10 = call %struct.ifnet* @if_alloc(i32 %9)
  store %struct.ifnet* %10, %struct.ifnet** %8, align 8
  %11 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %12 = icmp eq %struct.ifnet* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @ENOSPC, align 4
  store i32 %14, i32* %4, align 4
  br label %56

15:                                               ; preds = %3
  %16 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %17 = load i32, i32* @ipfwlogname, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @if_initname(%struct.ifnet* %16, i32 %17, i32 %18)
  %20 = load i32, i32* @IFF_UP, align 4
  %21 = load i32, i32* @IFF_SIMPLEX, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @IFF_MULTICAST, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %26 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %28 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %27, i32 0, i32 1
  store i32 65536, i32* %28, align 4
  %29 = load i32, i32* @ipfw_bpf_ioctl, align 4
  %30 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %31 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @ipfw_bpf_output, align 4
  %33 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %34 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @PFLOG_HDRLEN, align 4
  %36 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %37 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %39 = call i32 @if_attach(%struct.ifnet* %38)
  %40 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %41 = load i32, i32* @DLT_PFLOG, align 4
  %42 = load i32, i32* @PFLOG_HDRLEN, align 4
  %43 = call i32 @bpfattach(%struct.ifnet* %40, i32 %41, i32 %42)
  %44 = load %struct.ifnet*, %struct.ifnet** @V_pflog_if, align 8
  %45 = icmp ne %struct.ifnet* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %15
  %47 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %48 = call i32 @bpfdetach(%struct.ifnet* %47)
  %49 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %50 = call i32 @if_detach(%struct.ifnet* %49)
  %51 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %52 = call i32 @if_free(%struct.ifnet* %51)
  %53 = load i32, i32* @EEXIST, align 4
  store i32 %53, i32* %4, align 4
  br label %56

54:                                               ; preds = %15
  %55 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  store %struct.ifnet* %55, %struct.ifnet** @V_pflog_if, align 8
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %54, %46, %13
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local %struct.ifnet* @if_alloc(i32) #1

declare dso_local i32 @if_initname(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @if_attach(%struct.ifnet*) #1

declare dso_local i32 @bpfattach(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @bpfdetach(%struct.ifnet*) #1

declare dso_local i32 @if_detach(%struct.ifnet*) #1

declare dso_local i32 @if_free(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
