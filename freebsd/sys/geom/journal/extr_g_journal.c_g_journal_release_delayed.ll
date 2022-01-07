; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/journal/extr_g_journal.c_g_journal_release_delayed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/journal/extr_g_journal.c_g_journal_release_delayed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_journal_softc = type { i64, i32, i32 }
%struct.bio = type { i32 }

@g_journal_accept_immediately = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_journal_softc*)* @g_journal_release_delayed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_journal_release_delayed(%struct.g_journal_softc* %0) #0 {
  %2 = alloca %struct.g_journal_softc*, align 8
  %3 = alloca %struct.bio*, align 8
  store %struct.g_journal_softc* %0, %struct.g_journal_softc** %2, align 8
  br label %4

4:                                                ; preds = %18, %1
  %5 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %6 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @g_journal_accept_immediately, align 8
  %9 = icmp sge i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %4
  br label %26

11:                                               ; preds = %4
  %12 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %13 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %12, i32 0, i32 2
  %14 = call %struct.bio* @bioq_takefirst(i32* %13)
  store %struct.bio* %14, %struct.bio** %3, align 8
  %15 = load %struct.bio*, %struct.bio** %3, align 8
  %16 = icmp eq %struct.bio* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  br label %26

18:                                               ; preds = %11
  %19 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %20 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %20, align 8
  %23 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %24 = load %struct.bio*, %struct.bio** %3, align 8
  %25 = call i32 @g_journal_add_current(%struct.g_journal_softc* %23, %struct.bio* %24)
  br label %4

26:                                               ; preds = %17, %10
  ret void
}

declare dso_local %struct.bio* @bioq_takefirst(i32*) #1

declare dso_local i32 @g_journal_add_current(%struct.g_journal_softc*, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
