; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_iicbb.c_iicbb_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_iicbb.c_iicbb_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iicbb_softc = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"<\00", align 1
@IIC_ETIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @iicbb_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iicbb_start(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.iicbb_softc*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.iicbb_softc* @device_get_softc(i32 %10)
  store %struct.iicbb_softc* %11, %struct.iicbb_softc** %8, align 8
  %12 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @I2C_DEBUG(i32 %12)
  %14 = load %struct.iicbb_softc*, %struct.iicbb_softc** %8, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @I2C_SET(%struct.iicbb_softc* %14, i32 %15, i32 1, i32 1)
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @I2C_GETSCL(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @IIC_ETIMEOUT, align 4
  store i32 %21, i32* %4, align 4
  br label %43

22:                                               ; preds = %3
  %23 = load %struct.iicbb_softc*, %struct.iicbb_softc** %8, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @I2C_SET(%struct.iicbb_softc* %23, i32 %24, i32 1, i32 0)
  %26 = load %struct.iicbb_softc*, %struct.iicbb_softc** %8, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @I2C_SET(%struct.iicbb_softc* %26, i32 %27, i32 0, i32 0)
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @iicbb_sendbyte(i32 %29, i32 %30, i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @iicbb_ack(i32 %33, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %43

39:                                               ; preds = %22
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @iicbb_stop(i32 %40)
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %39, %38, %20
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local %struct.iicbb_softc* @device_get_softc(i32) #1

declare dso_local i32 @I2C_DEBUG(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @I2C_SET(%struct.iicbb_softc*, i32, i32, i32) #1

declare dso_local i32 @I2C_GETSCL(i32) #1

declare dso_local i32 @iicbb_sendbyte(i32, i32, i32) #1

declare dso_local i32 @iicbb_ack(i32, i32) #1

declare dso_local i32 @iicbb_stop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
