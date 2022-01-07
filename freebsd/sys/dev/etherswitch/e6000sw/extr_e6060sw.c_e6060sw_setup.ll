; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/e6000sw/extr_e6060sw.c_e6060sw_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/e6000sw/extr_e6060sw.c_e6060sw_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e6060sw_softc = type { i32, i64, i64 }

@E6063 = common dso_local global i64 0, align 8
@E6065 = common dso_local global i64 0, align 8
@CORE_REGISTER = common dso_local global i64 0, align 8
@PORT_VLAN_MAP = common dso_local global i32 0, align 4
@FORCEMAPMASK = common dso_local global i32 0, align 4
@FORCEMAPSHIFT = common dso_local global i32 0, align 4
@PORT_CONTROL = common dso_local global i32 0, align 4
@ENGRESSFSHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @e6060sw_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e6060sw_setup(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.e6060sw_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.e6060sw_softc* @device_get_softc(i32 %6)
  store %struct.e6060sw_softc* %7, %struct.e6060sw_softc** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %88, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %3, align 8
  %11 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp sle i32 %9, %12
  br i1 %13, label %14, label %91

14:                                               ; preds = %8
  %15 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %3, align 8
  %16 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @E6063, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  %21 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %3, align 8
  %22 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @E6065, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %87

26:                                               ; preds = %20, %14
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @device_get_parent(i32 %27)
  %29 = load i64, i64* @CORE_REGISTER, align 8
  %30 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %3, align 8
  %31 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %29, %32
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %33, %35
  %37 = load i32, i32* @PORT_VLAN_MAP, align 4
  %38 = call i32 @MDIO_READREG(i32 %28, i64 %36, i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* @FORCEMAPMASK, align 4
  %40 = load i32, i32* @FORCEMAPSHIFT, align 4
  %41 = shl i32 %39, %40
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %5, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %2, align 4
  %46 = call i32 @device_get_parent(i32 %45)
  %47 = load i64, i64* @CORE_REGISTER, align 8
  %48 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %3, align 8
  %49 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %47, %50
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %51, %53
  %55 = load i32, i32* @PORT_VLAN_MAP, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @MDIO_WRITEREG(i32 %46, i64 %54, i32 %55, i32 %56)
  %58 = load i32, i32* %2, align 4
  %59 = call i32 @device_get_parent(i32 %58)
  %60 = load i64, i64* @CORE_REGISTER, align 8
  %61 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %3, align 8
  %62 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %60, %63
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %64, %66
  %68 = load i32, i32* @PORT_CONTROL, align 4
  %69 = call i32 @MDIO_READREG(i32 %59, i64 %67, i32 %68)
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* @ENGRESSFSHIFT, align 4
  %71 = shl i32 3, %70
  %72 = load i32, i32* %5, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %2, align 4
  %75 = call i32 @device_get_parent(i32 %74)
  %76 = load i64, i64* @CORE_REGISTER, align 8
  %77 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %3, align 8
  %78 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %76, %79
  %81 = load i32, i32* %4, align 4
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %80, %82
  %84 = load i32, i32* @PORT_CONTROL, align 4
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @MDIO_WRITEREG(i32 %75, i64 %83, i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %26, %20
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %4, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %4, align 4
  br label %8

91:                                               ; preds = %8
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
