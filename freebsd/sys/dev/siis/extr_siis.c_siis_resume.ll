; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/siis/extr_siis.c_siis_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/siis/extr_siis.c_siis_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siis_controller = type { i32, i32 }

@SIIS_GCTL_GRESET = common dso_local global i32 0, align 4
@SIIS_GCTL = common dso_local global i32 0, align 4
@SIIS_GCTL_I2C_IE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @siis_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siis_resume(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.siis_controller*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.siis_controller* @device_get_softc(i32 %4)
  store %struct.siis_controller* %5, %struct.siis_controller** %3, align 8
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @pci_get_max_read_req(i32 %6)
  %8 = icmp slt i32 %7, 1024
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @pci_set_max_read_req(i32 %10, i32 1024)
  br label %12

12:                                               ; preds = %9, %1
  %13 = load i32, i32* @SIIS_GCTL_GRESET, align 4
  %14 = load %struct.siis_controller*, %struct.siis_controller** %3, align 8
  %15 = getelementptr inbounds %struct.siis_controller, %struct.siis_controller* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = load %struct.siis_controller*, %struct.siis_controller** %3, align 8
  %19 = getelementptr inbounds %struct.siis_controller, %struct.siis_controller* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @SIIS_GCTL, align 4
  %22 = load %struct.siis_controller*, %struct.siis_controller** %3, align 8
  %23 = getelementptr inbounds %struct.siis_controller, %struct.siis_controller* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ATA_OUTL(i32 %20, i32 %21, i32 %24)
  %26 = call i32 @DELAY(i32 10000)
  %27 = load i32, i32* @SIIS_GCTL_GRESET, align 4
  %28 = load i32, i32* @SIIS_GCTL_I2C_IE, align 4
  %29 = or i32 %27, %28
  %30 = xor i32 %29, -1
  %31 = load %struct.siis_controller*, %struct.siis_controller** %3, align 8
  %32 = getelementptr inbounds %struct.siis_controller, %struct.siis_controller* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load %struct.siis_controller*, %struct.siis_controller** %3, align 8
  %36 = getelementptr inbounds %struct.siis_controller, %struct.siis_controller* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, 15
  store i32 %38, i32* %36, align 4
  %39 = load %struct.siis_controller*, %struct.siis_controller** %3, align 8
  %40 = getelementptr inbounds %struct.siis_controller, %struct.siis_controller* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @SIIS_GCTL, align 4
  %43 = load %struct.siis_controller*, %struct.siis_controller** %3, align 8
  %44 = getelementptr inbounds %struct.siis_controller, %struct.siis_controller* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ATA_OUTL(i32 %41, i32 %42, i32 %45)
  %47 = load i32, i32* %2, align 4
  %48 = call i32 @bus_generic_resume(i32 %47)
  ret i32 %48
}

declare dso_local %struct.siis_controller* @device_get_softc(i32) #1

declare dso_local i32 @pci_get_max_read_req(i32) #1

declare dso_local i32 @pci_set_max_read_req(i32, i32) #1

declare dso_local i32 @ATA_OUTL(i32, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @bus_generic_resume(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
