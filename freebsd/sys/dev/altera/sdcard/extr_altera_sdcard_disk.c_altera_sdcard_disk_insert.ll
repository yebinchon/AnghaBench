; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/altera/sdcard/extr_altera_sdcard_disk.c_altera_sdcard_disk_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/altera/sdcard/extr_altera_sdcard_disk.c_altera_sdcard_disk_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.altera_sdcard_softc = type { i32, i32, %struct.disk*, i32 }
%struct.disk = type { i8*, i32, i8*, i8*, i32, i32, i32, i32, %struct.altera_sdcard_softc* }

@.str = private unnamed_addr constant [14 x i8] c"altera_sdcard\00", align 1
@altera_sdcard_disk_strategy = common dso_local global i32 0, align 4
@altera_sdcard_disk_dump = common dso_local global i32 0, align 4
@altera_sdcard_disk_ioctl = common dso_local global i32 0, align 4
@ALTERA_SDCARD_SECTORSIZE = common dso_local global i8* null, align 8
@DISK_VERSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"%juM SD Card inserted\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @altera_sdcard_disk_insert(%struct.altera_sdcard_softc* %0) #0 {
  %2 = alloca %struct.altera_sdcard_softc*, align 8
  %3 = alloca %struct.disk*, align 8
  %4 = alloca i32, align 4
  store %struct.altera_sdcard_softc* %0, %struct.altera_sdcard_softc** %2, align 8
  %5 = load %struct.altera_sdcard_softc*, %struct.altera_sdcard_softc** %2, align 8
  %6 = call i32 @ALTERA_SDCARD_LOCK_ASSERT(%struct.altera_sdcard_softc* %5)
  %7 = load %struct.altera_sdcard_softc*, %struct.altera_sdcard_softc** %2, align 8
  %8 = call i32 @ALTERA_SDCARD_UNLOCK(%struct.altera_sdcard_softc* %7)
  %9 = call %struct.disk* (...) @disk_alloc()
  store %struct.disk* %9, %struct.disk** %3, align 8
  %10 = load %struct.altera_sdcard_softc*, %struct.altera_sdcard_softc** %2, align 8
  %11 = load %struct.disk*, %struct.disk** %3, align 8
  %12 = getelementptr inbounds %struct.disk, %struct.disk* %11, i32 0, i32 8
  store %struct.altera_sdcard_softc* %10, %struct.altera_sdcard_softc** %12, align 8
  %13 = load %struct.disk*, %struct.disk** %3, align 8
  %14 = getelementptr inbounds %struct.disk, %struct.disk* %13, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  %15 = load %struct.altera_sdcard_softc*, %struct.altera_sdcard_softc** %2, align 8
  %16 = getelementptr inbounds %struct.altera_sdcard_softc, %struct.altera_sdcard_softc* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.disk*, %struct.disk** %3, align 8
  %19 = getelementptr inbounds %struct.disk, %struct.disk* %18, i32 0, i32 7
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @altera_sdcard_disk_strategy, align 4
  %21 = load %struct.disk*, %struct.disk** %3, align 8
  %22 = getelementptr inbounds %struct.disk, %struct.disk* %21, i32 0, i32 6
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* @altera_sdcard_disk_dump, align 4
  %24 = load %struct.disk*, %struct.disk** %3, align 8
  %25 = getelementptr inbounds %struct.disk, %struct.disk* %24, i32 0, i32 5
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @altera_sdcard_disk_ioctl, align 4
  %27 = load %struct.disk*, %struct.disk** %3, align 8
  %28 = getelementptr inbounds %struct.disk, %struct.disk* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 8
  %29 = load i8*, i8** @ALTERA_SDCARD_SECTORSIZE, align 8
  %30 = load %struct.disk*, %struct.disk** %3, align 8
  %31 = getelementptr inbounds %struct.disk, %struct.disk* %30, i32 0, i32 3
  store i8* %29, i8** %31, align 8
  %32 = load %struct.altera_sdcard_softc*, %struct.altera_sdcard_softc** %2, align 8
  %33 = getelementptr inbounds %struct.altera_sdcard_softc, %struct.altera_sdcard_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.disk*, %struct.disk** %3, align 8
  %36 = getelementptr inbounds %struct.disk, %struct.disk* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  %37 = load i8*, i8** @ALTERA_SDCARD_SECTORSIZE, align 8
  %38 = load %struct.disk*, %struct.disk** %3, align 8
  %39 = getelementptr inbounds %struct.disk, %struct.disk* %38, i32 0, i32 2
  store i8* %37, i8** %39, align 8
  %40 = load %struct.disk*, %struct.disk** %3, align 8
  %41 = load %struct.altera_sdcard_softc*, %struct.altera_sdcard_softc** %2, align 8
  %42 = getelementptr inbounds %struct.altera_sdcard_softc, %struct.altera_sdcard_softc* %41, i32 0, i32 2
  store %struct.disk* %40, %struct.disk** %42, align 8
  %43 = load %struct.disk*, %struct.disk** %3, align 8
  %44 = load i32, i32* @DISK_VERSION, align 4
  %45 = call i32 @disk_create(%struct.disk* %43, i32 %44)
  %46 = load %struct.altera_sdcard_softc*, %struct.altera_sdcard_softc** %2, align 8
  %47 = call i32 @ALTERA_SDCARD_LOCK(%struct.altera_sdcard_softc* %46)
  %48 = load %struct.altera_sdcard_softc*, %struct.altera_sdcard_softc** %2, align 8
  %49 = getelementptr inbounds %struct.altera_sdcard_softc, %struct.altera_sdcard_softc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sdiv i32 %50, 1000000
  store i32 %51, i32* %4, align 4
  %52 = load %struct.altera_sdcard_softc*, %struct.altera_sdcard_softc** %2, align 8
  %53 = getelementptr inbounds %struct.altera_sdcard_softc, %struct.altera_sdcard_softc* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @device_printf(i32 %54, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  ret void
}

declare dso_local i32 @ALTERA_SDCARD_LOCK_ASSERT(%struct.altera_sdcard_softc*) #1

declare dso_local i32 @ALTERA_SDCARD_UNLOCK(%struct.altera_sdcard_softc*) #1

declare dso_local %struct.disk* @disk_alloc(...) #1

declare dso_local i32 @disk_create(%struct.disk*, i32) #1

declare dso_local i32 @ALTERA_SDCARD_LOCK(%struct.altera_sdcard_softc*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
