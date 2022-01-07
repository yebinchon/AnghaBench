; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_stats.c_bxe_stats_handle.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_stats.c_bxe_stats_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 (%struct.bxe_softc*)* }
%struct.bxe_softc = type { i32, i32 }

@bxe_stats_stm = common dso_local global %struct.TYPE_2__** null, align 8
@STATS_EVENT_UPDATE = common dso_local global i32 0, align 4
@DBG_STATS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"state %d -> event %d -> state %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bxe_stats_handle(%struct.bxe_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.bxe_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %7 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @__predict_false(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %56

12:                                               ; preds = %2
  %13 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %14 = call i32 @BXE_STATS_LOCK(%struct.bxe_softc* %13)
  %15 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %16 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %5, align 4
  %18 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @bxe_stats_stm, align 8
  %19 = load i32, i32* %5, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %18, i64 %20
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %29 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %31 = call i32 @BXE_STATS_UNLOCK(%struct.bxe_softc* %30)
  %32 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @bxe_stats_stm, align 8
  %33 = load i32, i32* %5, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %32, i64 %34
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32 (%struct.bxe_softc*)*, i32 (%struct.bxe_softc*)** %40, align 8
  %42 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %43 = call i32 %41(%struct.bxe_softc* %42)
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @STATS_EVENT_UPDATE, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %12
  %48 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %49 = load i32, i32* @DBG_STATS, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %53 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @BLOGD(%struct.bxe_softc* %48, i32 %49, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %51, i32 %54)
  br label %56

56:                                               ; preds = %11, %47, %12
  ret void
}

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @BXE_STATS_LOCK(%struct.bxe_softc*) #1

declare dso_local i32 @BXE_STATS_UNLOCK(%struct.bxe_softc*) #1

declare dso_local i32 @BLOGD(%struct.bxe_softc*, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
