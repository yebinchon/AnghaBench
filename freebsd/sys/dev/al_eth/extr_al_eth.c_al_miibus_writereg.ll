; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_eth.c_al_miibus_writereg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_eth.c_al_miibus_writereg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_eth_adapter = type { i32, i32, i32 }

@MDIO_TIMEOUT_MSEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"mdio write failed. try again in 10 msec\0A\00", align 1
@MDIO_PAUSE_MSEC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"miibus writereg\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"MDIO write failed on timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @al_miibus_writereg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @al_miibus_writereg(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.al_eth_adapter*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.al_eth_adapter* @device_get_softc(i32 %13)
  store %struct.al_eth_adapter* %14, %struct.al_eth_adapter** %10, align 8
  %15 = load i32, i32* @MDIO_TIMEOUT_MSEC, align 4
  store i32 %15, i32* %12, align 4
  br label %16

16:                                               ; preds = %31, %4
  %17 = load i32, i32* %12, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %43

19:                                               ; preds = %16
  %20 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %10, align 8
  %21 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %20, i32 0, i32 2
  %22 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %10, align 8
  %23 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @al_eth_mdio_write(i32* %21, i32 %24, i32 -1, i32 %25, i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %53

31:                                               ; preds = %19
  %32 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %10, align 8
  %33 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @device_printf(i32 %34, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %36 = load i64, i64* @MDIO_PAUSE_MSEC, align 8
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = sub nsw i64 %38, %36
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %12, align 4
  %41 = load i64, i64* @MDIO_PAUSE_MSEC, align 8
  %42 = call i32 @pause(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64 %41)
  br label %16

43:                                               ; preds = %16
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %10, align 8
  %48 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @device_printf(i32 %49, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %51

51:                                               ; preds = %46, %43
  %52 = load i32, i32* %11, align 4
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %51, %30
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local %struct.al_eth_adapter* @device_get_softc(i32) #1

declare dso_local i32 @al_eth_mdio_write(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @pause(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
