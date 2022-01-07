; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_disc.c_disc_clone_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_disc.c_disc_clone_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_clone = type { i32 }
%struct.ifnet = type { i32, %struct.TYPE_2__, i64, i64, i32, i32, i32, i32, %struct.disc_softc* }
%struct.TYPE_2__ = type { i32 }
%struct.disc_softc = type { %struct.ifnet* }

@M_DISC = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@IFT_LOOP = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@discname = common dso_local global i32 0, align 4
@DSMTU = common dso_local global i32 0, align 4
@IFF_LOOPBACK = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@discioctl = common dso_local global i32 0, align 4
@discoutput = common dso_local global i32 0, align 4
@DLT_NULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.if_clone*, i32, i32)* @disc_clone_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @disc_clone_create(%struct.if_clone* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.if_clone*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ifnet*, align 8
  %9 = alloca %struct.disc_softc*, align 8
  store %struct.if_clone* %0, %struct.if_clone** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @M_DISC, align 4
  %11 = load i32, i32* @M_WAITOK, align 4
  %12 = load i32, i32* @M_ZERO, align 4
  %13 = or i32 %11, %12
  %14 = call %struct.disc_softc* @malloc(i32 8, i32 %10, i32 %13)
  store %struct.disc_softc* %14, %struct.disc_softc** %9, align 8
  %15 = load i32, i32* @IFT_LOOP, align 4
  %16 = call %struct.ifnet* @if_alloc(i32 %15)
  %17 = load %struct.disc_softc*, %struct.disc_softc** %9, align 8
  %18 = getelementptr inbounds %struct.disc_softc, %struct.disc_softc* %17, i32 0, i32 0
  store %struct.ifnet* %16, %struct.ifnet** %18, align 8
  store %struct.ifnet* %16, %struct.ifnet** %8, align 8
  %19 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %20 = icmp eq %struct.ifnet* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load %struct.disc_softc*, %struct.disc_softc** %9, align 8
  %23 = load i32, i32* @M_DISC, align 4
  %24 = call i32 @free(%struct.disc_softc* %22, i32 %23)
  %25 = load i32, i32* @ENOSPC, align 4
  store i32 %25, i32* %4, align 4
  br label %63

26:                                               ; preds = %3
  %27 = load %struct.disc_softc*, %struct.disc_softc** %9, align 8
  %28 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %29 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %28, i32 0, i32 8
  store %struct.disc_softc* %27, %struct.disc_softc** %29, align 8
  %30 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %31 = load i32, i32* @discname, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @if_initname(%struct.ifnet* %30, i32 %31, i32 %32)
  %34 = load i32, i32* @DSMTU, align 4
  %35 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %36 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %35, i32 0, i32 7
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @IFF_LOOPBACK, align 4
  %38 = load i32, i32* @IFF_MULTICAST, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %41 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %43 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %44 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %43, i32 0, i32 6
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* @discioctl, align 4
  %46 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %47 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %46, i32 0, i32 5
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @discoutput, align 4
  %49 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %50 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 8
  %51 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %52 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %51, i32 0, i32 3
  store i64 0, i64* %52, align 8
  %53 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %54 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %53, i32 0, i32 2
  store i64 0, i64* %54, align 8
  %55 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %56 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store i32 20, i32* %57, align 4
  %58 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %59 = call i32 @if_attach(%struct.ifnet* %58)
  %60 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %61 = load i32, i32* @DLT_NULL, align 4
  %62 = call i32 @bpfattach(%struct.ifnet* %60, i32 %61, i32 4)
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %26, %21
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local %struct.disc_softc* @malloc(i32, i32, i32) #1

declare dso_local %struct.ifnet* @if_alloc(i32) #1

declare dso_local i32 @free(%struct.disc_softc*, i32) #1

declare dso_local i32 @if_initname(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @if_attach(%struct.ifnet*) #1

declare dso_local i32 @bpfattach(%struct.ifnet*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
