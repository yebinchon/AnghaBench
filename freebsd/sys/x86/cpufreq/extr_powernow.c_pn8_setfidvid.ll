; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/cpufreq/extr_powernow.c_pn8_setfidvid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/cpufreq/extr_powernow.c_pn8_setfidvid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pn_softc = type { i32, i32, i64, i32, i32, i32, i64 }

@PENDING_STUCK = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pn_softc*, i32, i32)* @pn8_setfidvid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pn8_setfidvid(%struct.pn_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pn_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.pn_softc* %0, %struct.pn_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %17 = call i32 @pn8_read_pending_wait(i64* %8)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %12, align 4
  store i32 %21, i32* %4, align 4
  br label %231

22:                                               ; preds = %3
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @PN8_STA_CFID(i64 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i64, i64* %8, align 8
  %26 = call i32 @PN8_STA_CVID(i64 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %22
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %231

35:                                               ; preds = %30, %22
  br label %36

36:                                               ; preds = %65, %35
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %72

40:                                               ; preds = %36
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.pn_softc*, %struct.pn_softc** %5, align 8
  %43 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = shl i32 1, %44
  %46 = sub nsw i32 %41, %45
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %40
  %51 = load i32, i32* %13, align 4
  br label %53

52:                                               ; preds = %40
  br label %53

53:                                               ; preds = %52, %50
  %54 = phi i32 [ %51, %50 ], [ 0, %52 ]
  %55 = call i32 @pn8_write_fidvid(i32 %47, i32 %54, i64 1, i64* %8)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %53
  %59 = load i32, i32* @PENDING_STUCK, align 4
  %60 = load %struct.pn_softc*, %struct.pn_softc** %5, align 8
  %61 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 8
  %64 = load i32, i32* %12, align 4
  store i32 %64, i32* %4, align 4
  br label %231

65:                                               ; preds = %53
  %66 = load i64, i64* %8, align 8
  %67 = call i32 @PN8_STA_CVID(i64 %66)
  store i32 %67, i32* %10, align 4
  %68 = load %struct.pn_softc*, %struct.pn_softc** %5, align 8
  %69 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @COUNT_OFF_VST(i32 %70)
  br label %36

72:                                               ; preds = %36
  %73 = load %struct.pn_softc*, %struct.pn_softc** %5, align 8
  %74 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %11, align 4
  br label %76

76:                                               ; preds = %105, %72
  %77 = load i32, i32* %11, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32, i32* %10, align 4
  %81 = icmp sgt i32 %80, 0
  br label %82

82:                                               ; preds = %79, %76
  %83 = phi i1 [ false, %76 ], [ %81, %79 ]
  br i1 %83, label %84, label %108

84:                                               ; preds = %82
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %10, align 4
  %87 = sub nsw i32 %86, 1
  %88 = call i32 @pn8_write_fidvid(i32 %85, i32 %87, i64 1, i64* %8)
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %12, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %84
  %92 = load i32, i32* @PENDING_STUCK, align 4
  %93 = load %struct.pn_softc*, %struct.pn_softc** %5, align 8
  %94 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 8
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 8
  %97 = load i32, i32* %12, align 4
  store i32 %97, i32* %4, align 4
  br label %231

98:                                               ; preds = %84
  %99 = load i64, i64* %8, align 8
  %100 = call i32 @PN8_STA_CVID(i64 %99)
  store i32 %100, i32* %10, align 4
  %101 = load %struct.pn_softc*, %struct.pn_softc** %5, align 8
  %102 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @COUNT_OFF_VST(i32 %103)
  br label %105

105:                                              ; preds = %98
  %106 = load i32, i32* %11, align 4
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* %11, align 4
  br label %76

108:                                              ; preds = %82
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* %6, align 4
  %111 = icmp ne i32 %109, %110
  br i1 %111, label %112, label %205

112:                                              ; preds = %108
  %113 = load i32, i32* %6, align 4
  %114 = call i32 @FID_TO_VCO_FID(i32 %113)
  store i32 %114, i32* %14, align 4
  %115 = load i32, i32* %9, align 4
  %116 = call i32 @FID_TO_VCO_FID(i32 %115)
  store i32 %116, i32* %15, align 4
  br label %117

117:                                              ; preds = %169, %112
  %118 = load i32, i32* %14, align 4
  %119 = load i32, i32* %15, align 4
  %120 = sub nsw i32 %118, %119
  %121 = call i32 @abs(i32 %120) #3
  %122 = icmp sgt i32 %121, 2
  br i1 %122, label %123, label %178

123:                                              ; preds = %117
  %124 = load i32, i32* %15, align 4
  %125 = and i32 %124, 1
  %126 = icmp ne i32 %125, 0
  %127 = zext i1 %126 to i64
  %128 = select i1 %126, i32 1, i32 2
  store i32 %128, i32* %16, align 4
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* %9, align 4
  %131 = icmp sgt i32 %129, %130
  br i1 %131, label %132, label %145

132:                                              ; preds = %123
  %133 = load i32, i32* %9, align 4
  %134 = icmp sgt i32 %133, 7
  br i1 %134, label %135, label %139

135:                                              ; preds = %132
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* %16, align 4
  %138 = add nsw i32 %136, %137
  store i32 %138, i32* %13, align 4
  br label %144

139:                                              ; preds = %132
  %140 = load i32, i32* %9, align 4
  %141 = call i32 @FID_TO_VCO_FID(i32 %140)
  %142 = load i32, i32* %16, align 4
  %143 = add nsw i32 %141, %142
  store i32 %143, i32* %13, align 4
  br label %144

144:                                              ; preds = %139, %135
  br label %149

145:                                              ; preds = %123
  %146 = load i32, i32* %9, align 4
  %147 = load i32, i32* %16, align 4
  %148 = sub nsw i32 %146, %147
  store i32 %148, i32* %13, align 4
  br label %149

149:                                              ; preds = %145, %144
  %150 = load i32, i32* %13, align 4
  %151 = load i32, i32* %10, align 4
  %152 = load %struct.pn_softc*, %struct.pn_softc** %5, align 8
  %153 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.pn_softc*, %struct.pn_softc** %5, align 8
  %156 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %155, i32 0, i32 6
  %157 = load i64, i64* %156, align 8
  %158 = mul i64 %154, %157
  %159 = call i32 @pn8_write_fidvid(i32 %150, i32 %151, i64 %158, i64* %8)
  store i32 %159, i32* %12, align 4
  %160 = load i32, i32* %12, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %169

162:                                              ; preds = %149
  %163 = load i32, i32* @PENDING_STUCK, align 4
  %164 = load %struct.pn_softc*, %struct.pn_softc** %5, align 8
  %165 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %164, i32 0, i32 5
  %166 = load i32, i32* %165, align 8
  %167 = or i32 %166, %163
  store i32 %167, i32* %165, align 8
  %168 = load i32, i32* %12, align 4
  store i32 %168, i32* %4, align 4
  br label %231

169:                                              ; preds = %149
  %170 = load i64, i64* %8, align 8
  %171 = call i32 @PN8_STA_CFID(i64 %170)
  store i32 %171, i32* %9, align 4
  %172 = load %struct.pn_softc*, %struct.pn_softc** %5, align 8
  %173 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %172, i32 0, i32 4
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @COUNT_OFF_IRT(i32 %174)
  %176 = load i32, i32* %9, align 4
  %177 = call i32 @FID_TO_VCO_FID(i32 %176)
  store i32 %177, i32* %15, align 4
  br label %117

178:                                              ; preds = %117
  %179 = load i32, i32* %6, align 4
  %180 = load i32, i32* %10, align 4
  %181 = load %struct.pn_softc*, %struct.pn_softc** %5, align 8
  %182 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %181, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.pn_softc*, %struct.pn_softc** %5, align 8
  %185 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %184, i32 0, i32 6
  %186 = load i64, i64* %185, align 8
  %187 = mul i64 %183, %186
  %188 = call i32 @pn8_write_fidvid(i32 %179, i32 %180, i64 %187, i64* %8)
  store i32 %188, i32* %12, align 4
  %189 = load i32, i32* %12, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %198

191:                                              ; preds = %178
  %192 = load i32, i32* @PENDING_STUCK, align 4
  %193 = load %struct.pn_softc*, %struct.pn_softc** %5, align 8
  %194 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %193, i32 0, i32 5
  %195 = load i32, i32* %194, align 8
  %196 = or i32 %195, %192
  store i32 %196, i32* %194, align 8
  %197 = load i32, i32* %12, align 4
  store i32 %197, i32* %4, align 4
  br label %231

198:                                              ; preds = %178
  %199 = load i64, i64* %8, align 8
  %200 = call i32 @PN8_STA_CFID(i64 %199)
  store i32 %200, i32* %9, align 4
  %201 = load %struct.pn_softc*, %struct.pn_softc** %5, align 8
  %202 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %201, i32 0, i32 4
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @COUNT_OFF_IRT(i32 %203)
  br label %205

205:                                              ; preds = %198, %108
  %206 = load i32, i32* %10, align 4
  %207 = load i32, i32* %7, align 4
  %208 = icmp ne i32 %206, %207
  br i1 %208, label %209, label %219

209:                                              ; preds = %205
  %210 = load i32, i32* %9, align 4
  %211 = load i32, i32* %7, align 4
  %212 = call i32 @pn8_write_fidvid(i32 %210, i32 %211, i64 1, i64* %8)
  store i32 %212, i32* %12, align 4
  %213 = load i64, i64* %8, align 8
  %214 = call i32 @PN8_STA_CVID(i64 %213)
  store i32 %214, i32* %10, align 4
  %215 = load %struct.pn_softc*, %struct.pn_softc** %5, align 8
  %216 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 8
  %218 = call i32 @COUNT_OFF_VST(i32 %217)
  br label %219

219:                                              ; preds = %209, %205
  %220 = load i32, i32* %9, align 4
  %221 = load i32, i32* %6, align 4
  %222 = icmp ne i32 %220, %221
  br i1 %222, label %227, label %223

223:                                              ; preds = %219
  %224 = load i32, i32* %10, align 4
  %225 = load i32, i32* %7, align 4
  %226 = icmp ne i32 %224, %225
  br i1 %226, label %227, label %229

227:                                              ; preds = %223, %219
  %228 = load i32, i32* @ENXIO, align 4
  store i32 %228, i32* %12, align 4
  br label %229

229:                                              ; preds = %227, %223
  %230 = load i32, i32* %12, align 4
  store i32 %230, i32* %4, align 4
  br label %231

231:                                              ; preds = %229, %191, %162, %91, %58, %34, %20
  %232 = load i32, i32* %4, align 4
  ret i32 %232
}

declare dso_local i32 @pn8_read_pending_wait(i64*) #1

declare dso_local i32 @PN8_STA_CFID(i64) #1

declare dso_local i32 @PN8_STA_CVID(i64) #1

declare dso_local i32 @pn8_write_fidvid(i32, i32, i64, i64*) #1

declare dso_local i32 @COUNT_OFF_VST(i32) #1

declare dso_local i32 @FID_TO_VCO_FID(i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @COUNT_OFF_IRT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
