; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder_rate.c_z_resampler_build_polyphase.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder_rate.c_z_resampler_build_polyphase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z_info = type { i32, i32, i32, i32, i32, i32, i8** }

@M_DEVBUF = common dso_local global i32 0, align 4
@feeder_rate_polyphase_max = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Polyphase entries exceed: [%d/%d] %jd > %d\0A\00", align 1
@E2BIG = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@Z_SHIFT = common dso_local global i32 0, align 4
@Z_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Polyphase: [%d/%d] %d entries\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.z_info*)* @z_resampler_build_polyphase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @z_resampler_build_polyphase(%struct.z_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.z_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.z_info* %0, %struct.z_info** %3, align 8
  %9 = load %struct.z_info*, %struct.z_info** %3, align 8
  %10 = getelementptr inbounds %struct.z_info, %struct.z_info* %9, i32 0, i32 6
  %11 = load i8**, i8*** %10, align 8
  %12 = icmp ne i8** %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load %struct.z_info*, %struct.z_info** %3, align 8
  %15 = getelementptr inbounds %struct.z_info, %struct.z_info* %14, i32 0, i32 6
  %16 = load i8**, i8*** %15, align 8
  %17 = load i32, i32* @M_DEVBUF, align 4
  %18 = call i32 @free(i8** %16, i32 %17)
  %19 = load %struct.z_info*, %struct.z_info** %3, align 8
  %20 = getelementptr inbounds %struct.z_info, %struct.z_info* %19, i32 0, i32 6
  store i8** null, i8*** %20, align 8
  br label %21

21:                                               ; preds = %13, %1
  %22 = load i32, i32* @feeder_rate_polyphase_max, align 4
  %23 = icmp slt i32 %22, 1
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32, i32* @ENOTSUP, align 4
  store i32 %25, i32* %2, align 4
  br label %220

26:                                               ; preds = %21
  %27 = load %struct.z_info*, %struct.z_info** %3, align 8
  %28 = getelementptr inbounds %struct.z_info, %struct.z_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.z_info*, %struct.z_info** %3, align 8
  %31 = getelementptr inbounds %struct.z_info, %struct.z_info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %29, %32
  %34 = mul nsw i32 %33, 2
  %35 = load i32, i32* @feeder_rate_polyphase_max, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %56

37:                                               ; preds = %26
  %38 = load i32, i32* @stderr, align 4
  %39 = load %struct.z_info*, %struct.z_info** %3, align 8
  %40 = getelementptr inbounds %struct.z_info, %struct.z_info* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.z_info*, %struct.z_info** %3, align 8
  %43 = getelementptr inbounds %struct.z_info, %struct.z_info* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.z_info*, %struct.z_info** %3, align 8
  %46 = getelementptr inbounds %struct.z_info, %struct.z_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.z_info*, %struct.z_info** %3, align 8
  %49 = getelementptr inbounds %struct.z_info, %struct.z_info* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = mul nsw i32 %47, %50
  %52 = mul nsw i32 %51, 2
  %53 = load i32, i32* @feeder_rate_polyphase_max, align 4
  %54 = call i32 (i32, i8*, i32, i32, i32, ...) @fprintf(i32 %38, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %44, i32 %52, i32 %53)
  %55 = load i32, i32* @E2BIG, align 4
  store i32 %55, i32* %2, align 4
  br label %220

56:                                               ; preds = %26
  %57 = load %struct.z_info*, %struct.z_info** %3, align 8
  %58 = getelementptr inbounds %struct.z_info, %struct.z_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = mul i64 4, %60
  %62 = load %struct.z_info*, %struct.z_info** %3, align 8
  %63 = getelementptr inbounds %struct.z_info, %struct.z_info* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = mul i64 %61, %65
  %67 = mul i64 %66, 2
  %68 = trunc i64 %67 to i32
  %69 = load i32, i32* @M_DEVBUF, align 4
  %70 = load i32, i32* @M_NOWAIT, align 4
  %71 = load i32, i32* @M_ZERO, align 4
  %72 = or i32 %70, %71
  %73 = call i8** @malloc(i32 %68, i32 %69, i32 %72)
  %74 = load %struct.z_info*, %struct.z_info** %3, align 8
  %75 = getelementptr inbounds %struct.z_info, %struct.z_info* %74, i32 0, i32 6
  store i8** %73, i8*** %75, align 8
  %76 = load %struct.z_info*, %struct.z_info** %3, align 8
  %77 = getelementptr inbounds %struct.z_info, %struct.z_info* %76, i32 0, i32 6
  %78 = load i8**, i8*** %77, align 8
  %79 = icmp eq i8** %78, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %56
  %81 = load i32, i32* @ENOMEM, align 4
  store i32 %81, i32* %2, align 4
  br label %220

82:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %200, %82
  %84 = load i32, i32* %4, align 4
  %85 = load %struct.z_info*, %struct.z_info** %3, align 8
  %86 = getelementptr inbounds %struct.z_info, %struct.z_info* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp slt i32 %84, %87
  br i1 %88, label %89, label %203

89:                                               ; preds = %83
  %90 = load i32, i32* %4, align 4
  %91 = load %struct.z_info*, %struct.z_info** %3, align 8
  %92 = getelementptr inbounds %struct.z_info, %struct.z_info* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = mul nsw i32 %90, %93
  store i32 %94, i32* %7, align 4
  store i32 0, i32* %5, align 4
  %95 = load %struct.z_info*, %struct.z_info** %3, align 8
  %96 = getelementptr inbounds %struct.z_info, %struct.z_info* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  store i32 %97, i32* %6, align 4
  br label %98

98:                                               ; preds = %141, %89
  %99 = load i32, i32* %6, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %144

101:                                              ; preds = %98
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @Z_SHIFT, align 4
  %104 = ashr i32 %102, %103
  %105 = load i32, i32* %5, align 4
  %106 = add nsw i32 %105, %104
  store i32 %106, i32* %5, align 4
  %107 = load i32, i32* @Z_MASK, align 4
  %108 = load i32, i32* %7, align 4
  %109 = and i32 %108, %107
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* %4, align 4
  %111 = load %struct.z_info*, %struct.z_info** %3, align 8
  %112 = getelementptr inbounds %struct.z_info, %struct.z_info* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = mul nsw i32 %110, %113
  %115 = mul nsw i32 %114, 2
  %116 = load %struct.z_info*, %struct.z_info** %3, align 8
  %117 = getelementptr inbounds %struct.z_info, %struct.z_info* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = mul nsw i32 %118, 2
  %120 = add nsw i32 %115, %119
  %121 = load i32, i32* %6, align 4
  %122 = sub nsw i32 %120, %121
  store i32 %122, i32* %8, align 4
  %123 = load i32, i32* %7, align 4
  %124 = load %struct.z_info*, %struct.z_info** %3, align 8
  %125 = getelementptr inbounds %struct.z_info, %struct.z_info* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* %5, align 4
  %128 = add nsw i32 %126, %127
  %129 = call i8* @z_coeff_interpolate(i32 %123, i32 %128)
  %130 = load %struct.z_info*, %struct.z_info** %3, align 8
  %131 = getelementptr inbounds %struct.z_info, %struct.z_info* %130, i32 0, i32 6
  %132 = load i8**, i8*** %131, align 8
  %133 = load i32, i32* %8, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8*, i8** %132, i64 %134
  store i8* %129, i8** %135, align 8
  %136 = load %struct.z_info*, %struct.z_info** %3, align 8
  %137 = getelementptr inbounds %struct.z_info, %struct.z_info* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %7, align 4
  %140 = add nsw i32 %139, %138
  store i32 %140, i32* %7, align 4
  br label %141

141:                                              ; preds = %101
  %142 = load i32, i32* %6, align 4
  %143 = add nsw i32 %142, -1
  store i32 %143, i32* %6, align 4
  br label %98

144:                                              ; preds = %98
  %145 = load %struct.z_info*, %struct.z_info** %3, align 8
  %146 = getelementptr inbounds %struct.z_info, %struct.z_info* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %4, align 4
  %149 = load %struct.z_info*, %struct.z_info** %3, align 8
  %150 = getelementptr inbounds %struct.z_info, %struct.z_info* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = mul nsw i32 %148, %151
  %153 = sub nsw i32 %147, %152
  store i32 %153, i32* %7, align 4
  store i32 0, i32* %5, align 4
  %154 = load %struct.z_info*, %struct.z_info** %3, align 8
  %155 = getelementptr inbounds %struct.z_info, %struct.z_info* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  store i32 %156, i32* %6, align 4
  br label %157

157:                                              ; preds = %196, %144
  %158 = load i32, i32* %6, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %199

160:                                              ; preds = %157
  %161 = load i32, i32* %7, align 4
  %162 = load i32, i32* @Z_SHIFT, align 4
  %163 = ashr i32 %161, %162
  %164 = load i32, i32* %5, align 4
  %165 = add nsw i32 %164, %163
  store i32 %165, i32* %5, align 4
  %166 = load i32, i32* @Z_MASK, align 4
  %167 = load i32, i32* %7, align 4
  %168 = and i32 %167, %166
  store i32 %168, i32* %7, align 4
  %169 = load i32, i32* %4, align 4
  %170 = load %struct.z_info*, %struct.z_info** %3, align 8
  %171 = getelementptr inbounds %struct.z_info, %struct.z_info* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = mul nsw i32 %169, %172
  %174 = mul nsw i32 %173, 2
  %175 = load i32, i32* %6, align 4
  %176 = add nsw i32 %174, %175
  %177 = sub nsw i32 %176, 1
  store i32 %177, i32* %8, align 4
  %178 = load i32, i32* %7, align 4
  %179 = load %struct.z_info*, %struct.z_info** %3, align 8
  %180 = getelementptr inbounds %struct.z_info, %struct.z_info* %179, i32 0, i32 4
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* %5, align 4
  %183 = add nsw i32 %181, %182
  %184 = call i8* @z_coeff_interpolate(i32 %178, i32 %183)
  %185 = load %struct.z_info*, %struct.z_info** %3, align 8
  %186 = getelementptr inbounds %struct.z_info, %struct.z_info* %185, i32 0, i32 6
  %187 = load i8**, i8*** %186, align 8
  %188 = load i32, i32* %8, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i8*, i8** %187, i64 %189
  store i8* %184, i8** %190, align 8
  %191 = load %struct.z_info*, %struct.z_info** %3, align 8
  %192 = getelementptr inbounds %struct.z_info, %struct.z_info* %191, i32 0, i32 5
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* %7, align 4
  %195 = add nsw i32 %194, %193
  store i32 %195, i32* %7, align 4
  br label %196

196:                                              ; preds = %160
  %197 = load i32, i32* %6, align 4
  %198 = add nsw i32 %197, -1
  store i32 %198, i32* %6, align 4
  br label %157

199:                                              ; preds = %157
  br label %200

200:                                              ; preds = %199
  %201 = load i32, i32* %4, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %4, align 4
  br label %83

203:                                              ; preds = %83
  %204 = load i32, i32* @stderr, align 4
  %205 = load %struct.z_info*, %struct.z_info** %3, align 8
  %206 = getelementptr inbounds %struct.z_info, %struct.z_info* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.z_info*, %struct.z_info** %3, align 8
  %209 = getelementptr inbounds %struct.z_info, %struct.z_info* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.z_info*, %struct.z_info** %3, align 8
  %212 = getelementptr inbounds %struct.z_info, %struct.z_info* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.z_info*, %struct.z_info** %3, align 8
  %215 = getelementptr inbounds %struct.z_info, %struct.z_info* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = mul nsw i32 %213, %216
  %218 = mul nsw i32 %217, 2
  %219 = call i32 (i32, i8*, i32, i32, i32, ...) @fprintf(i32 %204, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %207, i32 %210, i32 %218)
  store i32 0, i32* %2, align 4
  br label %220

220:                                              ; preds = %203, %80, %37, %24
  %221 = load i32, i32* %2, align 4
  ret i32 %221
}

declare dso_local i32 @free(i8**, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i32, ...) #1

declare dso_local i8** @malloc(i32, i32, i32) #1

declare dso_local i8* @z_coeff_interpolate(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
