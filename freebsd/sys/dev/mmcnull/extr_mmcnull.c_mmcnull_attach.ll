; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mmcnull/extr_mmcnull.c_mmcnull_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mmcnull/extr_mmcnull.c_mmcnull_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmcnull_softc = type { i32, i32, i32*, i32*, i32 }

@.str = private unnamed_addr constant [11 x i8] c"mmcnullmtx\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@is_sdio_mode = common dso_local global i64 0, align 8
@mmcnull_action_sdio = common dso_local global i32 0, align 4
@mmcnull_action_sd = common dso_local global i32 0, align 4
@mmcnull_poll = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"mmcnull\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"cannot allocate CAM SIM\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"cannot register SCSI pass-through bus\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"attached OK\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mmcnull_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmcnull_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmcnull_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.mmcnull_softc* @device_get_softc(i32 %6)
  store %struct.mmcnull_softc* %7, %struct.mmcnull_softc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.mmcnull_softc*, %struct.mmcnull_softc** %4, align 8
  %10 = getelementptr inbounds %struct.mmcnull_softc, %struct.mmcnull_softc* %9, i32 0, i32 4
  store i32 %8, i32* %10, align 8
  %11 = load %struct.mmcnull_softc*, %struct.mmcnull_softc** %4, align 8
  %12 = getelementptr inbounds %struct.mmcnull_softc, %struct.mmcnull_softc* %11, i32 0, i32 0
  %13 = load i32, i32* @MTX_DEF, align 4
  %14 = call i32 @mtx_init(i32* %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* null, i32 %13)
  %15 = call i32* @cam_simq_alloc(i32 1)
  %16 = load %struct.mmcnull_softc*, %struct.mmcnull_softc** %4, align 8
  %17 = getelementptr inbounds %struct.mmcnull_softc, %struct.mmcnull_softc* %16, i32 0, i32 2
  store i32* %15, i32** %17, align 8
  %18 = icmp eq i32* %15, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  store i32 %20, i32* %2, align 4
  br label %91

21:                                               ; preds = %1
  %22 = load i64, i64* @is_sdio_mode, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32, i32* @mmcnull_action_sdio, align 4
  store i32 %25, i32* %5, align 4
  br label %28

26:                                               ; preds = %21
  %27 = load i32, i32* @mmcnull_action_sd, align 4
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @mmcnull_poll, align 4
  %31 = load %struct.mmcnull_softc*, %struct.mmcnull_softc** %4, align 8
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @device_get_unit(i32 %32)
  %34 = load %struct.mmcnull_softc*, %struct.mmcnull_softc** %4, align 8
  %35 = getelementptr inbounds %struct.mmcnull_softc, %struct.mmcnull_softc* %34, i32 0, i32 0
  %36 = load %struct.mmcnull_softc*, %struct.mmcnull_softc** %4, align 8
  %37 = getelementptr inbounds %struct.mmcnull_softc, %struct.mmcnull_softc* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = call i32* @cam_sim_alloc(i32 %29, i32 %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %struct.mmcnull_softc* %31, i32 %33, i32* %35, i32 1, i32 1, i32* %38)
  %40 = load %struct.mmcnull_softc*, %struct.mmcnull_softc** %4, align 8
  %41 = getelementptr inbounds %struct.mmcnull_softc, %struct.mmcnull_softc* %40, i32 0, i32 3
  store i32* %39, i32** %41, align 8
  %42 = load %struct.mmcnull_softc*, %struct.mmcnull_softc** %4, align 8
  %43 = getelementptr inbounds %struct.mmcnull_softc, %struct.mmcnull_softc* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %28
  %47 = load %struct.mmcnull_softc*, %struct.mmcnull_softc** %4, align 8
  %48 = getelementptr inbounds %struct.mmcnull_softc, %struct.mmcnull_softc* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @cam_simq_free(i32* %49)
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @device_printf(i32 %51, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i32, i32* @EINVAL, align 4
  store i32 %53, i32* %2, align 4
  br label %91

54:                                               ; preds = %28
  %55 = load %struct.mmcnull_softc*, %struct.mmcnull_softc** %4, align 8
  %56 = getelementptr inbounds %struct.mmcnull_softc, %struct.mmcnull_softc* %55, i32 0, i32 0
  %57 = call i32 @mtx_lock(i32* %56)
  %58 = load %struct.mmcnull_softc*, %struct.mmcnull_softc** %4, align 8
  %59 = getelementptr inbounds %struct.mmcnull_softc, %struct.mmcnull_softc* %58, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %3, align 4
  %62 = call i64 @xpt_bus_register(i32* %60, i32 %61, i32 0)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %80

64:                                               ; preds = %54
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @device_printf(i32 %65, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %67 = load %struct.mmcnull_softc*, %struct.mmcnull_softc** %4, align 8
  %68 = getelementptr inbounds %struct.mmcnull_softc, %struct.mmcnull_softc* %67, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* @FALSE, align 4
  %71 = call i32 @cam_sim_free(i32* %69, i32 %70)
  %72 = load %struct.mmcnull_softc*, %struct.mmcnull_softc** %4, align 8
  %73 = getelementptr inbounds %struct.mmcnull_softc, %struct.mmcnull_softc* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @cam_simq_free(i32* %74)
  %76 = load %struct.mmcnull_softc*, %struct.mmcnull_softc** %4, align 8
  %77 = getelementptr inbounds %struct.mmcnull_softc, %struct.mmcnull_softc* %76, i32 0, i32 0
  %78 = call i32 @mtx_unlock(i32* %77)
  %79 = load i32, i32* @EINVAL, align 4
  store i32 %79, i32* %2, align 4
  br label %91

80:                                               ; preds = %54
  %81 = load %struct.mmcnull_softc*, %struct.mmcnull_softc** %4, align 8
  %82 = getelementptr inbounds %struct.mmcnull_softc, %struct.mmcnull_softc* %81, i32 0, i32 0
  %83 = call i32 @mtx_unlock(i32* %82)
  %84 = load %struct.mmcnull_softc*, %struct.mmcnull_softc** %4, align 8
  %85 = getelementptr inbounds %struct.mmcnull_softc, %struct.mmcnull_softc* %84, i32 0, i32 1
  %86 = load %struct.mmcnull_softc*, %struct.mmcnull_softc** %4, align 8
  %87 = getelementptr inbounds %struct.mmcnull_softc, %struct.mmcnull_softc* %86, i32 0, i32 0
  %88 = call i32 @callout_init_mtx(i32* %85, i32* %87, i32 0)
  %89 = load i32, i32* %3, align 4
  %90 = call i32 @device_printf(i32 %89, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %91

91:                                               ; preds = %80, %64, %46, %19
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local %struct.mmcnull_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32* @cam_simq_alloc(i32) #1

declare dso_local i32* @cam_sim_alloc(i32, i32, i8*, %struct.mmcnull_softc*, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @cam_simq_free(i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @xpt_bus_register(i32*, i32, i32) #1

declare dso_local i32 @cam_sim_free(i32*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
