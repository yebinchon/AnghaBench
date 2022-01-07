; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cmx/extr_cmx.c_cmx_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cmx/extr_cmx.c_cmx_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.cmx_softc* }
%struct.cmx_softc = type { i32, i32, i32, i32, i64 }
%struct.thread = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"called (events=%b BSR=%b)\0A\00", align 1
@POLLBITS = common dso_local global i32 0, align 4
@BSRBITS = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@POLLWRNORM = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@BSR_BULK_IN_FULL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"enabling polling\0A\00", align 1
@POLL_TICKS = common dso_local global i32 0, align 4
@cmx_tick = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"already polling\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"success (revents=%b)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, %struct.thread*)* @cmx_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmx_poll(%struct.cdev* %0, i32 %1, %struct.thread* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.cmx_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.thread* %2, %struct.thread** %7, align 8
  %11 = load %struct.cdev*, %struct.cdev** %5, align 8
  %12 = getelementptr inbounds %struct.cdev, %struct.cdev* %11, i32 0, i32 0
  %13 = load %struct.cmx_softc*, %struct.cmx_softc** %12, align 8
  store %struct.cmx_softc* %13, %struct.cmx_softc** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load %struct.cmx_softc*, %struct.cmx_softc** %8, align 8
  %15 = icmp eq %struct.cmx_softc* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %3
  %17 = load %struct.cmx_softc*, %struct.cmx_softc** %8, align 8
  %18 = getelementptr inbounds %struct.cmx_softc, %struct.cmx_softc* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16, %3
  %22 = load i32, i32* @ENXIO, align 4
  store i32 %22, i32* %4, align 4
  br label %99

23:                                               ; preds = %16
  %24 = load %struct.cmx_softc*, %struct.cmx_softc** %8, align 8
  %25 = call i32 @cmx_read_BSR(%struct.cmx_softc* %24)
  store i32 %25, i32* %10, align 4
  %26 = load %struct.cmx_softc*, %struct.cmx_softc** %8, align 8
  %27 = getelementptr inbounds %struct.cmx_softc, %struct.cmx_softc* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @POLLBITS, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @BSRBITS, align 4
  %33 = call i32 (i32, i8*, ...) @DEBUG_printf(i32 %28, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30, i32 %31, i32 %32)
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @POLLOUT, align 4
  %36 = load i32, i32* @POLLWRNORM, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %34, %37
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @POLLIN, align 4
  %41 = load i32, i32* @POLLRDNORM, align 4
  %42 = or i32 %40, %41
  %43 = and i32 %39, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %91

45:                                               ; preds = %23
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @BSR_BULK_IN_FULL, align 4
  %48 = call i64 @cmx_test(i32 %46, i32 %47, i32 1)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @POLLIN, align 4
  %53 = load i32, i32* @POLLRDNORM, align 4
  %54 = or i32 %52, %53
  %55 = and i32 %51, %54
  %56 = load i32, i32* %9, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %9, align 4
  br label %90

58:                                               ; preds = %45
  %59 = load %struct.thread*, %struct.thread** %7, align 8
  %60 = load %struct.cmx_softc*, %struct.cmx_softc** %8, align 8
  %61 = getelementptr inbounds %struct.cmx_softc, %struct.cmx_softc* %60, i32 0, i32 3
  %62 = call i32 @selrecord(%struct.thread* %59, i32* %61)
  %63 = load %struct.cmx_softc*, %struct.cmx_softc** %8, align 8
  %64 = call i32 @CMX_LOCK(%struct.cmx_softc* %63)
  %65 = load %struct.cmx_softc*, %struct.cmx_softc** %8, align 8
  %66 = getelementptr inbounds %struct.cmx_softc, %struct.cmx_softc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %82, label %69

69:                                               ; preds = %58
  %70 = load %struct.cmx_softc*, %struct.cmx_softc** %8, align 8
  %71 = getelementptr inbounds %struct.cmx_softc, %struct.cmx_softc* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (i32, i8*, ...) @DEBUG_printf(i32 %72, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %74 = load %struct.cmx_softc*, %struct.cmx_softc** %8, align 8
  %75 = getelementptr inbounds %struct.cmx_softc, %struct.cmx_softc* %74, i32 0, i32 0
  store i32 1, i32* %75, align 8
  %76 = load %struct.cmx_softc*, %struct.cmx_softc** %8, align 8
  %77 = getelementptr inbounds %struct.cmx_softc, %struct.cmx_softc* %76, i32 0, i32 2
  %78 = load i32, i32* @POLL_TICKS, align 4
  %79 = load i32, i32* @cmx_tick, align 4
  %80 = load %struct.cmx_softc*, %struct.cmx_softc** %8, align 8
  %81 = call i32 @callout_reset(i32* %77, i32 %78, i32 %79, %struct.cmx_softc* %80)
  br label %87

82:                                               ; preds = %58
  %83 = load %struct.cmx_softc*, %struct.cmx_softc** %8, align 8
  %84 = getelementptr inbounds %struct.cmx_softc, %struct.cmx_softc* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (i32, i8*, ...) @DEBUG_printf(i32 %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %87

87:                                               ; preds = %82, %69
  %88 = load %struct.cmx_softc*, %struct.cmx_softc** %8, align 8
  %89 = call i32 @CMX_UNLOCK(%struct.cmx_softc* %88)
  br label %90

90:                                               ; preds = %87, %50
  br label %91

91:                                               ; preds = %90, %23
  %92 = load %struct.cmx_softc*, %struct.cmx_softc** %8, align 8
  %93 = getelementptr inbounds %struct.cmx_softc, %struct.cmx_softc* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* @POLLBITS, align 4
  %97 = call i32 (i32, i8*, ...) @DEBUG_printf(i32 %94, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %95, i32 %96)
  %98 = load i32, i32* %9, align 4
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %91, %21
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i32 @cmx_read_BSR(%struct.cmx_softc*) #1

declare dso_local i32 @DEBUG_printf(i32, i8*, ...) #1

declare dso_local i64 @cmx_test(i32, i32, i32) #1

declare dso_local i32 @selrecord(%struct.thread*, i32*) #1

declare dso_local i32 @CMX_LOCK(%struct.cmx_softc*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.cmx_softc*) #1

declare dso_local i32 @CMX_UNLOCK(%struct.cmx_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
