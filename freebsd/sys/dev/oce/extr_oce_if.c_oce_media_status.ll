; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_if.c_oce_media_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_if.c_oce_media_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.ifmediareq = type { i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@IFM_AVALID = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@IFM_10_T = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@IFM_100_TX = common dso_local global i32 0, align 4
@IFM_1000_T = common dso_local global i32 0, align 4
@IFM_10G_SR = common dso_local global i32 0, align 4
@IFM_40G_SR4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*, %struct.ifmediareq*)* @oce_media_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oce_media_status(%struct.ifnet* %0, %struct.ifmediareq* %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.ifmediareq*, align 8
  %5 = alloca %struct.TYPE_2__*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store %struct.ifmediareq* %1, %struct.ifmediareq** %4, align 8
  %6 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %7 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  %10 = inttoptr i64 %9 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %10, %struct.TYPE_2__** %5, align 8
  %11 = load i32, i32* @IFM_AVALID, align 4
  %12 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %13 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @IFM_ETHER, align 4
  %15 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %16 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load i32, i32* @IFM_ACTIVE, align 4
  %23 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %24 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  br label %28

27:                                               ; preds = %2
  br label %106

28:                                               ; preds = %21
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %102 [
    i32 1, label %32
    i32 2, label %42
    i32 3, label %52
    i32 4, label %62
    i32 5, label %72
    i32 6, label %82
    i32 7, label %92
  ]

32:                                               ; preds = %28
  %33 = load i32, i32* @IFM_10_T, align 4
  %34 = load i32, i32* @IFM_FDX, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %37 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  store i32 10, i32* %41, align 4
  br label %105

42:                                               ; preds = %28
  %43 = load i32, i32* @IFM_100_TX, align 4
  %44 = load i32, i32* @IFM_FDX, align 4
  %45 = or i32 %43, %44
  %46 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %47 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  store i32 100, i32* %51, align 4
  br label %105

52:                                               ; preds = %28
  %53 = load i32, i32* @IFM_1000_T, align 4
  %54 = load i32, i32* @IFM_FDX, align 4
  %55 = or i32 %53, %54
  %56 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %57 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  store i32 1000, i32* %61, align 4
  br label %105

62:                                               ; preds = %28
  %63 = load i32, i32* @IFM_10G_SR, align 4
  %64 = load i32, i32* @IFM_FDX, align 4
  %65 = or i32 %63, %64
  %66 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %67 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 4
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  store i32 10000, i32* %71, align 4
  br label %105

72:                                               ; preds = %28
  %73 = load i32, i32* @IFM_10G_SR, align 4
  %74 = load i32, i32* @IFM_FDX, align 4
  %75 = or i32 %73, %74
  %76 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %77 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  store i32 20000, i32* %81, align 4
  br label %105

82:                                               ; preds = %28
  %83 = load i32, i32* @IFM_10G_SR, align 4
  %84 = load i32, i32* @IFM_FDX, align 4
  %85 = or i32 %83, %84
  %86 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %87 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 4
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 2
  store i32 25000, i32* %91, align 4
  br label %105

92:                                               ; preds = %28
  %93 = load i32, i32* @IFM_40G_SR4, align 4
  %94 = load i32, i32* @IFM_FDX, align 4
  %95 = or i32 %93, %94
  %96 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %97 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 4
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 2
  store i32 40000, i32* %101, align 4
  br label %105

102:                                              ; preds = %28
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 2
  store i32 0, i32* %104, align 4
  br label %105

105:                                              ; preds = %102, %92, %82, %72, %62, %52, %42, %32
  br label %106

106:                                              ; preds = %105, %27
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
