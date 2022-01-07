; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_lcd.c_jzlcd_allocfb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_lcd.c_jzlcd_allocfb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jzlcd_softc = type { i64, i32, i32, i32 }

@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@FB_ALIGN = common dso_local global i32 0, align 4
@VM_MEMATTR_WRITE_COMBINING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to allocate FB memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jzlcd_softc*)* @jzlcd_allocfb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jzlcd_allocfb(%struct.jzlcd_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.jzlcd_softc*, align 8
  store %struct.jzlcd_softc* %0, %struct.jzlcd_softc** %3, align 8
  %4 = load %struct.jzlcd_softc*, %struct.jzlcd_softc** %3, align 8
  %5 = getelementptr inbounds %struct.jzlcd_softc, %struct.jzlcd_softc* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @M_NOWAIT, align 4
  %8 = load i32, i32* @M_ZERO, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @FB_ALIGN, align 4
  %11 = load i32, i32* @VM_MEMATTR_WRITE_COMBINING, align 4
  %12 = call i64 @kmem_alloc_contig(i32 %6, i32 %9, i32 0, i32 -1, i32 %10, i32 0, i32 %11)
  %13 = load %struct.jzlcd_softc*, %struct.jzlcd_softc** %3, align 8
  %14 = getelementptr inbounds %struct.jzlcd_softc, %struct.jzlcd_softc* %13, i32 0, i32 0
  store i64 %12, i64* %14, align 8
  %15 = load %struct.jzlcd_softc*, %struct.jzlcd_softc** %3, align 8
  %16 = getelementptr inbounds %struct.jzlcd_softc, %struct.jzlcd_softc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.jzlcd_softc*, %struct.jzlcd_softc** %3, align 8
  %21 = getelementptr inbounds %struct.jzlcd_softc, %struct.jzlcd_softc* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @device_printf(i32 %22, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @ENOMEM, align 4
  store i32 %24, i32* %2, align 4
  br label %32

25:                                               ; preds = %1
  %26 = load %struct.jzlcd_softc*, %struct.jzlcd_softc** %3, align 8
  %27 = getelementptr inbounds %struct.jzlcd_softc, %struct.jzlcd_softc* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @pmap_kextract(i64 %28)
  %30 = load %struct.jzlcd_softc*, %struct.jzlcd_softc** %3, align 8
  %31 = getelementptr inbounds %struct.jzlcd_softc, %struct.jzlcd_softc* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %25, %19
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i64 @kmem_alloc_contig(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @pmap_kextract(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
