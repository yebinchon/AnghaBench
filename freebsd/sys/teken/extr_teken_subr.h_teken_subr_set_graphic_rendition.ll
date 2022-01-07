; ModuleID = '/home/carl/AnghaBench/freebsd/sys/teken/extr_teken_subr.h_teken_subr_set_graphic_rendition.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/teken/extr_teken_subr.h_teken_subr_set_graphic_rendition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }

@TF_BOLD = common dso_local global i32 0, align 4
@TF_UNDERLINE = common dso_local global i32 0, align 4
@TF_BLINK = common dso_local global i32 0, align 4
@TF_REVERSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"unsupported attribute %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32, i32*)* @teken_subr_set_graphic_rendition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @teken_subr_set_graphic_rendition(%struct.TYPE_5__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %3
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = bitcast %struct.TYPE_4__* %13 to i8*
  %17 = bitcast %struct.TYPE_4__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 %17, i64 12, i1 false)
  br label %198

18:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %195, %18
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %198

23:                                               ; preds = %19
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  switch i32 %29, label %191 [
    i32 0, label %30
    i32 1, label %37
    i32 4, label %44
    i32 5, label %51
    i32 7, label %58
    i32 22, label %65
    i32 24, label %73
    i32 25, label %81
    i32 27, label %89
    i32 30, label %97
    i32 31, label %97
    i32 32, label %97
    i32 33, label %97
    i32 34, label %97
    i32 35, label %97
    i32 36, label %97
    i32 37, label %97
    i32 38, label %103
    i32 39, label %129
    i32 40, label %137
    i32 41, label %137
    i32 42, label %137
    i32 43, label %137
    i32 44, label %137
    i32 45, label %137
    i32 46, label %137
    i32 47, label %137
    i32 48, label %143
    i32 49, label %169
    i32 90, label %177
    i32 91, label %177
    i32 92, label %177
    i32 93, label %177
    i32 94, label %177
    i32 95, label %177
    i32 96, label %177
    i32 97, label %177
    i32 100, label %184
    i32 101, label %184
    i32 102, label %184
    i32 103, label %184
    i32 104, label %184
    i32 105, label %184
    i32 106, label %184
    i32 107, label %184
  ]

30:                                               ; preds = %23
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = bitcast %struct.TYPE_4__* %32 to i8*
  %36 = bitcast %struct.TYPE_4__* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %35, i8* align 4 %36, i64 12, i1 false)
  br label %194

37:                                               ; preds = %23
  %38 = load i32, i32* @TF_BOLD, align 4
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %38
  store i32 %43, i32* %41, align 4
  br label %194

44:                                               ; preds = %23
  %45 = load i32, i32* @TF_UNDERLINE, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %45
  store i32 %50, i32* %48, align 4
  br label %194

51:                                               ; preds = %23
  %52 = load i32, i32* @TF_BLINK, align 4
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %52
  store i32 %57, i32* %55, align 4
  br label %194

58:                                               ; preds = %23
  %59 = load i32, i32* @TF_REVERSE, align 4
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %59
  store i32 %64, i32* %62, align 4
  br label %194

65:                                               ; preds = %23
  %66 = load i32, i32* @TF_BOLD, align 4
  %67 = xor i32 %66, -1
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, %67
  store i32 %72, i32* %70, align 4
  br label %194

73:                                               ; preds = %23
  %74 = load i32, i32* @TF_UNDERLINE, align 4
  %75 = xor i32 %74, -1
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, %75
  store i32 %80, i32* %78, align 4
  br label %194

81:                                               ; preds = %23
  %82 = load i32, i32* @TF_BLINK, align 4
  %83 = xor i32 %82, -1
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, %83
  store i32 %88, i32* %86, align 4
  br label %194

89:                                               ; preds = %23
  %90 = load i32, i32* @TF_REVERSE, align 4
  %91 = xor i32 %90, -1
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %95, %91
  store i32 %96, i32* %94, align 4
  br label %194

97:                                               ; preds = %23, %23, %23, %23, %23, %23, %23, %23
  %98 = load i32, i32* %8, align 4
  %99 = sub i32 %98, 30
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  store i32 %99, i32* %102, align 4
  br label %194

103:                                              ; preds = %23
  %104 = load i32, i32* %7, align 4
  %105 = add i32 %104, 2
  %106 = load i32, i32* %5, align 4
  %107 = icmp uge i32 %105, %106
  br i1 %107, label %116, label %108

108:                                              ; preds = %103
  %109 = load i32*, i32** %6, align 8
  %110 = load i32, i32* %7, align 4
  %111 = add i32 %110, 1
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %109, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 5
  br i1 %115, label %116, label %117

116:                                              ; preds = %108, %103
  br label %195

117:                                              ; preds = %108
  %118 = load i32*, i32** %6, align 8
  %119 = load i32, i32* %7, align 4
  %120 = add i32 %119, 2
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %118, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  store i32 %123, i32* %126, align 4
  %127 = load i32, i32* %7, align 4
  %128 = add i32 %127, 2
  store i32 %128, i32* %7, align 4
  br label %194

129:                                              ; preds = %23
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  store i32 %133, i32* %136, align 4
  br label %194

137:                                              ; preds = %23, %23, %23, %23, %23, %23, %23, %23
  %138 = load i32, i32* %8, align 4
  %139 = sub i32 %138, 40
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 1
  store i32 %139, i32* %142, align 4
  br label %194

143:                                              ; preds = %23
  %144 = load i32, i32* %7, align 4
  %145 = add i32 %144, 2
  %146 = load i32, i32* %5, align 4
  %147 = icmp uge i32 %145, %146
  br i1 %147, label %156, label %148

148:                                              ; preds = %143
  %149 = load i32*, i32** %6, align 8
  %150 = load i32, i32* %7, align 4
  %151 = add i32 %150, 1
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %149, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = icmp ne i32 %154, 5
  br i1 %155, label %156, label %157

156:                                              ; preds = %148, %143
  br label %195

157:                                              ; preds = %148
  %158 = load i32*, i32** %6, align 8
  %159 = load i32, i32* %7, align 4
  %160 = add i32 %159, 2
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %158, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 1
  store i32 %163, i32* %166, align 4
  %167 = load i32, i32* %7, align 4
  %168 = add i32 %167, 2
  store i32 %168, i32* %7, align 4
  br label %194

169:                                              ; preds = %23
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 1
  store i32 %173, i32* %176, align 4
  br label %194

177:                                              ; preds = %23, %23, %23, %23, %23, %23, %23, %23
  %178 = load i32, i32* %8, align 4
  %179 = sub i32 %178, 90
  %180 = add i32 %179, 8
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 0
  store i32 %180, i32* %183, align 4
  br label %194

184:                                              ; preds = %23, %23, %23, %23, %23, %23, %23, %23
  %185 = load i32, i32* %8, align 4
  %186 = sub i32 %185, 100
  %187 = add i32 %186, 8
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 1
  store i32 %187, i32* %190, align 4
  br label %194

191:                                              ; preds = %23
  %192 = load i32, i32* %8, align 4
  %193 = call i32 @teken_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %192)
  br label %194

194:                                              ; preds = %191, %184, %177, %169, %157, %137, %129, %117, %97, %89, %81, %73, %65, %58, %51, %44, %37, %30
  br label %195

195:                                              ; preds = %194, %156, %116
  %196 = load i32, i32* %7, align 4
  %197 = add i32 %196, 1
  store i32 %197, i32* %7, align 4
  br label %19

198:                                              ; preds = %11, %19
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @teken_printf(i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
