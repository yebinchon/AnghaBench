; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_atp.c_fg_detect_pspans.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_atp.c_fg_detect_pspans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32, i32, i32 }

@FG_PSPAN_MIN_CUM_PRESSURE = common dso_local global i32 0, align 4
@FG_PSPAN_MAX_WIDTH = common dso_local global i64 0, align 8
@FG_SCALE_FACTOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, %struct.TYPE_6__*, i32*)* @fg_detect_pspans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fg_detect_pspans(i32* %0, i32 %1, i32 %2, %struct.TYPE_6__* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %13, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 24
  %19 = trunc i64 %18 to i32
  %20 = call i32 @memset(%struct.TYPE_6__* %15, i32 0, i32 %19)
  store i32 0, i32* %12, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %11, align 4
  br label %21

21:                                               ; preds = %134, %5
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %137

25:                                               ; preds = %21
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp sge i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %137

30:                                               ; preds = %25
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %30
  %38 = load i32, i32* %14, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  br label %134

41:                                               ; preds = %37
  store i32 0, i32* %14, align 4
  store i32 0, i32* %12, align 4
  %42 = load i32, i32* %13, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %13, align 4
  br label %44

44:                                               ; preds = %41
  br label %133

45:                                               ; preds = %30
  %46 = load i32, i32* %14, align 4
  switch i32 %46, label %98 [
    i32 0, label %47
    i32 1, label %53
    i32 2, label %79
  ]

47:                                               ; preds = %45
  store i32 1, i32* %14, align 4
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %12, align 4
  br label %98

53:                                               ; preds = %45
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %53
  %62 = load i32*, i32** %6, align 8
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %12, align 4
  br label %78

67:                                               ; preds = %53
  %68 = load i32*, i32** %6, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %12, align 4
  %74 = ashr i32 %73, 1
  %75 = icmp sle i32 %72, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %67
  store i32 2, i32* %14, align 4
  br label %77

77:                                               ; preds = %76, %67
  br label %78

78:                                               ; preds = %77, %61
  br label %98

79:                                               ; preds = %45
  %80 = load i32*, i32** %6, align 8
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %6, align 8
  %86 = load i32, i32* %11, align 4
  %87 = sub nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %85, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = icmp sgt i32 %84, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %79
  %93 = load i32, i32* %13, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %12, align 4
  %95 = load i32, i32* %11, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %11, align 4
  br label %134

97:                                               ; preds = %79
  br label %98

98:                                               ; preds = %45, %97, %78, %47
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %100 = load i32, i32* %13, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %104, 1
  store i64 %105, i64* %103, align 8
  %106 = load i32*, i32** %6, align 8
  %107 = load i32, i32* %11, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %112 = load i32, i32* %13, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = add nsw i32 %116, %110
  store i32 %117, i32* %115, align 8
  %118 = load i32*, i32** %6, align 8
  %119 = load i32, i32* %11, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %11, align 4
  %124 = add nsw i32 %123, 1
  %125 = mul nsw i32 %122, %124
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %127 = load i32, i32* %13, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %131, %125
  store i32 %132, i32* %130, align 4
  br label %133

133:                                              ; preds = %98, %44
  br label %134

134:                                              ; preds = %133, %92, %40
  %135 = load i32, i32* %11, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %11, align 4
  br label %21

137:                                              ; preds = %29, %21
  %138 = load i32, i32* %14, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %137
  %141 = load i32, i32* %13, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %13, align 4
  br label %143

143:                                              ; preds = %140, %137
  store i32 0, i32* %11, align 4
  br label %144

144:                                              ; preds = %220, %143
  %145 = load i32, i32* %11, align 4
  %146 = load i32, i32* %13, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %223

148:                                              ; preds = %144
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %150 = load i32, i32* %11, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @FG_PSPAN_MIN_CUM_PRESSURE, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %166, label %157

157:                                              ; preds = %148
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %159 = load i32, i32* %11, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @FG_PSPAN_MAX_WIDTH, align 8
  %165 = icmp sgt i64 %163, %164
  br i1 %165, label %166, label %194

166:                                              ; preds = %157, %148
  %167 = load i32, i32* %11, align 4
  %168 = add nsw i32 %167, 1
  %169 = load i32, i32* %13, align 4
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %171, label %191

171:                                              ; preds = %166
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %173 = load i32, i32* %11, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i64 %174
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %177 = load i32, i32* %11, align 4
  %178 = add nsw i32 %177, 1
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i64 %179
  %181 = load i32, i32* %13, align 4
  %182 = load i32, i32* %11, align 4
  %183 = sub nsw i32 %181, %182
  %184 = sub nsw i32 %183, 1
  %185 = sext i32 %184 to i64
  %186 = mul i64 %185, 24
  %187 = trunc i64 %186 to i32
  %188 = call i32 @memcpy(%struct.TYPE_6__* %175, %struct.TYPE_6__* %180, i32 %187)
  %189 = load i32, i32* %11, align 4
  %190 = add nsw i32 %189, -1
  store i32 %190, i32* %11, align 4
  br label %191

191:                                              ; preds = %171, %166
  %192 = load i32, i32* %13, align 4
  %193 = add nsw i32 %192, -1
  store i32 %193, i32* %13, align 4
  br label %220

194:                                              ; preds = %157
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %196 = load i32, i32* %11, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @FG_SCALE_FACTOR, align 4
  %202 = mul nsw i32 %200, %201
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %204 = load i32, i32* %11, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 8
  %209 = sdiv i32 %202, %208
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %211 = load i32, i32* %11, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 3
  store i32 %209, i32* %214, align 8
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %216 = load i32, i32* %11, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 4
  store i32 0, i32* %219, align 4
  br label %220

220:                                              ; preds = %194, %191
  %221 = load i32, i32* %11, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %11, align 4
  br label %144

223:                                              ; preds = %144
  %224 = load i32, i32* %13, align 4
  %225 = load i32*, i32** %10, align 8
  store i32 %224, i32* %225, align 4
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_6__*, %struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
