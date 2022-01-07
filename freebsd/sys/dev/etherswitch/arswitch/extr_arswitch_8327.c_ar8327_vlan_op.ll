; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/arswitch/extr_arswitch_8327.c_ar8327_vlan_op.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/arswitch/extr_arswitch_8327.c_ar8327_vlan_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arswitch_softc = type { i32 }

@AR8327_REG_VTU_FUNC1 = common dso_local global i32 0, align 4
@AR8327_VTU_FUNC1_BUSY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@AR8327_VTU_FUNC1_OP = common dso_local global i32 0, align 4
@AR8327_VTU_FUNC1_OP_LOAD = common dso_local global i32 0, align 4
@AR8327_REG_VTU_FUNC0 = common dso_local global i32 0, align 4
@AR8327_VTU_FUNC1_VID_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arswitch_softc*, i32, i32, i32)* @ar8327_vlan_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar8327_vlan_op(%struct.arswitch_softc* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.arswitch_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.arswitch_softc* %0, %struct.arswitch_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.arswitch_softc*, %struct.arswitch_softc** %6, align 8
  %12 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @AR8327_REG_VTU_FUNC1, align 4
  %15 = load i32, i32* @AR8327_VTU_FUNC1_BUSY, align 4
  %16 = call i64 @arswitch_waitreg(i32 %13, i32 %14, i32 %15, i32 0, i32 5)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @EBUSY, align 4
  store i32 %19, i32* %5, align 4
  br label %64

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @AR8327_VTU_FUNC1_OP, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* @AR8327_VTU_FUNC1_OP_LOAD, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %20
  %27 = load %struct.arswitch_softc*, %struct.arswitch_softc** %6, align 8
  %28 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @AR8327_REG_VTU_FUNC0, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @arswitch_writereg(i32 %29, i32 %30, i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %5, align 4
  br label %64

37:                                               ; preds = %26
  br label %38

38:                                               ; preds = %37, %20
  %39 = load i32, i32* %8, align 4
  %40 = and i32 %39, 4095
  %41 = load i32, i32* @AR8327_VTU_FUNC1_VID_S, align 4
  %42 = shl i32 %40, %41
  %43 = load i32, i32* %7, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* @AR8327_VTU_FUNC1_BUSY, align 4
  %46 = load i32, i32* %7, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %7, align 4
  %48 = load %struct.arswitch_softc*, %struct.arswitch_softc** %6, align 8
  %49 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @AR8327_REG_VTU_FUNC1, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @arswitch_writereg(i32 %50, i32 %51, i32 %52)
  %54 = load %struct.arswitch_softc*, %struct.arswitch_softc** %6, align 8
  %55 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @AR8327_REG_VTU_FUNC1, align 4
  %58 = load i32, i32* @AR8327_VTU_FUNC1_BUSY, align 4
  %59 = call i64 @arswitch_waitreg(i32 %56, i32 %57, i32 %58, i32 0, i32 5)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %38
  %62 = load i32, i32* @EBUSY, align 4
  store i32 %62, i32* %5, align 4
  br label %64

63:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %63, %61, %35, %18
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i64 @arswitch_waitreg(i32, i32, i32, i32, i32) #1

declare dso_local i32 @arswitch_writereg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
