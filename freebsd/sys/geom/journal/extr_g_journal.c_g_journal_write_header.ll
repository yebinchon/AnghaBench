; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/journal/extr_g_journal.c_g_journal_write_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/journal/extr_g_journal.c_g_journal_write_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_journal_softc = type { i32, i32, i32, %struct.g_consumer* }
%struct.g_consumer = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.g_journal_header = type { i32, i32, i32 }

@M_WAITOK = common dso_local global i32 0, align 4
@GJ_HEADER_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_journal_softc*)* @g_journal_write_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_journal_write_header(%struct.g_journal_softc* %0) #0 {
  %2 = alloca %struct.g_journal_softc*, align 8
  %3 = alloca %struct.g_journal_header, align 4
  %4 = alloca %struct.g_consumer*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.g_journal_softc* %0, %struct.g_journal_softc** %2, align 8
  %7 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %8 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %7, i32 0, i32 3
  %9 = load %struct.g_consumer*, %struct.g_consumer** %8, align 8
  store %struct.g_consumer* %9, %struct.g_consumer** %4, align 8
  %10 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %11 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* @M_WAITOK, align 4
  %16 = call i32* @gj_malloc(i64 %14, i32 %15)
  store i32* %16, i32** %5, align 8
  %17 = getelementptr inbounds %struct.g_journal_header, %struct.g_journal_header* %3, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @GJ_HEADER_MAGIC, align 4
  %20 = call i32 @strlcpy(i32 %18, i32 %19, i32 4)
  %21 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %22 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = getelementptr inbounds %struct.g_journal_header, %struct.g_journal_header* %3, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  %25 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %26 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.g_journal_header, %struct.g_journal_header* %3, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @g_journal_header_encode(%struct.g_journal_header* %3, i32* %29)
  %31 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %32 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %33 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %37 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @g_write_data(%struct.g_consumer* %31, i32 %34, i32* %35, i64 %40)
  store i32 %41, i32* %6, align 4
  %42 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %43 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %48 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %50, %46
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %48, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %55 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @gj_free(i32* %53, i64 %58)
  %60 = load i32, i32* %6, align 4
  ret i32 %60
}

declare dso_local i32* @gj_malloc(i64, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @g_journal_header_encode(%struct.g_journal_header*, i32*) #1

declare dso_local i32 @g_write_data(%struct.g_consumer*, i32, i32*, i64) #1

declare dso_local i32 @gj_free(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
