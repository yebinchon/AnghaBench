; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/intpm/extr_intpm.c_intsmb_slvintr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/intpm/extr_intpm.c_intsmb_slvintr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intsmb_softc = type { i32 }

@PIIX4_SMBSLVSTS = common dso_local global i32 0, align 4
@PIIX4_SMBSLVSTS_BUSY = common dso_local global i32 0, align 4
@PIIX4_SMBSLVSTS_ALART = common dso_local global i32 0, align 4
@PIIX4_SMBSLVSTS_SDW2 = common dso_local global i32 0, align 4
@PIIX4_SMBSLVSTS_SDW1 = common dso_local global i32 0, align 4
@PIIX4_SMBSLVSTS_SLV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intsmb_softc*)* @intsmb_slvintr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intsmb_slvintr(%struct.intsmb_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intsmb_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.intsmb_softc* %0, %struct.intsmb_softc** %3, align 8
  %5 = load %struct.intsmb_softc*, %struct.intsmb_softc** %3, align 8
  %6 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @PIIX4_SMBSLVSTS, align 4
  %9 = call i32 @bus_read_1(i32 %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @PIIX4_SMBSLVSTS_BUSY, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %48

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @PIIX4_SMBSLVSTS_ALART, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load %struct.intsmb_softc*, %struct.intsmb_softc** %3, align 8
  %22 = call i32 @intsmb_alrintr(%struct.intsmb_softc* %21)
  br label %35

23:                                               ; preds = %15
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @PIIX4_SMBSLVSTS_ALART, align 4
  %26 = load i32, i32* @PIIX4_SMBSLVSTS_SDW2, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @PIIX4_SMBSLVSTS_SDW1, align 4
  %29 = or i32 %27, %28
  %30 = xor i32 %29, -1
  %31 = and i32 %24, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  br label %34

34:                                               ; preds = %33, %23
  br label %35

35:                                               ; preds = %34, %20
  %36 = load %struct.intsmb_softc*, %struct.intsmb_softc** %3, align 8
  %37 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @PIIX4_SMBSLVSTS, align 4
  %40 = load i32, i32* @PIIX4_SMBSLVSTS_ALART, align 4
  %41 = load i32, i32* @PIIX4_SMBSLVSTS_SDW2, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @PIIX4_SMBSLVSTS_SDW1, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @PIIX4_SMBSLVSTS_SLV, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @bus_write_1(i32 %38, i32 %39, i32 %46)
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %35, %14
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @bus_read_1(i32, i32) #1

declare dso_local i32 @intsmb_alrintr(%struct.intsmb_softc*) #1

declare dso_local i32 @bus_write_1(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
