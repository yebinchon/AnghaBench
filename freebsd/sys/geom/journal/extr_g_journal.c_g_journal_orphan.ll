; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/journal/extr_g_journal.c_g_journal_orphan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/journal/extr_g_journal.c_g_journal_orphan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_consumer = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.g_journal_softc* }
%struct.g_journal_softc = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"Lost provider %s.\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Journal %s destroyed.\00", align 1
@.str.2 = private unnamed_addr constant [76 x i8] c"Cannot destroy journal %s (error=%d). Destroy it manually after last close.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_consumer*)* @g_journal_orphan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_journal_orphan(%struct.g_consumer* %0) #0 {
  %2 = alloca %struct.g_consumer*, align 8
  %3 = alloca %struct.g_journal_softc*, align 8
  %4 = alloca [256 x i8], align 16
  %5 = alloca i32, align 4
  store %struct.g_consumer* %0, %struct.g_consumer** %2, align 8
  %6 = call i32 (...) @g_topology_assert()
  %7 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %8 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %7, i32 0, i32 1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.g_journal_softc*, %struct.g_journal_softc** %10, align 8
  store %struct.g_journal_softc* %11, %struct.g_journal_softc** %3, align 8
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %13 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %14 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @strlcpy(i8* %12, i32 %17, i32 256)
  %19 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %20 = call i32 (i32, i8*, i8*, ...) @GJ_DEBUG(i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = load %struct.g_journal_softc*, %struct.g_journal_softc** %3, align 8
  %22 = icmp eq %struct.g_journal_softc* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %40

24:                                               ; preds = %1
  %25 = load %struct.g_journal_softc*, %struct.g_journal_softc** %3, align 8
  %26 = call i32 @g_journal_destroy(%struct.g_journal_softc* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %31 = call i32 (i32, i8*, i8*, ...) @GJ_DEBUG(i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  br label %40

32:                                               ; preds = %24
  %33 = load %struct.g_journal_softc*, %struct.g_journal_softc** %3, align 8
  %34 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = inttoptr i64 %36 to i8*
  %38 = load i32, i32* %5, align 4
  %39 = call i32 (i32, i8*, i8*, ...) @GJ_DEBUG(i32 0, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.2, i64 0, i64 0), i8* %37, i32 %38)
  br label %40

40:                                               ; preds = %23, %32, %29
  ret void
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i32 @strlcpy(i8*, i32, i32) #1

declare dso_local i32 @GJ_DEBUG(i32, i8*, i8*, ...) #1

declare dso_local i32 @g_journal_destroy(%struct.g_journal_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
