; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/isa/extr_atrtc.c_atrtc_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/isa/extr_atrtc.c_atrtc_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atrtc_softc = type { %struct.TYPE_3__, i32*, i32, i64, i32*, i64 }
%struct.TYPE_3__ = type { i8*, i32, i32, i32, i32, i32, i32, i32, i64 }

@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@IO_RTC = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Warning: Couldn't map I/O.\0A\00", align 1
@atrtcclock_disable = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"clock\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Can't map interrupt.\0A\00", align 1
@INTR_TYPE_CLK = common dso_local global i32 0, align 4
@rtc_intr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Can't setup interrupt.\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"RTC\00", align 1
@ET_FLAGS_PERIODIC = common dso_local global i32 0, align 4
@ET_FLAGS_POW2DIV = common dso_local global i32 0, align 4
@rtc_start = common dso_local global i32 0, align 4
@rtc_stop = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @atrtc_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atrtc_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.atrtc_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.atrtc_softc* @device_get_softc(i32 %7)
  store %struct.atrtc_softc* %8, %struct.atrtc_softc** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @SYS_RES_IOPORT, align 4
  %11 = load %struct.atrtc_softc*, %struct.atrtc_softc** %4, align 8
  %12 = getelementptr inbounds %struct.atrtc_softc, %struct.atrtc_softc* %11, i32 0, i32 5
  %13 = load i32, i32* @IO_RTC, align 4
  %14 = load i32, i32* @IO_RTC, align 4
  %15 = add nsw i32 %14, 1
  %16 = load i32, i32* @RF_ACTIVE, align 4
  %17 = call i8* @bus_alloc_resource(i32 %9, i32 %10, i64* %12, i32 %13, i32 %15, i32 2, i32 %16)
  %18 = bitcast i8* %17 to i32*
  %19 = load %struct.atrtc_softc*, %struct.atrtc_softc** %4, align 8
  %20 = getelementptr inbounds %struct.atrtc_softc, %struct.atrtc_softc* %19, i32 0, i32 4
  store i32* %18, i32** %20, align 8
  %21 = load %struct.atrtc_softc*, %struct.atrtc_softc** %4, align 8
  %22 = getelementptr inbounds %struct.atrtc_softc, %struct.atrtc_softc* %21, i32 0, i32 4
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @device_printf(i32 %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %1
  %29 = call i32 (...) @atrtc_start()
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @clock_register(i32 %30, i32 1000000)
  %32 = load %struct.atrtc_softc*, %struct.atrtc_softc** %4, align 8
  %33 = getelementptr inbounds %struct.atrtc_softc, %struct.atrtc_softc* %32, i32 0, i32 0
  %34 = call i32 @bzero(%struct.TYPE_3__* %33, i32 4)
  %35 = load i32, i32* @atrtcclock_disable, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %144, label %37

37:                                               ; preds = %28
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @device_get_name(i32 %38)
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @device_get_unit(i32 %40)
  %42 = call i64 @resource_int_value(i32 %39, i32 %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %6)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %37
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %144

47:                                               ; preds = %44, %37
  %48 = load %struct.atrtc_softc*, %struct.atrtc_softc** %4, align 8
  %49 = getelementptr inbounds %struct.atrtc_softc, %struct.atrtc_softc* %48, i32 0, i32 3
  store i64 0, i64* %49, align 8
  br label %50

50:                                               ; preds = %63, %47
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @SYS_RES_IRQ, align 4
  %53 = load %struct.atrtc_softc*, %struct.atrtc_softc** %4, align 8
  %54 = getelementptr inbounds %struct.atrtc_softc, %struct.atrtc_softc* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = call i64 @bus_get_resource(i32 %51, i32 %52, i64 %55, i32* %5, i32* null)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %50
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 8
  br label %61

61:                                               ; preds = %58, %50
  %62 = phi i1 [ false, %50 ], [ %60, %58 ]
  br i1 %62, label %63, label %68

63:                                               ; preds = %61
  %64 = load %struct.atrtc_softc*, %struct.atrtc_softc** %4, align 8
  %65 = getelementptr inbounds %struct.atrtc_softc, %struct.atrtc_softc* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %65, align 8
  br label %50

68:                                               ; preds = %61
  %69 = load i32, i32* %3, align 4
  %70 = load i32, i32* @SYS_RES_IRQ, align 4
  %71 = load %struct.atrtc_softc*, %struct.atrtc_softc** %4, align 8
  %72 = getelementptr inbounds %struct.atrtc_softc, %struct.atrtc_softc* %71, i32 0, i32 3
  %73 = load i32, i32* @RF_ACTIVE, align 4
  %74 = call i8* @bus_alloc_resource(i32 %69, i32 %70, i64* %72, i32 8, i32 8, i32 1, i32 %73)
  %75 = bitcast i8* %74 to i32*
  %76 = load %struct.atrtc_softc*, %struct.atrtc_softc** %4, align 8
  %77 = getelementptr inbounds %struct.atrtc_softc, %struct.atrtc_softc* %76, i32 0, i32 1
  store i32* %75, i32** %77, align 8
  %78 = load %struct.atrtc_softc*, %struct.atrtc_softc** %4, align 8
  %79 = getelementptr inbounds %struct.atrtc_softc, %struct.atrtc_softc* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = icmp eq i32* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %68
  %83 = load i32, i32* %3, align 4
  %84 = call i32 @device_printf(i32 %83, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %145

85:                                               ; preds = %68
  %86 = load i32, i32* %3, align 4
  %87 = load %struct.atrtc_softc*, %struct.atrtc_softc** %4, align 8
  %88 = getelementptr inbounds %struct.atrtc_softc, %struct.atrtc_softc* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* @INTR_TYPE_CLK, align 4
  %91 = load i32, i32* @rtc_intr, align 4
  %92 = load %struct.atrtc_softc*, %struct.atrtc_softc** %4, align 8
  %93 = load %struct.atrtc_softc*, %struct.atrtc_softc** %4, align 8
  %94 = getelementptr inbounds %struct.atrtc_softc, %struct.atrtc_softc* %93, i32 0, i32 2
  %95 = call i64 @bus_setup_intr(i32 %86, i32* %89, i32 %90, i32 %91, i32* null, %struct.atrtc_softc* %92, i32* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %85
  %98 = load i32, i32* %3, align 4
  %99 = call i32 @device_printf(i32 %98, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %145

100:                                              ; preds = %85
  %101 = load i32, i32* %3, align 4
  %102 = load %struct.atrtc_softc*, %struct.atrtc_softc** %4, align 8
  %103 = getelementptr inbounds %struct.atrtc_softc, %struct.atrtc_softc* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = call i32 @bus_bind_intr(i32 %101, i32* %104, i32 0)
  br label %106

106:                                              ; preds = %100
  br label %107

107:                                              ; preds = %106
  %108 = load %struct.atrtc_softc*, %struct.atrtc_softc** %4, align 8
  %109 = getelementptr inbounds %struct.atrtc_softc, %struct.atrtc_softc* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %110, align 8
  %111 = load i32, i32* @ET_FLAGS_PERIODIC, align 4
  %112 = load i32, i32* @ET_FLAGS_POW2DIV, align 4
  %113 = or i32 %111, %112
  %114 = load %struct.atrtc_softc*, %struct.atrtc_softc** %4, align 8
  %115 = getelementptr inbounds %struct.atrtc_softc, %struct.atrtc_softc* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 1
  store i32 %113, i32* %116, align 8
  %117 = load %struct.atrtc_softc*, %struct.atrtc_softc** %4, align 8
  %118 = getelementptr inbounds %struct.atrtc_softc, %struct.atrtc_softc* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 8
  store i64 0, i64* %119, align 8
  %120 = load %struct.atrtc_softc*, %struct.atrtc_softc** %4, align 8
  %121 = getelementptr inbounds %struct.atrtc_softc, %struct.atrtc_softc* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 2
  store i32 32768, i32* %122, align 4
  %123 = load %struct.atrtc_softc*, %struct.atrtc_softc** %4, align 8
  %124 = getelementptr inbounds %struct.atrtc_softc, %struct.atrtc_softc* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 3
  store i32 524288, i32* %125, align 8
  %126 = load %struct.atrtc_softc*, %struct.atrtc_softc** %4, align 8
  %127 = getelementptr inbounds %struct.atrtc_softc, %struct.atrtc_softc* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 4
  store i32 -2147483648, i32* %128, align 4
  %129 = load i32, i32* @rtc_start, align 4
  %130 = load %struct.atrtc_softc*, %struct.atrtc_softc** %4, align 8
  %131 = getelementptr inbounds %struct.atrtc_softc, %struct.atrtc_softc* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 7
  store i32 %129, i32* %132, align 8
  %133 = load i32, i32* @rtc_stop, align 4
  %134 = load %struct.atrtc_softc*, %struct.atrtc_softc** %4, align 8
  %135 = getelementptr inbounds %struct.atrtc_softc, %struct.atrtc_softc* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 6
  store i32 %133, i32* %136, align 4
  %137 = load i32, i32* %3, align 4
  %138 = load %struct.atrtc_softc*, %struct.atrtc_softc** %4, align 8
  %139 = getelementptr inbounds %struct.atrtc_softc, %struct.atrtc_softc* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 5
  store i32 %137, i32* %140, align 8
  %141 = load %struct.atrtc_softc*, %struct.atrtc_softc** %4, align 8
  %142 = getelementptr inbounds %struct.atrtc_softc, %struct.atrtc_softc* %141, i32 0, i32 0
  %143 = call i32 @et_register(%struct.TYPE_3__* %142)
  br label %144

144:                                              ; preds = %107, %44, %28
  store i32 0, i32* %2, align 4
  br label %145

145:                                              ; preds = %144, %97, %82
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

declare dso_local %struct.atrtc_softc* @device_get_softc(i32) #1

declare dso_local i8* @bus_alloc_resource(i32, i32, i64*, i32, i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @atrtc_start(...) #1

declare dso_local i32 @clock_register(i32, i32) #1

declare dso_local i32 @bzero(%struct.TYPE_3__*, i32) #1

declare dso_local i64 @resource_int_value(i32, i32, i8*, i32*) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i64 @bus_get_resource(i32, i32, i64, i32*, i32*) #1

declare dso_local i64 @bus_setup_intr(i32, i32*, i32, i32, i32*, %struct.atrtc_softc*, i32*) #1

declare dso_local i32 @bus_bind_intr(i32, i32*, i32) #1

declare dso_local i32 @et_register(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
