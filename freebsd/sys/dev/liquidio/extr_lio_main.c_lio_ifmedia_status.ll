; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_main.c_lio_ifmedia_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_main.c_lio_ifmedia_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.ifmediareq = type { i32, i32 }
%struct.lio = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }

@LIO_IFSTATE_RUNNING = common dso_local global i32 0, align 4
@IFM_NONE = common dso_local global i32 0, align 4
@IFM_AVALID = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@IFM_HDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*, %struct.ifmediareq*)* @lio_ifmedia_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lio_ifmedia_status(%struct.ifnet* %0, %struct.ifmediareq* %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.ifmediareq*, align 8
  %5 = alloca %struct.lio*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store %struct.ifmediareq* %1, %struct.ifmediareq** %4, align 8
  %6 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %7 = call %struct.lio* @if_getsoftc(%struct.ifnet* %6)
  store %struct.lio* %7, %struct.lio** %5, align 8
  %8 = load %struct.lio*, %struct.lio** %5, align 8
  %9 = load i32, i32* @LIO_IFSTATE_RUNNING, align 4
  %10 = call i32 @lio_ifstate_check(%struct.lio* %8, i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @IFM_NONE, align 4
  %14 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %15 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 4
  br label %72

18:                                               ; preds = %2
  %19 = load i32, i32* @IFM_AVALID, align 4
  %20 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %21 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @IFM_ETHER, align 4
  %23 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %24 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.lio*, %struct.lio** %5, align 8
  %26 = getelementptr inbounds %struct.lio, %struct.lio* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %18
  %33 = load i32, i32* @IFM_ACTIVE, align 4
  %34 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %35 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  br label %44

38:                                               ; preds = %18
  %39 = load i32, i32* @IFM_NONE, align 4
  %40 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %41 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  br label %72

44:                                               ; preds = %32
  %45 = load %struct.lio*, %struct.lio** %5, align 8
  %46 = getelementptr inbounds %struct.lio, %struct.lio* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @lio_get_media_subtype(i32 %47)
  %49 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %50 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  %53 = load %struct.lio*, %struct.lio** %5, align 8
  %54 = getelementptr inbounds %struct.lio, %struct.lio* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %44
  %61 = load i32, i32* @IFM_FDX, align 4
  %62 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %63 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  br label %72

66:                                               ; preds = %44
  %67 = load i32, i32* @IFM_HDX, align 4
  %68 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %69 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %12, %38, %66, %60
  ret void
}

declare dso_local %struct.lio* @if_getsoftc(%struct.ifnet*) #1

declare dso_local i32 @lio_ifstate_check(%struct.lio*, i32) #1

declare dso_local i32 @lio_get_media_subtype(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
