; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_sbp.c_sbp_new_target.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_sbp.c_sbp_new_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32 }
%struct.sbp_softc = type { %struct.TYPE_9__*, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_7__ = type { i32 }
%struct.fw_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32 }

@SBP_NUM_TARGETS = common dso_local global i32 0, align 4
@wired = common dso_local global %struct.TYPE_10__* null, align 8
@.str = private unnamed_addr constant [37 x i8] c"target %d is not free for %08x:%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sbp_softc*, %struct.fw_device*)* @sbp_new_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbp_new_target(%struct.sbp_softc* %0, %struct.fw_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sbp_softc*, align 8
  %5 = alloca %struct.fw_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.sbp_softc* %0, %struct.sbp_softc** %4, align 8
  store %struct.fw_device* %1, %struct.fw_device** %5, align 8
  store i32 -1, i32* %8, align 4
  %12 = load i32, i32* @SBP_NUM_TARGETS, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  %16 = trunc i64 %13 to i32
  %17 = call i32 @bzero(i8* %15, i32 %16)
  %18 = load %struct.sbp_softc*, %struct.sbp_softc** %4, align 8
  %19 = getelementptr inbounds %struct.sbp_softc, %struct.sbp_softc* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @device_get_unit(i32 %21)
  store i32 %22, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %83, %2
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wired, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %31, label %86

31:                                               ; preds = %23
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wired, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %82

40:                                               ; preds = %31
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wired, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds i8, i8* %15, i64 %46
  store i8 1, i8* %47, align 1
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wired, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.fw_device*, %struct.fw_device** %5, align 8
  %56 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %54, %58
  br i1 %59, label %60, label %81

60:                                               ; preds = %40
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wired, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.fw_device*, %struct.fw_device** %5, align 8
  %69 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %67, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %60
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wired, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %8, align 4
  br label %81

81:                                               ; preds = %73, %60, %40
  br label %82

82:                                               ; preds = %81, %31
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %7, align 4
  br label %23

86:                                               ; preds = %23
  %87 = load i32, i32* %8, align 4
  %88 = icmp sge i32 %87, 0
  br i1 %88, label %89, label %120

89:                                               ; preds = %86
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* @SBP_NUM_TARGETS, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %105

93:                                               ; preds = %89
  %94 = load %struct.sbp_softc*, %struct.sbp_softc** %4, align 8
  %95 = getelementptr inbounds %struct.sbp_softc, %struct.sbp_softc* %94, i32 0, i32 0
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %95, align 8
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = icmp eq i32* %101, null
  br i1 %102, label %103, label %105

103:                                              ; preds = %93
  %104 = load i32, i32* %8, align 4
  store i32 %104, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %150

105:                                              ; preds = %93, %89
  %106 = load %struct.sbp_softc*, %struct.sbp_softc** %4, align 8
  %107 = getelementptr inbounds %struct.sbp_softc, %struct.sbp_softc* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %8, align 4
  %111 = load %struct.fw_device*, %struct.fw_device** %5, align 8
  %112 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.fw_device*, %struct.fw_device** %5, align 8
  %116 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @device_printf(i32 %109, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %110, i32 %114, i64 %118)
  store i32 -1, i32* %8, align 4
  br label %120

120:                                              ; preds = %105, %86
  store i32 0, i32* %7, align 4
  br label %121

121:                                              ; preds = %145, %120
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* @SBP_NUM_TARGETS, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %148

125:                                              ; preds = %121
  %126 = load %struct.sbp_softc*, %struct.sbp_softc** %4, align 8
  %127 = getelementptr inbounds %struct.sbp_softc, %struct.sbp_softc* %126, i32 0, i32 0
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %127, align 8
  %129 = load i32, i32* %7, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = icmp eq i32* %133, null
  br i1 %134, label %135, label %144

135:                                              ; preds = %125
  %136 = load i32, i32* %7, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8, i8* %15, i64 %137
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %135
  %143 = load i32, i32* %7, align 4
  store i32 %143, i32* %8, align 4
  br label %148

144:                                              ; preds = %135, %125
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %7, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %7, align 4
  br label %121

148:                                              ; preds = %142, %121
  %149 = load i32, i32* %8, align 4
  store i32 %149, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %150

150:                                              ; preds = %148, %103
  %151 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %151)
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @bzero(i8*, i32) #2

declare dso_local i32 @device_get_unit(i32) #2

declare dso_local i32 @device_printf(i32, i8*, i32, i32, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
