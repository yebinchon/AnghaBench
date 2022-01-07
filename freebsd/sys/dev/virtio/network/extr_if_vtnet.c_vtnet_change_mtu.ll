; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_change_mtu.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtnet_softc = type { i32, i32, i32, %struct.ifnet* }
%struct.ifnet = type { i32, i32 }

@ETHERMIN = common dso_local global i32 0, align 4
@VTNET_MAX_MTU = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i32 0, align 4
@VTNET_FLAG_MRG_RXBUFS = common dso_local global i32 0, align 4
@MJUM9BYTES = common dso_local global i32 0, align 4
@MJUMPAGESIZE = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vtnet_softc*, i32)* @vtnet_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtnet_change_mtu(%struct.vtnet_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vtnet_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vtnet_softc* %0, %struct.vtnet_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.vtnet_softc*, %struct.vtnet_softc** %4, align 8
  %10 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %9, i32 0, i32 3
  %11 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  store %struct.ifnet* %11, %struct.ifnet** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @ETHERMIN, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @VTNET_MAX_MTU, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15, %2
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %3, align 4
  br label %77

21:                                               ; preds = %15
  %22 = load %struct.vtnet_softc*, %struct.vtnet_softc** %4, align 8
  %23 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = add i64 %25, 4
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = add i64 %26, %28
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @MCLBYTES, align 4
  %33 = icmp sle i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %21
  %35 = load i32, i32* @MCLBYTES, align 4
  store i32 %35, i32* %8, align 4
  br label %54

36:                                               ; preds = %21
  %37 = load %struct.vtnet_softc*, %struct.vtnet_softc** %4, align 8
  %38 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @VTNET_FLAG_MRG_RXBUFS, align 4
  %41 = and i32 %39, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %36
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @MJUM9BYTES, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i32, i32* @EINVAL, align 4
  store i32 %48, i32* %3, align 4
  br label %77

49:                                               ; preds = %43
  %50 = load i32, i32* @MJUM9BYTES, align 4
  store i32 %50, i32* %8, align 4
  br label %53

51:                                               ; preds = %36
  %52 = load i32, i32* @MJUMPAGESIZE, align 4
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %51, %49
  br label %54

54:                                               ; preds = %53, %34
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %57 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.vtnet_softc*, %struct.vtnet_softc** %4, align 8
  %60 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  %61 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %62 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %54
  %68 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %69 = xor i32 %68, -1
  %70 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %71 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, %69
  store i32 %73, i32* %71, align 4
  %74 = load %struct.vtnet_softc*, %struct.vtnet_softc** %4, align 8
  %75 = call i32 @vtnet_init_locked(%struct.vtnet_softc* %74)
  br label %76

76:                                               ; preds = %67, %54
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %76, %47, %19
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @vtnet_init_locked(%struct.vtnet_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
