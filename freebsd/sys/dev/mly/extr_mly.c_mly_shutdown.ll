; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mly/extr_mly.c_mly_shutdown.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mly/extr_mly.c_mly_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mly_softc = type { i32, i32, i32 }

@MLY_STATE_OPEN = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"flushing cache...\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"done\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mly_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mly_shutdown(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mly_softc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.mly_softc* @device_get_softc(i32 %5)
  store %struct.mly_softc* %6, %struct.mly_softc** %4, align 8
  %7 = call i32 @debug_called(i32 1)
  %8 = load %struct.mly_softc*, %struct.mly_softc** %4, align 8
  %9 = call i32 @MLY_LOCK(%struct.mly_softc* %8)
  %10 = load %struct.mly_softc*, %struct.mly_softc** %4, align 8
  %11 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @MLY_STATE_OPEN, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.mly_softc*, %struct.mly_softc** %4, align 8
  %18 = call i32 @MLY_UNLOCK(%struct.mly_softc* %17)
  %19 = load i32, i32* @EBUSY, align 4
  store i32 %19, i32* %2, align 4
  br label %36

20:                                               ; preds = %1
  %21 = load %struct.mly_softc*, %struct.mly_softc** %4, align 8
  %22 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %21, i32 0, i32 2
  %23 = call i32 @callout_stop(i32* %22)
  %24 = load %struct.mly_softc*, %struct.mly_softc** %4, align 8
  %25 = call i32 @mly_printf(%struct.mly_softc* %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.mly_softc*, %struct.mly_softc** %4, align 8
  %27 = call i64 @mly_flush(%struct.mly_softc* %26)
  %28 = icmp ne i64 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %31 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  %32 = load %struct.mly_softc*, %struct.mly_softc** %4, align 8
  %33 = call i32 @MLY_MASK_INTERRUPTS(%struct.mly_softc* %32)
  %34 = load %struct.mly_softc*, %struct.mly_softc** %4, align 8
  %35 = call i32 @MLY_UNLOCK(%struct.mly_softc* %34)
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %20, %16
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.mly_softc* @device_get_softc(i32) #1

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @MLY_LOCK(%struct.mly_softc*) #1

declare dso_local i32 @MLY_UNLOCK(%struct.mly_softc*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @mly_printf(%struct.mly_softc*, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i64 @mly_flush(%struct.mly_softc*) #1

declare dso_local i32 @MLY_MASK_INTERRUPTS(%struct.mly_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
