; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_cam.c_mpt_setsync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_cam.c_mpt_setsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MPI_SCSIDEVPAGE1_RP_MIN_SYNC_PERIOD_MASK = common dso_local global i32 0, align 4
@MPI_SCSIDEVPAGE1_RP_MAX_SYNC_OFFSET_MASK = common dso_local global i32 0, align 4
@MPI_SCSIDEVPAGE1_RP_DT = common dso_local global i32 0, align 4
@MPI_SCSIDEVPAGE1_RP_QAS = common dso_local global i32 0, align 4
@MPI_SCSIDEVPAGE1_RP_IU = common dso_local global i32 0, align 4
@MPI_SCSIDEVPAGE1_RP_SHIFT_MIN_SYNC_PERIOD = common dso_local global i32 0, align 4
@MPI_SCSIDEVPAGE1_RP_SHIFT_MAX_SYNC_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpt_softc*, i32, i32, i32)* @mpt_setsync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpt_setsync(%struct.mpt_softc* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mpt_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_2__*, align 8
  store %struct.mpt_softc* %0, %struct.mpt_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %11 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %14
  store %struct.TYPE_2__* %15, %struct.TYPE_2__** %9, align 8
  %16 = load i32, i32* @MPI_SCSIDEVPAGE1_RP_MIN_SYNC_PERIOD_MASK, align 4
  %17 = xor i32 %16, -1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load i32, i32* @MPI_SCSIDEVPAGE1_RP_MAX_SYNC_OFFSET_MASK, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load i32, i32* @MPI_SCSIDEVPAGE1_RP_DT, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load i32, i32* @MPI_SCSIDEVPAGE1_RP_QAS, align 4
  %35 = xor i32 %34, -1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load i32, i32* @MPI_SCSIDEVPAGE1_RP_IU, align 4
  %41 = xor i32 %40, -1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %4
  br label %86

49:                                               ; preds = %4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @MPI_SCSIDEVPAGE1_RP_SHIFT_MIN_SYNC_PERIOD, align 4
  %52 = shl i32 %50, %51
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @MPI_SCSIDEVPAGE1_RP_SHIFT_MAX_SYNC_OFFSET, align 4
  %59 = shl i32 %57, %58
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp slt i32 %64, 10
  br i1 %65, label %66, label %72

66:                                               ; preds = %49
  %67 = load i32, i32* @MPI_SCSIDEVPAGE1_RP_DT, align 4
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %66, %49
  %73 = load i32, i32* %7, align 4
  %74 = icmp slt i32 %73, 9
  br i1 %74, label %75, label %86

75:                                               ; preds = %72
  %76 = load i32, i32* @MPI_SCSIDEVPAGE1_RP_QAS, align 4
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 4
  %81 = load i32, i32* @MPI_SCSIDEVPAGE1_RP_IU, align 4
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %48, %75, %72
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
