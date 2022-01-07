; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ow/extr_ow_temp.c_ow_temp_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ow/extr_ow_temp.c_ow_temp_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ow_temp_softc = type { i32, i32, i32 }

@OW_TEMP_DONE = common dso_local global i32 0, align 4
@OW_TEMP_RUNNING = common dso_local global i32 0, align 4
@PWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"owtun\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ow_temp_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ow_temp_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ow_temp_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.ow_temp_softc* @device_get_softc(i32 %4)
  store %struct.ow_temp_softc* %5, %struct.ow_temp_softc** %3, align 8
  %6 = load %struct.ow_temp_softc*, %struct.ow_temp_softc** %3, align 8
  %7 = getelementptr inbounds %struct.ow_temp_softc, %struct.ow_temp_softc* %6, i32 0, i32 1
  %8 = call i32 @mtx_lock(i32* %7)
  %9 = load i32, i32* @OW_TEMP_DONE, align 4
  %10 = load %struct.ow_temp_softc*, %struct.ow_temp_softc** %3, align 8
  %11 = getelementptr inbounds %struct.ow_temp_softc, %struct.ow_temp_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %12, %9
  store i32 %13, i32* %11, align 4
  br label %14

14:                                               ; preds = %21, %1
  %15 = load %struct.ow_temp_softc*, %struct.ow_temp_softc** %3, align 8
  %16 = getelementptr inbounds %struct.ow_temp_softc, %struct.ow_temp_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @OW_TEMP_RUNNING, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %14
  %22 = load %struct.ow_temp_softc*, %struct.ow_temp_softc** %3, align 8
  %23 = call i32 @wakeup(%struct.ow_temp_softc* %22)
  %24 = load %struct.ow_temp_softc*, %struct.ow_temp_softc** %3, align 8
  %25 = getelementptr inbounds %struct.ow_temp_softc, %struct.ow_temp_softc* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ow_temp_softc*, %struct.ow_temp_softc** %3, align 8
  %28 = getelementptr inbounds %struct.ow_temp_softc, %struct.ow_temp_softc* %27, i32 0, i32 1
  %29 = load i32, i32* @PWAIT, align 4
  %30 = call i32 @msleep(i32 %26, i32* %28, i32 %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %14

31:                                               ; preds = %14
  %32 = load %struct.ow_temp_softc*, %struct.ow_temp_softc** %3, align 8
  %33 = getelementptr inbounds %struct.ow_temp_softc, %struct.ow_temp_softc* %32, i32 0, i32 1
  %34 = call i32 @mtx_destroy(i32* %33)
  ret i32 0
}

declare dso_local %struct.ow_temp_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @wakeup(%struct.ow_temp_softc*) #1

declare dso_local i32 @msleep(i32, i32*, i32, i8*, i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
