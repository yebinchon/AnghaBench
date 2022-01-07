; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mambo/extr_mambo_disk.c_mambodisk_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mambo/extr_mambo_disk.c_mambodisk_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mambodisk_softc = type { i32, i32, i32, i32, %struct.disk*, i32 }
%struct.disk = type { i8*, i32, i64, i32, i32, %struct.mambodisk_softc*, i32, i32, i32 }

@mambodisk_open = common dso_local global i32 0, align 4
@mambodisk_close = common dso_local global i32 0, align 4
@mambodisk_strategy = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"mambodisk\00", align 1
@MAXPHYS = common dso_local global i32 0, align 4
@MAMBO_DISK_INFO = common dso_local global i32 0, align 4
@MAMBO_INFO_BLKSZ = common dso_local global i32 0, align 4
@MAMBO_INFO_DEVSZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"%ju%cB, %d byte sectors\0A\00", align 1
@DISK_VERSION = common dso_local global i32 0, align 4
@mambodisk_task = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"task: mambo hd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mambodisk_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mambodisk_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mambodisk_softc*, align 8
  %4 = alloca %struct.disk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.mambodisk_softc* @device_get_softc(i32 %7)
  store %struct.mambodisk_softc* %8, %struct.mambodisk_softc** %3, align 8
  %9 = load i32, i32* %2, align 4
  %10 = load %struct.mambodisk_softc*, %struct.mambodisk_softc** %3, align 8
  %11 = getelementptr inbounds %struct.mambodisk_softc, %struct.mambodisk_softc* %10, i32 0, i32 5
  store i32 %9, i32* %11, align 8
  %12 = load %struct.mambodisk_softc*, %struct.mambodisk_softc** %3, align 8
  %13 = call i32 @MBODISK_LOCK_INIT(%struct.mambodisk_softc* %12)
  %14 = call %struct.disk* (...) @disk_alloc()
  %15 = load %struct.mambodisk_softc*, %struct.mambodisk_softc** %3, align 8
  %16 = getelementptr inbounds %struct.mambodisk_softc, %struct.mambodisk_softc* %15, i32 0, i32 4
  store %struct.disk* %14, %struct.disk** %16, align 8
  store %struct.disk* %14, %struct.disk** %4, align 8
  %17 = load i32, i32* @mambodisk_open, align 4
  %18 = load %struct.disk*, %struct.disk** %4, align 8
  %19 = getelementptr inbounds %struct.disk, %struct.disk* %18, i32 0, i32 8
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* @mambodisk_close, align 4
  %21 = load %struct.disk*, %struct.disk** %4, align 8
  %22 = getelementptr inbounds %struct.disk, %struct.disk* %21, i32 0, i32 7
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @mambodisk_strategy, align 4
  %24 = load %struct.disk*, %struct.disk** %4, align 8
  %25 = getelementptr inbounds %struct.disk, %struct.disk* %24, i32 0, i32 6
  store i32 %23, i32* %25, align 8
  %26 = load %struct.disk*, %struct.disk** %4, align 8
  %27 = getelementptr inbounds %struct.disk, %struct.disk* %26, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %27, align 8
  %28 = load %struct.mambodisk_softc*, %struct.mambodisk_softc** %3, align 8
  %29 = load %struct.disk*, %struct.disk** %4, align 8
  %30 = getelementptr inbounds %struct.disk, %struct.disk* %29, i32 0, i32 5
  store %struct.mambodisk_softc* %28, %struct.mambodisk_softc** %30, align 8
  %31 = load i32, i32* @MAXPHYS, align 4
  %32 = load %struct.disk*, %struct.disk** %4, align 8
  %33 = getelementptr inbounds %struct.disk, %struct.disk* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 4
  %34 = load %struct.disk*, %struct.disk** %4, align 8
  %35 = getelementptr inbounds %struct.disk, %struct.disk* %34, i32 0, i32 1
  store i32 512, i32* %35, align 8
  %36 = load i32, i32* @MAMBO_DISK_INFO, align 4
  %37 = load i32, i32* @MAMBO_INFO_BLKSZ, align 4
  %38 = load %struct.disk*, %struct.disk** %4, align 8
  %39 = getelementptr inbounds %struct.disk, %struct.disk* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @mambocall(i32 %36, i32 %37, i32 %40)
  %42 = udiv i64 %41, 512
  %43 = trunc i64 %42 to i32
  %44 = load %struct.mambodisk_softc*, %struct.mambodisk_softc** %3, align 8
  %45 = getelementptr inbounds %struct.mambodisk_softc, %struct.mambodisk_softc* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* %2, align 4
  %47 = call i32 @device_get_unit(i32 %46)
  %48 = load %struct.disk*, %struct.disk** %4, align 8
  %49 = getelementptr inbounds %struct.disk, %struct.disk* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* @MAMBO_DISK_INFO, align 4
  %51 = load i32, i32* @MAMBO_INFO_DEVSZ, align 4
  %52 = load %struct.disk*, %struct.disk** %4, align 8
  %53 = getelementptr inbounds %struct.disk, %struct.disk* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @mambocall(i32 %50, i32 %51, i32 %54)
  %56 = mul i64 %55, 1024
  %57 = load %struct.disk*, %struct.disk** %4, align 8
  %58 = getelementptr inbounds %struct.disk, %struct.disk* %57, i32 0, i32 2
  store i64 %56, i64* %58, align 8
  %59 = load %struct.disk*, %struct.disk** %4, align 8
  %60 = getelementptr inbounds %struct.disk, %struct.disk* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = lshr i64 %61, 20
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %5, align 4
  store i8 77, i8* %6, align 1
  %64 = load i32, i32* %5, align 4
  %65 = icmp sge i32 %64, 10240
  br i1 %65, label %66, label %69

66:                                               ; preds = %1
  store i8 71, i8* %6, align 1
  %67 = load i32, i32* %5, align 4
  %68 = sdiv i32 %67, 1024
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %66, %1
  %70 = load i32, i32* %2, align 4
  %71 = load i32, i32* %5, align 4
  %72 = load i8, i8* %6, align 1
  %73 = load %struct.disk*, %struct.disk** %4, align 8
  %74 = getelementptr inbounds %struct.disk, %struct.disk* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @device_printf(i32 %70, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %71, i8 signext %72, i32 %75)
  %77 = load %struct.disk*, %struct.disk** %4, align 8
  %78 = load i32, i32* @DISK_VERSION, align 4
  %79 = call i32 @disk_create(%struct.disk* %77, i32 %78)
  %80 = load %struct.mambodisk_softc*, %struct.mambodisk_softc** %3, align 8
  %81 = getelementptr inbounds %struct.mambodisk_softc, %struct.mambodisk_softc* %80, i32 0, i32 3
  %82 = call i32 @bioq_init(i32* %81)
  %83 = load %struct.mambodisk_softc*, %struct.mambodisk_softc** %3, align 8
  %84 = getelementptr inbounds %struct.mambodisk_softc, %struct.mambodisk_softc* %83, i32 0, i32 1
  store i32 1, i32* %84, align 4
  %85 = load %struct.mambodisk_softc*, %struct.mambodisk_softc** %3, align 8
  %86 = load %struct.mambodisk_softc*, %struct.mambodisk_softc** %3, align 8
  %87 = getelementptr inbounds %struct.mambodisk_softc, %struct.mambodisk_softc* %86, i32 0, i32 2
  %88 = call i32 @kproc_create(i32* @mambodisk_task, %struct.mambodisk_softc* %85, i32* %87, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  ret i32 0
}

declare dso_local %struct.mambodisk_softc* @device_get_softc(i32) #1

declare dso_local i32 @MBODISK_LOCK_INIT(%struct.mambodisk_softc*) #1

declare dso_local %struct.disk* @disk_alloc(...) #1

declare dso_local i64 @mambocall(i32, i32, i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i8 signext, i32) #1

declare dso_local i32 @disk_create(%struct.disk*, i32) #1

declare dso_local i32 @bioq_init(i32*) #1

declare dso_local i32 @kproc_create(i32*, %struct.mambodisk_softc*, i32*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
