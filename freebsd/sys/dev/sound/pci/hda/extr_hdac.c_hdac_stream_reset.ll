; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdac.c_hdac_stream_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdac.c_hdac_stream_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_softc = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"Reset for not allocated stream (%d/%d)\0A\00", align 1
@HDAC_SDCTL0 = common dso_local global i64 0, align 8
@HDAC_SDCTL_SRST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Reset setting timeout\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Reset timeout!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32)* @hdac_stream_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdac_stream_reset(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.hdac_softc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.hdac_softc* @device_get_softc(i32 %15)
  store %struct.hdac_softc* %16, %struct.hdac_softc** %9, align 8
  store i32 1000, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  store i32 %17, i32* %11, align 4
  %18 = load %struct.hdac_softc*, %struct.hdac_softc** %9, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @hdac_find_stream(%struct.hdac_softc* %18, i32 %19, i32 %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp sge i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i8*
  %29 = call i32 @KASSERT(i32 %24, i8* %28)
  %30 = load i32, i32* %12, align 4
  %31 = shl i32 %30, 5
  store i32 %31, i32* %13, align 4
  %32 = load %struct.hdac_softc*, %struct.hdac_softc** %9, align 8
  %33 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %13, align 4
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* @HDAC_SDCTL0, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @HDAC_READ_1(i32* %33, i64 %37)
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* @HDAC_SDCTL_SRST, align 4
  %40 = load i32, i32* %14, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %14, align 4
  %42 = load %struct.hdac_softc*, %struct.hdac_softc** %9, align 8
  %43 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %42, i32 0, i32 0
  %44 = load i32, i32* %13, align 4
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* @HDAC_SDCTL0, align 8
  %47 = add nsw i64 %45, %46
  %48 = load i32, i32* %14, align 4
  %49 = call i32 @HDAC_WRITE_1(i32* %43, i64 %47, i32 %48)
  br label %50

50:                                               ; preds = %65, %4
  %51 = load %struct.hdac_softc*, %struct.hdac_softc** %9, align 8
  %52 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %51, i32 0, i32 0
  %53 = load i32, i32* %13, align 4
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* @HDAC_SDCTL0, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @HDAC_READ_1(i32* %52, i64 %56)
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* @HDAC_SDCTL_SRST, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %50
  br label %69

63:                                               ; preds = %50
  %64 = call i32 @DELAY(i32 10)
  br label %65

65:                                               ; preds = %63
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %50, label %69

69:                                               ; preds = %65, %62
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* @HDAC_SDCTL_SRST, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %69
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @device_printf(i32 %75, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %77

77:                                               ; preds = %74, %69
  %78 = load i32, i32* @HDAC_SDCTL_SRST, align 4
  %79 = xor i32 %78, -1
  %80 = load i32, i32* %14, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %14, align 4
  %82 = load %struct.hdac_softc*, %struct.hdac_softc** %9, align 8
  %83 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %82, i32 0, i32 0
  %84 = load i32, i32* %13, align 4
  %85 = sext i32 %84 to i64
  %86 = load i64, i64* @HDAC_SDCTL0, align 8
  %87 = add nsw i64 %85, %86
  %88 = load i32, i32* %14, align 4
  %89 = call i32 @HDAC_WRITE_1(i32* %83, i64 %87, i32 %88)
  %90 = load i32, i32* %10, align 4
  store i32 %90, i32* %11, align 4
  br label %91

91:                                               ; preds = %106, %77
  %92 = load %struct.hdac_softc*, %struct.hdac_softc** %9, align 8
  %93 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %92, i32 0, i32 0
  %94 = load i32, i32* %13, align 4
  %95 = sext i32 %94 to i64
  %96 = load i64, i64* @HDAC_SDCTL0, align 8
  %97 = add nsw i64 %95, %96
  %98 = call i32 @HDAC_READ_1(i32* %93, i64 %97)
  store i32 %98, i32* %14, align 4
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* @HDAC_SDCTL_SRST, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %91
  br label %110

104:                                              ; preds = %91
  %105 = call i32 @DELAY(i32 10)
  br label %106

106:                                              ; preds = %104
  %107 = load i32, i32* %11, align 4
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %11, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %91, label %110

110:                                              ; preds = %106, %103
  %111 = load i32, i32* %14, align 4
  %112 = load i32, i32* @HDAC_SDCTL_SRST, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @device_printf(i32 %116, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %118

118:                                              ; preds = %115, %110
  ret void
}

declare dso_local %struct.hdac_softc* @device_get_softc(i32) #1

declare dso_local i32 @hdac_find_stream(%struct.hdac_softc*, i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @HDAC_READ_1(i32*, i64) #1

declare dso_local i32 @HDAC_WRITE_1(i32*, i64, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
