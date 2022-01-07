; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/journal/extr_g_journal.c_g_journal_initialize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/journal/extr_g_journal.c_g_journal_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_journal_softc = type { i32, %struct.TYPE_3__, %struct.TYPE_4__, i32, i8*, i8*, i8* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_journal_softc*)* @g_journal_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_journal_initialize(%struct.g_journal_softc* %0) #0 {
  %2 = alloca %struct.g_journal_softc*, align 8
  store %struct.g_journal_softc* %0, %struct.g_journal_softc** %2, align 8
  %3 = call i8* (...) @arc4random()
  %4 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %5 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %4, i32 0, i32 4
  store i8* %3, i8** %5, align 8
  %6 = call i8* (...) @arc4random()
  %7 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %8 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %7, i32 0, i32 6
  store i8* %6, i8** %8, align 8
  %9 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %10 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %9, i32 0, i32 4
  %11 = load i8*, i8** %10, align 8
  %12 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %13 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %12, i32 0, i32 5
  store i8* %11, i8** %13, align 8
  %14 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %15 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %18 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 4
  %19 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %20 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %23 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 8
  %25 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %26 = call i32 @g_journal_write_header(%struct.g_journal_softc* %25)
  %27 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %28 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %31 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 4
  ret void
}

declare dso_local i8* @arc4random(...) #1

declare dso_local i32 @g_journal_write_header(%struct.g_journal_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
