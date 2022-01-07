; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_ohci.c_jz4780_ohci_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_ohci.c_jz4780_ohci_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4780_ohci_softc = type { i32, %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i64, i64, i32*, i32*, i32* }
%struct.TYPE_3__ = type { i64 }

@OHCI_CONTROL = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@ohci_iterate_hw_softc = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @jz4780_ohci_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4780_ohci_detach(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.jz4780_ohci_softc*, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = call %struct.jz4780_ohci_softc* @device_get_softc(i64 %5)
  store %struct.jz4780_ohci_softc* %6, %struct.jz4780_ohci_softc** %3, align 8
  %7 = load %struct.jz4780_ohci_softc*, %struct.jz4780_ohci_softc** %3, align 8
  %8 = getelementptr inbounds %struct.jz4780_ohci_softc, %struct.jz4780_ohci_softc* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %1
  %14 = load %struct.jz4780_ohci_softc*, %struct.jz4780_ohci_softc** %3, align 8
  %15 = getelementptr inbounds %struct.jz4780_ohci_softc, %struct.jz4780_ohci_softc* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %4, align 8
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @device_detach(i64 %19)
  %21 = load i64, i64* %2, align 8
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @device_delete_child(i64 %21, i64 %22)
  br label %24

24:                                               ; preds = %13, %1
  %25 = load i64, i64* %2, align 8
  %26 = call i32 @device_delete_children(i64 %25)
  %27 = load %struct.jz4780_ohci_softc*, %struct.jz4780_ohci_softc** %3, align 8
  %28 = getelementptr inbounds %struct.jz4780_ohci_softc, %struct.jz4780_ohci_softc* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 3
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %43

32:                                               ; preds = %24
  %33 = load %struct.jz4780_ohci_softc*, %struct.jz4780_ohci_softc** %3, align 8
  %34 = getelementptr inbounds %struct.jz4780_ohci_softc, %struct.jz4780_ohci_softc* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.jz4780_ohci_softc*, %struct.jz4780_ohci_softc** %3, align 8
  %38 = getelementptr inbounds %struct.jz4780_ohci_softc, %struct.jz4780_ohci_softc* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* @OHCI_CONTROL, align 4
  %42 = call i32 @bus_space_write_4(i64 %36, i64 %40, i32 %41, i32 0)
  br label %43

43:                                               ; preds = %32, %24
  %44 = load %struct.jz4780_ohci_softc*, %struct.jz4780_ohci_softc** %3, align 8
  %45 = getelementptr inbounds %struct.jz4780_ohci_softc, %struct.jz4780_ohci_softc* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 5
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %63

49:                                               ; preds = %43
  %50 = load i64, i64* %2, align 8
  %51 = load %struct.jz4780_ohci_softc*, %struct.jz4780_ohci_softc** %3, align 8
  %52 = getelementptr inbounds %struct.jz4780_ohci_softc, %struct.jz4780_ohci_softc* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 4
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.jz4780_ohci_softc*, %struct.jz4780_ohci_softc** %3, align 8
  %56 = getelementptr inbounds %struct.jz4780_ohci_softc, %struct.jz4780_ohci_softc* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 5
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @bus_teardown_intr(i64 %50, i32* %54, i32* %58)
  %60 = load %struct.jz4780_ohci_softc*, %struct.jz4780_ohci_softc** %3, align 8
  %61 = getelementptr inbounds %struct.jz4780_ohci_softc, %struct.jz4780_ohci_softc* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 5
  store i32* null, i32** %62, align 8
  br label %63

63:                                               ; preds = %49, %43
  %64 = load %struct.jz4780_ohci_softc*, %struct.jz4780_ohci_softc** %3, align 8
  %65 = getelementptr inbounds %struct.jz4780_ohci_softc, %struct.jz4780_ohci_softc* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 4
  %67 = load i32*, i32** %66, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %89

69:                                               ; preds = %63
  %70 = load %struct.jz4780_ohci_softc*, %struct.jz4780_ohci_softc** %3, align 8
  %71 = getelementptr inbounds %struct.jz4780_ohci_softc, %struct.jz4780_ohci_softc* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 5
  %73 = load i32*, i32** %72, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %89

75:                                               ; preds = %69
  %76 = load %struct.jz4780_ohci_softc*, %struct.jz4780_ohci_softc** %3, align 8
  %77 = getelementptr inbounds %struct.jz4780_ohci_softc, %struct.jz4780_ohci_softc* %76, i32 0, i32 1
  %78 = call i32 @ohci_detach(%struct.TYPE_4__* %77)
  %79 = load i64, i64* %2, align 8
  %80 = load i32, i32* @SYS_RES_IRQ, align 4
  %81 = load %struct.jz4780_ohci_softc*, %struct.jz4780_ohci_softc** %3, align 8
  %82 = getelementptr inbounds %struct.jz4780_ohci_softc, %struct.jz4780_ohci_softc* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 4
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @bus_release_resource(i64 %79, i32 %80, i32 0, i32* %84)
  %86 = load %struct.jz4780_ohci_softc*, %struct.jz4780_ohci_softc** %3, align 8
  %87 = getelementptr inbounds %struct.jz4780_ohci_softc, %struct.jz4780_ohci_softc* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 4
  store i32* null, i32** %88, align 8
  br label %89

89:                                               ; preds = %75, %69, %63
  %90 = load %struct.jz4780_ohci_softc*, %struct.jz4780_ohci_softc** %3, align 8
  %91 = getelementptr inbounds %struct.jz4780_ohci_softc, %struct.jz4780_ohci_softc* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 3
  %93 = load i32*, i32** %92, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %112

95:                                               ; preds = %89
  %96 = load i64, i64* %2, align 8
  %97 = load i32, i32* @SYS_RES_MEMORY, align 4
  %98 = load %struct.jz4780_ohci_softc*, %struct.jz4780_ohci_softc** %3, align 8
  %99 = getelementptr inbounds %struct.jz4780_ohci_softc, %struct.jz4780_ohci_softc* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 3
  %101 = load i32*, i32** %100, align 8
  %102 = call i32 @bus_release_resource(i64 %96, i32 %97, i32 0, i32* %101)
  %103 = load %struct.jz4780_ohci_softc*, %struct.jz4780_ohci_softc** %3, align 8
  %104 = getelementptr inbounds %struct.jz4780_ohci_softc, %struct.jz4780_ohci_softc* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 3
  store i32* null, i32** %105, align 8
  %106 = load %struct.jz4780_ohci_softc*, %struct.jz4780_ohci_softc** %3, align 8
  %107 = getelementptr inbounds %struct.jz4780_ohci_softc, %struct.jz4780_ohci_softc* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 2
  store i64 0, i64* %108, align 8
  %109 = load %struct.jz4780_ohci_softc*, %struct.jz4780_ohci_softc** %3, align 8
  %110 = getelementptr inbounds %struct.jz4780_ohci_softc, %struct.jz4780_ohci_softc* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  store i64 0, i64* %111, align 8
  br label %112

112:                                              ; preds = %95, %89
  %113 = load %struct.jz4780_ohci_softc*, %struct.jz4780_ohci_softc** %3, align 8
  %114 = getelementptr inbounds %struct.jz4780_ohci_softc, %struct.jz4780_ohci_softc* %113, i32 0, i32 2
  %115 = load i32*, i32** %114, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %122

117:                                              ; preds = %112
  %118 = load %struct.jz4780_ohci_softc*, %struct.jz4780_ohci_softc** %3, align 8
  %119 = getelementptr inbounds %struct.jz4780_ohci_softc, %struct.jz4780_ohci_softc* %118, i32 0, i32 2
  %120 = load i32*, i32** %119, align 8
  %121 = call i32 @clk_release(i32* %120)
  br label %122

122:                                              ; preds = %117, %112
  %123 = load %struct.jz4780_ohci_softc*, %struct.jz4780_ohci_softc** %3, align 8
  %124 = getelementptr inbounds %struct.jz4780_ohci_softc, %struct.jz4780_ohci_softc* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = call i32 @usb_bus_mem_free_all(%struct.TYPE_3__* %125, i32* @ohci_iterate_hw_softc)
  %127 = load %struct.jz4780_ohci_softc*, %struct.jz4780_ohci_softc** %3, align 8
  %128 = getelementptr inbounds %struct.jz4780_ohci_softc, %struct.jz4780_ohci_softc* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @M_DEVBUF, align 4
  %131 = call i32 @free(i32 %129, i32 %130)
  ret i32 0
}

declare dso_local %struct.jz4780_ohci_softc* @device_get_softc(i64) #1

declare dso_local i32 @device_detach(i64) #1

declare dso_local i32 @device_delete_child(i64, i64) #1

declare dso_local i32 @device_delete_children(i64) #1

declare dso_local i32 @bus_space_write_4(i64, i64, i32, i32) #1

declare dso_local i32 @bus_teardown_intr(i64, i32*, i32*) #1

declare dso_local i32 @ohci_detach(%struct.TYPE_4__*) #1

declare dso_local i32 @bus_release_resource(i64, i32, i32, i32*) #1

declare dso_local i32 @clk_release(i32*) #1

declare dso_local i32 @usb_bus_mem_free_all(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @free(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
