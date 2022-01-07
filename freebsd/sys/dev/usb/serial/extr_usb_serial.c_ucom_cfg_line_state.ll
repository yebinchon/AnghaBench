; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_usb_serial.c_ucom_cfg_line_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_usb_serial.c_ucom_cfg_line_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_proc_msg = type { i32 }
%struct.ucom_cfg_task = type { %struct.ucom_softc* }
%struct.ucom_softc = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ucom_softc*, i32)*, i32 (%struct.ucom_softc*, i32)*, i32 (%struct.ucom_softc*, i32)*, i32 (%struct.ucom_softc*, i32)* }

@UCOM_FLAG_LL_READY = common dso_local global i32 0, align 4
@UCOM_LS_DTR = common dso_local global i32 0, align 4
@UCOM_LS_RTS = common dso_local global i32 0, align 4
@UCOM_LS_BREAK = common dso_local global i32 0, align 4
@UCOM_LS_RING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_proc_msg*)* @ucom_cfg_line_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ucom_cfg_line_state(%struct.usb_proc_msg* %0) #0 {
  %2 = alloca %struct.usb_proc_msg*, align 8
  %3 = alloca %struct.ucom_cfg_task*, align 8
  %4 = alloca %struct.ucom_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.usb_proc_msg* %0, %struct.usb_proc_msg** %2, align 8
  %10 = load %struct.usb_proc_msg*, %struct.usb_proc_msg** %2, align 8
  %11 = bitcast %struct.usb_proc_msg* %10 to %struct.ucom_cfg_task*
  store %struct.ucom_cfg_task* %11, %struct.ucom_cfg_task** %3, align 8
  %12 = load %struct.ucom_cfg_task*, %struct.ucom_cfg_task** %3, align 8
  %13 = getelementptr inbounds %struct.ucom_cfg_task, %struct.ucom_cfg_task* %12, i32 0, i32 0
  %14 = load %struct.ucom_softc*, %struct.ucom_softc** %13, align 8
  store %struct.ucom_softc* %14, %struct.ucom_softc** %4, align 8
  %15 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %16 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @UCOM_FLAG_LL_READY, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  br label %250

22:                                               ; preds = %1
  store i32 0, i32* %9, align 4
  %23 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %24 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %23, i32 0, i32 4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 3
  %27 = load i32 (%struct.ucom_softc*, i32)*, i32 (%struct.ucom_softc*, i32)** %26, align 8
  %28 = icmp ne i32 (%struct.ucom_softc*, i32)* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load i32, i32* @UCOM_LS_DTR, align 4
  %31 = load i32, i32* %9, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %29, %22
  %34 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %35 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %34, i32 0, i32 4
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i32 (%struct.ucom_softc*, i32)*, i32 (%struct.ucom_softc*, i32)** %37, align 8
  %39 = icmp ne i32 (%struct.ucom_softc*, i32)* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load i32, i32* @UCOM_LS_RTS, align 4
  %42 = load i32, i32* %9, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %40, %33
  %45 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %46 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %45, i32 0, i32 4
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32 (%struct.ucom_softc*, i32)*, i32 (%struct.ucom_softc*, i32)** %48, align 8
  %50 = icmp ne i32 (%struct.ucom_softc*, i32)* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load i32, i32* @UCOM_LS_BREAK, align 4
  %53 = load i32, i32* %9, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %51, %44
  %56 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %57 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %56, i32 0, i32 4
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32 (%struct.ucom_softc*, i32)*, i32 (%struct.ucom_softc*, i32)** %59, align 8
  %61 = icmp ne i32 (%struct.ucom_softc*, i32)* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %55
  %63 = load i32, i32* @UCOM_LS_RING, align 4
  %64 = load i32, i32* %9, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %62, %55
  %67 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %68 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %71 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = and i32 %69, %72
  %74 = load i32, i32* %9, align 4
  %75 = and i32 %73, %74
  store i32 %75, i32* %5, align 4
  %76 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %77 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %80 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %78, %81
  %83 = load i32, i32* %9, align 4
  %84 = and i32 %82, %83
  store i32 %84, i32* %6, align 4
  %85 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %86 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %5, align 4
  %89 = xor i32 %87, %88
  store i32 %89, i32* %7, align 4
  %90 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %91 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %8, align 4
  %93 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %94 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %93, i32 0, i32 3
  store i32 0, i32* %94, align 4
  %95 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %96 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %95, i32 0, i32 1
  store i32 0, i32* %96, align 4
  %97 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %98 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %97, i32 0, i32 2
  store i32 0, i32* %98, align 8
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* @UCOM_LS_DTR, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %117

103:                                              ; preds = %66
  %104 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %105 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %104, i32 0, i32 4
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 3
  %108 = load i32 (%struct.ucom_softc*, i32)*, i32 (%struct.ucom_softc*, i32)** %107, align 8
  %109 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* @UCOM_LS_DTR, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, i32 1, i32 0
  %116 = call i32 %108(%struct.ucom_softc* %109, i32 %115)
  br label %117

117:                                              ; preds = %103, %66
  %118 = load i32, i32* %5, align 4
  %119 = load i32, i32* @UCOM_LS_RTS, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %136

122:                                              ; preds = %117
  %123 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %124 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %123, i32 0, i32 4
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 2
  %127 = load i32 (%struct.ucom_softc*, i32)*, i32 (%struct.ucom_softc*, i32)** %126, align 8
  %128 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* @UCOM_LS_RTS, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  %133 = zext i1 %132 to i64
  %134 = select i1 %132, i32 1, i32 0
  %135 = call i32 %127(%struct.ucom_softc* %128, i32 %134)
  br label %136

136:                                              ; preds = %122, %117
  %137 = load i32, i32* %5, align 4
  %138 = load i32, i32* @UCOM_LS_BREAK, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %155

141:                                              ; preds = %136
  %142 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %143 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %142, i32 0, i32 4
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 1
  %146 = load i32 (%struct.ucom_softc*, i32)*, i32 (%struct.ucom_softc*, i32)** %145, align 8
  %147 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %148 = load i32, i32* %7, align 4
  %149 = load i32, i32* @UCOM_LS_BREAK, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  %152 = zext i1 %151 to i64
  %153 = select i1 %151, i32 1, i32 0
  %154 = call i32 %146(%struct.ucom_softc* %147, i32 %153)
  br label %155

155:                                              ; preds = %141, %136
  %156 = load i32, i32* %5, align 4
  %157 = load i32, i32* @UCOM_LS_RING, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %174

160:                                              ; preds = %155
  %161 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %162 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %161, i32 0, i32 4
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 0
  %165 = load i32 (%struct.ucom_softc*, i32)*, i32 (%struct.ucom_softc*, i32)** %164, align 8
  %166 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %167 = load i32, i32* %7, align 4
  %168 = load i32, i32* @UCOM_LS_RING, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  %171 = zext i1 %170 to i64
  %172 = select i1 %170, i32 1, i32 0
  %173 = call i32 %165(%struct.ucom_softc* %166, i32 %172)
  br label %174

174:                                              ; preds = %160, %155
  %175 = load i32, i32* %6, align 4
  %176 = load i32, i32* @UCOM_LS_DTR, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %193

179:                                              ; preds = %174
  %180 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %181 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %180, i32 0, i32 4
  %182 = load %struct.TYPE_2__*, %struct.TYPE_2__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 3
  %184 = load i32 (%struct.ucom_softc*, i32)*, i32 (%struct.ucom_softc*, i32)** %183, align 8
  %185 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %186 = load i32, i32* %8, align 4
  %187 = load i32, i32* @UCOM_LS_DTR, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  %190 = zext i1 %189 to i64
  %191 = select i1 %189, i32 1, i32 0
  %192 = call i32 %184(%struct.ucom_softc* %185, i32 %191)
  br label %193

193:                                              ; preds = %179, %174
  %194 = load i32, i32* %6, align 4
  %195 = load i32, i32* @UCOM_LS_RTS, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %212

198:                                              ; preds = %193
  %199 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %200 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %199, i32 0, i32 4
  %201 = load %struct.TYPE_2__*, %struct.TYPE_2__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i32 0, i32 2
  %203 = load i32 (%struct.ucom_softc*, i32)*, i32 (%struct.ucom_softc*, i32)** %202, align 8
  %204 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %205 = load i32, i32* %8, align 4
  %206 = load i32, i32* @UCOM_LS_RTS, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  %209 = zext i1 %208 to i64
  %210 = select i1 %208, i32 1, i32 0
  %211 = call i32 %203(%struct.ucom_softc* %204, i32 %210)
  br label %212

212:                                              ; preds = %198, %193
  %213 = load i32, i32* %6, align 4
  %214 = load i32, i32* @UCOM_LS_BREAK, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %231

217:                                              ; preds = %212
  %218 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %219 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %218, i32 0, i32 4
  %220 = load %struct.TYPE_2__*, %struct.TYPE_2__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %220, i32 0, i32 1
  %222 = load i32 (%struct.ucom_softc*, i32)*, i32 (%struct.ucom_softc*, i32)** %221, align 8
  %223 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %224 = load i32, i32* %8, align 4
  %225 = load i32, i32* @UCOM_LS_BREAK, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  %228 = zext i1 %227 to i64
  %229 = select i1 %227, i32 1, i32 0
  %230 = call i32 %222(%struct.ucom_softc* %223, i32 %229)
  br label %231

231:                                              ; preds = %217, %212
  %232 = load i32, i32* %6, align 4
  %233 = load i32, i32* @UCOM_LS_RING, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %250

236:                                              ; preds = %231
  %237 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %238 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %237, i32 0, i32 4
  %239 = load %struct.TYPE_2__*, %struct.TYPE_2__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %239, i32 0, i32 0
  %241 = load i32 (%struct.ucom_softc*, i32)*, i32 (%struct.ucom_softc*, i32)** %240, align 8
  %242 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %243 = load i32, i32* %8, align 4
  %244 = load i32, i32* @UCOM_LS_RING, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  %247 = zext i1 %246 to i64
  %248 = select i1 %246, i32 1, i32 0
  %249 = call i32 %241(%struct.ucom_softc* %242, i32 %248)
  br label %250

250:                                              ; preds = %21, %236, %231
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
