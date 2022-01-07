; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_media_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_media_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i64 }
%struct.ifmediareq = type { i32, i32 }
%struct.TYPE_5__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@IFM_AVALID = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@QLNX_LINK_CAP_Pause = common dso_local global i32 0, align 4
@QLNX_LINK_CAP_Asym_Pause = common dso_local global i32 0, align 4
@IFM_ETH_RXPAUSE = common dso_local global i32 0, align 4
@IFM_ETH_TXPAUSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"exit (%s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"link_up\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"link_down\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*, %struct.ifmediareq*)* @qlnx_media_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlnx_media_status(%struct.ifnet* %0, %struct.ifmediareq* %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.ifmediareq*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store %struct.ifmediareq* %1, %struct.ifmediareq** %4, align 8
  %6 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %7 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %5, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = call i32 (%struct.TYPE_5__*, i8*, ...) @QL_DPRINT2(%struct.TYPE_5__* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @IFM_AVALID, align 4
  %13 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %14 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @IFM_ETHER, align 4
  %16 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %17 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %56

22:                                               ; preds = %2
  %23 = load i32, i32* @IFM_ACTIVE, align 4
  %24 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %25 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load i32, i32* @IFM_FDX, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = call i32 @qlnx_get_optics(%struct.TYPE_5__* %29, %struct.TYPE_6__* %31)
  %33 = or i32 %28, %32
  %34 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %35 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @QLNX_LINK_CAP_Pause, align 4
  %43 = load i32, i32* @QLNX_LINK_CAP_Asym_Pause, align 4
  %44 = or i32 %42, %43
  %45 = and i32 %41, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %22
  %48 = load i32, i32* @IFM_ETH_RXPAUSE, align 4
  %49 = load i32, i32* @IFM_ETH_TXPAUSE, align 4
  %50 = or i32 %48, %49
  %51 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %52 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %47, %22
  br label %56

56:                                               ; preds = %55, %2
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)
  %64 = call i32 (%struct.TYPE_5__*, i8*, ...) @QL_DPRINT2(%struct.TYPE_5__* %57, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %63)
  ret void
}

declare dso_local i32 @QL_DPRINT2(%struct.TYPE_5__*, i8*, ...) #1

declare dso_local i32 @qlnx_get_optics(%struct.TYPE_5__*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
