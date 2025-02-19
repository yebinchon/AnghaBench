; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_sab82532.c_sab82532_term.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_sab82532.c_sab82532_term.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_bas = type { i32 }

@SAB_PVR = common dso_local global i32 0, align 4
@SAB_PVR_DTR_A = common dso_local global i32 0, align 4
@SAB_PVR_DTR_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_bas*)* @sab82532_term to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sab82532_term(%struct.uart_bas* %0) #0 {
  %2 = alloca %struct.uart_bas*, align 8
  %3 = alloca i32, align 4
  store %struct.uart_bas* %0, %struct.uart_bas** %2, align 8
  %4 = load %struct.uart_bas*, %struct.uart_bas** %2, align 8
  %5 = load i32, i32* @SAB_PVR, align 4
  %6 = call i32 @uart_getreg(%struct.uart_bas* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.uart_bas*, %struct.uart_bas** %2, align 8
  %8 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %18 [
    i32 1, label %10
    i32 2, label %14
  ]

10:                                               ; preds = %1
  %11 = load i32, i32* @SAB_PVR_DTR_A, align 4
  %12 = load i32, i32* %3, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %3, align 4
  br label %18

14:                                               ; preds = %1
  %15 = load i32, i32* @SAB_PVR_DTR_B, align 4
  %16 = load i32, i32* %3, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %1, %14, %10
  %19 = load %struct.uart_bas*, %struct.uart_bas** %2, align 8
  %20 = load i32, i32* @SAB_PVR, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @uart_setreg(%struct.uart_bas* %19, i32 %20, i32 %21)
  %23 = load %struct.uart_bas*, %struct.uart_bas** %2, align 8
  %24 = call i32 @uart_barrier(%struct.uart_bas* %23)
  ret void
}

declare dso_local i32 @uart_getreg(%struct.uart_bas*, i32) #1

declare dso_local i32 @uart_setreg(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @uart_barrier(%struct.uart_bas*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
