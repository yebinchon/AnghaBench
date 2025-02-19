; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dcons/extr_dcons_os.c_dcons_os_putc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dcons/extr_dcons_os.c_dcons_os_putc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32* }
%struct.dcons_softc = type { i32 }

@dg = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dcons_softc*, i32)* @dcons_os_putc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dcons_os_putc(%struct.dcons_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.dcons_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.dcons_softc* %0, %struct.dcons_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dg, i32 0, i32 1), align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dg, i32 0, i32 1), align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dg, i32 0, i32 0), align 8
  %10 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %11 = call i32 @bus_dmamap_sync(i32* %8, i32 %9, i32 %10)
  br label %12

12:                                               ; preds = %7, %2
  %13 = load %struct.dcons_softc*, %struct.dcons_softc** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @dcons_putc(%struct.dcons_softc* %13, i32 %14)
  %16 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dg, i32 0, i32 1), align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %12
  %19 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dg, i32 0, i32 1), align 8
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dg, i32 0, i32 0), align 8
  %21 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %22 = call i32 @bus_dmamap_sync(i32* %19, i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %18, %12
  ret void
}

declare dso_local i32 @bus_dmamap_sync(i32*, i32, i32) #1

declare dso_local i32 @dcons_putc(%struct.dcons_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
