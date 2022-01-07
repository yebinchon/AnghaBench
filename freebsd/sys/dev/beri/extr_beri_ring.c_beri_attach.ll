; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/beri/extr_beri_ring.c_beri_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/beri/extr_beri_ring.c_beri_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beri_softc = type { i32, %struct.TYPE_3__, %struct.TYPE_4__*, i32, i32, i32*, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.beri_softc* }

@beri_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not allocate resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Can't get FDT values\0A\00", align 1
@beri_cdevsw = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_WHEEL = common dso_local global i32 0, align 4
@S_IRWXU = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Failed to create character device.\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"beri_mtx\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @beri_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @beri_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.beri_softc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.beri_softc* @device_get_softc(i32 %5)
  store %struct.beri_softc* %6, %struct.beri_softc** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.beri_softc*, %struct.beri_softc** %4, align 8
  %9 = getelementptr inbounds %struct.beri_softc, %struct.beri_softc* %8, i32 0, i32 4
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @beri_spec, align 4
  %12 = load %struct.beri_softc*, %struct.beri_softc** %4, align 8
  %13 = getelementptr inbounds %struct.beri_softc, %struct.beri_softc* %12, i32 0, i32 5
  %14 = load i32*, i32** %13, align 8
  %15 = call i64 @bus_alloc_resources(i32 %10, i32 %11, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @device_printf(i32 %18, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENXIO, align 4
  store i32 %20, i32* %2, align 4
  br label %81

21:                                               ; preds = %1
  %22 = load %struct.beri_softc*, %struct.beri_softc** %4, align 8
  %23 = getelementptr inbounds %struct.beri_softc, %struct.beri_softc* %22, i32 0, i32 5
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @rman_get_bustag(i32 %26)
  %28 = load %struct.beri_softc*, %struct.beri_softc** %4, align 8
  %29 = getelementptr inbounds %struct.beri_softc, %struct.beri_softc* %28, i32 0, i32 7
  store i32 %27, i32* %29, align 4
  %30 = load %struct.beri_softc*, %struct.beri_softc** %4, align 8
  %31 = getelementptr inbounds %struct.beri_softc, %struct.beri_softc* %30, i32 0, i32 5
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @rman_get_bushandle(i32 %34)
  %36 = load %struct.beri_softc*, %struct.beri_softc** %4, align 8
  %37 = getelementptr inbounds %struct.beri_softc, %struct.beri_softc* %36, i32 0, i32 6
  store i32 %35, i32* %37, align 8
  %38 = load %struct.beri_softc*, %struct.beri_softc** %4, align 8
  %39 = call i64 @parse_fdt(%struct.beri_softc* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %21
  %42 = load %struct.beri_softc*, %struct.beri_softc** %4, align 8
  %43 = getelementptr inbounds %struct.beri_softc, %struct.beri_softc* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @device_printf(i32 %44, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @ENXIO, align 4
  store i32 %46, i32* %2, align 4
  br label %81

47:                                               ; preds = %21
  %48 = load i32, i32* @UID_ROOT, align 4
  %49 = load i32, i32* @GID_WHEEL, align 4
  %50 = load i32, i32* @S_IRWXU, align 4
  %51 = load %struct.beri_softc*, %struct.beri_softc** %4, align 8
  %52 = getelementptr inbounds %struct.beri_softc, %struct.beri_softc* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = call %struct.TYPE_4__* @make_dev(i32* @beri_cdevsw, i32 0, i32 %48, i32 %49, i32 %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  %55 = load %struct.beri_softc*, %struct.beri_softc** %4, align 8
  %56 = getelementptr inbounds %struct.beri_softc, %struct.beri_softc* %55, i32 0, i32 2
  store %struct.TYPE_4__* %54, %struct.TYPE_4__** %56, align 8
  %57 = load %struct.beri_softc*, %struct.beri_softc** %4, align 8
  %58 = getelementptr inbounds %struct.beri_softc, %struct.beri_softc* %57, i32 0, i32 2
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = icmp eq %struct.TYPE_4__* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %47
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @device_printf(i32 %62, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %64 = load i32, i32* @ENXIO, align 4
  store i32 %64, i32* %2, align 4
  br label %81

65:                                               ; preds = %47
  %66 = load %struct.beri_softc*, %struct.beri_softc** %4, align 8
  %67 = load %struct.beri_softc*, %struct.beri_softc** %4, align 8
  %68 = getelementptr inbounds %struct.beri_softc, %struct.beri_softc* %67, i32 0, i32 2
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  store %struct.beri_softc* %66, %struct.beri_softc** %70, align 8
  %71 = load %struct.beri_softc*, %struct.beri_softc** %4, align 8
  %72 = getelementptr inbounds %struct.beri_softc, %struct.beri_softc* %71, i32 0, i32 0
  %73 = load i32, i32* @MTX_DEF, align 4
  %74 = call i32 @mtx_init(i32* %72, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32* null, i32 %73)
  %75 = load %struct.beri_softc*, %struct.beri_softc** %4, align 8
  %76 = getelementptr inbounds %struct.beri_softc, %struct.beri_softc* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load %struct.beri_softc*, %struct.beri_softc** %4, align 8
  %79 = getelementptr inbounds %struct.beri_softc, %struct.beri_softc* %78, i32 0, i32 0
  %80 = call i32 @knlist_init_mtx(i32* %77, i32* %79)
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %65, %61, %41, %17
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local %struct.beri_softc* @device_get_softc(i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @rman_get_bustag(i32) #1

declare dso_local i32 @rman_get_bushandle(i32) #1

declare dso_local i64 @parse_fdt(%struct.beri_softc*) #1

declare dso_local %struct.TYPE_4__* @make_dev(i32*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @knlist_init_mtx(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
