; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/esp/extr_ncr53c9x.c_ncr53c9x_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/esp/extr_ncr53c9x.c_ncr53c9x_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncr53c9x_softc = type { i32, %struct.ncr53c9x_linfo*, i64, %struct.ncr53c9x_linfo*, i64, %struct.ncr53c9x_linfo*, %struct.ncr53c9x_linfo*, i32, i32, i32 }
%struct.ncr53c9x_linfo = type { i32 }

@CAM_REQ_ABORTED = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@ncr53c9x_async = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ncr53c9x_detach(%struct.ncr53c9x_softc* %0) #0 {
  %2 = alloca %struct.ncr53c9x_softc*, align 8
  %3 = alloca %struct.ncr53c9x_linfo*, align 8
  %4 = alloca %struct.ncr53c9x_linfo*, align 8
  %5 = alloca i32, align 4
  store %struct.ncr53c9x_softc* %0, %struct.ncr53c9x_softc** %2, align 8
  %6 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %2, align 8
  %7 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %6, i32 0, i32 9
  %8 = call i32 @callout_drain(i32* %7)
  %9 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %2, align 8
  %10 = call i32 @NCR_LOCK(%struct.ncr53c9x_softc* %9)
  %11 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %2, align 8
  %12 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %11, i32 0, i32 5
  %13 = load %struct.ncr53c9x_linfo*, %struct.ncr53c9x_linfo** %12, align 8
  %14 = icmp ne %struct.ncr53c9x_linfo* %13, null
  br i1 %14, label %15, label %51

15:                                               ; preds = %1
  %16 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %2, align 8
  %17 = load i32, i32* @CAM_REQ_ABORTED, align 4
  %18 = call i32 @ncr53c9x_clear(%struct.ncr53c9x_softc* %16, i32 %17)
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %47, %15
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %2, align 8
  %22 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %50

25:                                               ; preds = %19
  %26 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %2, align 8
  %27 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %26, i32 0, i32 5
  %28 = load %struct.ncr53c9x_linfo*, %struct.ncr53c9x_linfo** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.ncr53c9x_linfo, %struct.ncr53c9x_linfo* %28, i64 %30
  %32 = getelementptr inbounds %struct.ncr53c9x_linfo, %struct.ncr53c9x_linfo* %31, i32 0, i32 0
  %33 = call %struct.ncr53c9x_linfo* @LIST_FIRST(i32* %32)
  store %struct.ncr53c9x_linfo* %33, %struct.ncr53c9x_linfo** %3, align 8
  br label %34

34:                                               ; preds = %44, %25
  %35 = load %struct.ncr53c9x_linfo*, %struct.ncr53c9x_linfo** %3, align 8
  %36 = icmp ne %struct.ncr53c9x_linfo* %35, null
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = load %struct.ncr53c9x_linfo*, %struct.ncr53c9x_linfo** %3, align 8
  %39 = load i32, i32* @link, align 4
  %40 = call %struct.ncr53c9x_linfo* @LIST_NEXT(%struct.ncr53c9x_linfo* %38, i32 %39)
  store %struct.ncr53c9x_linfo* %40, %struct.ncr53c9x_linfo** %4, align 8
  %41 = load %struct.ncr53c9x_linfo*, %struct.ncr53c9x_linfo** %3, align 8
  %42 = load i32, i32* @M_DEVBUF, align 4
  %43 = call i32 @free(%struct.ncr53c9x_linfo* %41, i32 %42)
  br label %44

44:                                               ; preds = %37
  %45 = load %struct.ncr53c9x_linfo*, %struct.ncr53c9x_linfo** %4, align 8
  store %struct.ncr53c9x_linfo* %45, %struct.ncr53c9x_linfo** %3, align 8
  br label %34

46:                                               ; preds = %34
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %19

50:                                               ; preds = %19
  br label %51

51:                                               ; preds = %50, %1
  %52 = load i32, i32* @ncr53c9x_async, align 4
  %53 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %2, align 8
  %54 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %53, i32 0, i32 7
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %2, align 8
  %57 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %56, i32 0, i32 8
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @xpt_register_async(i32 0, i32 %52, i32 %55, i32 %58)
  %60 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %2, align 8
  %61 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %60, i32 0, i32 8
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @xpt_free_path(i32 %62)
  %64 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %2, align 8
  %65 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %64, i32 0, i32 7
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @cam_sim_path(i32 %66)
  %68 = call i32 @xpt_bus_deregister(i32 %67)
  %69 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %2, align 8
  %70 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %69, i32 0, i32 7
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @TRUE, align 4
  %73 = call i32 @cam_sim_free(i32 %71, i32 %72)
  %74 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %2, align 8
  %75 = call i32 @NCR_UNLOCK(%struct.ncr53c9x_softc* %74)
  %76 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %2, align 8
  %77 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %76, i32 0, i32 6
  %78 = load %struct.ncr53c9x_linfo*, %struct.ncr53c9x_linfo** %77, align 8
  %79 = load i32, i32* @M_DEVBUF, align 4
  %80 = call i32 @free(%struct.ncr53c9x_linfo* %78, i32 %79)
  %81 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %2, align 8
  %82 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %81, i32 0, i32 5
  %83 = load %struct.ncr53c9x_linfo*, %struct.ncr53c9x_linfo** %82, align 8
  %84 = load i32, i32* @M_DEVBUF, align 4
  %85 = call i32 @free(%struct.ncr53c9x_linfo* %83, i32 %84)
  %86 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %2, align 8
  %87 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %51
  %91 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %2, align 8
  %92 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %91, i32 0, i32 3
  %93 = load %struct.ncr53c9x_linfo*, %struct.ncr53c9x_linfo** %92, align 8
  %94 = load i32, i32* @M_DEVBUF, align 4
  %95 = call i32 @free(%struct.ncr53c9x_linfo* %93, i32 %94)
  br label %96

96:                                               ; preds = %90, %51
  %97 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %2, align 8
  %98 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %96
  %102 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %2, align 8
  %103 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %102, i32 0, i32 1
  %104 = load %struct.ncr53c9x_linfo*, %struct.ncr53c9x_linfo** %103, align 8
  %105 = load i32, i32* @M_DEVBUF, align 4
  %106 = call i32 @free(%struct.ncr53c9x_linfo* %104, i32 %105)
  br label %107

107:                                              ; preds = %101, %96
  ret i32 0
}

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @NCR_LOCK(%struct.ncr53c9x_softc*) #1

declare dso_local i32 @ncr53c9x_clear(%struct.ncr53c9x_softc*, i32) #1

declare dso_local %struct.ncr53c9x_linfo* @LIST_FIRST(i32*) #1

declare dso_local %struct.ncr53c9x_linfo* @LIST_NEXT(%struct.ncr53c9x_linfo*, i32) #1

declare dso_local i32 @free(%struct.ncr53c9x_linfo*, i32) #1

declare dso_local i32 @xpt_register_async(i32, i32, i32, i32) #1

declare dso_local i32 @xpt_free_path(i32) #1

declare dso_local i32 @xpt_bus_deregister(i32) #1

declare dso_local i32 @cam_sim_path(i32) #1

declare dso_local i32 @cam_sim_free(i32, i32) #1

declare dso_local i32 @NCR_UNLOCK(%struct.ncr53c9x_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
