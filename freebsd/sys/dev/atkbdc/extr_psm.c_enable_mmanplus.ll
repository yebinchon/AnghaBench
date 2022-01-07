; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_psm.c_enable_mmanplus.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_psm.c_enable_mmanplus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psm_softc = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@MOUSE_PS2PLUS_SYNCMASK = common dso_local global i32 0, align 4
@MOUSE_PS2PLUS_SYNC = common dso_local global i32 0, align 4
@PROBE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psm_softc*, i32)* @enable_mmanplus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enable_mmanplus(%struct.psm_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.psm_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [3 x i32], align 4
  store %struct.psm_softc* %0, %struct.psm_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %9 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @set_mouse_scaling(i32 %11, i32 1)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* %3, align 4
  br label %81

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @mouse_ext_command(i32 %17, i32 57)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @mouse_ext_command(i32 %21, i32 219)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %20, %16
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %3, align 4
  br label %81

26:                                               ; preds = %20
  %27 = load i32, i32* %6, align 4
  %28 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %29 = call i32 @get_mouse_status(i32 %27, i32* %28, i32 1, i32 3)
  %30 = icmp slt i32 %29, 3
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @FALSE, align 4
  store i32 %32, i32* %3, align 4
  br label %81

33:                                               ; preds = %26
  %34 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @MOUSE_PS2PLUS_SYNCMASK, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* @MOUSE_PS2PLUS_SYNC, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* @FALSE, align 4
  store i32 %41, i32* %3, align 4
  br label %81

42:                                               ; preds = %33
  %43 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 195
  %46 = icmp ne i32 %45, 194
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* @FALSE, align 4
  store i32 %48, i32* %3, align 4
  br label %81

49:                                               ; preds = %42
  %50 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %51 = call i32 @MOUSE_PS2PLUS_CHECKBITS(i32* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* @FALSE, align 4
  store i32 %54, i32* %3, align 4
  br label %81

55:                                               ; preds = %49
  %56 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %57 = call i64 @MOUSE_PS2PLUS_PACKET_TYPE(i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i32, i32* @FALSE, align 4
  store i32 %60, i32* %3, align 4
  br label %81

61:                                               ; preds = %55
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @PROBE, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %79

65:                                               ; preds = %61
  %66 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %67 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, 255
  store i32 %70, i32* %68, align 4
  %71 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 2
  %72 = load i32, i32* %71, align 4
  %73 = shl i32 %72, 8
  %74 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %75 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %73
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %65, %61
  %80 = load i32, i32* @TRUE, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %79, %59, %53, %47, %40, %31, %24, %14
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @set_mouse_scaling(i32, i32) #1

declare dso_local i32 @mouse_ext_command(i32, i32) #1

declare dso_local i32 @get_mouse_status(i32, i32*, i32, i32) #1

declare dso_local i32 @MOUSE_PS2PLUS_CHECKBITS(i32*) #1

declare dso_local i64 @MOUSE_PS2PLUS_PACKET_TYPE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
