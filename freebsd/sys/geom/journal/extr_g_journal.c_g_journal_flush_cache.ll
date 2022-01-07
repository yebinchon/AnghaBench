; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/journal/extr_g_journal.c_g_journal_flush_cache.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/journal/extr_g_journal.c_g_journal_flush_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_journal_softc = type { i32, %struct.TYPE_4__*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.bintime = type { i32 }

@GJ_FLUSH_JOURNAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Flush cache of %s: error=%d.\00", align 1
@GJ_FLUSH_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Cache flush time\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_journal_softc*)* @g_journal_flush_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_journal_flush_cache(%struct.g_journal_softc* %0) #0 {
  %2 = alloca %struct.g_journal_softc*, align 8
  %3 = alloca %struct.bintime, align 4
  %4 = alloca i32, align 4
  store %struct.g_journal_softc* %0, %struct.g_journal_softc** %2, align 8
  %5 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %6 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %63

10:                                               ; preds = %1
  %11 = call i32 @GJ_TIMER_START(i32 1, %struct.bintime* %3)
  %12 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %13 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @GJ_FLUSH_JOURNAL, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %10
  %19 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %20 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %19, i32 0, i32 2
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = call i32 @g_io_flush(%struct.TYPE_4__* %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp eq i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 2, i32 0
  %27 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %28 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %27, i32 0, i32 2
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @GJ_DEBUG(i32 %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %18, %10
  %37 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %38 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @GJ_FLUSH_DATA, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %61

43:                                               ; preds = %36
  %44 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %45 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = call i32 @g_io_flush(%struct.TYPE_4__* %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp eq i32 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 2, i32 0
  %52 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %53 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @GJ_DEBUG(i32 %51, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %43, %36
  %62 = call i32 @GJ_TIMER_STOP(i32 1, %struct.bintime* %3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %9
  ret void
}

declare dso_local i32 @GJ_TIMER_START(i32, %struct.bintime*) #1

declare dso_local i32 @g_io_flush(%struct.TYPE_4__*) #1

declare dso_local i32 @GJ_DEBUG(i32, i8*, i32, i32) #1

declare dso_local i32 @GJ_TIMER_STOP(i32, %struct.bintime*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
