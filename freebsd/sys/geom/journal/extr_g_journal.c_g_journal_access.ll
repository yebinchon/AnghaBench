; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/journal/extr_g_journal.c_g_journal_access.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/journal/extr_g_journal.c_g_journal_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_provider = type { i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.g_journal_softc* }
%struct.g_journal_softc = type { i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"Access request for %s: r%dw%de%d.\00", align 1
@GJF_DEVICE_DESTROY = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Marking %s as dirty.\00", align 1
@GJF_DEVICE_CLEAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_provider*, i32, i32, i32)* @g_journal_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_journal_access(%struct.g_provider* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.g_provider*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.g_journal_softc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.g_provider* %0, %struct.g_provider** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = call i32 (...) @g_topology_assert()
  %15 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %16 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i32 (i32, i8*, i32, ...) @GJ_DEBUG(i32 2, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18, i32 %19, i32 %20)
  %22 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %23 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %11, align 4
  %27 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %28 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %12, align 4
  %32 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %33 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %34, %35
  store i32 %36, i32* %13, align 4
  %37 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %38 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %37, i32 0, i32 3
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load %struct.g_journal_softc*, %struct.g_journal_softc** %40, align 8
  store %struct.g_journal_softc* %41, %struct.g_journal_softc** %10, align 8
  %42 = load %struct.g_journal_softc*, %struct.g_journal_softc** %10, align 8
  %43 = icmp eq %struct.g_journal_softc* %42, null
  br i1 %43, label %51, label %44

44:                                               ; preds = %4
  %45 = load %struct.g_journal_softc*, %struct.g_journal_softc** %10, align 8
  %46 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @GJF_DEVICE_DESTROY, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %44, %4
  %52 = load i32, i32* %7, align 4
  %53 = icmp sle i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %51
  %55 = load i32, i32* %8, align 4
  %56 = icmp sle i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i32, i32* %9, align 4
  %59 = icmp sle i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store i32 0, i32* %5, align 4
  br label %87

61:                                               ; preds = %57, %54, %51
  %62 = load i32, i32* @ENXIO, align 4
  store i32 %62, i32* %5, align 4
  br label %87

63:                                               ; preds = %44
  %64 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %65 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %86

68:                                               ; preds = %63
  %69 = load i32, i32* %12, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %86

71:                                               ; preds = %68
  %72 = load %struct.g_journal_softc*, %struct.g_journal_softc** %10, align 8
  %73 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (i32, i8*, i32, ...) @GJ_DEBUG(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* @GJF_DEVICE_CLEAN, align 4
  %77 = xor i32 %76, -1
  %78 = load %struct.g_journal_softc*, %struct.g_journal_softc** %10, align 8
  %79 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, %77
  store i32 %81, i32* %79, align 4
  %82 = call i32 (...) @g_topology_unlock()
  %83 = load %struct.g_journal_softc*, %struct.g_journal_softc** %10, align 8
  %84 = call i32 @g_journal_metadata_update(%struct.g_journal_softc* %83)
  %85 = call i32 (...) @g_topology_lock()
  br label %86

86:                                               ; preds = %71, %68, %63
  store i32 0, i32* %5, align 4
  br label %87

87:                                               ; preds = %86, %61, %60
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i32 @GJ_DEBUG(i32, i8*, i32, ...) #1

declare dso_local i32 @g_topology_unlock(...) #1

declare dso_local i32 @g_journal_metadata_update(%struct.g_journal_softc*) #1

declare dso_local i32 @g_topology_lock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
