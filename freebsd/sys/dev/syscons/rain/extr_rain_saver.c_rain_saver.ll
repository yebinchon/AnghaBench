; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/syscons/rain/extr_rain_saver.c_rain_saver.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/syscons/rain/extr_rain_saver.c_rain_saver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i64 }

@blanked = common dso_local global i64 0, align 8
@scrmode = common dso_local global i32 0, align 4
@rain_pal = common dso_local global i32 0, align 4
@vid = common dso_local global i32* null, align 8
@banksize = common dso_local global i32 0, align 4
@bpsl = common dso_local global i32 0, align 4
@scrh = common dso_local global i32 0, align 4
@scrw = common dso_local global i32 0, align 4
@MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32)* @rain_saver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rain_saver(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 -1, i32* %11, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %201

14:                                               ; preds = %2
  %15 = load i64, i64* @blanked, align 8
  %16 = icmp sle i64 %15, 0
  br i1 %16, label %17, label %198

17:                                               ; preds = %14
  %18 = call i32 (...) @splhigh()
  store i32 %18, i32* %9, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %20 = load i32, i32* @scrmode, align 4
  %21 = call i32 @vidd_set_mode(%struct.TYPE_8__* %19, i32 %20)
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %23 = load i32, i32* @rain_pal, align 4
  %24 = call i32 @vidd_load_palette(%struct.TYPE_8__* %22, i32 %23)
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %26 = call i32 @vidd_set_border(%struct.TYPE_8__* %25, i32 0)
  %27 = load i64, i64* @blanked, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* @blanked, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i32*
  store i32* %32, i32** @vid, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* @banksize, align 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* @bpsl, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @splx(i32 %39)
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %71, %17
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @bpsl, align 4
  %44 = load i32, i32* @scrh, align 4
  %45 = mul nsw i32 %43, %44
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %75

47:                                               ; preds = %41
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @SET_ORIGIN(%struct.TYPE_8__* %48, i32 %49)
  %51 = load i32, i32* @bpsl, align 4
  %52 = load i32, i32* @scrh, align 4
  %53 = mul nsw i32 %51, %52
  %54 = load i32, i32* %5, align 4
  %55 = sub nsw i32 %53, %54
  %56 = load i32, i32* @banksize, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %47
  %59 = load i32*, i32** @vid, align 8
  %60 = load i32, i32* @bpsl, align 4
  %61 = load i32, i32* @scrh, align 4
  %62 = mul nsw i32 %60, %61
  %63 = load i32, i32* %5, align 4
  %64 = sub nsw i32 %62, %63
  %65 = call i32 @bzero(i32* %59, i32 %64)
  br label %70

66:                                               ; preds = %47
  %67 = load i32*, i32** @vid, align 8
  %68 = load i32, i32* @banksize, align 4
  %69 = call i32 @bzero(i32* %67, i32 %68)
  br label %70

70:                                               ; preds = %66, %58
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* @banksize, align 4
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, %72
  store i32 %74, i32* %5, align 4
  br label %41

75:                                               ; preds = %41
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %77 = call i32 @SET_ORIGIN(%struct.TYPE_8__* %76, i32 0)
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %78

78:                                               ; preds = %105, %75
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @scrw, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %110

82:                                               ; preds = %78
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @banksize, align 4
  %85 = icmp sgt i32 %83, %84
  br i1 %85, label %86, label %96

86:                                               ; preds = %82
  %87 = load i32, i32* @banksize, align 4
  %88 = load i32, i32* %8, align 4
  %89 = sub nsw i32 %88, %87
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* @banksize, align 4
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %91, %90
  store i32 %92, i32* %7, align 4
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @SET_ORIGIN(%struct.TYPE_8__* %93, i32 %94)
  br label %96

96:                                               ; preds = %86, %82
  %97 = call i32 (...) @random()
  %98 = load i32, i32* @MAX, align 4
  %99 = srem i32 %97, %98
  %100 = add nsw i32 1, %99
  %101 = load i32*, i32** @vid, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  store i32 %100, i32* %104, align 4
  br label %105

105:                                              ; preds = %96
  %106 = load i32, i32* %5, align 4
  %107 = add nsw i32 %106, 2
  store i32 %107, i32* %5, align 4
  %108 = load i32, i32* %8, align 4
  %109 = add nsw i32 %108, 2
  store i32 %109, i32* %8, align 4
  br label %78

110:                                              ; preds = %78
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 1, i32* %6, align 4
  br label %111

111:                                              ; preds = %194, %110
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* @scrh, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %197

115:                                              ; preds = %111
  store i32 0, i32* %5, align 4
  %116 = load i32, i32* @bpsl, align 4
  %117 = load i32, i32* %6, align 4
  %118 = sub nsw i32 %117, 1
  %119 = mul nsw i32 %116, %118
  %120 = load i32, i32* %7, align 4
  %121 = sub nsw i32 %119, %120
  store i32 %121, i32* %8, align 4
  br label %122

122:                                              ; preds = %188, %115
  %123 = load i32, i32* %5, align 4
  %124 = load i32, i32* @scrw, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %193

126:                                              ; preds = %122
  br label %127

127:                                              ; preds = %131, %126
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* @banksize, align 4
  %130 = icmp sgt i32 %128, %129
  br i1 %130, label %131, label %138

131:                                              ; preds = %127
  %132 = load i32, i32* @banksize, align 4
  %133 = load i32, i32* %8, align 4
  %134 = sub nsw i32 %133, %132
  store i32 %134, i32* %8, align 4
  %135 = load i32, i32* @banksize, align 4
  %136 = load i32, i32* %7, align 4
  %137 = add nsw i32 %136, %135
  store i32 %137, i32* %7, align 4
  br label %127

138:                                              ; preds = %127
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %140 = load i32, i32* %7, align 4
  %141 = call i32 @SET_ORIGIN(%struct.TYPE_8__* %139, i32 %140)
  %142 = load i32*, i32** @vid, align 8
  %143 = load i32, i32* %8, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @MAX, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %156

149:                                              ; preds = %138
  %150 = load i32*, i32** @vid, align 8
  %151 = load i32, i32* %8, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = add nsw i32 1, %154
  br label %157

156:                                              ; preds = %138
  br label %157

157:                                              ; preds = %156, %149
  %158 = phi i32 [ %155, %149 ], [ 1, %156 ]
  store i32 %158, i32* %10, align 4
  %159 = load i32, i32* %8, align 4
  %160 = load i32, i32* @bpsl, align 4
  %161 = add nsw i32 %159, %160
  %162 = load i32, i32* @banksize, align 4
  %163 = icmp slt i32 %161, %162
  br i1 %163, label %164, label %172

164:                                              ; preds = %157
  %165 = load i32, i32* %10, align 4
  %166 = load i32*, i32** @vid, align 8
  %167 = load i32, i32* %8, align 4
  %168 = load i32, i32* @bpsl, align 4
  %169 = add nsw i32 %167, %168
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %166, i64 %170
  store i32 %165, i32* %171, align 4
  br label %187

172:                                              ; preds = %157
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %174 = load i32, i32* %7, align 4
  %175 = load i32, i32* @banksize, align 4
  %176 = add nsw i32 %174, %175
  %177 = call i32 @SET_ORIGIN(%struct.TYPE_8__* %173, i32 %176)
  %178 = load i32, i32* %10, align 4
  %179 = load i32*, i32** @vid, align 8
  %180 = load i32, i32* %8, align 4
  %181 = load i32, i32* @bpsl, align 4
  %182 = add nsw i32 %180, %181
  %183 = load i32, i32* @banksize, align 4
  %184 = sub nsw i32 %182, %183
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %179, i64 %185
  store i32 %178, i32* %186, align 4
  br label %187

187:                                              ; preds = %172, %164
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %5, align 4
  %190 = add nsw i32 %189, 2
  store i32 %190, i32* %5, align 4
  %191 = load i32, i32* %8, align 4
  %192 = add nsw i32 %191, 2
  store i32 %192, i32* %8, align 4
  br label %122

193:                                              ; preds = %122
  br label %194

194:                                              ; preds = %193
  %195 = load i32, i32* %6, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %6, align 4
  br label %111

197:                                              ; preds = %111
  br label %198

198:                                              ; preds = %197, %14
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %200 = call i32 @rain_update(%struct.TYPE_8__* %199)
  br label %202

201:                                              ; preds = %2
  store i64 0, i64* @blanked, align 8
  br label %202

202:                                              ; preds = %201, %198
  ret i32 0
}

declare dso_local i32 @splhigh(...) #1

declare dso_local i32 @vidd_set_mode(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @vidd_load_palette(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @vidd_set_border(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @splx(i32) #1

declare dso_local i32 @SET_ORIGIN(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @random(...) #1

declare dso_local i32 @rain_update(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
