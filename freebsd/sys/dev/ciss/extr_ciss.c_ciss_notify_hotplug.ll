; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_notify_hotplug.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_notify_hotplug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ciss_softc = type { %struct.TYPE_8__*, %struct.TYPE_7__** }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.ciss_notify = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ciss_lun_report = type { i32 }

@CISS_OPCODE_REPORT_PHYSICAL_LUNS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Warning, cannot get physical lun list\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Unknown hotplug event %d\0A\00", align 1
@CISS_MALLOC_CLASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ciss_softc*, %struct.ciss_notify*)* @ciss_notify_hotplug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ciss_notify_hotplug(%struct.ciss_softc* %0, %struct.ciss_notify* %1) #0 {
  %3 = alloca %struct.ciss_softc*, align 8
  %4 = alloca %struct.ciss_notify*, align 8
  %5 = alloca %struct.ciss_lun_report*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ciss_softc* %0, %struct.ciss_softc** %3, align 8
  store %struct.ciss_notify* %1, %struct.ciss_notify** %4, align 8
  store %struct.ciss_lun_report* null, %struct.ciss_lun_report** %5, align 8
  %8 = load %struct.ciss_notify*, %struct.ciss_notify** %4, align 8
  %9 = getelementptr inbounds %struct.ciss_notify, %struct.ciss_notify* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %68 [
    i32 128, label %11
    i32 129, label %11
  ]

11:                                               ; preds = %2, %2
  %12 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %13 = load %struct.ciss_notify*, %struct.ciss_notify** %4, align 8
  %14 = getelementptr inbounds %struct.ciss_notify, %struct.ciss_notify* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @CISS_BIG_MAP_BUS(%struct.ciss_softc* %12, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %20 = load %struct.ciss_notify*, %struct.ciss_notify** %4, align 8
  %21 = getelementptr inbounds %struct.ciss_notify, %struct.ciss_notify* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @CISS_BIG_MAP_TARGET(%struct.ciss_softc* %19, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load %struct.ciss_notify*, %struct.ciss_notify** %4, align 8
  %27 = getelementptr inbounds %struct.ciss_notify, %struct.ciss_notify* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %49

30:                                               ; preds = %11
  %31 = load i32, i32* %6, align 4
  %32 = icmp sge i32 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %30
  %34 = load i32, i32* %7, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %33
  %37 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %38 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %37, i32 0, i32 1
  %39 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %39, i64 %41
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  store i32 0, i32* %47, align 4
  br label %48

48:                                               ; preds = %36, %33, %30
  br label %67

49:                                               ; preds = %11
  %50 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %51 = load i32, i32* @CISS_OPCODE_REPORT_PHYSICAL_LUNS, align 4
  %52 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %53 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %52, i32 0, i32 0
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call %struct.ciss_lun_report* @ciss_report_luns(%struct.ciss_softc* %50, i32 %51, i32 %56)
  store %struct.ciss_lun_report* %57, %struct.ciss_lun_report** %5, align 8
  %58 = load %struct.ciss_lun_report*, %struct.ciss_lun_report** %5, align 8
  %59 = icmp eq %struct.ciss_lun_report* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %49
  %61 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %62 = call i32 (%struct.ciss_softc*, i8*, ...) @ciss_printf(%struct.ciss_softc* %61, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %74

63:                                               ; preds = %49
  %64 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %65 = load %struct.ciss_lun_report*, %struct.ciss_lun_report** %5, align 8
  %66 = call i32 @ciss_filter_physical(%struct.ciss_softc* %64, %struct.ciss_lun_report* %65)
  br label %67

67:                                               ; preds = %63, %48
  br label %74

68:                                               ; preds = %2
  %69 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %70 = load %struct.ciss_notify*, %struct.ciss_notify** %4, align 8
  %71 = getelementptr inbounds %struct.ciss_notify, %struct.ciss_notify* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (%struct.ciss_softc*, i8*, ...) @ciss_printf(%struct.ciss_softc* %69, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  br label %81

74:                                               ; preds = %67, %60
  %75 = load %struct.ciss_lun_report*, %struct.ciss_lun_report** %5, align 8
  %76 = icmp ne %struct.ciss_lun_report* %75, null
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load %struct.ciss_lun_report*, %struct.ciss_lun_report** %5, align 8
  %79 = load i32, i32* @CISS_MALLOC_CLASS, align 4
  %80 = call i32 @free(%struct.ciss_lun_report* %78, i32 %79)
  br label %81

81:                                               ; preds = %68, %77, %74
  ret void
}

declare dso_local i32 @CISS_BIG_MAP_BUS(%struct.ciss_softc*, i32) #1

declare dso_local i32 @CISS_BIG_MAP_TARGET(%struct.ciss_softc*, i32) #1

declare dso_local %struct.ciss_lun_report* @ciss_report_luns(%struct.ciss_softc*, i32, i32) #1

declare dso_local i32 @ciss_printf(%struct.ciss_softc*, i8*, ...) #1

declare dso_local i32 @ciss_filter_physical(%struct.ciss_softc*, %struct.ciss_lun_report*) #1

declare dso_local i32 @free(%struct.ciss_lun_report*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
