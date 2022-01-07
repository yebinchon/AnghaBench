; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/journal/extr_g_journal.c_g_journal_switch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/journal/extr_g_journal.c_g_journal_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_journal_softc = type { i32, i32, %struct.TYPE_6__, i64, %struct.TYPE_5__, i32, i32, i32, %struct.g_provider*, %struct.TYPE_4__*, i32 }
%struct.TYPE_6__ = type { i32*, i64 }
%struct.TYPE_5__ = type { i32*, i64 }
%struct.g_provider = type { i64, i64 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"No need for %s switch.\00", align 1
@GJF_DEVICE_CLEAN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Marking %s as clean.\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Switching journal %s.\00", align 1
@GJF_DEVICE_SWITCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_journal_softc*)* @g_journal_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_journal_switch(%struct.g_journal_softc* %0) #0 {
  %2 = alloca %struct.g_journal_softc*, align 8
  %3 = alloca %struct.g_provider*, align 8
  store %struct.g_journal_softc* %0, %struct.g_journal_softc** %2, align 8
  %4 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %5 = call i64 @JEMPTY(%struct.g_journal_softc* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %41

7:                                                ; preds = %1
  %8 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %9 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %8, i32 0, i32 10
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @GJ_DEBUG(i32 3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %13 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %12, i32 0, i32 9
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = call %struct.g_provider* @LIST_FIRST(i32* %15)
  store %struct.g_provider* %16, %struct.g_provider** %3, align 8
  %17 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %18 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @GJF_DEVICE_CLEAN, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %40, label %23

23:                                               ; preds = %7
  %24 = load %struct.g_provider*, %struct.g_provider** %3, align 8
  %25 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %23
  %29 = load i32, i32* @GJF_DEVICE_CLEAN, align 4
  %30 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %31 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %35 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %34, i32 0, i32 10
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @GJ_DEBUG(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %39 = call i32 @g_journal_metadata_update(%struct.g_journal_softc* %38)
  br label %40

40:                                               ; preds = %28, %23, %7
  br label %100

41:                                               ; preds = %1
  %42 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %43 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %42, i32 0, i32 9
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @GJ_DEBUG(i32 3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  %48 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %49 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %48, i32 0, i32 8
  %50 = load %struct.g_provider*, %struct.g_provider** %49, align 8
  store %struct.g_provider* %50, %struct.g_provider** %3, align 8
  %51 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %52 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %55 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %54, i32 0, i32 7
  store i32 %53, i32* %55, align 8
  %56 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %57 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %60 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %59, i32 0, i32 6
  store i32 %58, i32* %60, align 4
  %61 = call i32 (...) @arc4random()
  %62 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %63 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %62, i32 0, i32 5
  store i32 %61, i32* %63, align 8
  %64 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %65 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %68 = call i32 @GJ_VALIDATE_OFFSET(i64 %66, %struct.g_journal_softc* %67)
  %69 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %70 = call i32 @g_journal_write_header(%struct.g_journal_softc* %69)
  %71 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %72 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %76 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  store i64 %74, i64* %77, align 8
  %78 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %79 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %83 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  store i32* %81, i32** %84, align 8
  %85 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %86 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.g_provider*, %struct.g_provider** %3, align 8
  %89 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = sub nsw i64 %87, %90
  %92 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %93 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  store i64 %91, i64* %94, align 8
  %95 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %96 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  store i32* null, i32** %97, align 8
  %98 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %99 = call i32 @g_journal_copy_start(%struct.g_journal_softc* %98)
  br label %100

100:                                              ; preds = %41, %40
  %101 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %102 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %101, i32 0, i32 1
  %103 = call i32 @mtx_lock(i32* %102)
  %104 = load i32, i32* @GJF_DEVICE_SWITCH, align 4
  %105 = xor i32 %104, -1
  %106 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %107 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = and i32 %108, %105
  store i32 %109, i32* %107, align 8
  %110 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %111 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %110, i32 0, i32 1
  %112 = call i32 @mtx_unlock(i32* %111)
  ret void
}

declare dso_local i64 @JEMPTY(%struct.g_journal_softc*) #1

declare dso_local i32 @GJ_DEBUG(i32, i8*, i32) #1

declare dso_local %struct.g_provider* @LIST_FIRST(i32*) #1

declare dso_local i32 @g_journal_metadata_update(%struct.g_journal_softc*) #1

declare dso_local i32 @arc4random(...) #1

declare dso_local i32 @GJ_VALIDATE_OFFSET(i64, %struct.g_journal_softc*) #1

declare dso_local i32 @g_journal_write_header(%struct.g_journal_softc*) #1

declare dso_local i32 @g_journal_copy_start(%struct.g_journal_softc*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
