; ModuleID = '/home/carl/AnghaBench/freebsd/sys/teken/demo/extr_teken_demo.c_printchar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/teken/demo/extr_teken_demo.c_printchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pixel = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i64, i64 }

@NROWS = common dso_local global i64 0, align 8
@NCOLS = common dso_local global i64 0, align 8
@buffer = common dso_local global %struct.pixel** null, align 8
@TF_CJK_RIGHT = common dso_local global i32 0, align 4
@TF_BOLD = common dso_local global i32 0, align 4
@A_BOLD = common dso_local global i32 0, align 4
@TF_UNDERLINE = common dso_local global i32 0, align 4
@A_UNDERLINE = common dso_local global i32 0, align 4
@TF_BLINK = common dso_local global i32 0, align 4
@A_BLINK = common dso_local global i32 0, align 4
@TF_REVERSE = common dso_local global i32 0, align 4
@A_REVERSE = common dso_local global i32 0, align 4
@stdscr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @printchar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @printchar(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pixel*, align 8
  %7 = alloca [5 x i8], align 1
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  store i32 0, i32* %5, align 4
  %8 = bitcast [5 x i8]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %8, i8 0, i64 5, i1 false)
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @NROWS, align 8
  %13 = icmp ult i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @NCOLS, align 8
  %20 = icmp ult i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.pixel**, %struct.pixel*** @buffer, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.pixel*, %struct.pixel** %23, i64 %26
  %28 = load %struct.pixel*, %struct.pixel** %27, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.pixel, %struct.pixel* %28, i64 %31
  store %struct.pixel* %32, %struct.pixel** %6, align 8
  %33 = load %struct.pixel*, %struct.pixel** %6, align 8
  %34 = getelementptr inbounds %struct.pixel, %struct.pixel* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @TF_CJK_RIGHT, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %1
  br label %213

41:                                               ; preds = %1
  %42 = load %struct.pixel*, %struct.pixel** %6, align 8
  %43 = getelementptr inbounds %struct.pixel, %struct.pixel* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %44, 128
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load %struct.pixel*, %struct.pixel** %6, align 8
  %48 = getelementptr inbounds %struct.pixel, %struct.pixel* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = trunc i32 %49 to i8
  %51 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0
  store i8 %50, i8* %51, align 1
  br label %133

52:                                               ; preds = %41
  %53 = load %struct.pixel*, %struct.pixel** %6, align 8
  %54 = getelementptr inbounds %struct.pixel, %struct.pixel* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %55, 2048
  br i1 %56, label %57, label %72

57:                                               ; preds = %52
  %58 = load %struct.pixel*, %struct.pixel** %6, align 8
  %59 = getelementptr inbounds %struct.pixel, %struct.pixel* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = ashr i32 %60, 6
  %62 = or i32 192, %61
  %63 = trunc i32 %62 to i8
  %64 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0
  store i8 %63, i8* %64, align 1
  %65 = load %struct.pixel*, %struct.pixel** %6, align 8
  %66 = getelementptr inbounds %struct.pixel, %struct.pixel* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, 63
  %69 = or i32 128, %68
  %70 = trunc i32 %69 to i8
  %71 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 1
  store i8 %70, i8* %71, align 1
  br label %132

72:                                               ; preds = %52
  %73 = load %struct.pixel*, %struct.pixel** %6, align 8
  %74 = getelementptr inbounds %struct.pixel, %struct.pixel* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp slt i32 %75, 65536
  br i1 %76, label %77, label %100

77:                                               ; preds = %72
  %78 = load %struct.pixel*, %struct.pixel** %6, align 8
  %79 = getelementptr inbounds %struct.pixel, %struct.pixel* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = ashr i32 %80, 12
  %82 = or i32 224, %81
  %83 = trunc i32 %82 to i8
  %84 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0
  store i8 %83, i8* %84, align 1
  %85 = load %struct.pixel*, %struct.pixel** %6, align 8
  %86 = getelementptr inbounds %struct.pixel, %struct.pixel* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = ashr i32 %87, 6
  %89 = and i32 %88, 63
  %90 = or i32 128, %89
  %91 = trunc i32 %90 to i8
  %92 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 1
  store i8 %91, i8* %92, align 1
  %93 = load %struct.pixel*, %struct.pixel** %6, align 8
  %94 = getelementptr inbounds %struct.pixel, %struct.pixel* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %95, 63
  %97 = or i32 128, %96
  %98 = trunc i32 %97 to i8
  %99 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 2
  store i8 %98, i8* %99, align 1
  br label %131

100:                                              ; preds = %72
  %101 = load %struct.pixel*, %struct.pixel** %6, align 8
  %102 = getelementptr inbounds %struct.pixel, %struct.pixel* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = ashr i32 %103, 18
  %105 = or i32 240, %104
  %106 = trunc i32 %105 to i8
  %107 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0
  store i8 %106, i8* %107, align 1
  %108 = load %struct.pixel*, %struct.pixel** %6, align 8
  %109 = getelementptr inbounds %struct.pixel, %struct.pixel* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = ashr i32 %110, 12
  %112 = and i32 %111, 63
  %113 = or i32 128, %112
  %114 = trunc i32 %113 to i8
  %115 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 1
  store i8 %114, i8* %115, align 1
  %116 = load %struct.pixel*, %struct.pixel** %6, align 8
  %117 = getelementptr inbounds %struct.pixel, %struct.pixel* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = ashr i32 %118, 6
  %120 = and i32 %119, 63
  %121 = or i32 128, %120
  %122 = trunc i32 %121 to i8
  %123 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 2
  store i8 %122, i8* %123, align 1
  %124 = load %struct.pixel*, %struct.pixel** %6, align 8
  %125 = getelementptr inbounds %struct.pixel, %struct.pixel* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = and i32 %126, 63
  %128 = or i32 128, %127
  %129 = trunc i32 %128 to i8
  %130 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 3
  store i8 %129, i8* %130, align 1
  br label %131

131:                                              ; preds = %100, %77
  br label %132

132:                                              ; preds = %131, %57
  br label %133

133:                                              ; preds = %132, %46
  %134 = load %struct.pixel*, %struct.pixel** %6, align 8
  %135 = getelementptr inbounds %struct.pixel, %struct.pixel* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @TF_BOLD, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %133
  %142 = load i32, i32* @A_BOLD, align 4
  %143 = load i32, i32* %5, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %5, align 4
  br label %145

145:                                              ; preds = %141, %133
  %146 = load %struct.pixel*, %struct.pixel** %6, align 8
  %147 = getelementptr inbounds %struct.pixel, %struct.pixel* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @TF_UNDERLINE, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %145
  %154 = load i32, i32* @A_UNDERLINE, align 4
  %155 = load i32, i32* %5, align 4
  %156 = or i32 %155, %154
  store i32 %156, i32* %5, align 4
  br label %157

157:                                              ; preds = %153, %145
  %158 = load %struct.pixel*, %struct.pixel** %6, align 8
  %159 = getelementptr inbounds %struct.pixel, %struct.pixel* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @TF_BLINK, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %157
  %166 = load i32, i32* @A_BLINK, align 4
  %167 = load i32, i32* %5, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %5, align 4
  br label %169

169:                                              ; preds = %165, %157
  %170 = load %struct.pixel*, %struct.pixel** %6, align 8
  %171 = getelementptr inbounds %struct.pixel, %struct.pixel* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @TF_REVERSE, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %169
  %178 = load i32, i32* @A_REVERSE, align 4
  %179 = load i32, i32* %5, align 4
  %180 = or i32 %179, %178
  store i32 %180, i32* %5, align 4
  br label %181

181:                                              ; preds = %177, %169
  %182 = load i32, i32* %5, align 4
  %183 = load %struct.pixel*, %struct.pixel** %6, align 8
  %184 = getelementptr inbounds %struct.pixel, %struct.pixel* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @teken_256to8(i32 %186)
  %188 = load %struct.pixel*, %struct.pixel** %6, align 8
  %189 = getelementptr inbounds %struct.pixel, %struct.pixel* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @teken_256to8(i32 %191)
  %193 = mul nsw i32 8, %192
  %194 = add nsw i32 %187, %193
  %195 = call i32 @COLOR_PAIR(i32 %194)
  %196 = or i32 %182, %195
  %197 = call i32 @bkgdset(i32 %196)
  %198 = load i32, i32* @stdscr, align 4
  %199 = load i32, i32* %3, align 4
  %200 = load i32, i32* %4, align 4
  %201 = call i32 @getyx(i32 %198, i32 %199, i32 %200)
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0
  %209 = call i32 @mvaddstr(i64 %204, i64 %207, i8* %208)
  %210 = load i32, i32* %3, align 4
  %211 = load i32, i32* %4, align 4
  %212 = call i32 @move(i32 %210, i32 %211)
  br label %213

213:                                              ; preds = %181, %40
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @bkgdset(i32) #2

declare dso_local i32 @COLOR_PAIR(i32) #2

declare dso_local i32 @teken_256to8(i32) #2

declare dso_local i32 @getyx(i32, i32, i32) #2

declare dso_local i32 @mvaddstr(i64, i64, i8*) #2

declare dso_local i32 @move(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
