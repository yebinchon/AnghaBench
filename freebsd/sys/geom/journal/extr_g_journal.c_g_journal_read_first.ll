; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/journal/extr_g_journal.c_g_journal_read_first.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/journal/extr_g_journal.c_g_journal_read_first.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_journal_softc = type { i32 }
%struct.bio = type { i32, i32, i32, i32, i32, i32, %struct.bio*, i32 }

@M_WAITOK = common dso_local global i32 0, align 4
@BIO_READ = common dso_local global i32 0, align 4
@g_journal_std_done = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"READ FIRST\00", align 1
@g_journal_cache_misses = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_journal_softc*, %struct.bio*)* @g_journal_read_first to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_journal_read_first(%struct.g_journal_softc* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.g_journal_softc*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.bio*, align 8
  store %struct.g_journal_softc* %0, %struct.g_journal_softc** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %6 = call %struct.bio* (...) @g_alloc_bio()
  store %struct.bio* %6, %struct.bio** %5, align 8
  %7 = load %struct.bio*, %struct.bio** %4, align 8
  %8 = getelementptr inbounds %struct.bio, %struct.bio* %7, i32 0, i32 7
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.bio*, %struct.bio** %5, align 8
  %11 = getelementptr inbounds %struct.bio, %struct.bio* %10, i32 0, i32 7
  store i32 %9, i32* %11, align 8
  %12 = load %struct.bio*, %struct.bio** %4, align 8
  %13 = load %struct.bio*, %struct.bio** %5, align 8
  %14 = getelementptr inbounds %struct.bio, %struct.bio* %13, i32 0, i32 6
  store %struct.bio* %12, %struct.bio** %14, align 8
  %15 = load %struct.bio*, %struct.bio** %4, align 8
  %16 = getelementptr inbounds %struct.bio, %struct.bio* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.bio*, %struct.bio** %5, align 8
  %19 = getelementptr inbounds %struct.bio, %struct.bio* %18, i32 0, i32 5
  store i32 %17, i32* %19, align 4
  %20 = load %struct.bio*, %struct.bio** %4, align 8
  %21 = getelementptr inbounds %struct.bio, %struct.bio* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.bio*, %struct.bio** %5, align 8
  %24 = getelementptr inbounds %struct.bio, %struct.bio* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  %25 = load %struct.bio*, %struct.bio** %4, align 8
  %26 = getelementptr inbounds %struct.bio, %struct.bio* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @M_WAITOK, align 4
  %29 = call i32 @gj_malloc(i32 %27, i32 %28)
  %30 = load %struct.bio*, %struct.bio** %5, align 8
  %31 = getelementptr inbounds %struct.bio, %struct.bio* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @BIO_READ, align 4
  %33 = load %struct.bio*, %struct.bio** %5, align 8
  %34 = getelementptr inbounds %struct.bio, %struct.bio* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @g_journal_std_done, align 4
  %36 = load %struct.bio*, %struct.bio** %5, align 8
  %37 = getelementptr inbounds %struct.bio, %struct.bio* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.bio*, %struct.bio** %5, align 8
  %39 = call i32 @GJ_LOGREQ(i32 4, %struct.bio* %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.bio*, %struct.bio** %5, align 8
  %41 = load %struct.g_journal_softc*, %struct.g_journal_softc** %3, align 8
  %42 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @g_io_request(%struct.bio* %40, i32 %43)
  %45 = load i32, i32* @g_journal_cache_misses, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* @g_journal_cache_misses, align 4
  ret void
}

declare dso_local %struct.bio* @g_alloc_bio(...) #1

declare dso_local i32 @gj_malloc(i32, i32) #1

declare dso_local i32 @GJ_LOGREQ(i32, %struct.bio*, i8*) #1

declare dso_local i32 @g_io_request(%struct.bio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
