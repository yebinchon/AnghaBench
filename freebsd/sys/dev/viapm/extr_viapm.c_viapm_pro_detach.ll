; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/viapm/extr_viapm.c_viapm_pro_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/viapm/extr_viapm.c_viapm_pro_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.viapm_softc = type { i32, i32, i32, i32, i32, i64 }

@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @viapm_pro_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @viapm_pro_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.viapm_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i64 @device_get_softc(i32 %4)
  %6 = inttoptr i64 %5 to %struct.viapm_softc*
  store %struct.viapm_softc* %6, %struct.viapm_softc** %3, align 8
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @bus_generic_detach(i32 %7)
  %9 = load %struct.viapm_softc*, %struct.viapm_softc** %3, align 8
  %10 = getelementptr inbounds %struct.viapm_softc, %struct.viapm_softc* %9, i32 0, i32 5
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load i32, i32* %2, align 4
  %15 = load %struct.viapm_softc*, %struct.viapm_softc** %3, align 8
  %16 = getelementptr inbounds %struct.viapm_softc, %struct.viapm_softc* %15, i32 0, i32 5
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @device_delete_child(i32 %14, i64 %17)
  br label %19

19:                                               ; preds = %13, %1
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @SYS_RES_IOPORT, align 4
  %22 = load %struct.viapm_softc*, %struct.viapm_softc** %3, align 8
  %23 = getelementptr inbounds %struct.viapm_softc, %struct.viapm_softc* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.viapm_softc*, %struct.viapm_softc** %3, align 8
  %26 = getelementptr inbounds %struct.viapm_softc, %struct.viapm_softc* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @bus_release_resource(i32 %20, i32 %21, i32 %24, i32 %27)
  %29 = load %struct.viapm_softc*, %struct.viapm_softc** %3, align 8
  %30 = getelementptr inbounds %struct.viapm_softc, %struct.viapm_softc* %29, i32 0, i32 0
  %31 = call i32 @mtx_destroy(i32* %30)
  ret i32 0
}

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local i32 @bus_generic_detach(i32) #1

declare dso_local i32 @device_delete_child(i32, i64) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
