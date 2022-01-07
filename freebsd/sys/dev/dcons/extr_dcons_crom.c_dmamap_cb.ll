; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dcons/extr_dcons_crom.c_dmamap_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dcons/extr_dcons_crom.c_dmamap_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.dcons_crom_softc = type { i64, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"dcons_dmamap_cb: error=%d\0A\00", align 1
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"bus_addr 0x%jx\0A\00", align 1
@dcons_paddr = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"dcons_paddr is already set\0A\00", align 1
@dcons_conf = common dso_local global %struct.TYPE_7__* null, align 8
@force_console = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_6__*, i32, i32)* @dmamap_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmamap_cb(i8* %0, %struct.TYPE_6__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dcons_crom_softc*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %13)
  br label %15

15:                                               ; preds = %12, %4
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to %struct.dcons_crom_softc*
  store %struct.dcons_crom_softc* %17, %struct.dcons_crom_softc** %9, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i64 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.dcons_crom_softc*, %struct.dcons_crom_softc** %9, align 8
  %23 = getelementptr inbounds %struct.dcons_crom_softc, %struct.dcons_crom_softc* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load %struct.dcons_crom_softc*, %struct.dcons_crom_softc** %9, align 8
  %25 = getelementptr inbounds %struct.dcons_crom_softc, %struct.dcons_crom_softc* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.dcons_crom_softc*, %struct.dcons_crom_softc** %9, align 8
  %28 = getelementptr inbounds %struct.dcons_crom_softc, %struct.dcons_crom_softc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %31 = call i32 @bus_dmamap_sync(i32 %26, i32 %29, i32 %30)
  %32 = load %struct.dcons_crom_softc*, %struct.dcons_crom_softc** %9, align 8
  %33 = getelementptr inbounds %struct.dcons_crom_softc, %struct.dcons_crom_softc* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.dcons_crom_softc*, %struct.dcons_crom_softc** %9, align 8
  %37 = getelementptr inbounds %struct.dcons_crom_softc, %struct.dcons_crom_softc* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = call i32 (i32, i8*, ...) @device_printf(i32 %35, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load i64, i64* @dcons_paddr, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %15
  %44 = load %struct.dcons_crom_softc*, %struct.dcons_crom_softc** %9, align 8
  %45 = getelementptr inbounds %struct.dcons_crom_softc, %struct.dcons_crom_softc* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 (i32, i8*, ...) @device_printf(i32 %47, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %70

49:                                               ; preds = %15
  %50 = load %struct.dcons_crom_softc*, %struct.dcons_crom_softc** %9, align 8
  %51 = getelementptr inbounds %struct.dcons_crom_softc, %struct.dcons_crom_softc* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** @dcons_conf, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load %struct.dcons_crom_softc*, %struct.dcons_crom_softc** %9, align 8
  %56 = getelementptr inbounds %struct.dcons_crom_softc, %struct.dcons_crom_softc* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** @dcons_conf, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.dcons_crom_softc*, %struct.dcons_crom_softc** %9, align 8
  %61 = getelementptr inbounds %struct.dcons_crom_softc, %struct.dcons_crom_softc* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* @dcons_paddr, align 8
  %63 = load i64, i64* @force_console, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %49
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** @dcons_conf, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @cnselect(i32 %68)
  br label %70

70:                                               ; preds = %43, %65, %49
  ret void
}

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @cnselect(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
