; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/flash/extr_n25q.c_n25q_get_device_ident.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/flash/extr_n25q.c_n25q_get_device_ident.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.n25q_flash_ident = type { i32, i32 }
%struct.n25q_softc = type { i32 }

@CMD_READ_IDENT = common dso_local global i32 0, align 4
@flash_devices = common dso_local global %struct.n25q_flash_ident* null, align 8
@.str = private unnamed_addr constant [57 x i8] c"Unknown SPI flash device. Vendor: %02x, device id: %04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.n25q_flash_ident* (%struct.n25q_softc*)* @n25q_get_device_ident to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.n25q_flash_ident* @n25q_get_device_ident(%struct.n25q_softc* %0) #0 {
  %2 = alloca %struct.n25q_flash_ident*, align 8
  %3 = alloca %struct.n25q_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [4 x i32], align 16
  %8 = alloca i32, align 4
  store %struct.n25q_softc* %0, %struct.n25q_softc** %3, align 8
  %9 = load %struct.n25q_softc*, %struct.n25q_softc** %3, align 8
  %10 = getelementptr inbounds %struct.n25q_softc, %struct.n25q_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @device_get_parent(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.n25q_softc*, %struct.n25q_softc** %3, align 8
  %15 = getelementptr inbounds %struct.n25q_softc, %struct.n25q_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @CMD_READ_IDENT, align 4
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %19 = call i32 @QSPI_READ_REG(i32 %13, i32 %16, i32 %17, i32* %18, i32 4)
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %21 = load i32, i32* %20, align 16
  store i32 %21, i32* %4, align 4
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 %23, 8
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %24, %26
  store i32 %27, i32* %5, align 4
  store i32 0, i32* %8, align 4
  br label %28

28:                                               ; preds = %57, %1
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.n25q_flash_ident*, %struct.n25q_flash_ident** @flash_devices, align 8
  %31 = call i32 @nitems(%struct.n25q_flash_ident* %30)
  %32 = icmp slt i32 %29, %31
  br i1 %32, label %33, label %60

33:                                               ; preds = %28
  %34 = load %struct.n25q_flash_ident*, %struct.n25q_flash_ident** @flash_devices, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.n25q_flash_ident, %struct.n25q_flash_ident* %34, i64 %36
  %38 = getelementptr inbounds %struct.n25q_flash_ident, %struct.n25q_flash_ident* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %56

42:                                               ; preds = %33
  %43 = load %struct.n25q_flash_ident*, %struct.n25q_flash_ident** @flash_devices, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.n25q_flash_ident, %struct.n25q_flash_ident* %43, i64 %45
  %47 = getelementptr inbounds %struct.n25q_flash_ident, %struct.n25q_flash_ident* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %42
  %52 = load %struct.n25q_flash_ident*, %struct.n25q_flash_ident** @flash_devices, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.n25q_flash_ident, %struct.n25q_flash_ident* %52, i64 %54
  store %struct.n25q_flash_ident* %55, %struct.n25q_flash_ident** %2, align 8
  br label %64

56:                                               ; preds = %42, %33
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %8, align 4
  br label %28

60:                                               ; preds = %28
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %61, i32 %62)
  store %struct.n25q_flash_ident* null, %struct.n25q_flash_ident** %2, align 8
  br label %64

64:                                               ; preds = %60, %51
  %65 = load %struct.n25q_flash_ident*, %struct.n25q_flash_ident** %2, align 8
  ret %struct.n25q_flash_ident* %65
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @QSPI_READ_REG(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @nitems(%struct.n25q_flash_ident*) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
