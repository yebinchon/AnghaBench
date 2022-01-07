; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/journal/extr_g_journal.c_g_journal_flush_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/journal/extr_g_journal.c_g_journal_flush_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, i64, i32, i32, %struct.g_consumer* }
%struct.g_consumer = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.g_journal_softc* }
%struct.g_journal_softc = type { i32 }

@GJ_BIO_MASK = common dso_local global i32 0, align 4
@GJ_BIO_JOURNAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Invalid bio (%d != %d).\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"[flush] Error while writing data (error=%d)\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"DONE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @g_journal_flush_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_journal_flush_done(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.g_journal_softc*, align 8
  %4 = alloca %struct.g_consumer*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %5 = load %struct.bio*, %struct.bio** %2, align 8
  %6 = getelementptr inbounds %struct.bio, %struct.bio* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @GJ_BIO_MASK, align 4
  %9 = and i32 %7, %8
  %10 = load i32, i32* @GJ_BIO_JOURNAL, align 4
  %11 = icmp eq i32 %9, %10
  %12 = zext i1 %11 to i32
  %13 = load %struct.bio*, %struct.bio** %2, align 8
  %14 = getelementptr inbounds %struct.bio, %struct.bio* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @GJ_BIO_JOURNAL, align 4
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to i8*
  %19 = call i32 @KASSERT(i32 %12, i8* %18)
  %20 = load %struct.bio*, %struct.bio** %2, align 8
  %21 = getelementptr inbounds %struct.bio, %struct.bio* %20, i32 0, i32 4
  %22 = load %struct.g_consumer*, %struct.g_consumer** %21, align 8
  store %struct.g_consumer* %22, %struct.g_consumer** %4, align 8
  %23 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %24 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.g_journal_softc*, %struct.g_journal_softc** %26, align 8
  store %struct.g_journal_softc* %27, %struct.g_journal_softc** %3, align 8
  %28 = load %struct.g_journal_softc*, %struct.g_journal_softc** %3, align 8
  %29 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %29, align 4
  %32 = load %struct.bio*, %struct.bio** %2, align 8
  %33 = getelementptr inbounds %struct.bio, %struct.bio* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %1
  %37 = load %struct.bio*, %struct.bio** %2, align 8
  %38 = load %struct.bio*, %struct.bio** %2, align 8
  %39 = getelementptr inbounds %struct.bio, %struct.bio* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i32 (i32, %struct.bio*, i8*, ...) @GJ_LOGREQ(i32 0, %struct.bio* %37, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %40)
  br label %42

42:                                               ; preds = %36, %1
  %43 = load %struct.bio*, %struct.bio** %2, align 8
  %44 = getelementptr inbounds %struct.bio, %struct.bio* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.bio*, %struct.bio** %2, align 8
  %47 = getelementptr inbounds %struct.bio, %struct.bio* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @gj_free(i32 %45, i32 %48)
  %50 = load %struct.bio*, %struct.bio** %2, align 8
  %51 = call i32 (i32, %struct.bio*, i8*, ...) @GJ_LOGREQ(i32 4, %struct.bio* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %52 = load %struct.bio*, %struct.bio** %2, align 8
  %53 = call i32 @g_destroy_bio(%struct.bio* %52)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @GJ_LOGREQ(i32, %struct.bio*, i8*, ...) #1

declare dso_local i32 @gj_free(i32, i32) #1

declare dso_local i32 @g_destroy_bio(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
