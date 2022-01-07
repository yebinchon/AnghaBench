; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_media_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_media_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifmediareq = type { i32, i32 }
%struct.ena_adapter = type { i32 }

@ENA_DBG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@IFM_AVALID = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i32 0, align 4
@ENA_FLAG_LINK_UP = common dso_local global i32 0, align 4
@ENA_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"Link is down\0A\00", align 1
@IFM_ACTIVE = common dso_local global i32 0, align 4
@IFM_UNKNOWN = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.ifmediareq*)* @ena_media_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ena_media_status(i32 %0, %struct.ifmediareq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifmediareq*, align 8
  %5 = alloca %struct.ena_adapter*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.ifmediareq* %1, %struct.ifmediareq** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.ena_adapter* @if_getsoftc(i32 %6)
  store %struct.ena_adapter* %7, %struct.ena_adapter** %5, align 8
  %8 = load i32, i32* @ENA_DBG, align 4
  %9 = call i32 @ena_trace(i32 %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.ena_adapter*, %struct.ena_adapter** %5, align 8
  %11 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %10, i32 0, i32 0
  %12 = call i32 @mtx_lock(i32* %11)
  %13 = load i32, i32* @IFM_AVALID, align 4
  %14 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %15 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @IFM_ETHER, align 4
  %17 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %18 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @ENA_FLAG_LINK_UP, align 4
  %20 = load %struct.ena_adapter*, %struct.ena_adapter** %5, align 8
  %21 = call i32 @ENA_FLAG_ISSET(i32 %19, %struct.ena_adapter* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %2
  %24 = load %struct.ena_adapter*, %struct.ena_adapter** %5, align 8
  %25 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %24, i32 0, i32 0
  %26 = call i32 @mtx_unlock(i32* %25)
  %27 = load i32, i32* @ENA_INFO, align 4
  %28 = call i32 @ena_trace(i32 %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %45

29:                                               ; preds = %2
  %30 = load i32, i32* @IFM_ACTIVE, align 4
  %31 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %32 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load i32, i32* @IFM_UNKNOWN, align 4
  %36 = load i32, i32* @IFM_FDX, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %39 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load %struct.ena_adapter*, %struct.ena_adapter** %5, align 8
  %43 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %42, i32 0, i32 0
  %44 = call i32 @mtx_unlock(i32* %43)
  br label %45

45:                                               ; preds = %29, %23
  ret void
}

declare dso_local %struct.ena_adapter* @if_getsoftc(i32) #1

declare dso_local i32 @ena_trace(i32, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @ENA_FLAG_ISSET(i32, %struct.ena_adapter*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
