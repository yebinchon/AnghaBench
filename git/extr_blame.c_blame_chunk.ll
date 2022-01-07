; ModuleID = '/home/carl/AnghaBench/git/extr_blame.c_blame_chunk.c'
source_filename = "/home/carl/AnghaBench/git/extr_blame.c_blame_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blame_entry = type { i32, i32, %struct.blame_entry*, %struct.blame_origin* }
%struct.blame_origin = type { i32 }
%struct.blame_line_tracker = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blame_entry***, %struct.blame_entry***, i32, i32, i32, i32, %struct.blame_origin*, %struct.blame_origin*, i32)* @blame_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blame_chunk(%struct.blame_entry*** %0, %struct.blame_entry*** %1, i32 %2, i32 %3, i32 %4, i32 %5, %struct.blame_origin* %6, %struct.blame_origin* %7, i32 %8) #0 {
  %10 = alloca %struct.blame_entry***, align 8
  %11 = alloca %struct.blame_entry***, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.blame_origin*, align 8
  %17 = alloca %struct.blame_origin*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.blame_entry*, align 8
  %20 = alloca %struct.blame_entry*, align 8
  %21 = alloca %struct.blame_entry*, align 8
  %22 = alloca %struct.blame_entry*, align 8
  %23 = alloca %struct.blame_line_tracker*, align 8
  %24 = alloca %struct.blame_entry*, align 8
  %25 = alloca %struct.blame_entry*, align 8
  %26 = alloca %struct.blame_entry*, align 8
  %27 = alloca %struct.blame_entry*, align 8
  store %struct.blame_entry*** %0, %struct.blame_entry**** %10, align 8
  store %struct.blame_entry*** %1, %struct.blame_entry**** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store %struct.blame_origin* %6, %struct.blame_origin** %16, align 8
  store %struct.blame_origin* %7, %struct.blame_origin** %17, align 8
  store i32 %8, i32* %18, align 4
  %28 = load %struct.blame_entry***, %struct.blame_entry**** %11, align 8
  %29 = load %struct.blame_entry**, %struct.blame_entry*** %28, align 8
  %30 = load %struct.blame_entry*, %struct.blame_entry** %29, align 8
  store %struct.blame_entry* %30, %struct.blame_entry** %19, align 8
  store %struct.blame_entry* null, %struct.blame_entry** %20, align 8
  store %struct.blame_entry* null, %struct.blame_entry** %21, align 8
  store %struct.blame_entry* null, %struct.blame_entry** %22, align 8
  store %struct.blame_line_tracker* null, %struct.blame_line_tracker** %23, align 8
  br label %31

31:                                               ; preds = %75, %9
  %32 = load %struct.blame_entry*, %struct.blame_entry** %19, align 8
  %33 = icmp ne %struct.blame_entry* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load %struct.blame_entry*, %struct.blame_entry** %19, align 8
  %36 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %12, align 4
  %39 = icmp slt i32 %37, %38
  br label %40

40:                                               ; preds = %34, %31
  %41 = phi i1 [ false, %31 ], [ %39, %34 ]
  br i1 %41, label %42, label %90

42:                                               ; preds = %40
  %43 = load %struct.blame_entry*, %struct.blame_entry** %19, align 8
  %44 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %43, i32 0, i32 2
  %45 = load %struct.blame_entry*, %struct.blame_entry** %44, align 8
  store %struct.blame_entry* %45, %struct.blame_entry** %24, align 8
  %46 = load %struct.blame_entry*, %struct.blame_entry** %19, align 8
  %47 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.blame_entry*, %struct.blame_entry** %19, align 8
  %50 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %48, %51
  %53 = load i32, i32* %12, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %55, label %70

55:                                               ; preds = %42
  %56 = load %struct.blame_entry*, %struct.blame_entry** %19, align 8
  %57 = load i32, i32* %12, align 4
  %58 = load %struct.blame_entry*, %struct.blame_entry** %19, align 8
  %59 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sub nsw i32 %57, %60
  %62 = load %struct.blame_entry*, %struct.blame_entry** %19, align 8
  %63 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %62, i32 0, i32 3
  %64 = load %struct.blame_origin*, %struct.blame_origin** %63, align 8
  %65 = call %struct.blame_entry* @split_blame_at(%struct.blame_entry* %56, i32 %61, %struct.blame_origin* %64)
  store %struct.blame_entry* %65, %struct.blame_entry** %25, align 8
  %66 = load %struct.blame_entry*, %struct.blame_entry** %21, align 8
  %67 = load %struct.blame_entry*, %struct.blame_entry** %25, align 8
  %68 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %67, i32 0, i32 2
  store %struct.blame_entry* %66, %struct.blame_entry** %68, align 8
  %69 = load %struct.blame_entry*, %struct.blame_entry** %25, align 8
  store %struct.blame_entry* %69, %struct.blame_entry** %21, align 8
  br label %75

70:                                               ; preds = %42
  %71 = load %struct.blame_entry*, %struct.blame_entry** %19, align 8
  %72 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %71, i32 0, i32 3
  %73 = load %struct.blame_origin*, %struct.blame_origin** %72, align 8
  %74 = call i32 @blame_origin_decref(%struct.blame_origin* %73)
  br label %75

75:                                               ; preds = %70, %55
  %76 = load %struct.blame_origin*, %struct.blame_origin** %16, align 8
  %77 = call %struct.blame_origin* @blame_origin_incref(%struct.blame_origin* %76)
  %78 = load %struct.blame_entry*, %struct.blame_entry** %19, align 8
  %79 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %78, i32 0, i32 3
  store %struct.blame_origin* %77, %struct.blame_origin** %79, align 8
  %80 = load i32, i32* %13, align 4
  %81 = load %struct.blame_entry*, %struct.blame_entry** %19, align 8
  %82 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = add nsw i32 %83, %80
  store i32 %84, i32* %82, align 8
  %85 = load %struct.blame_entry*, %struct.blame_entry** %20, align 8
  %86 = load %struct.blame_entry*, %struct.blame_entry** %19, align 8
  %87 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %86, i32 0, i32 2
  store %struct.blame_entry* %85, %struct.blame_entry** %87, align 8
  %88 = load %struct.blame_entry*, %struct.blame_entry** %19, align 8
  store %struct.blame_entry* %88, %struct.blame_entry** %20, align 8
  %89 = load %struct.blame_entry*, %struct.blame_entry** %24, align 8
  store %struct.blame_entry* %89, %struct.blame_entry** %19, align 8
  br label %31

90:                                               ; preds = %40
  %91 = load %struct.blame_entry*, %struct.blame_entry** %20, align 8
  %92 = icmp ne %struct.blame_entry* %91, null
  br i1 %92, label %93, label %104

93:                                               ; preds = %90
  %94 = load %struct.blame_entry*, %struct.blame_entry** %20, align 8
  %95 = load %struct.blame_entry***, %struct.blame_entry**** %10, align 8
  %96 = load %struct.blame_entry**, %struct.blame_entry*** %95, align 8
  %97 = load %struct.blame_entry*, %struct.blame_entry** %96, align 8
  %98 = call %struct.blame_entry* @reverse_blame(%struct.blame_entry* %94, %struct.blame_entry* %97)
  %99 = load %struct.blame_entry***, %struct.blame_entry**** %10, align 8
  %100 = load %struct.blame_entry**, %struct.blame_entry*** %99, align 8
  store %struct.blame_entry* %98, %struct.blame_entry** %100, align 8
  %101 = load %struct.blame_entry*, %struct.blame_entry** %20, align 8
  %102 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %101, i32 0, i32 2
  %103 = load %struct.blame_entry***, %struct.blame_entry**** %10, align 8
  store %struct.blame_entry** %102, %struct.blame_entry*** %103, align 8
  br label %104

104:                                              ; preds = %93, %90
  %105 = load %struct.blame_entry*, %struct.blame_entry** %21, align 8
  %106 = load %struct.blame_entry*, %struct.blame_entry** %19, align 8
  %107 = call %struct.blame_entry* @reverse_blame(%struct.blame_entry* %105, %struct.blame_entry* %106)
  store %struct.blame_entry* %107, %struct.blame_entry** %19, align 8
  store %struct.blame_entry* null, %struct.blame_entry** %20, align 8
  store %struct.blame_entry* null, %struct.blame_entry** %21, align 8
  %108 = load i32, i32* %18, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %128

110:                                              ; preds = %104
  %111 = load i32, i32* %14, align 4
  %112 = load i32, i32* %12, align 4
  %113 = sub nsw i32 %111, %112
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %115, label %128

115:                                              ; preds = %110
  %116 = load i32, i32* %14, align 4
  %117 = load i32, i32* %12, align 4
  %118 = sub nsw i32 %116, %117
  %119 = call %struct.blame_line_tracker* @xcalloc(i32 4, i32 %118)
  store %struct.blame_line_tracker* %119, %struct.blame_line_tracker** %23, align 8
  %120 = load %struct.blame_origin*, %struct.blame_origin** %16, align 8
  %121 = load %struct.blame_origin*, %struct.blame_origin** %17, align 8
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* %13, align 4
  %124 = load i32, i32* %14, align 4
  %125 = load i32, i32* %15, align 4
  %126 = load %struct.blame_line_tracker*, %struct.blame_line_tracker** %23, align 8
  %127 = call i32 @guess_line_blames(%struct.blame_origin* %120, %struct.blame_origin* %121, i32 %122, i32 %123, i32 %124, i32 %125, %struct.blame_line_tracker* %126)
  br label %128

128:                                              ; preds = %115, %110, %104
  br label %129

129:                                              ; preds = %191, %128
  %130 = load %struct.blame_entry*, %struct.blame_entry** %19, align 8
  %131 = icmp ne %struct.blame_entry* %130, null
  br i1 %131, label %132, label %138

132:                                              ; preds = %129
  %133 = load %struct.blame_entry*, %struct.blame_entry** %19, align 8
  %134 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* %14, align 4
  %137 = icmp slt i32 %135, %136
  br label %138

138:                                              ; preds = %132, %129
  %139 = phi i1 [ false, %129 ], [ %137, %132 ]
  br i1 %139, label %140, label %193

140:                                              ; preds = %138
  %141 = load %struct.blame_entry*, %struct.blame_entry** %19, align 8
  %142 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %141, i32 0, i32 2
  %143 = load %struct.blame_entry*, %struct.blame_entry** %142, align 8
  store %struct.blame_entry* %143, %struct.blame_entry** %26, align 8
  %144 = load %struct.blame_entry*, %struct.blame_entry** %19, align 8
  %145 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.blame_entry*, %struct.blame_entry** %19, align 8
  %148 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = add nsw i32 %146, %149
  %151 = load i32, i32* %14, align 4
  %152 = icmp sgt i32 %150, %151
  br i1 %152, label %153, label %169

153:                                              ; preds = %140
  %154 = load %struct.blame_entry*, %struct.blame_entry** %19, align 8
  %155 = load i32, i32* %14, align 4
  %156 = load %struct.blame_entry*, %struct.blame_entry** %19, align 8
  %157 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = sub nsw i32 %155, %158
  %160 = load %struct.blame_entry*, %struct.blame_entry** %19, align 8
  %161 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %160, i32 0, i32 3
  %162 = load %struct.blame_origin*, %struct.blame_origin** %161, align 8
  %163 = call %struct.blame_origin* @blame_origin_incref(%struct.blame_origin* %162)
  %164 = call %struct.blame_entry* @split_blame_at(%struct.blame_entry* %154, i32 %159, %struct.blame_origin* %163)
  store %struct.blame_entry* %164, %struct.blame_entry** %27, align 8
  %165 = load %struct.blame_entry*, %struct.blame_entry** %20, align 8
  %166 = load %struct.blame_entry*, %struct.blame_entry** %27, align 8
  %167 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %166, i32 0, i32 2
  store %struct.blame_entry* %165, %struct.blame_entry** %167, align 8
  %168 = load %struct.blame_entry*, %struct.blame_entry** %27, align 8
  store %struct.blame_entry* %168, %struct.blame_entry** %20, align 8
  br label %169

169:                                              ; preds = %153, %140
  %170 = load i32, i32* %18, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %186

172:                                              ; preds = %169
  %173 = load %struct.blame_entry*, %struct.blame_entry** %19, align 8
  %174 = load %struct.blame_origin*, %struct.blame_origin** %16, align 8
  %175 = load %struct.blame_line_tracker*, %struct.blame_line_tracker** %23, align 8
  %176 = load %struct.blame_entry*, %struct.blame_entry** %19, align 8
  %177 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.blame_line_tracker, %struct.blame_line_tracker* %175, i64 %179
  %181 = load i32, i32* %12, align 4
  %182 = sext i32 %181 to i64
  %183 = sub i64 0, %182
  %184 = getelementptr inbounds %struct.blame_line_tracker, %struct.blame_line_tracker* %180, i64 %183
  %185 = call i32 @ignore_blame_entry(%struct.blame_entry* %173, %struct.blame_origin* %174, %struct.blame_entry** %21, %struct.blame_entry** %22, %struct.blame_line_tracker* %184)
  br label %191

186:                                              ; preds = %169
  %187 = load %struct.blame_entry*, %struct.blame_entry** %21, align 8
  %188 = load %struct.blame_entry*, %struct.blame_entry** %19, align 8
  %189 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %188, i32 0, i32 2
  store %struct.blame_entry* %187, %struct.blame_entry** %189, align 8
  %190 = load %struct.blame_entry*, %struct.blame_entry** %19, align 8
  store %struct.blame_entry* %190, %struct.blame_entry** %21, align 8
  br label %191

191:                                              ; preds = %186, %172
  %192 = load %struct.blame_entry*, %struct.blame_entry** %26, align 8
  store %struct.blame_entry* %192, %struct.blame_entry** %19, align 8
  br label %129

193:                                              ; preds = %138
  %194 = load %struct.blame_line_tracker*, %struct.blame_line_tracker** %23, align 8
  %195 = call i32 @free(%struct.blame_line_tracker* %194)
  %196 = load %struct.blame_entry*, %struct.blame_entry** %22, align 8
  %197 = icmp ne %struct.blame_entry* %196, null
  br i1 %197, label %198, label %209

198:                                              ; preds = %193
  %199 = load %struct.blame_entry*, %struct.blame_entry** %22, align 8
  %200 = load %struct.blame_entry***, %struct.blame_entry**** %10, align 8
  %201 = load %struct.blame_entry**, %struct.blame_entry*** %200, align 8
  %202 = load %struct.blame_entry*, %struct.blame_entry** %201, align 8
  %203 = call %struct.blame_entry* @reverse_blame(%struct.blame_entry* %199, %struct.blame_entry* %202)
  %204 = load %struct.blame_entry***, %struct.blame_entry**** %10, align 8
  %205 = load %struct.blame_entry**, %struct.blame_entry*** %204, align 8
  store %struct.blame_entry* %203, %struct.blame_entry** %205, align 8
  %206 = load %struct.blame_entry*, %struct.blame_entry** %22, align 8
  %207 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %206, i32 0, i32 2
  %208 = load %struct.blame_entry***, %struct.blame_entry**** %10, align 8
  store %struct.blame_entry** %207, %struct.blame_entry*** %208, align 8
  br label %209

209:                                              ; preds = %198, %193
  %210 = load %struct.blame_entry*, %struct.blame_entry** %21, align 8
  %211 = load %struct.blame_entry*, %struct.blame_entry** %20, align 8
  %212 = load %struct.blame_entry*, %struct.blame_entry** %19, align 8
  %213 = call %struct.blame_entry* @reverse_blame(%struct.blame_entry* %211, %struct.blame_entry* %212)
  %214 = call %struct.blame_entry* @reverse_blame(%struct.blame_entry* %210, %struct.blame_entry* %213)
  %215 = load %struct.blame_entry***, %struct.blame_entry**** %11, align 8
  %216 = load %struct.blame_entry**, %struct.blame_entry*** %215, align 8
  store %struct.blame_entry* %214, %struct.blame_entry** %216, align 8
  %217 = load %struct.blame_entry*, %struct.blame_entry** %21, align 8
  %218 = icmp ne %struct.blame_entry* %217, null
  br i1 %218, label %219, label %223

219:                                              ; preds = %209
  %220 = load %struct.blame_entry*, %struct.blame_entry** %21, align 8
  %221 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %220, i32 0, i32 2
  %222 = load %struct.blame_entry***, %struct.blame_entry**** %11, align 8
  store %struct.blame_entry** %221, %struct.blame_entry*** %222, align 8
  br label %223

223:                                              ; preds = %219, %209
  ret void
}

declare dso_local %struct.blame_entry* @split_blame_at(%struct.blame_entry*, i32, %struct.blame_origin*) #1

declare dso_local i32 @blame_origin_decref(%struct.blame_origin*) #1

declare dso_local %struct.blame_origin* @blame_origin_incref(%struct.blame_origin*) #1

declare dso_local %struct.blame_entry* @reverse_blame(%struct.blame_entry*, %struct.blame_entry*) #1

declare dso_local %struct.blame_line_tracker* @xcalloc(i32, i32) #1

declare dso_local i32 @guess_line_blames(%struct.blame_origin*, %struct.blame_origin*, i32, i32, i32, i32, %struct.blame_line_tracker*) #1

declare dso_local i32 @ignore_blame_entry(%struct.blame_entry*, %struct.blame_origin*, %struct.blame_entry**, %struct.blame_entry**, %struct.blame_line_tracker*) #1

declare dso_local i32 @free(%struct.blame_line_tracker*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
