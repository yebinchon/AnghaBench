; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_if_ic.c_icattach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_if_ic.c_icattach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ic_softc = type { i32, i32, i32, %struct.ifnet* }
%struct.ifnet = type { i32, %struct.TYPE_2__, i64, i64, i32, i32, %struct.ic_softc* }
%struct.TYPE_2__ = type { i32 }

@IFT_PARA = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@MTX_NETWORK_LOCK = common dso_local global i32 0, align 4
@MTX_DEF = common dso_local global i32 0, align 4
@PCF_MASTER_ADDRESS = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@IFF_POINTOPOINT = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@icioctl = common dso_local global i32 0, align 4
@icoutput = common dso_local global i32 0, align 4
@ifqmaxlen = common dso_local global i32 0, align 4
@ICMTU = common dso_local global i32 0, align 4
@DLT_NULL = common dso_local global i32 0, align 4
@ICHDRLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @icattach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icattach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ic_softc*, align 8
  %5 = alloca %struct.ifnet*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i64 @device_get_softc(i32 %6)
  %8 = inttoptr i64 %7 to %struct.ic_softc*
  store %struct.ic_softc* %8, %struct.ic_softc** %4, align 8
  %9 = load i32, i32* @IFT_PARA, align 4
  %10 = call %struct.ifnet* @if_alloc(i32 %9)
  %11 = load %struct.ic_softc*, %struct.ic_softc** %4, align 8
  %12 = getelementptr inbounds %struct.ic_softc, %struct.ic_softc* %11, i32 0, i32 3
  store %struct.ifnet* %10, %struct.ifnet** %12, align 8
  store %struct.ifnet* %10, %struct.ifnet** %5, align 8
  %13 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %14 = icmp eq %struct.ifnet* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOSPC, align 4
  store i32 %16, i32* %2, align 4
  br label %70

17:                                               ; preds = %1
  %18 = load %struct.ic_softc*, %struct.ic_softc** %4, align 8
  %19 = getelementptr inbounds %struct.ic_softc, %struct.ic_softc* %18, i32 0, i32 2
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @device_get_nameunit(i32 %20)
  %22 = load i32, i32* @MTX_NETWORK_LOCK, align 4
  %23 = load i32, i32* @MTX_DEF, align 4
  %24 = call i32 @mtx_init(i32* %19, i32 %21, i32 %22, i32 %23)
  %25 = load i32, i32* @PCF_MASTER_ADDRESS, align 4
  %26 = load %struct.ic_softc*, %struct.ic_softc** %4, align 8
  %27 = getelementptr inbounds %struct.ic_softc, %struct.ic_softc* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.ic_softc*, %struct.ic_softc** %4, align 8
  %30 = getelementptr inbounds %struct.ic_softc, %struct.ic_softc* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.ic_softc*, %struct.ic_softc** %4, align 8
  %32 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %33 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %32, i32 0, i32 6
  store %struct.ic_softc* %31, %struct.ic_softc** %33, align 8
  %34 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @device_get_name(i32 %35)
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @device_get_unit(i32 %37)
  %39 = call i32 @if_initname(%struct.ifnet* %34, i32 %36, i32 %38)
  %40 = load i32, i32* @IFF_SIMPLEX, align 4
  %41 = load i32, i32* @IFF_POINTOPOINT, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @IFF_MULTICAST, align 4
  %44 = or i32 %42, %43
  %45 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %46 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* @icioctl, align 4
  %48 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %49 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %48, i32 0, i32 5
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @icoutput, align 4
  %51 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %52 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 8
  %53 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %54 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %53, i32 0, i32 3
  store i64 0, i64* %54, align 8
  %55 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %56 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %55, i32 0, i32 2
  store i64 0, i64* %56, align 8
  %57 = load i32, i32* @ifqmaxlen, align 4
  %58 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %59 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 4
  %61 = load %struct.ic_softc*, %struct.ic_softc** %4, align 8
  %62 = load i32, i32* @ICMTU, align 4
  %63 = call i32 @ic_alloc_buffers(%struct.ic_softc* %61, i32 %62)
  %64 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %65 = call i32 @if_attach(%struct.ifnet* %64)
  %66 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %67 = load i32, i32* @DLT_NULL, align 4
  %68 = load i32, i32* @ICHDRLEN, align 4
  %69 = call i32 @bpfattach(%struct.ifnet* %66, i32 %67, i32 %68)
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %17, %15
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local %struct.ifnet* @if_alloc(i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i32, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @if_initname(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @ic_alloc_buffers(%struct.ic_softc*, i32) #1

declare dso_local i32 @if_attach(%struct.ifnet*) #1

declare dso_local i32 @bpfattach(%struct.ifnet*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
