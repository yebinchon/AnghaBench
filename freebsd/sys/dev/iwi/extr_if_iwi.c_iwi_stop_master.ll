; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_stop_master.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_stop_master.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwi_softc = type { i32, i32 }

@IWI_CSR_INTR_MASK = common dso_local global i32 0, align 4
@IWI_CSR_RST = common dso_local global i32 0, align 4
@IWI_RST_STOP_MASTER = common dso_local global i32 0, align 4
@IWI_RST_MASTER_DISABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"timeout waiting for master\0A\00", align 1
@IWI_RST_PRINCETON_RESET = common dso_local global i32 0, align 4
@IWI_FLAG_FW_INITED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwi_softc*)* @iwi_stop_master to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwi_stop_master(%struct.iwi_softc* %0) #0 {
  %2 = alloca %struct.iwi_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.iwi_softc* %0, %struct.iwi_softc** %2, align 8
  %5 = load %struct.iwi_softc*, %struct.iwi_softc** %2, align 8
  %6 = load i32, i32* @IWI_CSR_INTR_MASK, align 4
  %7 = call i32 @CSR_WRITE_4(%struct.iwi_softc* %5, i32 %6, i32 0)
  %8 = load %struct.iwi_softc*, %struct.iwi_softc** %2, align 8
  %9 = load i32, i32* @IWI_CSR_RST, align 4
  %10 = load i32, i32* @IWI_RST_STOP_MASTER, align 4
  %11 = call i32 @CSR_WRITE_4(%struct.iwi_softc* %8, i32 %9, i32 %10)
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %25, %1
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 5
  br i1 %14, label %15, label %28

15:                                               ; preds = %12
  %16 = load %struct.iwi_softc*, %struct.iwi_softc** %2, align 8
  %17 = load i32, i32* @IWI_CSR_RST, align 4
  %18 = call i32 @CSR_READ_4(%struct.iwi_softc* %16, i32 %17)
  %19 = load i32, i32* @IWI_RST_MASTER_DISABLED, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %28

23:                                               ; preds = %15
  %24 = call i32 @DELAY(i32 10)
  br label %25

25:                                               ; preds = %23
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %12

28:                                               ; preds = %22, %12
  %29 = load i32, i32* %4, align 4
  %30 = icmp eq i32 %29, 5
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load %struct.iwi_softc*, %struct.iwi_softc** %2, align 8
  %33 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @device_printf(i32 %34, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %31, %28
  %37 = load %struct.iwi_softc*, %struct.iwi_softc** %2, align 8
  %38 = load i32, i32* @IWI_CSR_RST, align 4
  %39 = call i32 @CSR_READ_4(%struct.iwi_softc* %37, i32 %38)
  store i32 %39, i32* %3, align 4
  %40 = load %struct.iwi_softc*, %struct.iwi_softc** %2, align 8
  %41 = load i32, i32* @IWI_CSR_RST, align 4
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @IWI_RST_PRINCETON_RESET, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @CSR_WRITE_4(%struct.iwi_softc* %40, i32 %41, i32 %44)
  %46 = load i32, i32* @IWI_FLAG_FW_INITED, align 4
  %47 = xor i32 %46, -1
  %48 = load %struct.iwi_softc*, %struct.iwi_softc** %2, align 8
  %49 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, %47
  store i32 %51, i32* %49, align 4
  ret void
}

declare dso_local i32 @CSR_WRITE_4(%struct.iwi_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.iwi_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
