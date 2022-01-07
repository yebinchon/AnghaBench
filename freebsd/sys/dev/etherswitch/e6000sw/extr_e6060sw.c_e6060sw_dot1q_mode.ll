; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/e6000sw/extr_e6060sw.c_e6060sw_dot1q_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/e6000sw/extr_e6060sw.c_e6060sw_dot1q_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e6060sw_softc = type { i32, i64 }

@CORE_REGISTER = common dso_local global i64 0, align 8
@PORT_CONTROL2 = common dso_local global i32 0, align 4
@DOT1QMODEMASK = common dso_local global i32 0, align 4
@DOT1QMODESHIFT = common dso_local global i32 0, align 4
@PORT_DEFVLAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @e6060sw_dot1q_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e6060sw_dot1q_mode(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.e6060sw_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.e6060sw_softc* @device_get_softc(i32 %8)
  store %struct.e6060sw_softc* %9, %struct.e6060sw_softc** %5, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %82, %2
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %5, align 8
  %13 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp sle i32 %11, %14
  br i1 %15, label %16, label %85

16:                                               ; preds = %10
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @device_get_parent(i32 %17)
  %19 = load i64, i64* @CORE_REGISTER, align 8
  %20 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %5, align 8
  %21 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %19, %22
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %23, %25
  %27 = load i32, i32* @PORT_CONTROL2, align 4
  %28 = call i32 @MDIO_READREG(i32 %18, i64 %26, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* @DOT1QMODEMASK, align 4
  %30 = load i32, i32* @DOT1QMODESHIFT, align 4
  %31 = shl i32 %29, %30
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %7, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @DOT1QMODESHIFT, align 4
  %37 = shl i32 %35, %36
  %38 = load i32, i32* %7, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @device_get_parent(i32 %40)
  %42 = load i64, i64* @CORE_REGISTER, align 8
  %43 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %5, align 8
  %44 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %42, %45
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %46, %48
  %50 = load i32, i32* @PORT_CONTROL2, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @MDIO_WRITEREG(i32 %41, i64 %49, i32 %50, i32 %51)
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @device_get_parent(i32 %53)
  %55 = load i64, i64* @CORE_REGISTER, align 8
  %56 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %5, align 8
  %57 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %55, %58
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %59, %61
  %63 = load i32, i32* @PORT_DEFVLAN, align 4
  %64 = call i32 @MDIO_READREG(i32 %54, i64 %62, i32 %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = and i32 %65, -4096
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = or i32 %67, 1
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @device_get_parent(i32 %69)
  %71 = load i64, i64* @CORE_REGISTER, align 8
  %72 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %5, align 8
  %73 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %71, %74
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %75, %77
  %79 = load i32, i32* @PORT_DEFVLAN, align 4
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @MDIO_WRITEREG(i32 %70, i64 %78, i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %16
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %6, align 4
  br label %10

85:                                               ; preds = %10
  ret void
}

declare dso_local %struct.e6060sw_softc* @device_get_softc(i32) #1

declare dso_local i32 @MDIO_READREG(i32, i64, i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @MDIO_WRITEREG(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
