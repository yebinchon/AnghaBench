; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/ps3/extr_ps3pic.c_ps3pic_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/ps3/extr_ps3pic.c_ps3pic_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps3pic_softc = type { i32, i32*, i64, i64, i64, i64 }

@M_PS3PIC = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ps3pic_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ps3pic_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ps3pic_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.ps3pic_softc* @device_get_softc(i32 %6)
  store %struct.ps3pic_softc* %7, %struct.ps3pic_softc** %3, align 8
  %8 = load i32, i32* @M_PS3PIC, align 4
  %9 = load i32, i32* @M_NOWAIT, align 4
  %10 = load i32, i32* @M_ZERO, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %13 = load i32, i32* @PAGE_SIZE, align 4
  %14 = call i64 @contigmalloc(i32 128, i32 %8, i32 %11, i32 0, i32 %12, i32 64, i32 %13)
  %15 = load %struct.ps3pic_softc*, %struct.ps3pic_softc** %3, align 8
  %16 = getelementptr inbounds %struct.ps3pic_softc, %struct.ps3pic_softc* %15, i32 0, i32 3
  store i64 %14, i64* %16, align 8
  %17 = load %struct.ps3pic_softc*, %struct.ps3pic_softc** %3, align 8
  %18 = getelementptr inbounds %struct.ps3pic_softc, %struct.ps3pic_softc* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, 4
  %21 = load %struct.ps3pic_softc*, %struct.ps3pic_softc** %3, align 8
  %22 = getelementptr inbounds %struct.ps3pic_softc, %struct.ps3pic_softc* %21, i32 0, i32 5
  store i64 %20, i64* %22, align 8
  %23 = load %struct.ps3pic_softc*, %struct.ps3pic_softc** %3, align 8
  %24 = getelementptr inbounds %struct.ps3pic_softc, %struct.ps3pic_softc* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, 8
  %27 = load %struct.ps3pic_softc*, %struct.ps3pic_softc** %3, align 8
  %28 = getelementptr inbounds %struct.ps3pic_softc, %struct.ps3pic_softc* %27, i32 0, i32 2
  store i64 %26, i64* %28, align 8
  %29 = load %struct.ps3pic_softc*, %struct.ps3pic_softc** %3, align 8
  %30 = getelementptr inbounds %struct.ps3pic_softc, %struct.ps3pic_softc* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 12
  %33 = load %struct.ps3pic_softc*, %struct.ps3pic_softc** %3, align 8
  %34 = getelementptr inbounds %struct.ps3pic_softc, %struct.ps3pic_softc* %33, i32 0, i32 4
  store i64 %32, i64* %34, align 8
  %35 = call i32 @lv1_get_logical_ppe_id(i32* %4)
  %36 = call i32 (...) @mfctrl()
  %37 = call i32 @fls(i32 %36)
  %38 = sub nsw i32 32, %37
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.ps3pic_softc*, %struct.ps3pic_softc** %3, align 8
  %42 = getelementptr inbounds %struct.ps3pic_softc, %struct.ps3pic_softc* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @vtophys(i64 %43)
  %45 = call i32 @lv1_configure_irq_state_bitmap(i32 %39, i32 %40, i32 %44)
  %46 = load %struct.ps3pic_softc*, %struct.ps3pic_softc** %3, align 8
  %47 = getelementptr inbounds %struct.ps3pic_softc, %struct.ps3pic_softc* %46, i32 0, i32 0
  store i32 63, i32* %47, align 8
  %48 = load i32, i32* %2, align 4
  %49 = load %struct.ps3pic_softc*, %struct.ps3pic_softc** %3, align 8
  %50 = getelementptr inbounds %struct.ps3pic_softc, %struct.ps3pic_softc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @FALSE, align 4
  %53 = call i32 @powerpc_register_pic(i32 %48, i32 0, i32 %51, i32 1, i32 %52)
  ret i32 0
}

declare dso_local %struct.ps3pic_softc* @device_get_softc(i32) #1

declare dso_local i64 @contigmalloc(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @lv1_get_logical_ppe_id(i32*) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @mfctrl(...) #1

declare dso_local i32 @lv1_configure_irq_state_bitmap(i32, i32, i32) #1

declare dso_local i32 @vtophys(i64) #1

declare dso_local i32 @powerpc_register_pic(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
