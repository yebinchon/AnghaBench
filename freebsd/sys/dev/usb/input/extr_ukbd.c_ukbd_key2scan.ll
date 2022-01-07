; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_ukbd.c_ukbd_key2scan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_ukbd.c_ukbd_key2scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ukbd_softc = type { i32* }

@ukbd_key2scan.scan = internal constant [42 x i32] [i32 284, i32 285, i32 309, i32 311, i32 312, i32 327, i32 328, i32 329, i32 331, i32 333, i32 335, i32 336, i32 337, i32 338, i32 339, i32 326, i32 347, i32 348, i32 349, i32 360, i32 350, i32 351, i32 352, i32 353, i32 354, i32 355, i32 356, i32 357, i32 358, i32 359, i32 293, i32 287, i32 286, i32 288, i32 115, i32 112, i32 125, i32 121, i32 123, i32 92, i32 113, i32 114], align 16
@MOD_CONTROL_L = common dso_local global i32 0, align 4
@MOD_CONTROL_R = common dso_local global i32 0, align 4
@MOD_SHIFT_L = common dso_local global i32 0, align 4
@MOD_SHIFT_R = common dso_local global i32 0, align 4
@SCAN_PREFIX_SHIFT = common dso_local global i32 0, align 4
@SCAN_PREFIX_E1 = common dso_local global i32 0, align 4
@SCAN_PREFIX_CTL = common dso_local global i32 0, align 4
@SCAN_RELEASE = common dso_local global i32 0, align 4
@SCAN_PRESS = common dso_local global i32 0, align 4
@SCAN_PREFIX = common dso_local global i32 0, align 4
@SCAN_PREFIX_E0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ukbd_softc*, i32, i32, i32)* @ukbd_key2scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ukbd_key2scan(%struct.ukbd_softc* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ukbd_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ukbd_softc* %0, %struct.ukbd_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp sge i32 %10, 89
  br i1 %11, label %12, label %24

12:                                               ; preds = %4
  %13 = load i32, i32* %7, align 4
  %14 = call i64 @nitems(i32* getelementptr inbounds ([42 x i32], [42 x i32]* @ukbd_key2scan.scan, i64 0, i64 0))
  %15 = add nsw i64 89, %14
  %16 = trunc i64 %15 to i32
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %12
  %19 = load i32, i32* %7, align 4
  %20 = sub nsw i32 %19, 89
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [42 x i32], [42 x i32]* @ukbd_key2scan.scan, i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %18, %12, %4
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %25, 311
  br i1 %26, label %27, label %42

27:                                               ; preds = %24
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @MOD_CONTROL_L, align 4
  %30 = load i32, i32* @MOD_CONTROL_R, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @MOD_SHIFT_L, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @MOD_SHIFT_R, align 4
  %35 = or i32 %33, %34
  %36 = and i32 %28, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %27
  %39 = load i32, i32* @SCAN_PREFIX_SHIFT, align 4
  %40 = load i32, i32* %7, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %38, %27, %24
  %43 = load i32, i32* %7, align 4
  %44 = icmp eq i32 %43, 326
  br i1 %44, label %45, label %57

45:                                               ; preds = %42
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @MOD_CONTROL_L, align 4
  %48 = load i32, i32* @MOD_CONTROL_R, align 4
  %49 = or i32 %47, %48
  %50 = and i32 %46, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %45
  %53 = load i32, i32* @SCAN_PREFIX_E1, align 4
  %54 = or i32 69, %53
  %55 = load i32, i32* @SCAN_PREFIX_CTL, align 4
  %56 = or i32 %54, %55
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %52, %45, %42
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i32, i32* @SCAN_RELEASE, align 4
  br label %64

62:                                               ; preds = %57
  %63 = load i32, i32* @SCAN_PRESS, align 4
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i32 [ %61, %60 ], [ %63, %62 ]
  %66 = load i32, i32* %7, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @SCAN_PREFIX, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %137

72:                                               ; preds = %64
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @SCAN_PREFIX_CTL, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %94

77:                                               ; preds = %72
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @SCAN_RELEASE, align 4
  %80 = and i32 %78, %79
  %81 = or i32 29, %80
  %82 = load %struct.ukbd_softc*, %struct.ukbd_softc** %6, align 8
  %83 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  store i32 %81, i32* %85, align 4
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @SCAN_PREFIX, align 4
  %88 = xor i32 %87, -1
  %89 = and i32 %86, %88
  %90 = load %struct.ukbd_softc*, %struct.ukbd_softc** %6, align 8
  %91 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  store i32 %89, i32* %93, align 4
  br label %130

94:                                               ; preds = %72
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @SCAN_PREFIX_SHIFT, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %116

99:                                               ; preds = %94
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* @SCAN_RELEASE, align 4
  %102 = and i32 %100, %101
  %103 = or i32 42, %102
  %104 = load %struct.ukbd_softc*, %struct.ukbd_softc** %6, align 8
  %105 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  store i32 %103, i32* %107, align 4
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* @SCAN_PREFIX_SHIFT, align 4
  %110 = xor i32 %109, -1
  %111 = and i32 %108, %110
  %112 = load %struct.ukbd_softc*, %struct.ukbd_softc** %6, align 8
  %113 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 1
  store i32 %111, i32* %115, align 4
  br label %129

116:                                              ; preds = %94
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* @SCAN_PREFIX, align 4
  %119 = xor i32 %118, -1
  %120 = and i32 %117, %119
  %121 = load %struct.ukbd_softc*, %struct.ukbd_softc** %6, align 8
  %122 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 0
  store i32 %120, i32* %124, align 4
  %125 = load %struct.ukbd_softc*, %struct.ukbd_softc** %6, align 8
  %126 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 1
  store i32 0, i32* %128, align 4
  br label %129

129:                                              ; preds = %116, %99
  br label %130

130:                                              ; preds = %129, %77
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* @SCAN_PREFIX_E0, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  %135 = zext i1 %134 to i64
  %136 = select i1 %134, i32 224, i32 225
  store i32 %136, i32* %5, align 4
  br label %139

137:                                              ; preds = %64
  %138 = load i32, i32* %7, align 4
  store i32 %138, i32* %5, align 4
  br label %139

139:                                              ; preds = %137, %130
  %140 = load i32, i32* %5, align 4
  ret i32 %140
}

declare dso_local i64 @nitems(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
