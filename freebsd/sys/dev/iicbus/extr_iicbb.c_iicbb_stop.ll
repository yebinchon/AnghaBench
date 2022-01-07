; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_iicbb.c_iicbb_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_iicbb.c_iicbb_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iicbb_softc = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@IIC_ETIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @iicbb_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iicbb_stop(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.iicbb_softc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.iicbb_softc* @device_get_softc(i32 %5)
  store %struct.iicbb_softc* %6, %struct.iicbb_softc** %4, align 8
  %7 = load %struct.iicbb_softc*, %struct.iicbb_softc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @I2C_SET(%struct.iicbb_softc* %7, i32 %8, i32 0, i32 0)
  %10 = load %struct.iicbb_softc*, %struct.iicbb_softc** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @I2C_SET(%struct.iicbb_softc* %10, i32 %11, i32 1, i32 0)
  %13 = load %struct.iicbb_softc*, %struct.iicbb_softc** %4, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @I2C_SET(%struct.iicbb_softc* %13, i32 %14, i32 1, i32 1)
  %16 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 @I2C_DEBUG(i32 %16)
  %18 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %19 = call i32 @I2C_DEBUG(i32 %18)
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @I2C_GETSCL(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @IIC_ETIMEOUT, align 4
  store i32 %24, i32* %2, align 4
  br label %26

25:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %23
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local %struct.iicbb_softc* @device_get_softc(i32) #1

declare dso_local i32 @I2C_SET(%struct.iicbb_softc*, i32, i32, i32) #1

declare dso_local i32 @I2C_DEBUG(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @I2C_GETSCL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
