; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/beri/virtio/extr_virtio_block.c_beri_vtblk_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/beri/virtio/extr_virtio_block.c_beri_vtblk_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beri_vtblk_softc = type { %struct.TYPE_2__*, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32 }
%struct.TYPE_2__ = type { %struct.beri_vtblk_softc* }

@beri_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not allocate resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@vtblk_thread = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"beri_virtio_block\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"cannot create kthread\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"pio-send\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"pio-recv\00", align 1
@beri_cdevsw = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_WHEEL = common dso_local global i32 0, align 4
@S_IRWXU = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"beri_vtblk\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Failed to create character device.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @beri_vtblk_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @beri_vtblk_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.beri_vtblk_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.beri_vtblk_softc* @device_get_softc(i32 %6)
  store %struct.beri_vtblk_softc* %7, %struct.beri_vtblk_softc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.beri_vtblk_softc*, %struct.beri_vtblk_softc** %4, align 8
  %10 = getelementptr inbounds %struct.beri_vtblk_softc, %struct.beri_vtblk_softc* %9, i32 0, i32 5
  store i32 %8, i32* %10, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @beri_spec, align 4
  %13 = load %struct.beri_vtblk_softc*, %struct.beri_vtblk_softc** %4, align 8
  %14 = getelementptr inbounds %struct.beri_vtblk_softc, %struct.beri_vtblk_softc* %13, i32 0, i32 8
  %15 = load i32*, i32** %14, align 8
  %16 = call i64 @bus_alloc_resources(i32 %11, i32 %12, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @device_printf(i32 %19, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENXIO, align 4
  store i32 %21, i32* %2, align 4
  br label %109

22:                                               ; preds = %1
  %23 = load %struct.beri_vtblk_softc*, %struct.beri_vtblk_softc** %4, align 8
  %24 = getelementptr inbounds %struct.beri_vtblk_softc, %struct.beri_vtblk_softc* %23, i32 0, i32 8
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @rman_get_bustag(i32 %27)
  %29 = load %struct.beri_vtblk_softc*, %struct.beri_vtblk_softc** %4, align 8
  %30 = getelementptr inbounds %struct.beri_vtblk_softc, %struct.beri_vtblk_softc* %29, i32 0, i32 10
  store i32 %28, i32* %30, align 4
  %31 = load %struct.beri_vtblk_softc*, %struct.beri_vtblk_softc** %4, align 8
  %32 = getelementptr inbounds %struct.beri_vtblk_softc, %struct.beri_vtblk_softc* %31, i32 0, i32 8
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @rman_get_bushandle(i32 %35)
  %37 = load %struct.beri_vtblk_softc*, %struct.beri_vtblk_softc** %4, align 8
  %38 = getelementptr inbounds %struct.beri_vtblk_softc, %struct.beri_vtblk_softc* %37, i32 0, i32 9
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* @M_DEVBUF, align 4
  %40 = load i32, i32* @M_NOWAIT, align 4
  %41 = load i32, i32* @M_ZERO, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @malloc(i32 4, i32 %39, i32 %42)
  %44 = load %struct.beri_vtblk_softc*, %struct.beri_vtblk_softc** %4, align 8
  %45 = getelementptr inbounds %struct.beri_vtblk_softc, %struct.beri_vtblk_softc* %44, i32 0, i32 7
  store i32 %43, i32* %45, align 8
  %46 = load %struct.beri_vtblk_softc*, %struct.beri_vtblk_softc** %4, align 8
  %47 = getelementptr inbounds %struct.beri_vtblk_softc, %struct.beri_vtblk_softc* %46, i32 0, i32 6
  %48 = load %struct.beri_vtblk_softc*, %struct.beri_vtblk_softc** %4, align 8
  %49 = getelementptr inbounds %struct.beri_vtblk_softc, %struct.beri_vtblk_softc* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @device_get_nameunit(i32 %50)
  %52 = call i32 @sx_init(i32* %47, i32 %51)
  %53 = load i32, i32* @vtblk_thread, align 4
  %54 = load %struct.beri_vtblk_softc*, %struct.beri_vtblk_softc** %4, align 8
  %55 = load %struct.beri_vtblk_softc*, %struct.beri_vtblk_softc** %4, align 8
  %56 = getelementptr inbounds %struct.beri_vtblk_softc, %struct.beri_vtblk_softc* %55, i32 0, i32 4
  %57 = call i32 @kthread_add(i32 %53, %struct.beri_vtblk_softc* %54, i32* null, i32* %56, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %22
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @device_printf(i32 %61, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %63 = load i32, i32* @ENXIO, align 4
  store i32 %63, i32* %2, align 4
  br label %109

64:                                               ; preds = %22
  %65 = load i32, i32* %3, align 4
  %66 = load %struct.beri_vtblk_softc*, %struct.beri_vtblk_softc** %4, align 8
  %67 = getelementptr inbounds %struct.beri_vtblk_softc, %struct.beri_vtblk_softc* %66, i32 0, i32 3
  %68 = call i64 @setup_offset(i32 %65, i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = load i32, i32* @ENXIO, align 4
  store i32 %71, i32* %2, align 4
  br label %109

72:                                               ; preds = %64
  %73 = load i32, i32* %3, align 4
  %74 = load %struct.beri_vtblk_softc*, %struct.beri_vtblk_softc** %4, align 8
  %75 = getelementptr inbounds %struct.beri_vtblk_softc, %struct.beri_vtblk_softc* %74, i32 0, i32 2
  %76 = call i64 @setup_pio(i32 %73, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = load i32, i32* @ENXIO, align 4
  store i32 %79, i32* %2, align 4
  br label %109

80:                                               ; preds = %72
  %81 = load i32, i32* %3, align 4
  %82 = load %struct.beri_vtblk_softc*, %struct.beri_vtblk_softc** %4, align 8
  %83 = getelementptr inbounds %struct.beri_vtblk_softc, %struct.beri_vtblk_softc* %82, i32 0, i32 1
  %84 = call i64 @setup_pio(i32 %81, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %80
  %87 = load i32, i32* @ENXIO, align 4
  store i32 %87, i32* %2, align 4
  br label %109

88:                                               ; preds = %80
  %89 = load i32, i32* @UID_ROOT, align 4
  %90 = load i32, i32* @GID_WHEEL, align 4
  %91 = load i32, i32* @S_IRWXU, align 4
  %92 = call %struct.TYPE_2__* @make_dev(i32* @beri_cdevsw, i32 0, i32 %89, i32 %90, i32 %91, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %93 = load %struct.beri_vtblk_softc*, %struct.beri_vtblk_softc** %4, align 8
  %94 = getelementptr inbounds %struct.beri_vtblk_softc, %struct.beri_vtblk_softc* %93, i32 0, i32 0
  store %struct.TYPE_2__* %92, %struct.TYPE_2__** %94, align 8
  %95 = load %struct.beri_vtblk_softc*, %struct.beri_vtblk_softc** %4, align 8
  %96 = getelementptr inbounds %struct.beri_vtblk_softc, %struct.beri_vtblk_softc* %95, i32 0, i32 0
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = icmp eq %struct.TYPE_2__* %97, null
  br i1 %98, label %99, label %103

99:                                               ; preds = %88
  %100 = load i32, i32* %3, align 4
  %101 = call i32 @device_printf(i32 %100, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %102 = load i32, i32* @ENXIO, align 4
  store i32 %102, i32* %2, align 4
  br label %109

103:                                              ; preds = %88
  %104 = load %struct.beri_vtblk_softc*, %struct.beri_vtblk_softc** %4, align 8
  %105 = load %struct.beri_vtblk_softc*, %struct.beri_vtblk_softc** %4, align 8
  %106 = getelementptr inbounds %struct.beri_vtblk_softc, %struct.beri_vtblk_softc* %105, i32 0, i32 0
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  store %struct.beri_vtblk_softc* %104, %struct.beri_vtblk_softc** %108, align 8
  store i32 0, i32* %2, align 4
  br label %109

109:                                              ; preds = %103, %99, %86, %78, %70, %60, %18
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local %struct.beri_vtblk_softc* @device_get_softc(i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @rman_get_bustag(i32) #1

declare dso_local i32 @rman_get_bushandle(i32) #1

declare dso_local i32 @malloc(i32, i32, i32) #1

declare dso_local i32 @sx_init(i32*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @kthread_add(i32, %struct.beri_vtblk_softc*, i32*, i32*, i32, i32, i8*) #1

declare dso_local i64 @setup_offset(i32, i32*) #1

declare dso_local i64 @setup_pio(i32, i8*, i32*) #1

declare dso_local %struct.TYPE_2__* @make_dev(i32*, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
