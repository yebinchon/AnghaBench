; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/octe/extr_octe.c_octe_medstat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/octe/extr_octe.c_octe_medstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 (%struct.ifnet*)* }
%struct.ifmediareq = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*, %struct.ifmediareq*)* @octe_medstat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @octe_medstat(%struct.ifnet* %0, %struct.ifmediareq* %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.ifmediareq*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_5__, align 8
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store %struct.ifmediareq* %1, %struct.ifmediareq** %4, align 8
  %7 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %8 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %9, %struct.TYPE_6__** %5, align 8
  %10 = load i32, i32* @IFM_AVALID, align 4
  %11 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %12 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @IFT_ETHER, align 4
  %14 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %15 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load i32 (%struct.ifnet*)*, i32 (%struct.ifnet*)** %17, align 8
  %19 = icmp eq i32 (%struct.ifnet*)* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %86

21:                                               ; preds = %2
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i32 (%struct.ifnet*)*, i32 (%struct.ifnet*)** %23, align 8
  %25 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %26 = call i32 %24(%struct.ifnet* %25)
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  store i32 %29, i32* %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %21
  br label %86

36:                                               ; preds = %21
  %37 = load i32, i32* @IFM_ACTIVE, align 4
  %38 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %39 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  switch i32 %44, label %69 [
    i32 10, label %45
    i32 100, label %51
    i32 1000, label %57
    i32 10000, label %63
  ]

45:                                               ; preds = %36
  %46 = load i32, i32* @IFM_10_T, align 4
  %47 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %48 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  br label %69

51:                                               ; preds = %36
  %52 = load i32, i32* @IFM_100_TX, align 4
  %53 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %54 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 4
  br label %69

57:                                               ; preds = %36
  %58 = load i32, i32* @IFM_1000_T, align 4
  %59 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %60 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %69

63:                                               ; preds = %36
  %64 = load i32, i32* @IFM_10G_T, align 4
  %65 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %66 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %36, %63, %57, %51, %45
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = load i32, i32* @IFM_FDX, align 4
  %76 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %77 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  br label %86

80:                                               ; preds = %69
  %81 = load i32, i32* @IFM_HDX, align 4
  %82 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %83 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %20, %35, %80, %74
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
