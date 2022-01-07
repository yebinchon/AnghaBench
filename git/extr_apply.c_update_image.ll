; ModuleID = '/home/carl/AnghaBench/git/extr_apply.c_update_image.c'
source_filename = "/home/carl/AnghaBench/git/extr_apply.c_update_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apply_state = type { i32 }
%struct.image = type { i32, i64, i8*, %struct.TYPE_6__*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i64 }

@LINE_PATCHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.apply_state*, %struct.image*, i32, %struct.image*, %struct.image*)* @update_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_image(%struct.apply_state* %0, %struct.image* %1, i32 %2, %struct.image* %3, %struct.image* %4) #0 {
  %6 = alloca %struct.apply_state*, align 8
  %7 = alloca %struct.image*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.image*, align 8
  %10 = alloca %struct.image*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct.apply_state* %0, %struct.apply_state** %6, align 8
  store %struct.image* %1, %struct.image** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.image* %3, %struct.image** %9, align 8
  store %struct.image* %4, %struct.image** %10, align 8
  store i64 0, i64* %15, align 8
  %18 = load %struct.image*, %struct.image** %9, align 8
  %19 = getelementptr inbounds %struct.image, %struct.image* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %17, align 4
  %21 = load i32, i32* %17, align 4
  %22 = load %struct.image*, %struct.image** %7, align 8
  %23 = getelementptr inbounds %struct.image, %struct.image* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sub nsw i32 %24, %25
  %27 = icmp sgt i32 %21, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %5
  %29 = load %struct.image*, %struct.image** %7, align 8
  %30 = getelementptr inbounds %struct.image, %struct.image* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sub nsw i32 %31, %32
  store i32 %33, i32* %17, align 4
  br label %34

34:                                               ; preds = %28, %5
  store i32 0, i32* %11, align 4
  br label %35

35:                                               ; preds = %50, %34
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %35
  %40 = load %struct.image*, %struct.image** %7, align 8
  %41 = getelementptr inbounds %struct.image, %struct.image* %40, i32 0, i32 3
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %15, align 8
  %49 = add i64 %48, %47
  store i64 %49, i64* %15, align 8
  br label %50

50:                                               ; preds = %39
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %11, align 4
  br label %35

53:                                               ; preds = %35
  store i64 0, i64* %13, align 8
  store i32 0, i32* %11, align 4
  br label %54

54:                                               ; preds = %71, %53
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %17, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %74

58:                                               ; preds = %54
  %59 = load %struct.image*, %struct.image** %7, align 8
  %60 = getelementptr inbounds %struct.image, %struct.image* %59, i32 0, i32 3
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 %62, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %13, align 8
  %70 = add i64 %69, %68
  store i64 %70, i64* %13, align 8
  br label %71

71:                                               ; preds = %58
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %11, align 4
  br label %54

74:                                               ; preds = %54
  %75 = load %struct.image*, %struct.image** %10, align 8
  %76 = getelementptr inbounds %struct.image, %struct.image* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %14, align 8
  %78 = load %struct.image*, %struct.image** %7, align 8
  %79 = getelementptr inbounds %struct.image, %struct.image* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %13, align 8
  %82 = call i32 @st_sub(i64 %80, i64 %81)
  %83 = load i64, i64* %14, align 8
  %84 = call i32 @st_add3(i32 %82, i64 %83, i32 1)
  %85 = call i8* @xmalloc(i32 %84)
  store i8* %85, i8** %16, align 8
  %86 = load i8*, i8** %16, align 8
  %87 = load %struct.image*, %struct.image** %7, align 8
  %88 = getelementptr inbounds %struct.image, %struct.image* %87, i32 0, i32 2
  %89 = load i8*, i8** %88, align 8
  %90 = load i64, i64* %15, align 8
  %91 = call i32 @memcpy(i8* %86, i8* %89, i64 %90)
  %92 = load i8*, i8** %16, align 8
  %93 = load i64, i64* %15, align 8
  %94 = getelementptr inbounds i8, i8* %92, i64 %93
  %95 = load %struct.image*, %struct.image** %10, align 8
  %96 = getelementptr inbounds %struct.image, %struct.image* %95, i32 0, i32 2
  %97 = load i8*, i8** %96, align 8
  %98 = load %struct.image*, %struct.image** %10, align 8
  %99 = getelementptr inbounds %struct.image, %struct.image* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @memcpy(i8* %94, i8* %97, i64 %100)
  %102 = load i8*, i8** %16, align 8
  %103 = load i64, i64* %15, align 8
  %104 = getelementptr inbounds i8, i8* %102, i64 %103
  %105 = load %struct.image*, %struct.image** %10, align 8
  %106 = getelementptr inbounds %struct.image, %struct.image* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds i8, i8* %104, i64 %107
  %109 = load %struct.image*, %struct.image** %7, align 8
  %110 = getelementptr inbounds %struct.image, %struct.image* %109, i32 0, i32 2
  %111 = load i8*, i8** %110, align 8
  %112 = load i64, i64* %15, align 8
  %113 = load i64, i64* %13, align 8
  %114 = add i64 %112, %113
  %115 = getelementptr inbounds i8, i8* %111, i64 %114
  %116 = load %struct.image*, %struct.image** %7, align 8
  %117 = getelementptr inbounds %struct.image, %struct.image* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* %15, align 8
  %120 = load i64, i64* %13, align 8
  %121 = add i64 %119, %120
  %122 = sub i64 %118, %121
  %123 = call i32 @memcpy(i8* %108, i8* %115, i64 %122)
  %124 = load %struct.image*, %struct.image** %7, align 8
  %125 = getelementptr inbounds %struct.image, %struct.image* %124, i32 0, i32 2
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 @free(i8* %126)
  %128 = load i8*, i8** %16, align 8
  %129 = load %struct.image*, %struct.image** %7, align 8
  %130 = getelementptr inbounds %struct.image, %struct.image* %129, i32 0, i32 2
  store i8* %128, i8** %130, align 8
  %131 = load i64, i64* %14, align 8
  %132 = load i64, i64* %13, align 8
  %133 = sub i64 %131, %132
  %134 = load %struct.image*, %struct.image** %7, align 8
  %135 = getelementptr inbounds %struct.image, %struct.image* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = add i64 %136, %133
  store i64 %137, i64* %135, align 8
  %138 = load i8*, i8** %16, align 8
  %139 = load %struct.image*, %struct.image** %7, align 8
  %140 = getelementptr inbounds %struct.image, %struct.image* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = getelementptr inbounds i8, i8* %138, i64 %141
  store i8 0, i8* %142, align 1
  %143 = load %struct.image*, %struct.image** %7, align 8
  %144 = getelementptr inbounds %struct.image, %struct.image* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.image*, %struct.image** %10, align 8
  %147 = getelementptr inbounds %struct.image, %struct.image* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = add nsw i32 %145, %148
  %150 = load i32, i32* %17, align 4
  %151 = sub nsw i32 %149, %150
  store i32 %151, i32* %12, align 4
  %152 = load i32, i32* %17, align 4
  %153 = load %struct.image*, %struct.image** %10, align 8
  %154 = getelementptr inbounds %struct.image, %struct.image* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = icmp slt i32 %152, %155
  br i1 %156, label %157, label %168

157:                                              ; preds = %74
  %158 = load %struct.image*, %struct.image** %7, align 8
  %159 = getelementptr inbounds %struct.image, %struct.image* %158, i32 0, i32 3
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %159, align 8
  %161 = load i32, i32* %12, align 4
  %162 = call i32 @REALLOC_ARRAY(%struct.TYPE_6__* %160, i32 %161)
  %163 = load %struct.image*, %struct.image** %7, align 8
  %164 = getelementptr inbounds %struct.image, %struct.image* %163, i32 0, i32 3
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %164, align 8
  %166 = load %struct.image*, %struct.image** %7, align 8
  %167 = getelementptr inbounds %struct.image, %struct.image* %166, i32 0, i32 4
  store %struct.TYPE_6__* %165, %struct.TYPE_6__** %167, align 8
  br label %168

168:                                              ; preds = %157, %74
  %169 = load i32, i32* %17, align 4
  %170 = load %struct.image*, %struct.image** %10, align 8
  %171 = getelementptr inbounds %struct.image, %struct.image* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = icmp ne i32 %169, %172
  br i1 %173, label %174, label %203

174:                                              ; preds = %168
  %175 = load %struct.image*, %struct.image** %7, align 8
  %176 = getelementptr inbounds %struct.image, %struct.image* %175, i32 0, i32 3
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %176, align 8
  %178 = load i32, i32* %8, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i64 %179
  %181 = load %struct.image*, %struct.image** %10, align 8
  %182 = getelementptr inbounds %struct.image, %struct.image* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i64 %184
  %186 = load %struct.image*, %struct.image** %7, align 8
  %187 = getelementptr inbounds %struct.image, %struct.image* %186, i32 0, i32 3
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %187, align 8
  %189 = load i32, i32* %8, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i64 %190
  %192 = load i32, i32* %17, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i64 %193
  %195 = load %struct.image*, %struct.image** %7, align 8
  %196 = getelementptr inbounds %struct.image, %struct.image* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* %8, align 4
  %199 = load i32, i32* %17, align 4
  %200 = add nsw i32 %198, %199
  %201 = sub nsw i32 %197, %200
  %202 = call i32 @MOVE_ARRAY(%struct.TYPE_6__* %185, %struct.TYPE_6__* %194, i32 %201)
  br label %203

203:                                              ; preds = %174, %168
  %204 = load %struct.image*, %struct.image** %7, align 8
  %205 = getelementptr inbounds %struct.image, %struct.image* %204, i32 0, i32 3
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %205, align 8
  %207 = load i32, i32* %8, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i64 %208
  %210 = load %struct.image*, %struct.image** %10, align 8
  %211 = getelementptr inbounds %struct.image, %struct.image* %210, i32 0, i32 3
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** %211, align 8
  %213 = load %struct.image*, %struct.image** %10, align 8
  %214 = getelementptr inbounds %struct.image, %struct.image* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @COPY_ARRAY(%struct.TYPE_6__* %209, %struct.TYPE_6__* %212, i32 %215)
  %217 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %218 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %245, label %221

221:                                              ; preds = %203
  store i32 0, i32* %11, align 4
  br label %222

222:                                              ; preds = %241, %221
  %223 = load i32, i32* %11, align 4
  %224 = load %struct.image*, %struct.image** %10, align 8
  %225 = getelementptr inbounds %struct.image, %struct.image* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = icmp slt i32 %223, %226
  br i1 %227, label %228, label %244

228:                                              ; preds = %222
  %229 = load i32, i32* @LINE_PATCHED, align 4
  %230 = load %struct.image*, %struct.image** %7, align 8
  %231 = getelementptr inbounds %struct.image, %struct.image* %230, i32 0, i32 3
  %232 = load %struct.TYPE_6__*, %struct.TYPE_6__** %231, align 8
  %233 = load i32, i32* %8, align 4
  %234 = load i32, i32* %11, align 4
  %235 = add nsw i32 %233, %234
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = or i32 %239, %229
  store i32 %240, i32* %238, align 8
  br label %241

241:                                              ; preds = %228
  %242 = load i32, i32* %11, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %11, align 4
  br label %222

244:                                              ; preds = %222
  br label %245

245:                                              ; preds = %244, %203
  %246 = load i32, i32* %12, align 4
  %247 = load %struct.image*, %struct.image** %7, align 8
  %248 = getelementptr inbounds %struct.image, %struct.image* %247, i32 0, i32 0
  store i32 %246, i32* %248, align 8
  ret void
}

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i32 @st_add3(i32, i64, i32) #1

declare dso_local i32 @st_sub(i64, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @REALLOC_ARRAY(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @MOVE_ARRAY(%struct.TYPE_6__*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @COPY_ARRAY(%struct.TYPE_6__*, %struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
