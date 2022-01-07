; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_thunder_mdio.c_thunder_mdio_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_thunder_mdio.c_thunder_mdio_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thunder_mdio_softc = type { i32* }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@REG_BASE_RID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @thunder_mdio_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thunder_mdio_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.thunder_mdio_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.thunder_mdio_softc* @device_get_softc(i32 %4)
  store %struct.thunder_mdio_softc* %5, %struct.thunder_mdio_softc** %3, align 8
  %6 = load %struct.thunder_mdio_softc*, %struct.thunder_mdio_softc** %3, align 8
  %7 = getelementptr inbounds %struct.thunder_mdio_softc, %struct.thunder_mdio_softc* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @SYS_RES_MEMORY, align 4
  %13 = load i32, i32* @REG_BASE_RID, align 4
  %14 = load %struct.thunder_mdio_softc*, %struct.thunder_mdio_softc** %3, align 8
  %15 = getelementptr inbounds %struct.thunder_mdio_softc, %struct.thunder_mdio_softc* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @bus_release_resource(i32 %11, i32 %12, i32 %13, i32* %16)
  br label %18

18:                                               ; preds = %10, %1
  ret i32 0
}

declare dso_local %struct.thunder_mdio_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
