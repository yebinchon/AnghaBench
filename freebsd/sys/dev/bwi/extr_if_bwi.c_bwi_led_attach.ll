; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_led_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_led_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64* }
%struct.bwi_softc = type { i64, i32, i32, i32, %struct.bwi_led*, %struct.bwi_led* }
%struct.bwi_led = type { i64, i32, i32 }

@BWI_LED_MAX = common dso_local global i32 0, align 4
@bwi_vendor_led_act = common dso_local global %struct.TYPE_3__* null, align 8
@bwi_default_led_act = common dso_local global i64* null, align 8
@BWI_SPROM_GPIO01 = common dso_local global i32 0, align 4
@BWI_SPROM_GPIO_0 = common dso_local global i32 0, align 4
@BWI_SPROM_GPIO_1 = common dso_local global i32 0, align 4
@BWI_SPROM_GPIO23 = common dso_local global i32 0, align 4
@BWI_SPROM_GPIO_2 = common dso_local global i32 0, align 4
@BWI_SPROM_GPIO_3 = common dso_local global i32 0, align 4
@BWI_LED_ACT_LOW = common dso_local global i32 0, align 4
@BWI_LED_F_ACTLOW = common dso_local global i32 0, align 4
@BWI_LED_ACT_MASK = common dso_local global i32 0, align 4
@BWI_LED_ACT_BLINK_SLOW = common dso_local global i64 0, align 8
@BWI_LED_ACT_BLINK_POLL = common dso_local global i64 0, align 8
@BWI_LED_ACT_BLINK = common dso_local global i64 0, align 8
@BWI_LED_F_BLINK = common dso_local global i32 0, align 4
@BWI_LED_F_POLLABLE = common dso_local global i32 0, align 4
@BWI_LED_F_SLOW = common dso_local global i32 0, align 4
@BWI_DBG_LED = common dso_local global i32 0, align 4
@BWI_DBG_ATTACH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"%dth led, act %d, lowact %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwi_softc*)* @bwi_led_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwi_led_attach(%struct.bwi_softc* %0) #0 {
  %2 = alloca %struct.bwi_softc*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bwi_led*, align 8
  store %struct.bwi_softc* %0, %struct.bwi_softc** %2, align 8
  store i64* null, i64** %3, align 8
  %9 = load i32, i32* @BWI_LED_MAX, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %37, %1
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @bwi_vendor_led_act, align 8
  %16 = call i32 @nitems(%struct.TYPE_3__* %15)
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %40

18:                                               ; preds = %13
  %19 = load %struct.bwi_softc*, %struct.bwi_softc** %2, align 8
  %20 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @bwi_vendor_led_act, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %21, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %18
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** @bwi_vendor_led_act, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i64*, i64** %34, align 8
  store i64* %35, i64** %3, align 8
  br label %40

36:                                               ; preds = %18
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %7, align 4
  br label %13

40:                                               ; preds = %29, %13
  %41 = load i64*, i64** %3, align 8
  %42 = icmp eq i64* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i64*, i64** @bwi_default_led_act, align 8
  store i64* %44, i64** %3, align 8
  br label %45

45:                                               ; preds = %43, %40
  %46 = load %struct.bwi_softc*, %struct.bwi_softc** %2, align 8
  %47 = load i32, i32* @BWI_SPROM_GPIO01, align 4
  %48 = call i32 @bwi_read_sprom(%struct.bwi_softc* %46, i32 %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @BWI_SPROM_GPIO_0, align 4
  %51 = call i8* @__SHIFTOUT(i32 %49, i32 %50)
  %52 = ptrtoint i8* %51 to i32
  %53 = getelementptr inbounds i32, i32* %12, i64 0
  store i32 %52, i32* %53, align 16
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @BWI_SPROM_GPIO_1, align 4
  %56 = call i8* @__SHIFTOUT(i32 %54, i32 %55)
  %57 = ptrtoint i8* %56 to i32
  %58 = getelementptr inbounds i32, i32* %12, i64 1
  store i32 %57, i32* %58, align 4
  %59 = load %struct.bwi_softc*, %struct.bwi_softc** %2, align 8
  %60 = load i32, i32* @BWI_SPROM_GPIO23, align 4
  %61 = call i32 @bwi_read_sprom(%struct.bwi_softc* %59, i32 %60)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @BWI_SPROM_GPIO_2, align 4
  %64 = call i8* @__SHIFTOUT(i32 %62, i32 %63)
  %65 = ptrtoint i8* %64 to i32
  %66 = getelementptr inbounds i32, i32* %12, i64 2
  store i32 %65, i32* %66, align 8
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @BWI_SPROM_GPIO_3, align 4
  %69 = call i8* @__SHIFTOUT(i32 %67, i32 %68)
  %70 = ptrtoint i8* %69 to i32
  %71 = getelementptr inbounds i32, i32* %12, i64 3
  store i32 %70, i32* %71, align 4
  store i32 0, i32* %7, align 4
  br label %72

72:                                               ; preds = %209, %45
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @BWI_LED_MAX, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %212

76:                                               ; preds = %72
  %77 = load %struct.bwi_softc*, %struct.bwi_softc** %2, align 8
  %78 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %77, i32 0, i32 5
  %79 = load %struct.bwi_led*, %struct.bwi_led** %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.bwi_led, %struct.bwi_led* %79, i64 %81
  store %struct.bwi_led* %82, %struct.bwi_led** %8, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %12, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = icmp eq i32 %86, 255
  br i1 %87, label %88, label %96

88:                                               ; preds = %76
  %89 = load i64*, i64** %3, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %89, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.bwi_led*, %struct.bwi_led** %8, align 8
  %95 = getelementptr inbounds %struct.bwi_led, %struct.bwi_led* %94, i32 0, i32 0
  store i64 %93, i64* %95, align 8
  br label %120

96:                                               ; preds = %76
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %12, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @BWI_LED_ACT_LOW, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %96
  %105 = load i32, i32* @BWI_LED_F_ACTLOW, align 4
  %106 = load %struct.bwi_led*, %struct.bwi_led** %8, align 8
  %107 = getelementptr inbounds %struct.bwi_led, %struct.bwi_led* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 8
  br label %110

110:                                              ; preds = %104, %96
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %12, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @BWI_LED_ACT_MASK, align 4
  %116 = call i8* @__SHIFTOUT(i32 %114, i32 %115)
  %117 = ptrtoint i8* %116 to i64
  %118 = load %struct.bwi_led*, %struct.bwi_led** %8, align 8
  %119 = getelementptr inbounds %struct.bwi_led, %struct.bwi_led* %118, i32 0, i32 0
  store i64 %117, i64* %119, align 8
  br label %120

120:                                              ; preds = %110, %88
  %121 = load i32, i32* %7, align 4
  %122 = shl i32 1, %121
  %123 = load %struct.bwi_led*, %struct.bwi_led** %8, align 8
  %124 = getelementptr inbounds %struct.bwi_led, %struct.bwi_led* %123, i32 0, i32 2
  store i32 %122, i32* %124, align 4
  %125 = load %struct.bwi_led*, %struct.bwi_led** %8, align 8
  %126 = getelementptr inbounds %struct.bwi_led, %struct.bwi_led* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @BWI_LED_ACT_BLINK_SLOW, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %142, label %130

130:                                              ; preds = %120
  %131 = load %struct.bwi_led*, %struct.bwi_led** %8, align 8
  %132 = getelementptr inbounds %struct.bwi_led, %struct.bwi_led* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @BWI_LED_ACT_BLINK_POLL, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %142, label %136

136:                                              ; preds = %130
  %137 = load %struct.bwi_led*, %struct.bwi_led** %8, align 8
  %138 = getelementptr inbounds %struct.bwi_led, %struct.bwi_led* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @BWI_LED_ACT_BLINK, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %194

142:                                              ; preds = %136, %130, %120
  %143 = load i32, i32* @BWI_LED_F_BLINK, align 4
  %144 = load %struct.bwi_led*, %struct.bwi_led** %8, align 8
  %145 = getelementptr inbounds %struct.bwi_led, %struct.bwi_led* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = or i32 %146, %143
  store i32 %147, i32* %145, align 8
  %148 = load %struct.bwi_led*, %struct.bwi_led** %8, align 8
  %149 = getelementptr inbounds %struct.bwi_led, %struct.bwi_led* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @BWI_LED_ACT_BLINK_POLL, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %159

153:                                              ; preds = %142
  %154 = load i32, i32* @BWI_LED_F_POLLABLE, align 4
  %155 = load %struct.bwi_led*, %struct.bwi_led** %8, align 8
  %156 = getelementptr inbounds %struct.bwi_led, %struct.bwi_led* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = or i32 %157, %154
  store i32 %158, i32* %156, align 8
  br label %172

159:                                              ; preds = %142
  %160 = load %struct.bwi_led*, %struct.bwi_led** %8, align 8
  %161 = getelementptr inbounds %struct.bwi_led, %struct.bwi_led* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @BWI_LED_ACT_BLINK_SLOW, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %171

165:                                              ; preds = %159
  %166 = load i32, i32* @BWI_LED_F_SLOW, align 4
  %167 = load %struct.bwi_led*, %struct.bwi_led** %8, align 8
  %168 = getelementptr inbounds %struct.bwi_led, %struct.bwi_led* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = or i32 %169, %166
  store i32 %170, i32* %168, align 8
  br label %171

171:                                              ; preds = %165, %159
  br label %172

172:                                              ; preds = %171, %153
  %173 = load %struct.bwi_softc*, %struct.bwi_softc** %2, align 8
  %174 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %173, i32 0, i32 4
  %175 = load %struct.bwi_led*, %struct.bwi_led** %174, align 8
  %176 = icmp eq %struct.bwi_led* %175, null
  br i1 %176, label %177, label %193

177:                                              ; preds = %172
  %178 = load %struct.bwi_led*, %struct.bwi_led** %8, align 8
  %179 = load %struct.bwi_softc*, %struct.bwi_softc** %2, align 8
  %180 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %179, i32 0, i32 4
  store %struct.bwi_led* %178, %struct.bwi_led** %180, align 8
  %181 = load %struct.bwi_led*, %struct.bwi_led** %8, align 8
  %182 = getelementptr inbounds %struct.bwi_led, %struct.bwi_led* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @BWI_LED_F_SLOW, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %192

187:                                              ; preds = %177
  %188 = load %struct.bwi_softc*, %struct.bwi_softc** %2, align 8
  %189 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @BWI_LED_SLOWDOWN(i32 %190)
  br label %192

192:                                              ; preds = %187, %177
  br label %193

193:                                              ; preds = %192, %172
  br label %194

194:                                              ; preds = %193, %136
  %195 = load %struct.bwi_softc*, %struct.bwi_softc** %2, align 8
  %196 = load i32, i32* @BWI_DBG_LED, align 4
  %197 = load i32, i32* @BWI_DBG_ATTACH, align 4
  %198 = or i32 %196, %197
  %199 = load i32, i32* %7, align 4
  %200 = load %struct.bwi_led*, %struct.bwi_led** %8, align 8
  %201 = getelementptr inbounds %struct.bwi_led, %struct.bwi_led* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = load %struct.bwi_led*, %struct.bwi_led** %8, align 8
  %204 = getelementptr inbounds %struct.bwi_led, %struct.bwi_led* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* @BWI_LED_F_ACTLOW, align 4
  %207 = and i32 %205, %206
  %208 = call i32 @DPRINTF(%struct.bwi_softc* %195, i32 %198, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %199, i64 %202, i32 %207)
  br label %209

209:                                              ; preds = %194
  %210 = load i32, i32* %7, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %7, align 4
  br label %72

212:                                              ; preds = %72
  %213 = load %struct.bwi_softc*, %struct.bwi_softc** %2, align 8
  %214 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %213, i32 0, i32 2
  %215 = load %struct.bwi_softc*, %struct.bwi_softc** %2, align 8
  %216 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %215, i32 0, i32 1
  %217 = call i32 @callout_init_mtx(i32* %214, i32* %216, i32 0)
  %218 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %218)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nitems(%struct.TYPE_3__*) #2

declare dso_local i32 @bwi_read_sprom(%struct.bwi_softc*, i32) #2

declare dso_local i8* @__SHIFTOUT(i32, i32) #2

declare dso_local i32 @BWI_LED_SLOWDOWN(i32) #2

declare dso_local i32 @DPRINTF(%struct.bwi_softc*, i32, i8*, i32, i64, i32) #2

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
