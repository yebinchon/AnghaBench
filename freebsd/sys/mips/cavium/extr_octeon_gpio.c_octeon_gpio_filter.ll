; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_octeon_gpio.c_octeon_gpio_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_octeon_gpio.c_octeon_gpio_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }
%struct.octeon_gpio_softc = type { i8** }

@OCTEON_GPIO_IRQS = common dso_local global i64 0, align 8
@FILTER_STRAY = common dso_local global i32 0, align 4
@OCTEON_GPIO_IRQ_EDGE = common dso_local global i64 0, align 8
@FILTER_SCHEDULE_THREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @octeon_gpio_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octeon_gpio_filter(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_4__, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.octeon_gpio_softc*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to i8**
  store i8** %9, i8*** %5, align 8
  %10 = load i8**, i8*** %5, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = bitcast i8* %11 to %struct.octeon_gpio_softc*
  store %struct.octeon_gpio_softc* %12, %struct.octeon_gpio_softc** %6, align 8
  %13 = load i8**, i8*** %5, align 8
  %14 = load %struct.octeon_gpio_softc*, %struct.octeon_gpio_softc** %6, align 8
  %15 = getelementptr inbounds %struct.octeon_gpio_softc, %struct.octeon_gpio_softc* %14, i32 0, i32 0
  %16 = load i8**, i8*** %15, align 8
  %17 = ptrtoint i8** %13 to i64
  %18 = ptrtoint i8** %16 to i64
  %19 = sub i64 %17, %18
  %20 = sdiv exact i64 %19, 8
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %7, align 8
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %1
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @OCTEON_GPIO_IRQS, align 8
  %26 = icmp sge i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23, %1
  %28 = load i32, i32* @FILTER_STRAY, align 4
  store i32 %28, i32* %2, align 4
  br label %53

29:                                               ; preds = %23
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @CVMX_GPIO_BIT_CFGX(i64 %30)
  %32 = call i32 @cvmx_read_csr(i32 %31)
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store i32 %32, i32* %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @OCTEON_GPIO_IRQ_EDGE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %29
  %40 = load i64, i64* %7, align 8
  %41 = trunc i64 %40 to i32
  %42 = shl i32 1, %41
  %43 = call i32 @cvmx_gpio_interrupt_clear(i32 %42)
  br label %44

44:                                               ; preds = %39, %29
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  store i64 0, i64* %46, align 8
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @CVMX_GPIO_BIT_CFGX(i64 %47)
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @cvmx_write_csr(i32 %48, i32 %50)
  %52 = load i32, i32* @FILTER_SCHEDULE_THREAD, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %44, %27
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_GPIO_BIT_CFGX(i64) #1

declare dso_local i32 @cvmx_gpio_interrupt_clear(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
