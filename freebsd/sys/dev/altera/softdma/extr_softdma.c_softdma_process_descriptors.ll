; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/altera/softdma/extr_softdma.c_softdma_process_descriptors.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/altera/softdma/extr_softdma.c_softdma_process_descriptors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.softdma_channel = type { i64, i32, %struct.softdma_desc*, %struct.xdma_channel*, %struct.softdma_softc* }
%struct.softdma_desc = type { i32, i64, %struct.softdma_desc* }
%struct.xdma_channel = type { i32 }
%struct.softdma_softc = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@CONTROL_OWN = common dso_local global i32 0, align 4
@XDMA_MEM_TO_DEV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.softdma_channel*, %struct.TYPE_4__*)* @softdma_process_descriptors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @softdma_process_descriptors(%struct.softdma_channel* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca %struct.softdma_channel*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.xdma_channel*, align 8
  %6 = alloca %struct.softdma_desc*, align 8
  %7 = alloca %struct.softdma_softc*, align 8
  %8 = alloca %struct.TYPE_4__, align 4
  %9 = alloca i32, align 4
  store %struct.softdma_channel* %0, %struct.softdma_channel** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %10 = load %struct.softdma_channel*, %struct.softdma_channel** %3, align 8
  %11 = getelementptr inbounds %struct.softdma_channel, %struct.softdma_channel* %10, i32 0, i32 4
  %12 = load %struct.softdma_softc*, %struct.softdma_softc** %11, align 8
  store %struct.softdma_softc* %12, %struct.softdma_softc** %7, align 8
  %13 = load %struct.softdma_channel*, %struct.softdma_channel** %3, align 8
  %14 = getelementptr inbounds %struct.softdma_channel, %struct.softdma_channel* %13, i32 0, i32 3
  %15 = load %struct.xdma_channel*, %struct.xdma_channel** %14, align 8
  store %struct.xdma_channel* %15, %struct.xdma_channel** %5, align 8
  %16 = load %struct.softdma_channel*, %struct.softdma_channel** %3, align 8
  %17 = getelementptr inbounds %struct.softdma_channel, %struct.softdma_channel* %16, i32 0, i32 2
  %18 = load %struct.softdma_desc*, %struct.softdma_desc** %17, align 8
  %19 = load %struct.softdma_channel*, %struct.softdma_channel** %3, align 8
  %20 = getelementptr inbounds %struct.softdma_channel, %struct.softdma_channel* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.softdma_desc, %struct.softdma_desc* %18, i64 %21
  store %struct.softdma_desc* %22, %struct.softdma_desc** %6, align 8
  br label %23

23:                                               ; preds = %82, %2
  %24 = load %struct.softdma_desc*, %struct.softdma_desc** %6, align 8
  %25 = icmp ne %struct.softdma_desc* %24, null
  br i1 %25, label %26, label %93

26:                                               ; preds = %23
  %27 = load %struct.softdma_desc*, %struct.softdma_desc** %6, align 8
  %28 = getelementptr inbounds %struct.softdma_desc, %struct.softdma_desc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @CONTROL_OWN, align 4
  %31 = and i32 %29, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %93

34:                                               ; preds = %26
  %35 = load %struct.softdma_desc*, %struct.softdma_desc** %6, align 8
  %36 = getelementptr inbounds %struct.softdma_desc, %struct.softdma_desc* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @XDMA_MEM_TO_DEV, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load %struct.softdma_channel*, %struct.softdma_channel** %3, align 8
  %42 = load %struct.softdma_desc*, %struct.softdma_desc** %6, align 8
  %43 = call i32 @softdma_process_tx(%struct.softdma_channel* %41, %struct.softdma_desc* %42)
  store i32 %43, i32* %9, align 4
  br label %52

44:                                               ; preds = %34
  %45 = load %struct.softdma_channel*, %struct.softdma_channel** %3, align 8
  %46 = load %struct.softdma_desc*, %struct.softdma_desc** %6, align 8
  %47 = call i32 @softdma_process_rx(%struct.softdma_channel* %45, %struct.softdma_desc* %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %93

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %51, %40
  %53 = load %struct.softdma_desc*, %struct.softdma_desc** %6, align 8
  %54 = getelementptr inbounds %struct.softdma_desc, %struct.softdma_desc* %53, i32 0, i32 0
  store i32 0, i32* %54, align 8
  %55 = load i32, i32* %9, align 4
  %56 = icmp sge i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i32 0, i32* %58, align 4
  %59 = load i32, i32* %9, align 4
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  store i32 %59, i32* %60, align 4
  br label %65

61:                                               ; preds = %52
  %62 = load i32, i32* %9, align 4
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i32 %62, i32* %63, align 4
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  store i32 0, i32* %64, align 4
  br label %65

65:                                               ; preds = %61, %57
  %66 = load %struct.xdma_channel*, %struct.xdma_channel** %5, align 8
  %67 = call i32 @xchan_seg_done(%struct.xdma_channel* %66, %struct.TYPE_4__* %8)
  %68 = load %struct.softdma_channel*, %struct.softdma_channel** %3, align 8
  %69 = getelementptr inbounds %struct.softdma_channel, %struct.softdma_channel* %68, i32 0, i32 1
  %70 = call i32 @atomic_subtract_int(i32* %69, i32 1)
  %71 = load i32, i32* %9, align 4
  %72 = icmp sge i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %65
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, %74
  store i32 %78, i32* %76, align 4
  br label %82

79:                                               ; preds = %65
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  store i32 1, i32* %81, align 4
  br label %93

82:                                               ; preds = %73
  %83 = load %struct.softdma_channel*, %struct.softdma_channel** %3, align 8
  %84 = load %struct.softdma_channel*, %struct.softdma_channel** %3, align 8
  %85 = getelementptr inbounds %struct.softdma_channel, %struct.softdma_channel* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i64 @softdma_next_desc(%struct.softdma_channel* %83, i64 %86)
  %88 = load %struct.softdma_channel*, %struct.softdma_channel** %3, align 8
  %89 = getelementptr inbounds %struct.softdma_channel, %struct.softdma_channel* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  %90 = load %struct.softdma_desc*, %struct.softdma_desc** %6, align 8
  %91 = getelementptr inbounds %struct.softdma_desc, %struct.softdma_desc* %90, i32 0, i32 2
  %92 = load %struct.softdma_desc*, %struct.softdma_desc** %91, align 8
  store %struct.softdma_desc* %92, %struct.softdma_desc** %6, align 8
  br label %23

93:                                               ; preds = %79, %50, %33, %23
  ret i32 0
}

declare dso_local i32 @softdma_process_tx(%struct.softdma_channel*, %struct.softdma_desc*) #1

declare dso_local i32 @softdma_process_rx(%struct.softdma_channel*, %struct.softdma_desc*) #1

declare dso_local i32 @xchan_seg_done(%struct.xdma_channel*, %struct.TYPE_4__*) #1

declare dso_local i32 @atomic_subtract_int(i32*, i32) #1

declare dso_local i64 @softdma_next_desc(%struct.softdma_channel*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
