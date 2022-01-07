; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_creator.c_creator_fill_rect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_creator.c_creator_fill_rect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.creator_softc = type { i32 }

@FFB_FBC = common dso_local global i32 0, align 4
@FFB_FBC_ROP = common dso_local global i32 0, align 4
@FBC_ROP_NEW = common dso_local global i32 0, align 4
@FFB_FBC_DRAWOP = common dso_local global i32 0, align 4
@FBC_DRAWOP_RECTANGLE = common dso_local global i32 0, align 4
@creator_cmap = common dso_local global i32* null, align 8
@FFB_FBC_BY = common dso_local global i32 0, align 4
@FFB_FBC_BX = common dso_local global i32 0, align 4
@FFB_FBC_BH = common dso_local global i32 0, align 4
@FFB_FBC_BW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32, i32, i32)* @creator_fill_rect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @creator_fill_rect(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.creator_softc*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = bitcast i32* %14 to %struct.creator_softc*
  store %struct.creator_softc* %15, %struct.creator_softc** %13, align 8
  %16 = load %struct.creator_softc*, %struct.creator_softc** %13, align 8
  %17 = call i32 @creator_ras_setpmask(%struct.creator_softc* %16, i32 -1)
  %18 = load %struct.creator_softc*, %struct.creator_softc** %13, align 8
  %19 = call i32 @creator_ras_fifo_wait(%struct.creator_softc* %18, i32 2)
  %20 = load %struct.creator_softc*, %struct.creator_softc** %13, align 8
  %21 = load i32, i32* @FFB_FBC, align 4
  %22 = load i32, i32* @FFB_FBC_ROP, align 4
  %23 = load i32, i32* @FBC_ROP_NEW, align 4
  %24 = call i32 @FFB_WRITE(%struct.creator_softc* %20, i32 %21, i32 %22, i32 %23)
  %25 = load %struct.creator_softc*, %struct.creator_softc** %13, align 8
  %26 = load i32, i32* @FFB_FBC, align 4
  %27 = load i32, i32* @FFB_FBC_DRAWOP, align 4
  %28 = load i32, i32* @FBC_DRAWOP_RECTANGLE, align 4
  %29 = call i32 @FFB_WRITE(%struct.creator_softc* %25, i32 %26, i32 %27, i32 %28)
  %30 = load %struct.creator_softc*, %struct.creator_softc** %13, align 8
  %31 = load i32*, i32** @creator_cmap, align 8
  %32 = load i32, i32* %8, align 4
  %33 = and i32 %32, 15
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @creator_ras_setfg(%struct.creator_softc* %30, i32 %36)
  %38 = load %struct.creator_softc*, %struct.creator_softc** %13, align 8
  %39 = call i32 @creator_ras_fifo_wait(%struct.creator_softc* %38, i32 4)
  %40 = load %struct.creator_softc*, %struct.creator_softc** %13, align 8
  %41 = load i32, i32* @FFB_FBC, align 4
  %42 = load i32, i32* @FFB_FBC_BY, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @FFB_WRITE(%struct.creator_softc* %40, i32 %41, i32 %42, i32 %43)
  %45 = load %struct.creator_softc*, %struct.creator_softc** %13, align 8
  %46 = load i32, i32* @FFB_FBC, align 4
  %47 = load i32, i32* @FFB_FBC_BX, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @FFB_WRITE(%struct.creator_softc* %45, i32 %46, i32 %47, i32 %48)
  %50 = load %struct.creator_softc*, %struct.creator_softc** %13, align 8
  %51 = load i32, i32* @FFB_FBC, align 4
  %52 = load i32, i32* @FFB_FBC_BH, align 4
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @FFB_WRITE(%struct.creator_softc* %50, i32 %51, i32 %52, i32 %53)
  %55 = load %struct.creator_softc*, %struct.creator_softc** %13, align 8
  %56 = load i32, i32* @FFB_FBC, align 4
  %57 = load i32, i32* @FFB_FBC_BW, align 4
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @FFB_WRITE(%struct.creator_softc* %55, i32 %56, i32 %57, i32 %58)
  %60 = load %struct.creator_softc*, %struct.creator_softc** %13, align 8
  %61 = call i32 @creator_ras_wait(%struct.creator_softc* %60)
  ret i32 0
}

declare dso_local i32 @creator_ras_setpmask(%struct.creator_softc*, i32) #1

declare dso_local i32 @creator_ras_fifo_wait(%struct.creator_softc*, i32) #1

declare dso_local i32 @FFB_WRITE(%struct.creator_softc*, i32, i32, i32) #1

declare dso_local i32 @creator_ras_setfg(%struct.creator_softc*, i32) #1

declare dso_local i32 @creator_ras_wait(%struct.creator_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
