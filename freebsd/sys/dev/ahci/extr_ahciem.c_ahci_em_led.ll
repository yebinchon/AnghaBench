; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahciem.c_ahci_em_led.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahciem.c_ahci_em_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_led = type { i32, i32 }
%struct.ahci_enclosure = type { i32** }

@AHCI_NUM_LEDS = common dso_local global i32 0, align 4
@SESCTL_RQSID = common dso_local global i32 0, align 4
@SESCTL_RQSFLT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @ahci_em_led to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahci_em_led(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ahci_led*, align 8
  %6 = alloca %struct.ahci_enclosure*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.ahci_led*
  store %struct.ahci_led* %10, %struct.ahci_led** %5, align 8
  %11 = load %struct.ahci_led*, %struct.ahci_led** %5, align 8
  %12 = getelementptr inbounds %struct.ahci_led, %struct.ahci_led* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.ahci_enclosure* @device_get_softc(i32 %13)
  store %struct.ahci_enclosure* %14, %struct.ahci_enclosure** %6, align 8
  %15 = load %struct.ahci_led*, %struct.ahci_led** %5, align 8
  %16 = getelementptr inbounds %struct.ahci_led, %struct.ahci_led* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @AHCI_NUM_LEDS, align 4
  %19 = sdiv i32 %17, %18
  store i32 %19, i32* %7, align 4
  %20 = load %struct.ahci_led*, %struct.ahci_led** %5, align 8
  %21 = getelementptr inbounds %struct.ahci_led, %struct.ahci_led* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @AHCI_NUM_LEDS, align 4
  %24 = srem i32 %22, %23
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %53

27:                                               ; preds = %2
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %27
  %31 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %6, align 8
  %32 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %31, i32 0, i32 0
  %33 = load i32**, i32*** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32*, i32** %33, i64 %35
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 2
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, 128
  store i32 %40, i32* %38, align 4
  br label %52

41:                                               ; preds = %27
  %42 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %6, align 8
  %43 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %42, i32 0, i32 0
  %44 = load i32**, i32*** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32*, i32** %44, i64 %46
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 2
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, -129
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %41, %30
  br label %118

53:                                               ; preds = %2
  %54 = load i32, i32* %8, align 4
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %85

56:                                               ; preds = %53
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %56
  %60 = load i32, i32* @SESCTL_RQSID, align 4
  %61 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %6, align 8
  %62 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %61, i32 0, i32 0
  %63 = load i32**, i32*** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32*, i32** %63, i64 %65
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 2
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %60
  store i32 %70, i32* %68, align 4
  br label %84

71:                                               ; preds = %56
  %72 = load i32, i32* @SESCTL_RQSID, align 4
  %73 = xor i32 %72, -1
  %74 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %6, align 8
  %75 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %74, i32 0, i32 0
  %76 = load i32**, i32*** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32*, i32** %76, i64 %78
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 2
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, %73
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %71, %59
  br label %117

85:                                               ; preds = %53
  %86 = load i32, i32* %8, align 4
  %87 = icmp eq i32 %86, 2
  br i1 %87, label %88, label %116

88:                                               ; preds = %85
  %89 = load i32, i32* %4, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %103

91:                                               ; preds = %88
  %92 = load i32, i32* @SESCTL_RQSFLT, align 4
  %93 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %6, align 8
  %94 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %93, i32 0, i32 0
  %95 = load i32**, i32*** %94, align 8
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32*, i32** %95, i64 %97
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 3
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %92
  store i32 %102, i32* %100, align 4
  br label %115

103:                                              ; preds = %88
  %104 = load i32, i32* @SESCTL_RQSFLT, align 4
  %105 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %6, align 8
  %106 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %105, i32 0, i32 0
  %107 = load i32**, i32*** %106, align 8
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32*, i32** %107, i64 %109
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 3
  %113 = load i32, i32* %112, align 4
  %114 = and i32 %113, %104
  store i32 %114, i32* %112, align 4
  br label %115

115:                                              ; preds = %103, %91
  br label %116

116:                                              ; preds = %115, %85
  br label %117

117:                                              ; preds = %116, %84
  br label %118

118:                                              ; preds = %117, %52
  %119 = load %struct.ahci_led*, %struct.ahci_led** %5, align 8
  %120 = getelementptr inbounds %struct.ahci_led, %struct.ahci_led* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %7, align 4
  %123 = call i32 @ahci_em_setleds(i32 %121, i32 %122)
  ret void
}

declare dso_local %struct.ahci_enclosure* @device_get_softc(i32) #1

declare dso_local i32 @ahci_em_setleds(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
