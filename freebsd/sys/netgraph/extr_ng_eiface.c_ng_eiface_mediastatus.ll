; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_eiface.c_ng_eiface_mediastatus.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_eiface.c_ng_eiface_mediastatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.ifmediareq = type { i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.ifmedia }
%struct.ifmedia = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@IFM_ETHER = common dso_local global i32 0, align 4
@IFM_AUTO = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@IFM_1000_T = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*, %struct.ifmediareq*)* @ng_eiface_mediastatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ng_eiface_mediastatus(%struct.ifnet* %0, %struct.ifmediareq* %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.ifmediareq*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.ifmedia*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store %struct.ifmediareq* %1, %struct.ifmediareq** %4, align 8
  %7 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %8 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  %11 = inttoptr i64 %10 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %5, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  store %struct.ifmedia* %13, %struct.ifmedia** %6, align 8
  %14 = load %struct.ifmedia*, %struct.ifmedia** %6, align 8
  %15 = getelementptr inbounds %struct.ifmedia, %struct.ifmedia* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @IFM_ETHER, align 4
  %20 = load i32, i32* @IFM_AUTO, align 4
  %21 = or i32 %19, %20
  %22 = icmp eq i32 %18, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %2
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @IFM_ACTIVE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %23
  %31 = load i32, i32* @IFM_ETHER, align 4
  %32 = load i32, i32* @IFM_1000_T, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @IFM_FDX, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %37 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  br label %46

38:                                               ; preds = %23, %2
  %39 = load %struct.ifmedia*, %struct.ifmedia** %6, align 8
  %40 = getelementptr inbounds %struct.ifmedia, %struct.ifmedia* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %45 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %38, %30
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %51 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
