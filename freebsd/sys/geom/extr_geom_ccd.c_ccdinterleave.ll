; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_ccd.c_ccdinterleave.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_ccd.c_ccdinterleave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccd_s = type { i32, i32, %struct.ccdcinfo*, %struct.ccdiinfo* }
%struct.ccdcinfo = type { i32 }
%struct.ccdiinfo = type { i32*, i32, i32, i32 }

@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccd_s*)* @ccdinterleave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccdinterleave(%struct.ccd_s* %0) #0 {
  %2 = alloca %struct.ccd_s*, align 8
  %3 = alloca %struct.ccdcinfo*, align 8
  %4 = alloca %struct.ccdcinfo*, align 8
  %5 = alloca %struct.ccdiinfo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ccd_s* %0, %struct.ccd_s** %2, align 8
  %10 = load %struct.ccd_s*, %struct.ccd_s** %2, align 8
  %11 = getelementptr inbounds %struct.ccd_s, %struct.ccd_s* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = add nsw i32 %12, 1
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 24
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @M_WAITOK, align 4
  %19 = load i32, i32* @M_ZERO, align 4
  %20 = or i32 %18, %19
  %21 = call i8* @g_malloc(i32 %17, i32 %20)
  %22 = bitcast i8* %21 to %struct.ccdiinfo*
  %23 = load %struct.ccd_s*, %struct.ccd_s** %2, align 8
  %24 = getelementptr inbounds %struct.ccd_s, %struct.ccd_s* %23, i32 0, i32 3
  store %struct.ccdiinfo* %22, %struct.ccdiinfo** %24, align 8
  %25 = load %struct.ccd_s*, %struct.ccd_s** %2, align 8
  %26 = getelementptr inbounds %struct.ccd_s, %struct.ccd_s* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %75

29:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  %30 = load %struct.ccd_s*, %struct.ccd_s** %2, align 8
  %31 = getelementptr inbounds %struct.ccd_s, %struct.ccd_s* %30, i32 0, i32 3
  %32 = load %struct.ccdiinfo*, %struct.ccdiinfo** %31, align 8
  store %struct.ccdiinfo* %32, %struct.ccdiinfo** %5, align 8
  store i32 0, i32* %8, align 4
  br label %33

33:                                               ; preds = %69, %29
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.ccd_s*, %struct.ccd_s** %2, align 8
  %36 = getelementptr inbounds %struct.ccd_s, %struct.ccd_s* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %72

39:                                               ; preds = %33
  %40 = load i32, i32* @M_WAITOK, align 4
  %41 = call i8* @g_malloc(i32 4, i32 %40)
  %42 = bitcast i8* %41 to i32*
  %43 = load %struct.ccdiinfo*, %struct.ccdiinfo** %5, align 8
  %44 = getelementptr inbounds %struct.ccdiinfo, %struct.ccdiinfo* %43, i32 0, i32 0
  store i32* %42, i32** %44, align 8
  %45 = load %struct.ccdiinfo*, %struct.ccdiinfo** %5, align 8
  %46 = getelementptr inbounds %struct.ccdiinfo, %struct.ccdiinfo* %45, i32 0, i32 1
  store i32 1, i32* %46, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.ccdiinfo*, %struct.ccdiinfo** %5, align 8
  %49 = getelementptr inbounds %struct.ccdiinfo, %struct.ccdiinfo* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load %struct.ccdiinfo*, %struct.ccdiinfo** %5, align 8
  %51 = getelementptr inbounds %struct.ccdiinfo, %struct.ccdiinfo* %50, i32 0, i32 3
  store i32 0, i32* %51, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.ccdiinfo*, %struct.ccdiinfo** %5, align 8
  %54 = getelementptr inbounds %struct.ccdiinfo, %struct.ccdiinfo* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  store i32 %52, i32* %56, align 4
  %57 = load %struct.ccd_s*, %struct.ccd_s** %2, align 8
  %58 = getelementptr inbounds %struct.ccd_s, %struct.ccd_s* %57, i32 0, i32 2
  %59 = load %struct.ccdcinfo*, %struct.ccdcinfo** %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.ccdcinfo, %struct.ccdcinfo* %59, i64 %61
  %63 = getelementptr inbounds %struct.ccdcinfo, %struct.ccdcinfo* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, %64
  store i32 %66, i32* %6, align 4
  %67 = load %struct.ccdiinfo*, %struct.ccdiinfo** %5, align 8
  %68 = getelementptr inbounds %struct.ccdiinfo, %struct.ccdiinfo* %67, i32 1
  store %struct.ccdiinfo* %68, %struct.ccdiinfo** %5, align 8
  br label %69

69:                                               ; preds = %39
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %8, align 4
  br label %33

72:                                               ; preds = %33
  %73 = load %struct.ccdiinfo*, %struct.ccdiinfo** %5, align 8
  %74 = getelementptr inbounds %struct.ccdiinfo, %struct.ccdiinfo* %73, i32 0, i32 1
  store i32 0, i32* %74, align 8
  br label %220

75:                                               ; preds = %1
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  %76 = load %struct.ccd_s*, %struct.ccd_s** %2, align 8
  %77 = getelementptr inbounds %struct.ccd_s, %struct.ccd_s* %76, i32 0, i32 3
  %78 = load %struct.ccdiinfo*, %struct.ccdiinfo** %77, align 8
  store %struct.ccdiinfo* %78, %struct.ccdiinfo** %5, align 8
  br label %79

79:                                               ; preds = %217, %75
  %80 = load %struct.ccd_s*, %struct.ccd_s** %2, align 8
  %81 = getelementptr inbounds %struct.ccd_s, %struct.ccd_s* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = mul i64 4, %83
  %85 = trunc i64 %84 to i32
  %86 = load i32, i32* @M_WAITOK, align 4
  %87 = call i8* @g_malloc(i32 %85, i32 %86)
  %88 = bitcast i8* %87 to i32*
  %89 = load %struct.ccdiinfo*, %struct.ccdiinfo** %5, align 8
  %90 = getelementptr inbounds %struct.ccdiinfo, %struct.ccdiinfo* %89, i32 0, i32 0
  store i32* %88, i32** %90, align 8
  store %struct.ccdcinfo* null, %struct.ccdcinfo** %4, align 8
  %91 = load %struct.ccd_s*, %struct.ccd_s** %2, align 8
  %92 = getelementptr inbounds %struct.ccd_s, %struct.ccd_s* %91, i32 0, i32 2
  %93 = load %struct.ccdcinfo*, %struct.ccdcinfo** %92, align 8
  store %struct.ccdcinfo* %93, %struct.ccdcinfo** %3, align 8
  br label %94

94:                                               ; preds = %125, %79
  %95 = load %struct.ccdcinfo*, %struct.ccdcinfo** %3, align 8
  %96 = load %struct.ccd_s*, %struct.ccd_s** %2, align 8
  %97 = getelementptr inbounds %struct.ccd_s, %struct.ccd_s* %96, i32 0, i32 2
  %98 = load %struct.ccdcinfo*, %struct.ccdcinfo** %97, align 8
  %99 = load %struct.ccd_s*, %struct.ccd_s** %2, align 8
  %100 = getelementptr inbounds %struct.ccd_s, %struct.ccd_s* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.ccdcinfo, %struct.ccdcinfo* %98, i64 %102
  %104 = icmp ult %struct.ccdcinfo* %95, %103
  br i1 %104, label %105, label %128

105:                                              ; preds = %94
  %106 = load %struct.ccdcinfo*, %struct.ccdcinfo** %3, align 8
  %107 = getelementptr inbounds %struct.ccdcinfo, %struct.ccdcinfo* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %9, align 4
  %110 = icmp sgt i32 %108, %109
  br i1 %110, label %111, label %124

111:                                              ; preds = %105
  %112 = load %struct.ccdcinfo*, %struct.ccdcinfo** %4, align 8
  %113 = icmp eq %struct.ccdcinfo* %112, null
  br i1 %113, label %122, label %114

114:                                              ; preds = %111
  %115 = load %struct.ccdcinfo*, %struct.ccdcinfo** %3, align 8
  %116 = getelementptr inbounds %struct.ccdcinfo, %struct.ccdcinfo* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.ccdcinfo*, %struct.ccdcinfo** %4, align 8
  %119 = getelementptr inbounds %struct.ccdcinfo, %struct.ccdcinfo* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = icmp slt i32 %117, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %114, %111
  %123 = load %struct.ccdcinfo*, %struct.ccdcinfo** %3, align 8
  store %struct.ccdcinfo* %123, %struct.ccdcinfo** %4, align 8
  br label %124

124:                                              ; preds = %122, %114, %105
  br label %125

125:                                              ; preds = %124
  %126 = load %struct.ccdcinfo*, %struct.ccdcinfo** %3, align 8
  %127 = getelementptr inbounds %struct.ccdcinfo, %struct.ccdcinfo* %126, i32 1
  store %struct.ccdcinfo* %127, %struct.ccdcinfo** %3, align 8
  br label %94

128:                                              ; preds = %94
  %129 = load %struct.ccdcinfo*, %struct.ccdcinfo** %4, align 8
  %130 = icmp eq %struct.ccdcinfo* %129, null
  br i1 %130, label %131, label %140

131:                                              ; preds = %128
  %132 = load %struct.ccdiinfo*, %struct.ccdiinfo** %5, align 8
  %133 = getelementptr inbounds %struct.ccdiinfo, %struct.ccdiinfo* %132, i32 0, i32 1
  store i32 0, i32* %133, align 8
  %134 = load %struct.ccdiinfo*, %struct.ccdiinfo** %5, align 8
  %135 = getelementptr inbounds %struct.ccdiinfo, %struct.ccdiinfo* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = call i32 @g_free(i32* %136)
  %138 = load %struct.ccdiinfo*, %struct.ccdiinfo** %5, align 8
  %139 = getelementptr inbounds %struct.ccdiinfo, %struct.ccdiinfo* %138, i32 0, i32 0
  store i32* null, i32** %139, align 8
  br label %220

140:                                              ; preds = %128
  %141 = load i32, i32* %6, align 4
  %142 = load %struct.ccd_s*, %struct.ccd_s** %2, align 8
  %143 = getelementptr inbounds %struct.ccd_s, %struct.ccd_s* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = sdiv i32 %141, %144
  %146 = load %struct.ccdiinfo*, %struct.ccdiinfo** %5, align 8
  %147 = getelementptr inbounds %struct.ccdiinfo, %struct.ccdiinfo* %146, i32 0, i32 2
  store i32 %145, i32* %147, align 4
  %148 = load i32, i32* %7, align 4
  %149 = load %struct.ccdiinfo*, %struct.ccdiinfo** %5, align 8
  %150 = getelementptr inbounds %struct.ccdiinfo, %struct.ccdiinfo* %149, i32 0, i32 3
  store i32 %148, i32* %150, align 8
  store i32 0, i32* %8, align 4
  %151 = load %struct.ccd_s*, %struct.ccd_s** %2, align 8
  %152 = getelementptr inbounds %struct.ccd_s, %struct.ccd_s* %151, i32 0, i32 2
  %153 = load %struct.ccdcinfo*, %struct.ccdcinfo** %152, align 8
  store %struct.ccdcinfo* %153, %struct.ccdcinfo** %3, align 8
  br label %154

154:                                              ; preds = %191, %140
  %155 = load %struct.ccdcinfo*, %struct.ccdcinfo** %3, align 8
  %156 = load %struct.ccd_s*, %struct.ccd_s** %2, align 8
  %157 = getelementptr inbounds %struct.ccd_s, %struct.ccd_s* %156, i32 0, i32 2
  %158 = load %struct.ccdcinfo*, %struct.ccdcinfo** %157, align 8
  %159 = load %struct.ccd_s*, %struct.ccd_s** %2, align 8
  %160 = getelementptr inbounds %struct.ccd_s, %struct.ccd_s* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.ccdcinfo, %struct.ccdcinfo* %158, i64 %162
  %164 = icmp ult %struct.ccdcinfo* %155, %163
  br i1 %164, label %165, label %194

165:                                              ; preds = %154
  %166 = load %struct.ccdcinfo*, %struct.ccdcinfo** %3, align 8
  %167 = getelementptr inbounds %struct.ccdcinfo, %struct.ccdcinfo* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.ccdcinfo*, %struct.ccdcinfo** %4, align 8
  %170 = getelementptr inbounds %struct.ccdcinfo, %struct.ccdcinfo* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = icmp sge i32 %168, %171
  br i1 %172, label %173, label %190

173:                                              ; preds = %165
  %174 = load %struct.ccdcinfo*, %struct.ccdcinfo** %3, align 8
  %175 = load %struct.ccd_s*, %struct.ccd_s** %2, align 8
  %176 = getelementptr inbounds %struct.ccd_s, %struct.ccd_s* %175, i32 0, i32 2
  %177 = load %struct.ccdcinfo*, %struct.ccdcinfo** %176, align 8
  %178 = ptrtoint %struct.ccdcinfo* %174 to i64
  %179 = ptrtoint %struct.ccdcinfo* %177 to i64
  %180 = sub i64 %178, %179
  %181 = sdiv exact i64 %180, 4
  %182 = trunc i64 %181 to i32
  %183 = load %struct.ccdiinfo*, %struct.ccdiinfo** %5, align 8
  %184 = getelementptr inbounds %struct.ccdiinfo, %struct.ccdiinfo* %183, i32 0, i32 0
  %185 = load i32*, i32** %184, align 8
  %186 = load i32, i32* %8, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %8, align 4
  %188 = sext i32 %186 to i64
  %189 = getelementptr inbounds i32, i32* %185, i64 %188
  store i32 %182, i32* %189, align 4
  br label %190

190:                                              ; preds = %173, %165
  br label %191

191:                                              ; preds = %190
  %192 = load %struct.ccdcinfo*, %struct.ccdcinfo** %3, align 8
  %193 = getelementptr inbounds %struct.ccdcinfo, %struct.ccdcinfo* %192, i32 1
  store %struct.ccdcinfo* %193, %struct.ccdcinfo** %3, align 8
  br label %154

194:                                              ; preds = %154
  %195 = load i32, i32* %8, align 4
  %196 = load %struct.ccdiinfo*, %struct.ccdiinfo** %5, align 8
  %197 = getelementptr inbounds %struct.ccdiinfo, %struct.ccdiinfo* %196, i32 0, i32 1
  store i32 %195, i32* %197, align 8
  %198 = load i32, i32* %8, align 4
  %199 = load %struct.ccdcinfo*, %struct.ccdcinfo** %4, align 8
  %200 = getelementptr inbounds %struct.ccdcinfo, %struct.ccdcinfo* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* %9, align 4
  %203 = sub nsw i32 %201, %202
  %204 = mul nsw i32 %198, %203
  %205 = load i32, i32* %6, align 4
  %206 = add nsw i32 %205, %204
  store i32 %206, i32* %6, align 4
  %207 = load %struct.ccdcinfo*, %struct.ccdcinfo** %4, align 8
  %208 = getelementptr inbounds %struct.ccdcinfo, %struct.ccdcinfo* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.ccd_s*, %struct.ccd_s** %2, align 8
  %211 = getelementptr inbounds %struct.ccd_s, %struct.ccd_s* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = sdiv i32 %209, %212
  store i32 %213, i32* %7, align 4
  %214 = load %struct.ccdcinfo*, %struct.ccdcinfo** %4, align 8
  %215 = getelementptr inbounds %struct.ccdcinfo, %struct.ccdcinfo* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  store i32 %216, i32* %9, align 4
  br label %217

217:                                              ; preds = %194
  %218 = load %struct.ccdiinfo*, %struct.ccdiinfo** %5, align 8
  %219 = getelementptr inbounds %struct.ccdiinfo, %struct.ccdiinfo* %218, i32 1
  store %struct.ccdiinfo* %219, %struct.ccdiinfo** %5, align 8
  br label %79

220:                                              ; preds = %72, %131
  ret void
}

declare dso_local i8* @g_malloc(i32, i32) #1

declare dso_local i32 @g_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
