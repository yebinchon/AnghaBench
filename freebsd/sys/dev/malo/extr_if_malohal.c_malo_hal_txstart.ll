; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/malo/extr_if_malohal.c_malo_hal_txstart.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/malo/extr_if_malohal.c_malo_hal_txstart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.malo_hal = type { i32, i32 }

@MALO_REG_H2A_INTERRUPT_EVENTS = common dso_local global i32 0, align 4
@MALO_H2ARIC_BIT_PPA_READY = common dso_local global i32 0, align 4
@MALO_REG_INT_CODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @malo_hal_txstart(%struct.malo_hal* %0, i32 %1) #0 {
  %3 = alloca %struct.malo_hal*, align 8
  %4 = alloca i32, align 4
  store %struct.malo_hal* %0, %struct.malo_hal** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.malo_hal*, %struct.malo_hal** %3, align 8
  %6 = getelementptr inbounds %struct.malo_hal, %struct.malo_hal* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.malo_hal*, %struct.malo_hal** %3, align 8
  %9 = getelementptr inbounds %struct.malo_hal, %struct.malo_hal* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @MALO_REG_H2A_INTERRUPT_EVENTS, align 4
  %12 = load i32, i32* @MALO_H2ARIC_BIT_PPA_READY, align 4
  %13 = call i32 @bus_space_write_4(i32 %7, i32 %10, i32 %11, i32 %12)
  %14 = load %struct.malo_hal*, %struct.malo_hal** %3, align 8
  %15 = getelementptr inbounds %struct.malo_hal, %struct.malo_hal* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.malo_hal*, %struct.malo_hal** %3, align 8
  %18 = getelementptr inbounds %struct.malo_hal, %struct.malo_hal* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @MALO_REG_INT_CODE, align 4
  %21 = call i32 @bus_space_read_4(i32 %16, i32 %19, i32 %20)
  ret void
}

declare dso_local i32 @bus_space_write_4(i32, i32, i32, i32) #1

declare dso_local i32 @bus_space_read_4(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
