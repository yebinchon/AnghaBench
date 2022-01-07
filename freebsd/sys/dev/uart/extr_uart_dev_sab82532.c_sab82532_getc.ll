; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_sab82532.c_sab82532_getc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_sab82532.c_sab82532_getc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_bas = type { i32 }
%struct.mtx = type { i32 }

@SAB_STAR = common dso_local global i32 0, align 4
@SAB_STAR_RFNE = common dso_local global i32 0, align 4
@SAB_STAR_CEC = common dso_local global i32 0, align 4
@SAB_CMDR = common dso_local global i32 0, align 4
@SAB_CMDR_RFRD = common dso_local global i32 0, align 4
@SAB_ISR0 = common dso_local global i32 0, align 4
@SAB_ISR0_TCD = common dso_local global i32 0, align 4
@SAB_RFIFO = common dso_local global i32 0, align 4
@SAB_CMDR_RMC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_bas*, %struct.mtx*)* @sab82532_getc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sab82532_getc(%struct.uart_bas* %0, %struct.mtx* %1) #0 {
  %3 = alloca %struct.uart_bas*, align 8
  %4 = alloca %struct.mtx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uart_bas* %0, %struct.uart_bas** %3, align 8
  store %struct.mtx* %1, %struct.mtx** %4, align 8
  %7 = load %struct.mtx*, %struct.mtx** %4, align 8
  %8 = call i32 @uart_lock(%struct.mtx* %7)
  %9 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %10 = call i32 @sab82532_delay(%struct.uart_bas* %9)
  store i32 %10, i32* %6, align 4
  br label %11

11:                                               ; preds = %19, %2
  %12 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %13 = load i32, i32* @SAB_STAR, align 4
  %14 = call i32 @uart_getreg(%struct.uart_bas* %12, i32 %13)
  %15 = load i32, i32* @SAB_STAR_RFNE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br i1 %18, label %19, label %26

19:                                               ; preds = %11
  %20 = load %struct.mtx*, %struct.mtx** %4, align 8
  %21 = call i32 @uart_unlock(%struct.mtx* %20)
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @DELAY(i32 %22)
  %24 = load %struct.mtx*, %struct.mtx** %4, align 8
  %25 = call i32 @uart_lock(%struct.mtx* %24)
  br label %11

26:                                               ; preds = %11
  br label %27

27:                                               ; preds = %34, %26
  %28 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %29 = load i32, i32* @SAB_STAR, align 4
  %30 = call i32 @uart_getreg(%struct.uart_bas* %28, i32 %29)
  %31 = load i32, i32* @SAB_STAR_CEC, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %27

35:                                               ; preds = %27
  %36 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %37 = load i32, i32* @SAB_CMDR, align 4
  %38 = load i32, i32* @SAB_CMDR_RFRD, align 4
  %39 = call i32 @uart_setreg(%struct.uart_bas* %36, i32 %37, i32 %38)
  %40 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %41 = call i32 @uart_barrier(%struct.uart_bas* %40)
  br label %42

42:                                               ; preds = %50, %35
  %43 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %44 = load i32, i32* @SAB_ISR0, align 4
  %45 = call i32 @uart_getreg(%struct.uart_bas* %43, i32 %44)
  %46 = load i32, i32* @SAB_ISR0_TCD, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @DELAY(i32 %51)
  br label %42

53:                                               ; preds = %42
  %54 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %55 = load i32, i32* @SAB_RFIFO, align 4
  %56 = call i32 @uart_getreg(%struct.uart_bas* %54, i32 %55)
  store i32 %56, i32* %5, align 4
  %57 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %58 = call i32 @uart_barrier(%struct.uart_bas* %57)
  br label %59

59:                                               ; preds = %66, %53
  %60 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %61 = load i32, i32* @SAB_STAR, align 4
  %62 = call i32 @uart_getreg(%struct.uart_bas* %60, i32 %61)
  %63 = load i32, i32* @SAB_STAR_CEC, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  br label %59

67:                                               ; preds = %59
  %68 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %69 = load i32, i32* @SAB_CMDR, align 4
  %70 = load i32, i32* @SAB_CMDR_RMC, align 4
  %71 = call i32 @uart_setreg(%struct.uart_bas* %68, i32 %69, i32 %70)
  %72 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %73 = call i32 @uart_barrier(%struct.uart_bas* %72)
  %74 = load %struct.mtx*, %struct.mtx** %4, align 8
  %75 = call i32 @uart_unlock(%struct.mtx* %74)
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i32 @uart_lock(%struct.mtx*) #1

declare dso_local i32 @sab82532_delay(%struct.uart_bas*) #1

declare dso_local i32 @uart_getreg(%struct.uart_bas*, i32) #1

declare dso_local i32 @uart_unlock(%struct.mtx*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @uart_setreg(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @uart_barrier(%struct.uart_bas*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
