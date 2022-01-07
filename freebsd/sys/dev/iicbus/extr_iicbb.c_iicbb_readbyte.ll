; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_iicbb.c_iicbb_readbyte.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_iicbb.c_iicbb_readbyte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iicbb_softc = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"r%02x%c \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i32, i32, i32)* @iicbb_readbyte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @iicbb_readbyte(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.iicbb_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.iicbb_softc* @device_get_softc(i32 %10)
  store %struct.iicbb_softc* %11, %struct.iicbb_softc** %7, align 8
  store i8 0, i8* %9, align 1
  %12 = load %struct.iicbb_softc*, %struct.iicbb_softc** %7, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @I2C_SET(%struct.iicbb_softc* %12, i32 %13, i32 0, i32 1)
  store i32 7, i32* %8, align 4
  br label %15

15:                                               ; preds = %36, %3
  %16 = load i32, i32* %8, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %39

18:                                               ; preds = %15
  %19 = load %struct.iicbb_softc*, %struct.iicbb_softc** %7, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @I2C_SET(%struct.iicbb_softc* %19, i32 %20, i32 1, i32 1)
  %22 = load i32, i32* %4, align 4
  %23 = call i64 @I2C_GETSDA(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %18
  %26 = load i32, i32* %8, align 4
  %27 = shl i32 1, %26
  %28 = load i8, i8* %9, align 1
  %29 = zext i8 %28 to i32
  %30 = or i32 %29, %27
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %9, align 1
  br label %32

32:                                               ; preds = %25, %18
  %33 = load %struct.iicbb_softc*, %struct.iicbb_softc** %7, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @I2C_SET(%struct.iicbb_softc* %33, i32 %34, i32 0, i32 1)
  br label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %8, align 4
  br label %15

39:                                               ; preds = %15
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @iicbb_one(i32 %43, i32 %44)
  br label %50

46:                                               ; preds = %39
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @iicbb_zero(i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %46, %42
  %51 = load i8, i8* %9, align 1
  %52 = zext i8 %51 to i32
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 45, i32 43
  %57 = trunc i32 %56 to i8
  %58 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %52, i8 signext %57)
  %59 = call i32 @I2C_DEBUG(i32 %58)
  %60 = load i8, i8* %9, align 1
  ret i8 %60
}

declare dso_local %struct.iicbb_softc* @device_get_softc(i32) #1

declare dso_local i32 @I2C_SET(%struct.iicbb_softc*, i32, i32, i32) #1

declare dso_local i64 @I2C_GETSDA(i32) #1

declare dso_local i32 @iicbb_one(i32, i32) #1

declare dso_local i32 @iicbb_zero(i32, i32) #1

declare dso_local i32 @I2C_DEBUG(i32) #1

declare dso_local i32 @printf(i8*, i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
