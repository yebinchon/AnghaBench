; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_if_octm.c_octm_medstat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_if_octm.c_octm_medstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.octm_softc* }
%struct.octm_softc = type { i32 }
%struct.ifmediareq = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i32 }

@IFM_AVALID = common dso_local global i32 0, align 4
@IFT_ETHER = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@IFM_10_T = common dso_local global i32 0, align 4
@IFM_100_TX = common dso_local global i32 0, align 4
@IFM_1000_T = common dso_local global i32 0, align 4
@IFM_10G_T = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@IFM_HDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*, %struct.ifmediareq*)* @octm_medstat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @octm_medstat(%struct.ifnet* %0, %struct.ifmediareq* %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.ifmediareq*, align 8
  %5 = alloca %struct.octm_softc*, align 8
  %6 = alloca %struct.TYPE_5__, align 8
  %7 = alloca %struct.TYPE_5__, align 8
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store %struct.ifmediareq* %1, %struct.ifmediareq** %4, align 8
  %8 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %9 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %8, i32 0, i32 0
  %10 = load %struct.octm_softc*, %struct.octm_softc** %9, align 8
  store %struct.octm_softc* %10, %struct.octm_softc** %5, align 8
  %11 = load i32, i32* @IFM_AVALID, align 4
  %12 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %13 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @IFT_ETHER, align 4
  %15 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %16 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.octm_softc*, %struct.octm_softc** %5, align 8
  %18 = getelementptr inbounds %struct.octm_softc, %struct.octm_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  call void @cvmx_mgmt_port_link_get(%struct.TYPE_5__* sret %7, i32 %19)
  %20 = bitcast %struct.TYPE_5__* %6 to i8*
  %21 = bitcast %struct.TYPE_5__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 24, i1 false)
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %2
  br label %77

27:                                               ; preds = %2
  %28 = load i32, i32* @IFM_ACTIVE, align 4
  %29 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %30 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %60 [
    i32 10, label %36
    i32 100, label %42
    i32 1000, label %48
    i32 10000, label %54
  ]

36:                                               ; preds = %27
  %37 = load i32, i32* @IFM_10_T, align 4
  %38 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %39 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  br label %60

42:                                               ; preds = %27
  %43 = load i32, i32* @IFM_100_TX, align 4
  %44 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %45 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  br label %60

48:                                               ; preds = %27
  %49 = load i32, i32* @IFM_1000_T, align 4
  %50 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %51 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  br label %60

54:                                               ; preds = %27
  %55 = load i32, i32* @IFM_10G_T, align 4
  %56 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %57 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %27, %54, %48, %42, %36
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load i32, i32* @IFM_FDX, align 4
  %67 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %68 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  br label %77

71:                                               ; preds = %60
  %72 = load i32, i32* @IFM_HDX, align 4
  %73 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %74 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %26, %71, %65
  ret void
}

declare dso_local void @cvmx_mgmt_port_link_get(%struct.TYPE_5__* sret, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
