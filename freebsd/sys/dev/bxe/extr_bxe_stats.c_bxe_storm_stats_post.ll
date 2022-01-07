; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_stats.c_bxe_storm_stats_post.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_stats.c_bxe_storm_stats_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@DBG_STATS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"sending statistics ramrod %d\0A\00", align 1
@RAMROD_CMD_ID_COMMON_STAT_QUERY = common dso_local global i32 0, align 4
@NONE_CONNECTION_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*)* @bxe_storm_stats_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_storm_stats_post(%struct.bxe_softc* %0) #0 {
  %2 = alloca %struct.bxe_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %2, align 8
  %4 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %5 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %61, label %8

8:                                                ; preds = %1
  %9 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %10 = call i32 @BXE_STATS_LOCK(%struct.bxe_softc* %9)
  %11 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %12 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %8
  %16 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %17 = call i32 @BXE_STATS_UNLOCK(%struct.bxe_softc* %16)
  br label %61

18:                                               ; preds = %8
  %19 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %20 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 8
  %23 = call i32 @htole16(i32 %21)
  %24 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %25 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %24, i32 0, i32 2
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i32 %23, i32* %28, align 4
  %29 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %30 = load i32, i32* @DBG_STATS, align 4
  %31 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %32 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %31, i32 0, i32 2
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @le16toh(i32 %36)
  %38 = call i32 @BLOGD(%struct.bxe_softc* %29, i32 %30, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %40 = call i32 @bxe_dp_stats(%struct.bxe_softc* %39)
  %41 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %42 = load i32, i32* @RAMROD_CMD_ID_COMMON_STAT_QUERY, align 4
  %43 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %44 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @U64_HI(i32 %45)
  %47 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %48 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @U64_LO(i32 %49)
  %51 = load i32, i32* @NONE_CONNECTION_TYPE, align 4
  %52 = call i32 @bxe_sp_post(%struct.bxe_softc* %41, i32 %42, i32 0, i32 %46, i32 %50, i32 %51)
  store i32 %52, i32* %3, align 4
  %53 = load i32, i32* %3, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %18
  %56 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %57 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  br label %58

58:                                               ; preds = %55, %18
  %59 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %60 = call i32 @BXE_STATS_UNLOCK(%struct.bxe_softc* %59)
  br label %61

61:                                               ; preds = %15, %58, %1
  ret void
}

declare dso_local i32 @BXE_STATS_LOCK(%struct.bxe_softc*) #1

declare dso_local i32 @BXE_STATS_UNLOCK(%struct.bxe_softc*) #1

declare dso_local i32 @htole16(i32) #1

declare dso_local i32 @BLOGD(%struct.bxe_softc*, i32, i8*, i32) #1

declare dso_local i32 @le16toh(i32) #1

declare dso_local i32 @bxe_dp_stats(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_sp_post(%struct.bxe_softc*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @U64_HI(i32) #1

declare dso_local i32 @U64_LO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
