; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/amdtemp/extr_amdtemp.c_amdtemp_gettemp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/amdtemp/extr_amdtemp.c_amdtemp_gettemp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdtemp_softc = type { i32 }

@AMDTEMP_REPTMP_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @amdtemp_gettemp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdtemp_gettemp(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdtemp_softc*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.amdtemp_softc* @device_get_softc(i32 %7)
  store %struct.amdtemp_softc* %8, %struct.amdtemp_softc** %5, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @AMDTEMP_REPTMP_CTRL, align 4
  %11 = call i32 @pci_read_config(i32 %9, i32 %10, i32 4)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.amdtemp_softc*, %struct.amdtemp_softc** %5, align 8
  %13 = getelementptr inbounds %struct.amdtemp_softc, %struct.amdtemp_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @amdtemp_decode_fam10h_to_16h(i32 %14, i32 %15)
  ret i32 %16
}

declare dso_local %struct.amdtemp_softc* @device_get_softc(i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @amdtemp_decode_fam10h_to_16h(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
