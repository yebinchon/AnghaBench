; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/journal/extr_g_journal.c_g_journal_add_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/journal/extr_g_journal.c_g_journal_add_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_journal_softc = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.bio = type { i32 }

@g_journal_accept_immediately = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"DELAYED\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"DELAYED queue not empty.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_journal_softc*, %struct.bio*)* @g_journal_add_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_journal_add_request(%struct.g_journal_softc* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.g_journal_softc*, align 8
  %4 = alloca %struct.bio*, align 8
  store %struct.g_journal_softc* %0, %struct.g_journal_softc** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %5 = load %struct.g_journal_softc*, %struct.g_journal_softc** %3, align 8
  %6 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %2
  %10 = load %struct.g_journal_softc*, %struct.g_journal_softc** %3, align 8
  %11 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @g_journal_accept_immediately, align 8
  %14 = icmp sge i64 %12, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %9, %2
  %16 = load %struct.bio*, %struct.bio** %4, align 8
  %17 = call i32 @GJ_LOGREQ(i32 4, %struct.bio* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.g_journal_softc*, %struct.g_journal_softc** %3, align 8
  %19 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %18, i32 0, i32 2
  %20 = load %struct.bio*, %struct.bio** %4, align 8
  %21 = call i32 @bioq_insert_tail(%struct.TYPE_2__* %19, %struct.bio* %20)
  %22 = load %struct.g_journal_softc*, %struct.g_journal_softc** %3, align 8
  %23 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* %23, align 8
  br label %35

26:                                               ; preds = %9
  %27 = load %struct.g_journal_softc*, %struct.g_journal_softc** %3, align 8
  %28 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @TAILQ_EMPTY(i32* %29)
  %31 = call i32 @KASSERT(i32 %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.g_journal_softc*, %struct.g_journal_softc** %3, align 8
  %33 = load %struct.bio*, %struct.bio** %4, align 8
  %34 = call i32 @g_journal_add_current(%struct.g_journal_softc* %32, %struct.bio* %33)
  br label %35

35:                                               ; preds = %26, %15
  ret void
}

declare dso_local i32 @GJ_LOGREQ(i32, %struct.bio*, i8*) #1

declare dso_local i32 @bioq_insert_tail(%struct.TYPE_2__*, %struct.bio*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @g_journal_add_current(%struct.g_journal_softc*, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
