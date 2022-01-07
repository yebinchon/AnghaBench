; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/journal/extr_g_journal.c_g_journal_add_current.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/journal/extr_g_journal.c_g_journal_add_current.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_journal_softc = type { i64, i32 }
%struct.bio = type { i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"CURRENT %d\00", align 1
@M_WAITOK = common dso_local global i32 0, align 4
@g_journal_record_entries = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_journal_softc*, %struct.bio*)* @g_journal_add_current to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_journal_add_current(%struct.g_journal_softc* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.g_journal_softc*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca i32, align 4
  store %struct.g_journal_softc* %0, %struct.g_journal_softc** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %6 = load %struct.bio*, %struct.bio** %4, align 8
  %7 = load %struct.g_journal_softc*, %struct.g_journal_softc** %3, align 8
  %8 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = call i32 @GJ_LOGREQ(i32 4, %struct.bio* %6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 %9)
  %11 = load %struct.g_journal_softc*, %struct.g_journal_softc** %3, align 8
  %12 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %11, i32 0, i32 1
  %13 = load %struct.bio*, %struct.bio** %4, align 8
  %14 = load i32, i32* @M_WAITOK, align 4
  %15 = call i32 @g_journal_insert_bio(i32* %12, %struct.bio* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = load %struct.g_journal_softc*, %struct.g_journal_softc** %3, align 8
  %19 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, %17
  store i64 %21, i64* %19, align 8
  %22 = load %struct.g_journal_softc*, %struct.g_journal_softc** %3, align 8
  %23 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @g_journal_optimize(i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = load %struct.g_journal_softc*, %struct.g_journal_softc** %3, align 8
  %29 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, %27
  store i64 %31, i64* %29, align 8
  %32 = load %struct.bio*, %struct.bio** %4, align 8
  %33 = getelementptr inbounds %struct.bio, %struct.bio* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.bio*, %struct.bio** %4, align 8
  %36 = getelementptr inbounds %struct.bio, %struct.bio* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.bio*, %struct.bio** %4, align 8
  %38 = call i32 @g_io_deliver(%struct.bio* %37, i32 0)
  %39 = load %struct.g_journal_softc*, %struct.g_journal_softc** %3, align 8
  %40 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @g_journal_record_entries, align 8
  %43 = icmp sge i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %2
  %45 = load %struct.g_journal_softc*, %struct.g_journal_softc** %3, align 8
  %46 = call i32 @g_journal_flush(%struct.g_journal_softc* %45)
  br label %47

47:                                               ; preds = %44, %2
  ret void
}

declare dso_local i32 @GJ_LOGREQ(i32, %struct.bio*, i8*, i64) #1

declare dso_local i32 @g_journal_insert_bio(i32*, %struct.bio*, i32) #1

declare dso_local i32 @g_journal_optimize(i32) #1

declare dso_local i32 @g_io_deliver(%struct.bio*, i32) #1

declare dso_local i32 @g_journal_flush(%struct.g_journal_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
