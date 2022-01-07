; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ads111x.c_ads111x_write_2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ads111x.c_ads111x_write_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ads111x_softc = type { i32 }
%struct.iic_msg = type { i32, i32, i32*, i32 }

@IIC_M_WR = common dso_local global i32 0, align 4
@IIC_WAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ads111x_softc*, i32, i32)* @ads111x_write_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ads111x_write_2(%struct.ads111x_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ads111x_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [3 x i32], align 4
  %8 = alloca [1 x %struct.iic_msg], align 16
  %9 = alloca i32, align 4
  store %struct.ads111x_softc* %0, %struct.ads111x_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.ads111x_softc*, %struct.ads111x_softc** %4, align 8
  %11 = getelementptr inbounds %struct.ads111x_softc, %struct.ads111x_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @iicbus_get_addr(i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %5, align 4
  %15 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  store i32 %14, i32* %15, align 4
  %16 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @be16enc(i32* %16, i32 %17)
  %19 = load i32, i32* %9, align 4
  %20 = getelementptr inbounds [1 x %struct.iic_msg], [1 x %struct.iic_msg]* %8, i64 0, i64 0
  %21 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 16
  %22 = load i32, i32* @IIC_M_WR, align 4
  %23 = getelementptr inbounds [1 x %struct.iic_msg], [1 x %struct.iic_msg]* %8, i64 0, i64 0
  %24 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 16
  %25 = getelementptr inbounds [1 x %struct.iic_msg], [1 x %struct.iic_msg]* %8, i64 0, i64 0
  %26 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %25, i32 0, i32 1
  store i32 12, i32* %26, align 4
  %27 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %28 = getelementptr inbounds [1 x %struct.iic_msg], [1 x %struct.iic_msg]* %8, i64 0, i64 0
  %29 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %28, i32 0, i32 2
  store i32* %27, i32** %29, align 8
  %30 = load %struct.ads111x_softc*, %struct.ads111x_softc** %4, align 8
  %31 = getelementptr inbounds %struct.ads111x_softc, %struct.ads111x_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds [1 x %struct.iic_msg], [1 x %struct.iic_msg]* %8, i64 0, i64 0
  %34 = getelementptr inbounds [1 x %struct.iic_msg], [1 x %struct.iic_msg]* %8, i64 0, i64 0
  %35 = call i32 @nitems(%struct.iic_msg* %34)
  %36 = load i32, i32* @IIC_WAIT, align 4
  %37 = call i32 @iicbus_transfer_excl(i32 %32, %struct.iic_msg* %33, i32 %35, i32 %36)
  ret i32 %37
}

declare dso_local i32 @iicbus_get_addr(i32) #1

declare dso_local i32 @be16enc(i32*, i32) #1

declare dso_local i32 @iicbus_transfer_excl(i32, %struct.iic_msg*, i32, i32) #1

declare dso_local i32 @nitems(%struct.iic_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
