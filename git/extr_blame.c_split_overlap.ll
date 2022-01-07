; ModuleID = '/home/carl/AnghaBench/git/extr_blame.c_split_overlap.c'
source_filename = "/home/carl/AnghaBench/git/extr_blame.c_split_overlap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blame_entry = type { i32, i32, i32, %struct.blame_origin*, i32, i32 }
%struct.blame_origin = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blame_entry*, %struct.blame_entry*, i32, i32, i32, %struct.blame_origin*)* @split_overlap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @split_overlap(%struct.blame_entry* %0, %struct.blame_entry* %1, i32 %2, i32 %3, i32 %4, %struct.blame_origin* %5) #0 {
  %7 = alloca %struct.blame_entry*, align 8
  %8 = alloca %struct.blame_entry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.blame_origin*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.blame_entry* %0, %struct.blame_entry** %7, align 8
  store %struct.blame_entry* %1, %struct.blame_entry** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.blame_origin* %5, %struct.blame_origin** %12, align 8
  %15 = load %struct.blame_entry*, %struct.blame_entry** %7, align 8
  %16 = call i32 @memset(%struct.blame_entry* %15, i32 0, i32 96)
  store i32 0, i32* %14, align 4
  br label %17

17:                                               ; preds = %37, %6
  %18 = load i32, i32* %14, align 4
  %19 = icmp slt i32 %18, 3
  br i1 %19, label %20, label %40

20:                                               ; preds = %17
  %21 = load %struct.blame_entry*, %struct.blame_entry** %8, align 8
  %22 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.blame_entry*, %struct.blame_entry** %7, align 8
  %25 = load i32, i32* %14, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %24, i64 %26
  %28 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %27, i32 0, i32 5
  store i32 %23, i32* %28, align 4
  %29 = load %struct.blame_entry*, %struct.blame_entry** %8, align 8
  %30 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.blame_entry*, %struct.blame_entry** %7, align 8
  %33 = load i32, i32* %14, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %32, i64 %34
  %36 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %35, i32 0, i32 4
  store i32 %31, i32* %36, align 8
  br label %37

37:                                               ; preds = %20
  %38 = load i32, i32* %14, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %14, align 4
  br label %17

40:                                               ; preds = %17
  %41 = load %struct.blame_entry*, %struct.blame_entry** %8, align 8
  %42 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %91

46:                                               ; preds = %40
  %47 = load %struct.blame_entry*, %struct.blame_entry** %8, align 8
  %48 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %47, i32 0, i32 3
  %49 = load %struct.blame_origin*, %struct.blame_origin** %48, align 8
  %50 = call i8* @blame_origin_incref(%struct.blame_origin* %49)
  %51 = bitcast i8* %50 to %struct.blame_origin*
  %52 = load %struct.blame_entry*, %struct.blame_entry** %7, align 8
  %53 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %52, i64 0
  %54 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %53, i32 0, i32 3
  store %struct.blame_origin* %51, %struct.blame_origin** %54, align 8
  %55 = load %struct.blame_entry*, %struct.blame_entry** %8, align 8
  %56 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.blame_entry*, %struct.blame_entry** %7, align 8
  %59 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %58, i64 0
  %60 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %59, i32 0, i32 1
  store i32 %57, i32* %60, align 4
  %61 = load %struct.blame_entry*, %struct.blame_entry** %8, align 8
  %62 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.blame_entry*, %struct.blame_entry** %7, align 8
  %65 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %64, i64 0
  %66 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 8
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.blame_entry*, %struct.blame_entry** %8, align 8
  %69 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sub nsw i32 %67, %70
  %72 = load %struct.blame_entry*, %struct.blame_entry** %7, align 8
  %73 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %72, i64 0
  %74 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %73, i32 0, i32 2
  store i32 %71, i32* %74, align 8
  %75 = load %struct.blame_entry*, %struct.blame_entry** %8, align 8
  %76 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %77, %78
  %80 = load %struct.blame_entry*, %struct.blame_entry** %8, align 8
  %81 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sub nsw i32 %79, %82
  %84 = load %struct.blame_entry*, %struct.blame_entry** %7, align 8
  %85 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %84, i64 1
  %86 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %85, i32 0, i32 1
  store i32 %83, i32* %86, align 4
  %87 = load i32, i32* %10, align 4
  %88 = load %struct.blame_entry*, %struct.blame_entry** %7, align 8
  %89 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %88, i64 1
  %90 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %89, i32 0, i32 0
  store i32 %87, i32* %90, align 8
  br label %108

91:                                               ; preds = %40
  %92 = load %struct.blame_entry*, %struct.blame_entry** %8, align 8
  %93 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.blame_entry*, %struct.blame_entry** %7, align 8
  %96 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %95, i64 1
  %97 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %96, i32 0, i32 1
  store i32 %94, i32* %97, align 4
  %98 = load i32, i32* %10, align 4
  %99 = load %struct.blame_entry*, %struct.blame_entry** %8, align 8
  %100 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %9, align 4
  %103 = sub nsw i32 %101, %102
  %104 = add nsw i32 %98, %103
  %105 = load %struct.blame_entry*, %struct.blame_entry** %7, align 8
  %106 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %105, i64 1
  %107 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %106, i32 0, i32 0
  store i32 %104, i32* %107, align 8
  br label %108

108:                                              ; preds = %91, %46
  %109 = load i32, i32* %11, align 4
  %110 = load %struct.blame_entry*, %struct.blame_entry** %8, align 8
  %111 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.blame_entry*, %struct.blame_entry** %8, align 8
  %114 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = add nsw i32 %112, %115
  %117 = icmp slt i32 %109, %116
  br i1 %117, label %118, label %167

118:                                              ; preds = %108
  %119 = load %struct.blame_entry*, %struct.blame_entry** %8, align 8
  %120 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %119, i32 0, i32 3
  %121 = load %struct.blame_origin*, %struct.blame_origin** %120, align 8
  %122 = call i8* @blame_origin_incref(%struct.blame_origin* %121)
  %123 = bitcast i8* %122 to %struct.blame_origin*
  %124 = load %struct.blame_entry*, %struct.blame_entry** %7, align 8
  %125 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %124, i64 2
  %126 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %125, i32 0, i32 3
  store %struct.blame_origin* %123, %struct.blame_origin** %126, align 8
  %127 = load %struct.blame_entry*, %struct.blame_entry** %8, align 8
  %128 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %11, align 4
  %131 = load %struct.blame_entry*, %struct.blame_entry** %8, align 8
  %132 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = sub nsw i32 %130, %133
  %135 = add nsw i32 %129, %134
  %136 = load %struct.blame_entry*, %struct.blame_entry** %7, align 8
  %137 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %136, i64 2
  %138 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %137, i32 0, i32 1
  store i32 %135, i32* %138, align 4
  %139 = load %struct.blame_entry*, %struct.blame_entry** %8, align 8
  %140 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* %11, align 4
  %143 = load %struct.blame_entry*, %struct.blame_entry** %8, align 8
  %144 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = sub nsw i32 %142, %145
  %147 = add nsw i32 %141, %146
  %148 = load %struct.blame_entry*, %struct.blame_entry** %7, align 8
  %149 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %148, i64 2
  %150 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %149, i32 0, i32 0
  store i32 %147, i32* %150, align 8
  %151 = load %struct.blame_entry*, %struct.blame_entry** %8, align 8
  %152 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.blame_entry*, %struct.blame_entry** %8, align 8
  %155 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = add nsw i32 %153, %156
  %158 = load i32, i32* %11, align 4
  %159 = sub nsw i32 %157, %158
  %160 = load %struct.blame_entry*, %struct.blame_entry** %7, align 8
  %161 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %160, i64 2
  %162 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %161, i32 0, i32 2
  store i32 %159, i32* %162, align 8
  %163 = load %struct.blame_entry*, %struct.blame_entry** %7, align 8
  %164 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %163, i64 2
  %165 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  store i32 %166, i32* %13, align 4
  br label %175

167:                                              ; preds = %108
  %168 = load %struct.blame_entry*, %struct.blame_entry** %8, align 8
  %169 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.blame_entry*, %struct.blame_entry** %8, align 8
  %172 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = add nsw i32 %170, %173
  store i32 %174, i32* %13, align 4
  br label %175

175:                                              ; preds = %167, %118
  %176 = load i32, i32* %13, align 4
  %177 = load %struct.blame_entry*, %struct.blame_entry** %7, align 8
  %178 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %177, i64 1
  %179 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = sub nsw i32 %176, %180
  %182 = load %struct.blame_entry*, %struct.blame_entry** %7, align 8
  %183 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %182, i64 1
  %184 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %183, i32 0, i32 2
  store i32 %181, i32* %184, align 8
  %185 = load %struct.blame_entry*, %struct.blame_entry** %7, align 8
  %186 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %185, i64 1
  %187 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = icmp slt i32 %188, 1
  br i1 %189, label %190, label %191

190:                                              ; preds = %175
  br label %198

191:                                              ; preds = %175
  %192 = load %struct.blame_origin*, %struct.blame_origin** %12, align 8
  %193 = call i8* @blame_origin_incref(%struct.blame_origin* %192)
  %194 = bitcast i8* %193 to %struct.blame_origin*
  %195 = load %struct.blame_entry*, %struct.blame_entry** %7, align 8
  %196 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %195, i64 1
  %197 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %196, i32 0, i32 3
  store %struct.blame_origin* %194, %struct.blame_origin** %197, align 8
  br label %198

198:                                              ; preds = %191, %190
  ret void
}

declare dso_local i32 @memset(%struct.blame_entry*, i32, i32) #1

declare dso_local i8* @blame_origin_incref(%struct.blame_origin*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
