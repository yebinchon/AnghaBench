; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_loop.c_lo_clone_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_loop.c_lo_clone_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i32, i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.if_clone = type { i32 }

@IFT_LOOP = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@loname = common dso_local global i32 0, align 4
@LOMTU = common dso_local global i32 0, align 4
@IFF_LOOPBACK = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@loioctl = common dso_local global i32 0, align 4
@looutput = common dso_local global i32 0, align 4
@ifqmaxlen = common dso_local global i32 0, align 4
@IFCAP_HWCSUM = common dso_local global i32 0, align 4
@IFCAP_HWCSUM_IPV6 = common dso_local global i32 0, align 4
@IFCAP_LINKSTATE = common dso_local global i32 0, align 4
@LO_CSUM_FEATURES = common dso_local global i32 0, align 4
@LO_CSUM_FEATURES6 = common dso_local global i32 0, align 4
@DLT_NULL = common dso_local global i32 0, align 4
@V_loif = common dso_local global %struct.ifnet* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.if_clone*, i32, i32)* @lo_clone_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lo_clone_create(%struct.if_clone* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.if_clone*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ifnet*, align 8
  store %struct.if_clone* %0, %struct.if_clone** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @IFT_LOOP, align 4
  %10 = call %struct.ifnet* @if_alloc(i32 %9)
  store %struct.ifnet* %10, %struct.ifnet** %8, align 8
  %11 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %12 = icmp eq %struct.ifnet* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @ENOSPC, align 4
  store i32 %14, i32* %4, align 4
  br label %62

15:                                               ; preds = %3
  %16 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %17 = load i32, i32* @loname, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @if_initname(%struct.ifnet* %16, i32 %17, i32 %18)
  %20 = load i32, i32* @LOMTU, align 4
  %21 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %22 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %21, i32 0, i32 7
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @IFF_LOOPBACK, align 4
  %24 = load i32, i32* @IFF_MULTICAST, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %27 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @loioctl, align 4
  %29 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %30 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %29, i32 0, i32 6
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @looutput, align 4
  %32 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %33 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %32, i32 0, i32 5
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @ifqmaxlen, align 4
  %35 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %36 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* @IFCAP_HWCSUM, align 4
  %39 = load i32, i32* @IFCAP_HWCSUM_IPV6, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @IFCAP_LINKSTATE, align 4
  %42 = or i32 %40, %41
  %43 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %44 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %46 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %45, i32 0, i32 1
  store i32 %42, i32* %46, align 4
  %47 = load i32, i32* @LO_CSUM_FEATURES, align 4
  %48 = load i32, i32* @LO_CSUM_FEATURES6, align 4
  %49 = or i32 %47, %48
  %50 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %51 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  %52 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %53 = call i32 @if_attach(%struct.ifnet* %52)
  %54 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %55 = load i32, i32* @DLT_NULL, align 4
  %56 = call i32 @bpfattach(%struct.ifnet* %54, i32 %55, i32 4)
  %57 = load %struct.ifnet*, %struct.ifnet** @V_loif, align 8
  %58 = icmp eq %struct.ifnet* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %15
  %60 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  store %struct.ifnet* %60, %struct.ifnet** @V_loif, align 8
  br label %61

61:                                               ; preds = %59, %15
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %61, %13
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local %struct.ifnet* @if_alloc(i32) #1

declare dso_local i32 @if_initname(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @if_attach(%struct.ifnet*) #1

declare dso_local i32 @bpfattach(%struct.ifnet*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
