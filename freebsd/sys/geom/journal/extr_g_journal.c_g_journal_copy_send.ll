; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/journal/extr_g_journal.c_g_journal_copy_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/journal/extr_g_journal.c_g_journal_copy_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_journal_softc = type { i64, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.bio* }
%struct.bio = type { i64, i32*, i32 }

@g_journal_parallel_copies = common dso_local global i64 0, align 8
@g_journal_do_optimize = common dso_local global i64 0, align 8
@GJ_BIO_COPY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"SEND\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_journal_softc*)* @g_journal_copy_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_journal_copy_send(%struct.g_journal_softc* %0) #0 {
  %2 = alloca %struct.g_journal_softc*, align 8
  %3 = alloca %struct.bio*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.bio*, align 8
  store %struct.g_journal_softc* %0, %struct.g_journal_softc** %2, align 8
  store %struct.bio* null, %struct.bio** %5, align 8
  store %struct.bio* null, %struct.bio** %3, align 8
  %6 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %7 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %6, i32 0, i32 3
  %8 = call i32 @mtx_lock(i32* %7)
  br label %9

9:                                                ; preds = %24, %1
  %10 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %11 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @g_journal_parallel_copies, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %40

15:                                               ; preds = %9
  %16 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %17 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.bio*, %struct.bio** %18, align 8
  %20 = call %struct.bio* @GJQ_FIRST(%struct.bio* %19)
  store %struct.bio* %20, %struct.bio** %4, align 8
  %21 = load %struct.bio*, %struct.bio** %4, align 8
  %22 = icmp eq %struct.bio* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %40

24:                                               ; preds = %15
  %25 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %26 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.bio*, %struct.bio** %27, align 8
  %29 = load %struct.bio*, %struct.bio** %4, align 8
  %30 = call i32 @GJQ_REMOVE(%struct.bio* %28, %struct.bio* %29)
  %31 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %32 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %32, align 8
  %35 = load %struct.bio*, %struct.bio** %3, align 8
  %36 = load %struct.bio*, %struct.bio** %4, align 8
  %37 = load %struct.bio*, %struct.bio** %5, align 8
  %38 = call i32 @GJQ_INSERT_AFTER(%struct.bio* %35, %struct.bio* %36, %struct.bio* %37)
  %39 = load %struct.bio*, %struct.bio** %4, align 8
  store %struct.bio* %39, %struct.bio** %5, align 8
  br label %9

40:                                               ; preds = %23, %9
  %41 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %42 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %41, i32 0, i32 3
  %43 = call i32 @mtx_unlock(i32* %42)
  %44 = load i64, i64* @g_journal_do_optimize, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = load %struct.bio*, %struct.bio** %3, align 8
  %48 = call i64 @g_journal_optimize(%struct.bio* %47)
  %49 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %50 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, %48
  store i64 %52, i64* %50, align 8
  br label %53

53:                                               ; preds = %46, %40
  br label %54

54:                                               ; preds = %88, %53
  %55 = load %struct.bio*, %struct.bio** %3, align 8
  %56 = call %struct.bio* @GJQ_FIRST(%struct.bio* %55)
  store %struct.bio* %56, %struct.bio** %4, align 8
  %57 = icmp ne %struct.bio* %56, null
  br i1 %57, label %58, label %89

58:                                               ; preds = %54
  %59 = load %struct.bio*, %struct.bio** %3, align 8
  %60 = load %struct.bio*, %struct.bio** %4, align 8
  %61 = call i32 @GJQ_REMOVE(%struct.bio* %59, %struct.bio* %60)
  %62 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %63 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.bio*, %struct.bio** %4, align 8
  %66 = call i32 @GJQ_INSERT_HEAD(i32 %64, %struct.bio* %65)
  %67 = load i32, i32* @GJ_BIO_COPY, align 4
  %68 = load %struct.bio*, %struct.bio** %4, align 8
  %69 = getelementptr inbounds %struct.bio, %struct.bio* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  %70 = load %struct.bio*, %struct.bio** %4, align 8
  %71 = getelementptr inbounds %struct.bio, %struct.bio* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %58
  %75 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %76 = load %struct.bio*, %struct.bio** %4, align 8
  %77 = call i32 @g_journal_read_first(%struct.g_journal_softc* %75, %struct.bio* %76)
  br label %88

78:                                               ; preds = %58
  %79 = load %struct.bio*, %struct.bio** %4, align 8
  %80 = getelementptr inbounds %struct.bio, %struct.bio* %79, i32 0, i32 0
  store i64 0, i64* %80, align 8
  %81 = load %struct.bio*, %struct.bio** %4, align 8
  %82 = call i32 @GJ_LOGREQ(i32 4, %struct.bio* %81, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %83 = load %struct.bio*, %struct.bio** %4, align 8
  %84 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %85 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @g_io_request(%struct.bio* %83, i32 %86)
  br label %88

88:                                               ; preds = %78, %74
  br label %54

89:                                               ; preds = %54
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.bio* @GJQ_FIRST(%struct.bio*) #1

declare dso_local i32 @GJQ_REMOVE(%struct.bio*, %struct.bio*) #1

declare dso_local i32 @GJQ_INSERT_AFTER(%struct.bio*, %struct.bio*, %struct.bio*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i64 @g_journal_optimize(%struct.bio*) #1

declare dso_local i32 @GJQ_INSERT_HEAD(i32, %struct.bio*) #1

declare dso_local i32 @g_journal_read_first(%struct.g_journal_softc*, %struct.bio*) #1

declare dso_local i32 @GJ_LOGREQ(i32, %struct.bio*, i8*) #1

declare dso_local i32 @g_io_request(%struct.bio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
