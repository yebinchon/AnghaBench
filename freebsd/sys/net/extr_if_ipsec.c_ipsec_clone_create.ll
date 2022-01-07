; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_ipsec.c_ipsec_clone_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_ipsec.c_ipsec_clone_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.if_clone = type { i32 }
%struct.ipsec_softc = type { %struct.ifnet*, i32 }
%struct.ifnet = type { i32, i32, i32, i32, i32, i32, i64, %struct.ipsec_softc* }

@M_IPSEC = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_4__* null, align 8
@IFT_TUNNEL = common dso_local global i32 0, align 4
@ipsecname = common dso_local global i32 0, align 4
@IPSEC_MTU = common dso_local global i32 0, align 4
@IFF_POINTOPOINT = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@ipsec_ioctl = common dso_local global i32 0, align 4
@ipsec_transmit = common dso_local global i32 0, align 4
@ipsec_qflush = common dso_local global i32 0, align 4
@ipsec_output = common dso_local global i32 0, align 4
@DLT_NULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.if_clone*, i32, i32)* @ipsec_clone_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipsec_clone_create(%struct.if_clone* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.if_clone*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ipsec_softc*, align 8
  %8 = alloca %struct.ifnet*, align 8
  store %struct.if_clone* %0, %struct.if_clone** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @M_IPSEC, align 4
  %10 = load i32, i32* @M_WAITOK, align 4
  %11 = load i32, i32* @M_ZERO, align 4
  %12 = or i32 %10, %11
  %13 = call %struct.ipsec_softc* @malloc(i32 16, i32 %9, i32 %12)
  store %struct.ipsec_softc* %13, %struct.ipsec_softc** %7, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curthread, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ipsec_softc*, %struct.ipsec_softc** %7, align 8
  %20 = getelementptr inbounds %struct.ipsec_softc, %struct.ipsec_softc* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* @IFT_TUNNEL, align 4
  %22 = call %struct.ifnet* @if_alloc(i32 %21)
  store %struct.ifnet* %22, %struct.ifnet** %8, align 8
  %23 = load %struct.ipsec_softc*, %struct.ipsec_softc** %7, align 8
  %24 = getelementptr inbounds %struct.ipsec_softc, %struct.ipsec_softc* %23, i32 0, i32 0
  store %struct.ifnet* %22, %struct.ifnet** %24, align 8
  %25 = load %struct.ipsec_softc*, %struct.ipsec_softc** %7, align 8
  %26 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %27 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %26, i32 0, i32 7
  store %struct.ipsec_softc* %25, %struct.ipsec_softc** %27, align 8
  %28 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %29 = load i32, i32* @ipsecname, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @if_initname(%struct.ifnet* %28, i32 %29, i32 %30)
  %32 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %33 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %32, i32 0, i32 6
  store i64 0, i64* %33, align 8
  %34 = load i32, i32* @IPSEC_MTU, align 4
  %35 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %36 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @IFF_POINTOPOINT, align 4
  %38 = load i32, i32* @IFF_MULTICAST, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %41 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @ipsec_ioctl, align 4
  %43 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %44 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* @ipsec_transmit, align 4
  %46 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %47 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @ipsec_qflush, align 4
  %49 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %50 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* @ipsec_output, align 4
  %52 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %53 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %55 = call i32 @if_attach(%struct.ifnet* %54)
  %56 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %57 = load i32, i32* @DLT_NULL, align 4
  %58 = call i32 @bpfattach(%struct.ifnet* %56, i32 %57, i32 4)
  ret i32 0
}

declare dso_local %struct.ipsec_softc* @malloc(i32, i32, i32) #1

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
