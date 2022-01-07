; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/flash/extr_at45d.c_at45d_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/flash/extr_at45d.c_at45d_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at45d_softc = type { i64, i32, i32, i64, i32, i32 }

@TSTATE_RUNNING = common dso_local global i64 0, align 8
@TSTATE_STOPPING = common dso_local global i64 0, align 8
@TSTATE_STOPPED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"at45dt\00", align 1
@hz = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to stop queue task\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @at45d_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at45d_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.at45d_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.at45d_softc* @device_get_softc(i32 %5)
  store %struct.at45d_softc* %6, %struct.at45d_softc** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.at45d_softc*, %struct.at45d_softc** %3, align 8
  %8 = call i32 @AT45D_LOCK(%struct.at45d_softc* %7)
  %9 = load %struct.at45d_softc*, %struct.at45d_softc** %3, align 8
  %10 = getelementptr inbounds %struct.at45d_softc, %struct.at45d_softc* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @TSTATE_RUNNING, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %50

14:                                               ; preds = %1
  %15 = load i64, i64* @TSTATE_STOPPING, align 8
  %16 = load %struct.at45d_softc*, %struct.at45d_softc** %3, align 8
  %17 = getelementptr inbounds %struct.at45d_softc, %struct.at45d_softc* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  %18 = load %struct.at45d_softc*, %struct.at45d_softc** %3, align 8
  %19 = call i32 @wakeup(%struct.at45d_softc* %18)
  br label %20

20:                                               ; preds = %48, %14
  %21 = load i32, i32* %4, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load %struct.at45d_softc*, %struct.at45d_softc** %3, align 8
  %25 = getelementptr inbounds %struct.at45d_softc, %struct.at45d_softc* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @TSTATE_STOPPED, align 8
  %28 = icmp ne i64 %26, %27
  br label %29

29:                                               ; preds = %23, %20
  %30 = phi i1 [ false, %20 ], [ %28, %23 ]
  br i1 %30, label %31, label %49

31:                                               ; preds = %29
  %32 = load %struct.at45d_softc*, %struct.at45d_softc** %3, align 8
  %33 = load %struct.at45d_softc*, %struct.at45d_softc** %3, align 8
  %34 = getelementptr inbounds %struct.at45d_softc, %struct.at45d_softc* %33, i32 0, i32 5
  %35 = load i32, i32* @hz, align 4
  %36 = mul nsw i32 %35, 3
  %37 = call i32 @msleep(%struct.at45d_softc* %32, i32* %34, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %31
  %41 = load i64, i64* @TSTATE_RUNNING, align 8
  %42 = load %struct.at45d_softc*, %struct.at45d_softc** %3, align 8
  %43 = getelementptr inbounds %struct.at45d_softc, %struct.at45d_softc* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load %struct.at45d_softc*, %struct.at45d_softc** %3, align 8
  %45 = getelementptr inbounds %struct.at45d_softc, %struct.at45d_softc* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @device_printf(i32 %46, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %48

48:                                               ; preds = %40, %31
  br label %20

49:                                               ; preds = %29
  br label %50

50:                                               ; preds = %49, %1
  %51 = load %struct.at45d_softc*, %struct.at45d_softc** %3, align 8
  %52 = call i32 @AT45D_UNLOCK(%struct.at45d_softc* %51)
  %53 = load i32, i32* %4, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %83

55:                                               ; preds = %50
  %56 = load %struct.at45d_softc*, %struct.at45d_softc** %3, align 8
  %57 = getelementptr inbounds %struct.at45d_softc, %struct.at45d_softc* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @TSTATE_STOPPED, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %83

61:                                               ; preds = %55
  %62 = load %struct.at45d_softc*, %struct.at45d_softc** %3, align 8
  %63 = getelementptr inbounds %struct.at45d_softc, %struct.at45d_softc* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %80

66:                                               ; preds = %61
  %67 = load %struct.at45d_softc*, %struct.at45d_softc** %3, align 8
  %68 = getelementptr inbounds %struct.at45d_softc, %struct.at45d_softc* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @disk_destroy(i64 %69)
  %71 = load %struct.at45d_softc*, %struct.at45d_softc** %3, align 8
  %72 = getelementptr inbounds %struct.at45d_softc, %struct.at45d_softc* %71, i32 0, i32 2
  %73 = load i32, i32* @ENXIO, align 4
  %74 = call i32 @bioq_flush(i32* %72, i32* null, i32 %73)
  %75 = load %struct.at45d_softc*, %struct.at45d_softc** %3, align 8
  %76 = getelementptr inbounds %struct.at45d_softc, %struct.at45d_softc* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @M_DEVBUF, align 4
  %79 = call i32 @free(i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %66, %61
  %81 = load %struct.at45d_softc*, %struct.at45d_softc** %3, align 8
  %82 = call i32 @AT45D_LOCK_DESTROY(%struct.at45d_softc* %81)
  br label %83

83:                                               ; preds = %80, %55, %50
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local %struct.at45d_softc* @device_get_softc(i32) #1

declare dso_local i32 @AT45D_LOCK(%struct.at45d_softc*) #1

declare dso_local i32 @wakeup(%struct.at45d_softc*) #1

declare dso_local i32 @msleep(%struct.at45d_softc*, i32*, i32, i8*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @AT45D_UNLOCK(%struct.at45d_softc*) #1

declare dso_local i32 @disk_destroy(i64) #1

declare dso_local i32 @bioq_flush(i32*, i32*, i32) #1

declare dso_local i32 @free(i32, i32) #1

declare dso_local i32 @AT45D_LOCK_DESTROY(%struct.at45d_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
