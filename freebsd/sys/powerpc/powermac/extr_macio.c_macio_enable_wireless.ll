; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_macio.c_macio_enable_wireless.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_macio.c_macio_enable_wireless.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macio_softc = type { i32 }

@KEYLARGO_FCR2 = common dso_local global i32 0, align 4
@KEYLARGO_GPIO_BASE = common dso_local global i64 0, align 8
@KEYLARGO_EXTINT_GPIO_REG_BASE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @macio_enable_wireless(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.macio_softc*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.macio_softc* @device_get_softc(i32 %7)
  store %struct.macio_softc* %8, %struct.macio_softc** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %103

11:                                               ; preds = %2
  %12 = load %struct.macio_softc*, %struct.macio_softc** %5, align 8
  %13 = getelementptr inbounds %struct.macio_softc, %struct.macio_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @KEYLARGO_FCR2, align 4
  %16 = call i32 @bus_read_4(i32 %14, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = or i32 %17, 4
  store i32 %18, i32* %6, align 4
  %19 = load %struct.macio_softc*, %struct.macio_softc** %5, align 8
  %20 = getelementptr inbounds %struct.macio_softc, %struct.macio_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @KEYLARGO_FCR2, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @bus_write_4(i32 %21, i32 %22, i32 %23)
  %25 = load %struct.macio_softc*, %struct.macio_softc** %5, align 8
  %26 = getelementptr inbounds %struct.macio_softc, %struct.macio_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* @KEYLARGO_GPIO_BASE, align 8
  %29 = add nsw i64 %28, 15
  %30 = call i32 @bus_write_1(i32 %27, i64 %29, i32 5)
  %31 = call i32 @DELAY(i32 1000)
  %32 = load %struct.macio_softc*, %struct.macio_softc** %5, align 8
  %33 = getelementptr inbounds %struct.macio_softc, %struct.macio_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i64, i64* @KEYLARGO_GPIO_BASE, align 8
  %36 = add nsw i64 %35, 15
  %37 = call i32 @bus_write_1(i32 %34, i64 %36, i32 4)
  %38 = call i32 @DELAY(i32 1000)
  %39 = load %struct.macio_softc*, %struct.macio_softc** %5, align 8
  %40 = getelementptr inbounds %struct.macio_softc, %struct.macio_softc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @KEYLARGO_FCR2, align 4
  %43 = call i32 @bus_read_4(i32 %41, i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = and i32 %44, 2147483647
  store i32 %45, i32* %6, align 4
  %46 = load %struct.macio_softc*, %struct.macio_softc** %5, align 8
  %47 = getelementptr inbounds %struct.macio_softc, %struct.macio_softc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @KEYLARGO_FCR2, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @bus_write_4(i32 %48, i32 %49, i32 %50)
  %52 = load %struct.macio_softc*, %struct.macio_softc** %5, align 8
  %53 = getelementptr inbounds %struct.macio_softc, %struct.macio_softc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i64, i64* @KEYLARGO_EXTINT_GPIO_REG_BASE, align 8
  %56 = add nsw i64 %55, 11
  %57 = call i32 @bus_write_1(i32 %54, i64 %56, i32 0)
  %58 = load %struct.macio_softc*, %struct.macio_softc** %5, align 8
  %59 = getelementptr inbounds %struct.macio_softc, %struct.macio_softc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i64, i64* @KEYLARGO_EXTINT_GPIO_REG_BASE, align 8
  %62 = add nsw i64 %61, 10
  %63 = call i32 @bus_write_1(i32 %60, i64 %62, i32 40)
  %64 = load %struct.macio_softc*, %struct.macio_softc** %5, align 8
  %65 = getelementptr inbounds %struct.macio_softc, %struct.macio_softc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i64, i64* @KEYLARGO_EXTINT_GPIO_REG_BASE, align 8
  %68 = add nsw i64 %67, 13
  %69 = call i32 @bus_write_1(i32 %66, i64 %68, i32 40)
  %70 = load %struct.macio_softc*, %struct.macio_softc** %5, align 8
  %71 = getelementptr inbounds %struct.macio_softc, %struct.macio_softc* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i64, i64* @KEYLARGO_GPIO_BASE, align 8
  %74 = add nsw i64 %73, 13
  %75 = call i32 @bus_write_1(i32 %72, i64 %74, i32 40)
  %76 = load %struct.macio_softc*, %struct.macio_softc** %5, align 8
  %77 = getelementptr inbounds %struct.macio_softc, %struct.macio_softc* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i64, i64* @KEYLARGO_GPIO_BASE, align 8
  %80 = add nsw i64 %79, 14
  %81 = call i32 @bus_write_1(i32 %78, i64 %80, i32 40)
  %82 = load %struct.macio_softc*, %struct.macio_softc** %5, align 8
  %83 = getelementptr inbounds %struct.macio_softc, %struct.macio_softc* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @bus_write_4(i32 %84, i32 114688, i32 0)
  %86 = load %struct.macio_softc*, %struct.macio_softc** %5, align 8
  %87 = getelementptr inbounds %struct.macio_softc, %struct.macio_softc* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @bus_write_4(i32 %88, i32 107488, i32 65)
  %90 = load %struct.macio_softc*, %struct.macio_softc** %5, align 8
  %91 = getelementptr inbounds %struct.macio_softc, %struct.macio_softc* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @KEYLARGO_FCR2, align 4
  %94 = call i32 @bus_read_4(i32 %92, i32 %93)
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %6, align 4
  %96 = or i32 %95, -2147483648
  store i32 %96, i32* %6, align 4
  %97 = load %struct.macio_softc*, %struct.macio_softc** %5, align 8
  %98 = getelementptr inbounds %struct.macio_softc, %struct.macio_softc* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @KEYLARGO_FCR2, align 4
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @bus_write_4(i32 %99, i32 %100, i32 %101)
  br label %117

103:                                              ; preds = %2
  %104 = load %struct.macio_softc*, %struct.macio_softc** %5, align 8
  %105 = getelementptr inbounds %struct.macio_softc, %struct.macio_softc* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @KEYLARGO_FCR2, align 4
  %108 = call i32 @bus_read_4(i32 %106, i32 %107)
  store i32 %108, i32* %6, align 4
  %109 = load i32, i32* %6, align 4
  %110 = and i32 %109, -5
  store i32 %110, i32* %6, align 4
  %111 = load %struct.macio_softc*, %struct.macio_softc** %5, align 8
  %112 = getelementptr inbounds %struct.macio_softc, %struct.macio_softc* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @KEYLARGO_FCR2, align 4
  %115 = load i32, i32* %6, align 4
  %116 = call i32 @bus_write_4(i32 %113, i32 %114, i32 %115)
  br label %117

117:                                              ; preds = %103, %11
  ret i32 0
}

declare dso_local %struct.macio_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_read_4(i32, i32) #1

declare dso_local i32 @bus_write_4(i32, i32, i32) #1

declare dso_local i32 @bus_write_1(i32, i64, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
