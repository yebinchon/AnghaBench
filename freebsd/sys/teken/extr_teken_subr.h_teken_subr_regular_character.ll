; ModuleID = '/home/carl/AnghaBench/freebsd/sys/teken/extr_teken_subr.h_teken_subr_regular_character.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/teken/extr_teken_subr.h_teken_subr_regular_character.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_12__, %struct.TYPE_14__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }

@TS_8BIT = common dso_local global i32 0, align 4
@TS_CONS25 = common dso_local global i32 0, align 4
@TS_AUTOWRAP = common dso_local global i32 0, align 4
@TS_WRAPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, i32)* @teken_subr_regular_character to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @teken_subr_regular_character(%struct.TYPE_13__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @TS_8BIT, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %31

13:                                               ; preds = %2
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @TS_CONS25, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %13
  %21 = load i32, i32* %4, align 4
  %22 = icmp sle i32 %21, 27
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %4, align 4
  %25 = icmp eq i32 %24, 127
  br i1 %25, label %26, label %27

26:                                               ; preds = %23, %20
  br label %255

27:                                               ; preds = %23, %13
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @teken_scs_process(%struct.TYPE_13__* %28, i32 %29)
  store i32 %30, i32* %4, align 4
  store i32 1, i32* %5, align 4
  br label %41

31:                                               ; preds = %2
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @teken_scs_process(%struct.TYPE_13__* %32, i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @teken_wcwidth(i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp sle i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %255

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40, %27
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @TS_CONS25, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %107

48:                                               ; preds = %41
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 2
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @teken_subr_do_putchar(%struct.TYPE_13__* %49, %struct.TYPE_14__* %51, i32 %52, i32 %53)
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, %55
  store i32 %60, i32* %58, align 4
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp sge i32 %64, %68
  br i1 %69, label %70, label %106

70:                                               ; preds = %48
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = sub nsw i32 %78, 1
  %80 = icmp eq i32 %74, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %70
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %83 = call i32 @teken_subr_do_scroll(%struct.TYPE_13__* %82, i32 1)
  br label %102

84:                                               ; preds = %70
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = sub nsw i32 %92, 1
  %94 = icmp slt i32 %88, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %84
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %95, %84
  br label %102

102:                                              ; preds = %101, %81
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 0
  store i32 0, i32* %105, align 4
  br label %106

106:                                              ; preds = %102, %48
  br label %252

107:                                              ; preds = %41
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @TS_AUTOWRAP, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %207

114:                                              ; preds = %107
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @TS_WRAPPED, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %132

121:                                              ; preds = %114
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, 1
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = icmp eq i32 %126, %130
  br i1 %131, label %144, label %132

132:                                              ; preds = %121, %114
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %5, align 4
  %138 = add nsw i32 %136, %137
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = icmp sgt i32 %138, %142
  br i1 %143, label %144, label %207

144:                                              ; preds = %132, %121
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 3
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = sub nsw i32 %152, 1
  %154 = icmp eq i32 %148, %153
  br i1 %154, label %155, label %164

155:                                              ; preds = %144
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %157 = call i32 @teken_subr_do_scroll(%struct.TYPE_13__* %156, i32 1)
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 3
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = sub nsw i32 %161, 1
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 1
  store i32 %162, i32* %163, align 4
  br label %186

164:                                              ; preds = %144
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = add nsw i32 %168, 1
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 1
  store i32 %169, i32* %170, align 4
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = icmp eq i32 %172, %176
  br i1 %177, label %178, label %185

178:                                              ; preds = %164
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 2
  %182 = load i32, i32* %4, align 4
  %183 = load i32, i32* %5, align 4
  %184 = call i32 @teken_subr_do_putchar(%struct.TYPE_13__* %179, %struct.TYPE_14__* %181, i32 %182, i32 %183)
  br label %255

185:                                              ; preds = %164
  br label %186

186:                                              ; preds = %185, %155
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  store i32 0, i32* %187, align 4
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %189 = load i32, i32* %4, align 4
  %190 = load i32, i32* %5, align 4
  %191 = call i32 @teken_subr_do_putchar(%struct.TYPE_13__* %188, %struct.TYPE_14__* %6, i32 %189, i32 %190)
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 2
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 1
  store i32 %193, i32* %196, align 4
  %197 = load i32, i32* %5, align 4
  %198 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i32 0, i32 2
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 0
  store i32 %197, i32* %200, align 4
  %201 = load i32, i32* @TS_WRAPPED, align 4
  %202 = xor i32 %201, -1
  %203 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = and i32 %205, %202
  store i32 %206, i32* %204, align 4
  br label %251

207:                                              ; preds = %132, %107
  %208 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %209 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 2
  %211 = load i32, i32* %4, align 4
  %212 = load i32, i32* %5, align 4
  %213 = call i32 @teken_subr_do_putchar(%struct.TYPE_13__* %208, %struct.TYPE_14__* %210, i32 %211, i32 %212)
  %214 = load i32, i32* %5, align 4
  %215 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %215, i32 0, i32 2
  %217 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = add nsw i32 %218, %214
  store i32 %219, i32* %217, align 4
  %220 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %220, i32 0, i32 2
  %222 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %225 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = icmp sge i32 %223, %227
  br i1 %228, label %229, label %243

229:                                              ; preds = %207
  %230 = load i32, i32* @TS_WRAPPED, align 4
  %231 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %232 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = or i32 %233, %230
  store i32 %234, i32* %232, align 4
  %235 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = sub nsw i32 %238, 1
  %240 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %241 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %240, i32 0, i32 2
  %242 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %241, i32 0, i32 0
  store i32 %239, i32* %242, align 4
  br label %250

243:                                              ; preds = %207
  %244 = load i32, i32* @TS_WRAPPED, align 4
  %245 = xor i32 %244, -1
  %246 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %247 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = and i32 %248, %245
  store i32 %249, i32* %247, align 4
  br label %250

250:                                              ; preds = %243, %229
  br label %251

251:                                              ; preds = %250, %186
  br label %252

252:                                              ; preds = %251, %106
  %253 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %254 = call i32 @teken_funcs_cursor(%struct.TYPE_13__* %253)
  br label %255

255:                                              ; preds = %252, %178, %39, %26
  ret void
}

declare dso_local i32 @teken_scs_process(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @teken_wcwidth(i32) #1

declare dso_local i32 @teken_subr_do_putchar(%struct.TYPE_13__*, %struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @teken_subr_do_scroll(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @teken_funcs_cursor(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
