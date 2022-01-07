; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_creator.c_creator_putm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_creator.c_creator_putm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.creator_softc = type { i32, i32, i32 }

@CREATOR_CUREN = common dso_local global i32 0, align 4
@FFB_DAC = common dso_local global i32 0, align 4
@FFB_DAC_TYPE2 = common dso_local global i32 0, align 4
@FFB_DAC_CUR_POS = common dso_local global i32 0, align 4
@FFB_DAC_VALUE2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32*, i32, i32, i32)* @creator_putm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @creator_putm(i32* %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.creator_softc*, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %16 = load i32*, i32** %8, align 8
  %17 = bitcast i32* %16 to %struct.creator_softc*
  store %struct.creator_softc* %17, %struct.creator_softc** %15, align 8
  %18 = load %struct.creator_softc*, %struct.creator_softc** %15, align 8
  %19 = getelementptr inbounds %struct.creator_softc, %struct.creator_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @CREATOR_CUREN, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %7
  %25 = load %struct.creator_softc*, %struct.creator_softc** %15, align 8
  %26 = call i32 @creator_cursor_install(%struct.creator_softc* %25)
  %27 = load %struct.creator_softc*, %struct.creator_softc** %15, align 8
  %28 = call i32 @creator_cursor_enable(%struct.creator_softc* %27, i32 1)
  %29 = load i32, i32* @CREATOR_CUREN, align 4
  %30 = load %struct.creator_softc*, %struct.creator_softc** %15, align 8
  %31 = getelementptr inbounds %struct.creator_softc, %struct.creator_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %24, %7
  %35 = load %struct.creator_softc*, %struct.creator_softc** %15, align 8
  %36 = load i32, i32* @FFB_DAC, align 4
  %37 = load i32, i32* @FFB_DAC_TYPE2, align 4
  %38 = load i32, i32* @FFB_DAC_CUR_POS, align 4
  %39 = call i32 @FFB_WRITE(%struct.creator_softc* %35, i32 %36, i32 %37, i32 %38)
  %40 = load %struct.creator_softc*, %struct.creator_softc** %15, align 8
  %41 = load i32, i32* @FFB_DAC, align 4
  %42 = load i32, i32* @FFB_DAC_VALUE2, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.creator_softc*, %struct.creator_softc** %15, align 8
  %45 = getelementptr inbounds %struct.creator_softc, %struct.creator_softc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %43, %46
  %48 = shl i32 %47, 16
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.creator_softc*, %struct.creator_softc** %15, align 8
  %51 = getelementptr inbounds %struct.creator_softc, %struct.creator_softc* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %49, %52
  %54 = or i32 %48, %53
  %55 = call i32 @FFB_WRITE(%struct.creator_softc* %40, i32 %41, i32 %42, i32 %54)
  ret i32 0
}

declare dso_local i32 @creator_cursor_install(%struct.creator_softc*) #1

declare dso_local i32 @creator_cursor_enable(%struct.creator_softc*, i32) #1

declare dso_local i32 @FFB_WRITE(%struct.creator_softc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
