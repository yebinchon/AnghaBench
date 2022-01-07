; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/ctlstat/extr_ctlstat.c_compute_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/ctlstat/extr_ctlstat.c_compute_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_io_stats = type { i32*, i32*, i64*, i64*, i64* }
%struct.bintime = type { i32, i32 }
%struct.timespec = type { i32, i32 }

@CTL_STATS_NUM_TYPES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctl_io_stats*, %struct.ctl_io_stats*, x86_fp80, x86_fp80*, x86_fp80*, x86_fp80*, x86_fp80*, x86_fp80*, x86_fp80*)* @compute_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_stats(%struct.ctl_io_stats* %0, %struct.ctl_io_stats* %1, x86_fp80 %2, x86_fp80* %3, x86_fp80* %4, x86_fp80* %5, x86_fp80* %6, x86_fp80* %7, x86_fp80* %8) #0 {
  %10 = alloca %struct.ctl_io_stats*, align 8
  %11 = alloca %struct.ctl_io_stats*, align 8
  %12 = alloca x86_fp80, align 16
  %13 = alloca x86_fp80*, align 8
  %14 = alloca x86_fp80*, align 8
  %15 = alloca x86_fp80*, align 8
  %16 = alloca x86_fp80*, align 8
  %17 = alloca x86_fp80*, align 8
  %18 = alloca x86_fp80*, align 8
  %19 = alloca x86_fp80, align 16
  %20 = alloca x86_fp80, align 16
  %21 = alloca x86_fp80, align 16
  %22 = alloca %struct.bintime, align 4
  %23 = alloca %struct.bintime, align 4
  %24 = alloca %struct.timespec, align 4
  %25 = alloca %struct.timespec, align 4
  %26 = alloca i32, align 4
  store %struct.ctl_io_stats* %0, %struct.ctl_io_stats** %10, align 8
  store %struct.ctl_io_stats* %1, %struct.ctl_io_stats** %11, align 8
  store x86_fp80 %2, x86_fp80* %12, align 16
  store x86_fp80* %3, x86_fp80** %13, align 8
  store x86_fp80* %4, x86_fp80** %14, align 8
  store x86_fp80* %5, x86_fp80** %15, align 8
  store x86_fp80* %6, x86_fp80** %16, align 8
  store x86_fp80* %7, x86_fp80** %17, align 8
  store x86_fp80* %8, x86_fp80** %18, align 8
  store x86_fp80 0xK00000000000000000000, x86_fp80* %19, align 16
  store x86_fp80 0xK00000000000000000000, x86_fp80* %20, align 16
  store x86_fp80 0xK00000000000000000000, x86_fp80* %21, align 16
  %27 = bitcast %struct.bintime* %22 to %struct.timespec*
  %28 = call i32 @bzero(%struct.timespec* %27, i32 8)
  %29 = bitcast %struct.bintime* %23 to %struct.timespec*
  %30 = call i32 @bzero(%struct.timespec* %29, i32 8)
  %31 = call i32 @bzero(%struct.timespec* %24, i32 8)
  %32 = call i32 @bzero(%struct.timespec* %25, i32 8)
  store i32 0, i32* %26, align 4
  br label %33

33:                                               ; preds = %134, %9
  %34 = load i32, i32* %26, align 4
  %35 = load i32, i32* @CTL_STATS_NUM_TYPES, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %137

37:                                               ; preds = %33
  %38 = load %struct.ctl_io_stats*, %struct.ctl_io_stats** %10, align 8
  %39 = getelementptr inbounds %struct.ctl_io_stats, %struct.ctl_io_stats* %38, i32 0, i32 4
  %40 = load i64*, i64** %39, align 8
  %41 = load i32, i32* %26, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = sitofp i64 %44 to x86_fp80
  %46 = load x86_fp80, x86_fp80* %19, align 16
  %47 = fadd x86_fp80 %46, %45
  store x86_fp80 %47, x86_fp80* %19, align 16
  %48 = load %struct.ctl_io_stats*, %struct.ctl_io_stats** %10, align 8
  %49 = getelementptr inbounds %struct.ctl_io_stats, %struct.ctl_io_stats* %48, i32 0, i32 3
  %50 = load i64*, i64** %49, align 8
  %51 = load i32, i32* %26, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = sitofp i64 %54 to x86_fp80
  %56 = load x86_fp80, x86_fp80* %20, align 16
  %57 = fadd x86_fp80 %56, %55
  store x86_fp80 %57, x86_fp80* %20, align 16
  %58 = load %struct.ctl_io_stats*, %struct.ctl_io_stats** %10, align 8
  %59 = getelementptr inbounds %struct.ctl_io_stats, %struct.ctl_io_stats* %58, i32 0, i32 2
  %60 = load i64*, i64** %59, align 8
  %61 = load i32, i32* %26, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = sitofp i64 %64 to x86_fp80
  %66 = load x86_fp80, x86_fp80* %21, align 16
  %67 = fadd x86_fp80 %66, %65
  store x86_fp80 %67, x86_fp80* %21, align 16
  %68 = bitcast %struct.bintime* %22 to %struct.timespec*
  %69 = load %struct.ctl_io_stats*, %struct.ctl_io_stats** %10, align 8
  %70 = getelementptr inbounds %struct.ctl_io_stats, %struct.ctl_io_stats* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %26, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = call i32 @bintime_add(%struct.timespec* %68, i32* %74)
  %76 = bitcast %struct.bintime* %23 to %struct.timespec*
  %77 = load %struct.ctl_io_stats*, %struct.ctl_io_stats** %10, align 8
  %78 = getelementptr inbounds %struct.ctl_io_stats, %struct.ctl_io_stats* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %26, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = call i32 @bintime_add(%struct.timespec* %76, i32* %82)
  %84 = load %struct.ctl_io_stats*, %struct.ctl_io_stats** %11, align 8
  %85 = icmp ne %struct.ctl_io_stats* %84, null
  br i1 %85, label %86, label %133

86:                                               ; preds = %37
  %87 = load %struct.ctl_io_stats*, %struct.ctl_io_stats** %11, align 8
  %88 = getelementptr inbounds %struct.ctl_io_stats, %struct.ctl_io_stats* %87, i32 0, i32 4
  %89 = load i64*, i64** %88, align 8
  %90 = load i32, i32* %26, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %89, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = sitofp i64 %93 to x86_fp80
  %95 = load x86_fp80, x86_fp80* %19, align 16
  %96 = fsub x86_fp80 %95, %94
  store x86_fp80 %96, x86_fp80* %19, align 16
  %97 = load %struct.ctl_io_stats*, %struct.ctl_io_stats** %11, align 8
  %98 = getelementptr inbounds %struct.ctl_io_stats, %struct.ctl_io_stats* %97, i32 0, i32 3
  %99 = load i64*, i64** %98, align 8
  %100 = load i32, i32* %26, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %99, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = sitofp i64 %103 to x86_fp80
  %105 = load x86_fp80, x86_fp80* %20, align 16
  %106 = fsub x86_fp80 %105, %104
  store x86_fp80 %106, x86_fp80* %20, align 16
  %107 = load %struct.ctl_io_stats*, %struct.ctl_io_stats** %11, align 8
  %108 = getelementptr inbounds %struct.ctl_io_stats, %struct.ctl_io_stats* %107, i32 0, i32 2
  %109 = load i64*, i64** %108, align 8
  %110 = load i32, i32* %26, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i64, i64* %109, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = sitofp i64 %113 to x86_fp80
  %115 = load x86_fp80, x86_fp80* %21, align 16
  %116 = fsub x86_fp80 %115, %114
  store x86_fp80 %116, x86_fp80* %21, align 16
  %117 = bitcast %struct.bintime* %22 to %struct.timespec*
  %118 = load %struct.ctl_io_stats*, %struct.ctl_io_stats** %11, align 8
  %119 = getelementptr inbounds %struct.ctl_io_stats, %struct.ctl_io_stats* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %26, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = call i32 @bintime_sub(%struct.timespec* %117, i32* %123)
  %125 = bitcast %struct.bintime* %23 to %struct.timespec*
  %126 = load %struct.ctl_io_stats*, %struct.ctl_io_stats** %11, align 8
  %127 = getelementptr inbounds %struct.ctl_io_stats, %struct.ctl_io_stats* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %26, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = call i32 @bintime_sub(%struct.timespec* %125, i32* %131)
  br label %133

133:                                              ; preds = %86, %37
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %26, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %26, align 4
  br label %33

137:                                              ; preds = %33
  %138 = load x86_fp80, x86_fp80* %19, align 16
  %139 = load x86_fp80*, x86_fp80** %13, align 8
  store x86_fp80 %138, x86_fp80* %139, align 16
  %140 = load x86_fp80*, x86_fp80** %13, align 8
  %141 = load x86_fp80, x86_fp80* %140, align 16
  %142 = fdiv x86_fp80 %141, 0xK40138000000000000000
  store x86_fp80 %142, x86_fp80* %140, align 16
  %143 = load x86_fp80, x86_fp80* %12, align 16
  %144 = fcmp ogt x86_fp80 %143, 0xK00000000000000000000
  br i1 %144, label %145, label %150

145:                                              ; preds = %137
  %146 = load x86_fp80, x86_fp80* %12, align 16
  %147 = load x86_fp80*, x86_fp80** %13, align 8
  %148 = load x86_fp80, x86_fp80* %147, align 16
  %149 = fdiv x86_fp80 %148, %146
  store x86_fp80 %149, x86_fp80* %147, align 16
  br label %152

150:                                              ; preds = %137
  %151 = load x86_fp80*, x86_fp80** %13, align 8
  store x86_fp80 0xK00000000000000000000, x86_fp80* %151, align 16
  br label %152

152:                                              ; preds = %150, %145
  %153 = load x86_fp80, x86_fp80* %19, align 16
  %154 = load x86_fp80*, x86_fp80** %14, align 8
  store x86_fp80 %153, x86_fp80* %154, align 16
  %155 = load x86_fp80*, x86_fp80** %14, align 8
  %156 = load x86_fp80, x86_fp80* %155, align 16
  %157 = fdiv x86_fp80 %156, 0xK40098000000000000000
  store x86_fp80 %157, x86_fp80* %155, align 16
  %158 = load x86_fp80, x86_fp80* %20, align 16
  %159 = fcmp ogt x86_fp80 %158, 0xK00000000000000000000
  br i1 %159, label %160, label %165

160:                                              ; preds = %152
  %161 = load x86_fp80, x86_fp80* %20, align 16
  %162 = load x86_fp80*, x86_fp80** %14, align 8
  %163 = load x86_fp80, x86_fp80* %162, align 16
  %164 = fdiv x86_fp80 %163, %161
  store x86_fp80 %164, x86_fp80* %162, align 16
  br label %167

165:                                              ; preds = %152
  %166 = load x86_fp80*, x86_fp80** %14, align 8
  store x86_fp80 0xK00000000000000000000, x86_fp80* %166, align 16
  br label %167

167:                                              ; preds = %165, %160
  %168 = load x86_fp80, x86_fp80* %20, align 16
  %169 = load x86_fp80*, x86_fp80** %15, align 8
  store x86_fp80 %168, x86_fp80* %169, align 16
  %170 = load x86_fp80, x86_fp80* %21, align 16
  %171 = load x86_fp80*, x86_fp80** %18, align 8
  store x86_fp80 %170, x86_fp80* %171, align 16
  %172 = load x86_fp80, x86_fp80* %12, align 16
  %173 = fcmp ogt x86_fp80 %172, 0xK00000000000000000000
  br i1 %173, label %174, label %183

174:                                              ; preds = %167
  %175 = load x86_fp80, x86_fp80* %12, align 16
  %176 = load x86_fp80*, x86_fp80** %15, align 8
  %177 = load x86_fp80, x86_fp80* %176, align 16
  %178 = fdiv x86_fp80 %177, %175
  store x86_fp80 %178, x86_fp80* %176, align 16
  %179 = load x86_fp80, x86_fp80* %12, align 16
  %180 = load x86_fp80*, x86_fp80** %18, align 8
  %181 = load x86_fp80, x86_fp80* %180, align 16
  %182 = fdiv x86_fp80 %181, %179
  store x86_fp80 %182, x86_fp80* %180, align 16
  br label %186

183:                                              ; preds = %167
  %184 = load x86_fp80*, x86_fp80** %15, align 8
  store x86_fp80 0xK00000000000000000000, x86_fp80* %184, align 16
  %185 = load x86_fp80*, x86_fp80** %18, align 8
  store x86_fp80 0xK00000000000000000000, x86_fp80* %185, align 16
  br label %186

186:                                              ; preds = %183, %174
  %187 = bitcast %struct.bintime* %22 to %struct.timespec*
  %188 = call i32 @bintime2timespec(%struct.timespec* %187, %struct.timespec* %24)
  %189 = bitcast %struct.bintime* %23 to %struct.timespec*
  %190 = call i32 @bintime2timespec(%struct.timespec* %189, %struct.timespec* %25)
  %191 = load x86_fp80, x86_fp80* %20, align 16
  %192 = fcmp ogt x86_fp80 %191, 0xK00000000000000000000
  br i1 %192, label %193, label %210

193:                                              ; preds = %186
  %194 = getelementptr inbounds %struct.timespec, %struct.timespec* %24, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = mul nsw i32 %195, 1000
  %197 = sitofp i32 %196 to x86_fp80
  %198 = load x86_fp80*, x86_fp80** %16, align 8
  store x86_fp80 %197, x86_fp80* %198, align 16
  %199 = getelementptr inbounds %struct.timespec, %struct.timespec* %24, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = sdiv i32 %200, 1000000
  %202 = sitofp i32 %201 to x86_fp80
  %203 = load x86_fp80*, x86_fp80** %16, align 8
  %204 = load x86_fp80, x86_fp80* %203, align 16
  %205 = fadd x86_fp80 %204, %202
  store x86_fp80 %205, x86_fp80* %203, align 16
  %206 = load x86_fp80, x86_fp80* %20, align 16
  %207 = load x86_fp80*, x86_fp80** %16, align 8
  %208 = load x86_fp80, x86_fp80* %207, align 16
  %209 = fdiv x86_fp80 %208, %206
  store x86_fp80 %209, x86_fp80* %207, align 16
  br label %212

210:                                              ; preds = %186
  %211 = load x86_fp80*, x86_fp80** %16, align 8
  store x86_fp80 0xK00000000000000000000, x86_fp80* %211, align 16
  br label %212

212:                                              ; preds = %210, %193
  %213 = load x86_fp80, x86_fp80* %21, align 16
  %214 = fcmp ogt x86_fp80 %213, 0xK00000000000000000000
  br i1 %214, label %215, label %232

215:                                              ; preds = %212
  %216 = getelementptr inbounds %struct.timespec, %struct.timespec* %25, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = mul nsw i32 %217, 1000
  %219 = sitofp i32 %218 to x86_fp80
  %220 = load x86_fp80*, x86_fp80** %17, align 8
  store x86_fp80 %219, x86_fp80* %220, align 16
  %221 = getelementptr inbounds %struct.timespec, %struct.timespec* %25, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = sdiv i32 %222, 1000000
  %224 = sitofp i32 %223 to x86_fp80
  %225 = load x86_fp80*, x86_fp80** %17, align 8
  %226 = load x86_fp80, x86_fp80* %225, align 16
  %227 = fadd x86_fp80 %226, %224
  store x86_fp80 %227, x86_fp80* %225, align 16
  %228 = load x86_fp80, x86_fp80* %21, align 16
  %229 = load x86_fp80*, x86_fp80** %17, align 8
  %230 = load x86_fp80, x86_fp80* %229, align 16
  %231 = fdiv x86_fp80 %230, %228
  store x86_fp80 %231, x86_fp80* %229, align 16
  br label %234

232:                                              ; preds = %212
  %233 = load x86_fp80*, x86_fp80** %17, align 8
  store x86_fp80 0xK00000000000000000000, x86_fp80* %233, align 16
  br label %234

234:                                              ; preds = %232, %215
  ret void
}

declare dso_local i32 @bzero(%struct.timespec*, i32) #1

declare dso_local i32 @bintime_add(%struct.timespec*, i32*) #1

declare dso_local i32 @bintime_sub(%struct.timespec*, i32*) #1

declare dso_local i32 @bintime2timespec(%struct.timespec*, %struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
