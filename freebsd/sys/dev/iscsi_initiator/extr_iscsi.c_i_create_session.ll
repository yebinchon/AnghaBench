; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iscsi_initiator/extr_iscsi.c_i_create_session.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iscsi_initiator/extr_iscsi.c_i_create_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.cdev = type { %struct.isc_softc* }
%struct.isc_softc = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__, %struct.TYPE_11__*, %struct.isc_softc* }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__*, %struct.isc_softc* }

@M_ISCSI = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"too many sessions!\00", align 1
@EPERM = common dso_local global i32 0, align 4
@sp_link = common dso_local global i32 0, align 4
@isc = common dso_local global %struct.TYPE_12__* null, align 8
@iscsi_cdevsw = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_WHEEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"iscsi%d\00", align 1
@ISCSI_MAX_LUNS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32*)* @i_create_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i_create_session(%struct.cdev* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cdev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.isc_softc*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.cdev*, %struct.cdev** %4, align 8
  %11 = getelementptr inbounds %struct.cdev, %struct.cdev* %10, i32 0, i32 0
  %12 = load %struct.isc_softc*, %struct.isc_softc** %11, align 8
  store %struct.isc_softc* %12, %struct.isc_softc** %6, align 8
  %13 = call i32 @debug_called(i32 8)
  %14 = load i32, i32* @M_ISCSI, align 4
  %15 = load i32, i32* @M_WAITOK, align 4
  %16 = load i32, i32* @M_ZERO, align 4
  %17 = or i32 %15, %16
  %18 = call %struct.TYPE_10__* @malloc(i32 40, i32 %14, i32 %17)
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %7, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %20 = icmp eq %struct.TYPE_10__* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOMEM, align 4
  store i32 %22, i32* %3, align 4
  br label %100

23:                                               ; preds = %2
  %24 = load %struct.isc_softc*, %struct.isc_softc** %6, align 8
  %25 = getelementptr inbounds %struct.isc_softc, %struct.isc_softc* %24, i32 0, i32 2
  %26 = call i32 @sx_xlock(i32* %25)
  %27 = load %struct.isc_softc*, %struct.isc_softc** %6, align 8
  %28 = getelementptr inbounds %struct.isc_softc, %struct.isc_softc* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @alloc_unr(i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %23
  %33 = load %struct.isc_softc*, %struct.isc_softc** %6, align 8
  %34 = getelementptr inbounds %struct.isc_softc, %struct.isc_softc* %33, i32 0, i32 2
  %35 = call i32 @sx_unlock(i32* %34)
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %37 = load i32, i32* @M_ISCSI, align 4
  %38 = call i32 @free(%struct.TYPE_10__* %36, i32 %37)
  %39 = call i32 @xdebug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @EPERM, align 4
  store i32 %40, i32* %3, align 4
  br label %100

41:                                               ; preds = %23
  %42 = load %struct.isc_softc*, %struct.isc_softc** %6, align 8
  %43 = getelementptr inbounds %struct.isc_softc, %struct.isc_softc* %42, i32 0, i32 2
  %44 = call i32 @sx_unlock(i32* %43)
  %45 = load %struct.isc_softc*, %struct.isc_softc** %6, align 8
  %46 = getelementptr inbounds %struct.isc_softc, %struct.isc_softc* %45, i32 0, i32 0
  %47 = call i32 @mtx_lock(i32* %46)
  %48 = load %struct.isc_softc*, %struct.isc_softc** %6, align 8
  %49 = getelementptr inbounds %struct.isc_softc, %struct.isc_softc* %48, i32 0, i32 1
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %51 = load i32, i32* @sp_link, align 4
  %52 = call i32 @TAILQ_INSERT_TAIL(i32* %49, %struct.TYPE_10__* %50, i32 %51)
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** @isc, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  %57 = load %struct.isc_softc*, %struct.isc_softc** %6, align 8
  %58 = getelementptr inbounds %struct.isc_softc, %struct.isc_softc* %57, i32 0, i32 0
  %59 = call i32 @mtx_unlock(i32* %58)
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @UID_ROOT, align 4
  %62 = load i32, i32* @GID_WHEEL, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call %struct.TYPE_11__* @make_dev(i32* @iscsi_cdevsw, i32 %60, i32 %61, i32 %62, i32 384, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 2
  store %struct.TYPE_11__* %64, %struct.TYPE_11__** %66, align 8
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load i32*, i32** %5, align 8
  store i32 %67, i32* %70, align 4
  %71 = load %struct.isc_softc*, %struct.isc_softc** %6, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 3
  store %struct.isc_softc* %71, %struct.isc_softc** %73, align 8
  %74 = load %struct.isc_softc*, %struct.isc_softc** %6, align 8
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 1
  store %struct.isc_softc* %74, %struct.isc_softc** %78, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 2
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  store %struct.TYPE_10__* %79, %struct.TYPE_10__** %83, align 8
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  store i32 8192, i32* %86, align 4
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 1
  store i32 8192, i32* %89, align 4
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 2
  store i32 65536, i32* %92, align 4
  %93 = load i32, i32* @ISCSI_MAX_LUNS, align 4
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 3
  store i32 %93, i32* %96, align 4
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %98 = call i32 @ism_start(%struct.TYPE_10__* %97)
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %8, align 4
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %41, %32, %21
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local %struct.TYPE_10__* @malloc(i32, i32, i32) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @alloc_unr(i32) #1

declare dso_local i32 @sx_unlock(i32*) #1

declare dso_local i32 @free(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @xdebug(i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local %struct.TYPE_11__* @make_dev(i32*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @ism_start(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
