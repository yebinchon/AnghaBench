; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_iicbb.c_iicbb_ack.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_iicbb.c_iicbb_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iicbb_softc = type { i32 }

@IIC_ETIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%c \00", align 1
@IIC_ENOACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @iicbb_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iicbb_ack(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.iicbb_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.iicbb_softc* @device_get_softc(i32 %9)
  store %struct.iicbb_softc* %10, %struct.iicbb_softc** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.iicbb_softc*, %struct.iicbb_softc** %6, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @I2C_SET(%struct.iicbb_softc* %11, i32 %12, i32 0, i32 1)
  %14 = load %struct.iicbb_softc*, %struct.iicbb_softc** %6, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @I2C_SET(%struct.iicbb_softc* %14, i32 %15, i32 1, i32 1)
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @I2C_GETSCL(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @IIC_ETIMEOUT, align 4
  store i32 %21, i32* %3, align 4
  br label %55

22:                                               ; preds = %2
  br label %23

23:                                               ; preds = %33, %22
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @I2C_GETSDA(i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  br label %37

29:                                               ; preds = %23
  %30 = call i32 @DELAY(i32 1)
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %23, label %37

37:                                               ; preds = %33, %28
  %38 = load %struct.iicbb_softc*, %struct.iicbb_softc** %6, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @I2C_SET(%struct.iicbb_softc* %38, i32 %39, i32 0, i32 1)
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 45, i32 43
  %45 = trunc i32 %44 to i8
  %46 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8 signext %45)
  %47 = call i32 @I2C_DEBUG(i32 %46)
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %37
  %51 = load i32, i32* @IIC_ENOACK, align 4
  br label %53

52:                                               ; preds = %37
  br label %53

53:                                               ; preds = %52, %50
  %54 = phi i32 [ %51, %50 ], [ 0, %52 ]
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %53, %20
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.iicbb_softc* @device_get_softc(i32) #1

declare dso_local i32 @I2C_SET(%struct.iicbb_softc*, i32, i32, i32) #1

declare dso_local i32 @I2C_GETSCL(i32) #1

declare dso_local i32 @I2C_GETSDA(i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @I2C_DEBUG(i32) #1

declare dso_local i32 @printf(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
