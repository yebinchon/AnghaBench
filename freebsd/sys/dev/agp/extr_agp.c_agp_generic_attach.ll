; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp.c_agp_generic_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp.c_agp_generic_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_softc = type { i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@AGP_APBASE = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@realmem = common dso_local global i32 0, align 4
@AGP_MAX_SIZE = common dso_local global i32 0, align 4
@agp_max = common dso_local global i32** null, align 8
@.str = private unnamed_addr constant [9 x i8] c"agp lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"agp\00", align 1
@agp_devclass = common dso_local global i32 0, align 4
@agp_cdevsw = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_WHEEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"agpgart\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @agp_generic_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.agp_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.agp_softc* @device_get_softc(i32 %7)
  store %struct.agp_softc* %8, %struct.agp_softc** %4, align 8
  %9 = load %struct.agp_softc*, %struct.agp_softc** %4, align 8
  %10 = getelementptr inbounds %struct.agp_softc, %struct.agp_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, -1
  br i1 %12, label %13, label %38

13:                                               ; preds = %1
  %14 = load %struct.agp_softc*, %struct.agp_softc** %4, align 8
  %15 = getelementptr inbounds %struct.agp_softc, %struct.agp_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load i32, i32* @AGP_APBASE, align 4
  %20 = load %struct.agp_softc*, %struct.agp_softc** %4, align 8
  %21 = getelementptr inbounds %struct.agp_softc, %struct.agp_softc* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  br label %22

22:                                               ; preds = %18, %13
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @SYS_RES_MEMORY, align 4
  %25 = load %struct.agp_softc*, %struct.agp_softc** %4, align 8
  %26 = getelementptr inbounds %struct.agp_softc, %struct.agp_softc* %25, i32 0, i32 0
  %27 = load i32, i32* @RF_SHAREABLE, align 4
  %28 = call i32 @bus_alloc_resource_any(i32 %23, i32 %24, i32* %26, i32 %27)
  %29 = load %struct.agp_softc*, %struct.agp_softc** %4, align 8
  %30 = getelementptr inbounds %struct.agp_softc, %struct.agp_softc* %29, i32 0, i32 6
  store i32 %28, i32* %30, align 8
  %31 = load %struct.agp_softc*, %struct.agp_softc** %4, align 8
  %32 = getelementptr inbounds %struct.agp_softc, %struct.agp_softc* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %22
  %36 = load i32, i32* @ENOMEM, align 4
  store i32 %36, i32* %2, align 4
  br label %99

37:                                               ; preds = %22
  br label %38

38:                                               ; preds = %37, %1
  %39 = load i32, i32* @realmem, align 4
  %40 = call i32 @ptoa(i32 %39)
  %41 = ashr i32 %40, 20
  store i32 %41, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %58, %38
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @AGP_MAX_SIZE, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %61

46:                                               ; preds = %42
  %47 = load i32, i32* %6, align 4
  %48 = load i32**, i32*** @agp_max, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32*, i32** %48, i64 %50
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ule i32 %47, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  br label %61

57:                                               ; preds = %46
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %42

61:                                               ; preds = %56, %42
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @AGP_MAX_SIZE, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load i32, i32* @AGP_MAX_SIZE, align 4
  %67 = sub nsw i32 %66, 1
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %65, %61
  %69 = load i32**, i32*** @agp_max, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32*, i32** %69, i64 %71
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  %75 = load i32, i32* %74, align 4
  %76 = shl i32 %75, 20
  %77 = load %struct.agp_softc*, %struct.agp_softc** %4, align 8
  %78 = getelementptr inbounds %struct.agp_softc, %struct.agp_softc* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load %struct.agp_softc*, %struct.agp_softc** %4, align 8
  %80 = getelementptr inbounds %struct.agp_softc, %struct.agp_softc* %79, i32 0, i32 5
  %81 = load i32, i32* @MTX_DEF, align 4
  %82 = call i32 @mtx_init(i32* %80, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* null, i32 %81)
  %83 = call i32 @devclass_find(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32 %83, i32* @agp_devclass, align 4
  %84 = load %struct.agp_softc*, %struct.agp_softc** %4, align 8
  %85 = getelementptr inbounds %struct.agp_softc, %struct.agp_softc* %84, i32 0, i32 4
  %86 = call i32 @TAILQ_INIT(i32* %85)
  %87 = load %struct.agp_softc*, %struct.agp_softc** %4, align 8
  %88 = getelementptr inbounds %struct.agp_softc, %struct.agp_softc* %87, i32 0, i32 2
  store i32 1, i32* %88, align 8
  %89 = load i32, i32* @UID_ROOT, align 4
  %90 = load i32, i32* @GID_WHEEL, align 4
  %91 = call %struct.TYPE_2__* @make_dev(i32* @agp_cdevsw, i32 0, i32 %89, i32 %90, i32 384, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %92 = load %struct.agp_softc*, %struct.agp_softc** %4, align 8
  %93 = getelementptr inbounds %struct.agp_softc, %struct.agp_softc* %92, i32 0, i32 3
  store %struct.TYPE_2__* %91, %struct.TYPE_2__** %93, align 8
  %94 = load i32, i32* %3, align 4
  %95 = load %struct.agp_softc*, %struct.agp_softc** %4, align 8
  %96 = getelementptr inbounds %struct.agp_softc, %struct.agp_softc* %95, i32 0, i32 3
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  store i32 %94, i32* %98, align 4
  store i32 0, i32* %2, align 4
  br label %99

99:                                               ; preds = %68, %35
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local %struct.agp_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @ptoa(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @devclass_find(i8*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local %struct.TYPE_2__* @make_dev(i32*, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
