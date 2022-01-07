; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/rtl8366/extr_rtl8366rb.c_rtl_setport.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/rtl8366/extr_rtl8366rb.c_rtl_setport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.rtl8366rb_softc = type { i32, i32*, i32*, i32*, i64 }
%struct.ifmedia = type { i32 }
%struct.mii_data = type { %struct.ifmedia }

@ENXIO = common dso_local global i32 0, align 4
@RTL8366_NUM_VLANS = common dso_local global i32 0, align 4
@ETHERSWITCH_VID_MASK = common dso_local global i32 0, align 4
@RTL8366_PVCR_PORT_MASK = common dso_local global i32 0, align 4
@RTL_WAITOK = common dso_local global i32 0, align 4
@SIOCSIFMEDIA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_3__*)* @rtl_setport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl_setport(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.rtl8366rb_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ifmedia*, align 8
  %11 = alloca %struct.mii_data*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i8* @device_get_softc(i32 %13)
  %15 = bitcast i8* %14 to %struct.rtl8366rb_softc*
  store %struct.rtl8366rb_softc* %15, %struct.rtl8366rb_softc** %6, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %2
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %6, align 8
  %25 = getelementptr inbounds %struct.rtl8366rb_softc, %struct.rtl8366rb_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, 1
  %28 = icmp sge i32 %23, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %20, %2
  %30 = load i32, i32* @ENXIO, align 4
  store i32 %30, i32* %3, align 4
  br label %137

31:                                               ; preds = %20
  store i32 -1, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %53, %31
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @RTL8366_NUM_VLANS, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %56

36:                                               ; preds = %32
  %37 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %6, align 8
  %38 = getelementptr inbounds %struct.rtl8366rb_softc, %struct.rtl8366rb_softc* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @ETHERSWITCH_VID_MASK, align 4
  %45 = and i32 %43, %44
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %45, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %36
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %9, align 4
  br label %56

52:                                               ; preds = %36
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %32

56:                                               ; preds = %50, %32
  %57 = load i32, i32* %9, align 4
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load i32, i32* @ENXIO, align 4
  store i32 %60, i32* %3, align 4
  br label %137

61:                                               ; preds = %56
  %62 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %6, align 8
  %63 = getelementptr inbounds %struct.rtl8366rb_softc, %struct.rtl8366rb_softc* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %61
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %6, align 8
  %71 = getelementptr inbounds %struct.rtl8366rb_softc, %struct.rtl8366rb_softc* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp eq i32 %69, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %66
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %12, align 4
  br label %83

79:                                               ; preds = %66, %61
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %12, align 4
  br label %83

83:                                               ; preds = %79, %74
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* %12, align 4
  %86 = call i32 @RTL8366_PVCR_REG(i32 %85)
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* @RTL8366_PVCR_PORT_MASK, align 4
  %89 = call i32 @RTL8366_PVCR_VAL(i32 %87, i32 %88)
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @RTL8366_PVCR_VAL(i32 %90, i32 %91)
  %93 = load i32, i32* @RTL_WAITOK, align 4
  %94 = call i32 @smi_rmw(i32 %84, i32 %86, i32 %89, i32 %92, i32 %93)
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %83
  %98 = load i32, i32* %8, align 4
  store i32 %98, i32* %3, align 4
  br label %137

99:                                               ; preds = %83
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %6, align 8
  %104 = getelementptr inbounds %struct.rtl8366rb_softc, %struct.rtl8366rb_softc* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp eq i32 %102, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %99
  store i32 0, i32* %3, align 4
  br label %137

108:                                              ; preds = %99
  %109 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %6, align 8
  %110 = getelementptr inbounds %struct.rtl8366rb_softc, %struct.rtl8366rb_softc* %109, i32 0, i32 3
  %111 = load i32*, i32** %110, align 8
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %111, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = call i8* @device_get_softc(i32 %117)
  %119 = bitcast i8* %118 to %struct.mii_data*
  store %struct.mii_data* %119, %struct.mii_data** %11, align 8
  %120 = load %struct.mii_data*, %struct.mii_data** %11, align 8
  %121 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %120, i32 0, i32 0
  store %struct.ifmedia* %121, %struct.ifmedia** %10, align 8
  %122 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %6, align 8
  %123 = getelementptr inbounds %struct.rtl8366rb_softc, %struct.rtl8366rb_softc* %122, i32 0, i32 2
  %124 = load i32*, i32** %123, align 8
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %124, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 2
  %133 = load %struct.ifmedia*, %struct.ifmedia** %10, align 8
  %134 = load i32, i32* @SIOCSIFMEDIA, align 4
  %135 = call i32 @ifmedia_ioctl(i32 %130, i32* %132, %struct.ifmedia* %133, i32 %134)
  store i32 %135, i32* %8, align 4
  %136 = load i32, i32* %8, align 4
  store i32 %136, i32* %3, align 4
  br label %137

137:                                              ; preds = %108, %107, %97, %59, %29
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @smi_rmw(i32, i32, i32, i32, i32) #1

declare dso_local i32 @RTL8366_PVCR_REG(i32) #1

declare dso_local i32 @RTL8366_PVCR_VAL(i32, i32) #1

declare dso_local i32 @ifmedia_ioctl(i32, i32*, %struct.ifmedia*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
