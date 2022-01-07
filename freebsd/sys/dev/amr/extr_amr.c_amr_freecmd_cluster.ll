; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr.c_amr_freecmd_cluster.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr.c_amr_freecmd_cluster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amr_command_cluster = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, %struct.amr_softc* }
%struct.amr_softc = type { i32, i32 }

@AMR_CMD_CLUSTERCOUNT = common dso_local global i32 0, align 4
@M_AMR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amr_command_cluster*)* @amr_freecmd_cluster to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amr_freecmd_cluster(%struct.amr_command_cluster* %0) #0 {
  %2 = alloca %struct.amr_command_cluster*, align 8
  %3 = alloca %struct.amr_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.amr_command_cluster* %0, %struct.amr_command_cluster** %2, align 8
  %5 = load %struct.amr_command_cluster*, %struct.amr_command_cluster** %2, align 8
  %6 = getelementptr inbounds %struct.amr_command_cluster, %struct.amr_command_cluster* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i64 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 2
  %10 = load %struct.amr_softc*, %struct.amr_softc** %9, align 8
  store %struct.amr_softc* %10, %struct.amr_softc** %3, align 8
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %56, %1
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @AMR_CMD_CLUSTERCOUNT, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %59

15:                                               ; preds = %11
  %16 = load %struct.amr_command_cluster*, %struct.amr_command_cluster** %2, align 8
  %17 = getelementptr inbounds %struct.amr_command_cluster, %struct.amr_command_cluster* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load %struct.amr_softc*, %struct.amr_softc** %22, align 8
  %24 = icmp eq %struct.amr_softc* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %15
  br label %59

26:                                               ; preds = %15
  %27 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %28 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.amr_command_cluster*, %struct.amr_command_cluster** %2, align 8
  %31 = getelementptr inbounds %struct.amr_command_cluster, %struct.amr_command_cluster* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @bus_dmamap_destroy(i32 %29, i32 %37)
  %39 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %40 = call i64 @AMR_IS_SG64(%struct.amr_softc* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %26
  %43 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %44 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.amr_command_cluster*, %struct.amr_command_cluster** %2, align 8
  %47 = getelementptr inbounds %struct.amr_command_cluster, %struct.amr_command_cluster* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @bus_dmamap_destroy(i32 %45, i32 %53)
  br label %55

55:                                               ; preds = %42, %26
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %4, align 4
  br label %11

59:                                               ; preds = %25, %11
  %60 = load %struct.amr_command_cluster*, %struct.amr_command_cluster** %2, align 8
  %61 = load i32, i32* @M_AMR, align 4
  %62 = call i32 @free(%struct.amr_command_cluster* %60, i32 %61)
  ret void
}

declare dso_local i32 @bus_dmamap_destroy(i32, i32) #1

declare dso_local i64 @AMR_IS_SG64(%struct.amr_softc*) #1

declare dso_local i32 @free(%struct.amr_command_cluster*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
