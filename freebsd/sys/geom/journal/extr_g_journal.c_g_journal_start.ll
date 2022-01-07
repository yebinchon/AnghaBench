; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/journal/extr_g_journal.c_g_journal_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/journal/extr_g_journal.c_g_journal_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, %struct.TYPE_4__*, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.g_journal_softc* }
%struct.g_journal_softc = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"Request received.\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"GJOURNAL::provider\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @g_journal_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_journal_start(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.g_journal_softc*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %4 = load %struct.bio*, %struct.bio** %2, align 8
  %5 = getelementptr inbounds %struct.bio, %struct.bio* %4, i32 0, i32 1
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.g_journal_softc*, %struct.g_journal_softc** %9, align 8
  store %struct.g_journal_softc* %10, %struct.g_journal_softc** %3, align 8
  %11 = load %struct.bio*, %struct.bio** %2, align 8
  %12 = call i32 @GJ_LOGREQ(i32 3, %struct.bio* %11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.bio*, %struct.bio** %2, align 8
  %14 = getelementptr inbounds %struct.bio, %struct.bio* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %61 [
    i32 129, label %16
    i32 128, label %16
    i32 130, label %29
    i32 131, label %60
  ]

16:                                               ; preds = %1, %1
  %17 = load %struct.g_journal_softc*, %struct.g_journal_softc** %3, align 8
  %18 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %17, i32 0, i32 0
  %19 = call i32 @mtx_lock(i32* %18)
  %20 = load %struct.g_journal_softc*, %struct.g_journal_softc** %3, align 8
  %21 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %20, i32 0, i32 1
  %22 = load %struct.bio*, %struct.bio** %2, align 8
  %23 = call i32 @bioq_insert_tail(i32* %21, %struct.bio* %22)
  %24 = load %struct.g_journal_softc*, %struct.g_journal_softc** %3, align 8
  %25 = call i32 @wakeup(%struct.g_journal_softc* %24)
  %26 = load %struct.g_journal_softc*, %struct.g_journal_softc** %3, align 8
  %27 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %26, i32 0, i32 0
  %28 = call i32 @mtx_unlock(i32* %27)
  br label %65

29:                                               ; preds = %1
  %30 = load %struct.bio*, %struct.bio** %2, align 8
  %31 = getelementptr inbounds %struct.bio, %struct.bio* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @strcmp(i32 %32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %59

35:                                               ; preds = %29
  %36 = load %struct.bio*, %struct.bio** %2, align 8
  %37 = getelementptr inbounds %struct.bio, %struct.bio* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.bio*, %struct.bio** %2, align 8
  %40 = getelementptr inbounds %struct.bio, %struct.bio* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.bio*, %struct.bio** %2, align 8
  %45 = getelementptr inbounds %struct.bio, %struct.bio* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @strlcpy(i32 %38, i32 %43, i32 %46)
  %48 = load %struct.bio*, %struct.bio** %2, align 8
  %49 = getelementptr inbounds %struct.bio, %struct.bio* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @strlen(i32 %52)
  %54 = add nsw i32 %53, 1
  %55 = load %struct.bio*, %struct.bio** %2, align 8
  %56 = getelementptr inbounds %struct.bio, %struct.bio* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load %struct.bio*, %struct.bio** %2, align 8
  %58 = call i32 @g_io_deliver(%struct.bio* %57, i32 0)
  br label %65

59:                                               ; preds = %29
  br label %60

60:                                               ; preds = %1, %59
  br label %61

61:                                               ; preds = %1, %60
  %62 = load %struct.bio*, %struct.bio** %2, align 8
  %63 = load i32, i32* @EOPNOTSUPP, align 4
  %64 = call i32 @g_io_deliver(%struct.bio* %62, i32 %63)
  br label %65

65:                                               ; preds = %61, %35, %16
  ret void
}

declare dso_local i32 @GJ_LOGREQ(i32, %struct.bio*, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @bioq_insert_tail(i32*, %struct.bio*) #1

declare dso_local i32 @wakeup(%struct.g_journal_softc*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @g_io_deliver(%struct.bio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
