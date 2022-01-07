; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_vga.c_vga_get_text_pixel.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_vga.c_vga_get_text_pixel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vga_softc = type { i32, i32*, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i64 }

@KB = common dso_local global i32 0, align 4
@CRTC_CS_CS = common dso_local global i32 0, align 4
@CRTC_CE_CE = common dso_local global i32 0, align 4
@SEQ_MM_EM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vga_softc*, i32, i32)* @vga_get_text_pixel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vga_get_text_pixel(%struct.vga_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vga_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.vga_softc* %0, %struct.vga_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load %struct.vga_softc*, %struct.vga_softc** %5, align 8
  %17 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %8, align 4
  %20 = load %struct.vga_softc*, %struct.vga_softc** %5, align 8
  %21 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %20, i32 0, i32 5
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = mul nsw i32 2, %23
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %7, align 4
  %26 = sdiv i32 %25, 16
  %27 = load %struct.vga_softc*, %struct.vga_softc** %5, align 8
  %28 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = mul nsw i32 %26, %29
  %31 = load i32, i32* %8, align 4
  %32 = sdiv i32 %30, %31
  %33 = mul nsw i32 %32, 2
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %8, align 4
  %36 = sdiv i32 %34, %35
  %37 = mul nsw i32 %36, 2
  %38 = add nsw i32 %33, %37
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 %39, %38
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %8, align 4
  %43 = srem i32 %41, %42
  %44 = icmp sgt i32 %43, 7
  br i1 %44, label %45, label %46

45:                                               ; preds = %3
  br label %50

46:                                               ; preds = %3
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %8, align 4
  %49 = srem i32 %47, %48
  br label %50

50:                                               ; preds = %46, %45
  %51 = phi i32 [ 7, %45 ], [ %49, %46 ]
  %52 = sub nsw i32 7, %51
  store i32 %52, i32* %10, align 4
  %53 = load %struct.vga_softc*, %struct.vga_softc** %5, align 8
  %54 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @KB, align 4
  %58 = mul nsw i32 0, %57
  %59 = add nsw i32 %56, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %55, i64 %60
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %12, align 4
  %63 = load %struct.vga_softc*, %struct.vga_softc** %5, align 8
  %64 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @KB, align 4
  %68 = mul nsw i32 64, %67
  %69 = add nsw i32 %66, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %65, i64 %70
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %13, align 4
  %73 = load %struct.vga_softc*, %struct.vga_softc** %5, align 8
  %74 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %73, i32 0, i32 5
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %124

78:                                               ; preds = %50
  %79 = load i32, i32* %9, align 4
  %80 = load %struct.vga_softc*, %struct.vga_softc** %5, align 8
  %81 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %80, i32 0, i32 5
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = mul nsw i32 %83, 2
  %85 = icmp eq i32 %79, %84
  br i1 %85, label %86, label %124

86:                                               ; preds = %78
  %87 = load i32, i32* %7, align 4
  %88 = srem i32 %87, 16
  %89 = load %struct.vga_softc*, %struct.vga_softc** %5, align 8
  %90 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %89, i32 0, i32 5
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @CRTC_CS_CS, align 4
  %94 = and i32 %92, %93
  %95 = icmp sge i32 %88, %94
  br i1 %95, label %96, label %124

96:                                               ; preds = %86
  %97 = load i32, i32* %7, align 4
  %98 = srem i32 %97, 16
  %99 = load %struct.vga_softc*, %struct.vga_softc** %5, align 8
  %100 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %99, i32 0, i32 5
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @CRTC_CE_CE, align 4
  %104 = and i32 %102, %103
  %105 = icmp sle i32 %98, %104
  br i1 %105, label %106, label %124

106:                                              ; preds = %96
  %107 = load %struct.vga_softc*, %struct.vga_softc** %5, align 8
  %108 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %13, align 4
  %112 = and i32 %111, 15
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %110, i64 %113
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %15, align 4
  %116 = load %struct.vga_softc*, %struct.vga_softc** %5, align 8
  %117 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %15, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %4, align 4
  br label %222

124:                                              ; preds = %96, %86, %78, %50
  %125 = load %struct.vga_softc*, %struct.vga_softc** %5, align 8
  %126 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %125, i32 0, i32 4
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @SEQ_MM_EM, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %171

132:                                              ; preds = %124
  %133 = load %struct.vga_softc*, %struct.vga_softc** %5, align 8
  %134 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %133, i32 0, i32 4
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.vga_softc*, %struct.vga_softc** %5, align 8
  %138 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %137, i32 0, i32 4
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = icmp ne i32 %136, %140
  br i1 %141, label %142, label %171

142:                                              ; preds = %132
  %143 = load i32, i32* %13, align 4
  %144 = and i32 %143, 8
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %157

146:                                              ; preds = %142
  %147 = load %struct.vga_softc*, %struct.vga_softc** %5, align 8
  %148 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %147, i32 0, i32 4
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* %12, align 4
  %152 = shl i32 %151, 5
  %153 = add nsw i32 %150, %152
  %154 = load i32, i32* %7, align 4
  %155 = srem i32 %154, 16
  %156 = add nsw i32 %153, %155
  store i32 %156, i32* %11, align 4
  br label %168

157:                                              ; preds = %142
  %158 = load %struct.vga_softc*, %struct.vga_softc** %5, align 8
  %159 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %158, i32 0, i32 4
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %12, align 4
  %163 = shl i32 %162, 5
  %164 = add nsw i32 %161, %163
  %165 = load i32, i32* %7, align 4
  %166 = srem i32 %165, 16
  %167 = add nsw i32 %164, %166
  store i32 %167, i32* %11, align 4
  br label %168

168:                                              ; preds = %157, %146
  %169 = load i32, i32* %13, align 4
  %170 = and i32 %169, -9
  store i32 %170, i32* %13, align 4
  br label %177

171:                                              ; preds = %132, %124
  %172 = load i32, i32* %12, align 4
  %173 = shl i32 %172, 5
  %174 = load i32, i32* %7, align 4
  %175 = srem i32 %174, 16
  %176 = add nsw i32 %173, %175
  store i32 %176, i32* %11, align 4
  br label %177

177:                                              ; preds = %171, %168
  %178 = load %struct.vga_softc*, %struct.vga_softc** %5, align 8
  %179 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %178, i32 0, i32 1
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* %11, align 4
  %182 = load i32, i32* @KB, align 4
  %183 = mul nsw i32 128, %182
  %184 = add nsw i32 %181, %183
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %180, i64 %185
  %187 = load i32, i32* %186, align 4
  store i32 %187, i32* %14, align 4
  %188 = load i32, i32* %14, align 4
  %189 = load i32, i32* %10, align 4
  %190 = shl i32 1, %189
  %191 = and i32 %188, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %203

193:                                              ; preds = %177
  %194 = load %struct.vga_softc*, %struct.vga_softc** %5, align 8
  %195 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %194, i32 0, i32 3
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 0
  %197 = load i32*, i32** %196, align 8
  %198 = load i32, i32* %13, align 4
  %199 = and i32 %198, 15
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %197, i64 %200
  %202 = load i32, i32* %201, align 4
  store i32 %202, i32* %15, align 4
  br label %213

203:                                              ; preds = %177
  %204 = load %struct.vga_softc*, %struct.vga_softc** %5, align 8
  %205 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %204, i32 0, i32 3
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 0
  %207 = load i32*, i32** %206, align 8
  %208 = load i32, i32* %13, align 4
  %209 = ashr i32 %208, 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %207, i64 %210
  %212 = load i32, i32* %211, align 4
  store i32 %212, i32* %15, align 4
  br label %213

213:                                              ; preds = %203, %193
  %214 = load %struct.vga_softc*, %struct.vga_softc** %5, align 8
  %215 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %214, i32 0, i32 2
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 0
  %217 = load i32*, i32** %216, align 8
  %218 = load i32, i32* %15, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  %221 = load i32, i32* %220, align 4
  store i32 %221, i32* %4, align 4
  br label %222

222:                                              ; preds = %213, %106
  %223 = load i32, i32* %4, align 4
  ret i32 %223
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
