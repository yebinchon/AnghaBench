; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/md/extr_md.c_s_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/md/extr_md.c_s_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.indir = type { i32, i64*, i64 }

@md_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"s_write(%jd, %p)\0A\00", align 1
@NMASK = common dso_local global i32 0, align 4
@nshift = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"md screwed up\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.indir*, i32, i64)* @s_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s_write(%struct.indir* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.indir*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.indir*, align 8
  %9 = alloca [10 x %struct.indir*], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.indir* %0, %struct.indir** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %13 = load i32, i32* @md_debug, align 4
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = load i64, i64* %7, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %16, i8* %18)
  br label %20

20:                                               ; preds = %15, %3
  store i64 0, i64* %12, align 8
  store i32 0, i32* %11, align 4
  %21 = load %struct.indir*, %struct.indir** %5, align 8
  store %struct.indir* %21, %struct.indir** %8, align 8
  br label %22

22:                                               ; preds = %76, %49, %20
  %23 = load %struct.indir*, %struct.indir** %8, align 8
  %24 = load i32, i32* %11, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %11, align 4
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds [10 x %struct.indir*], [10 x %struct.indir*]* %9, i64 0, i64 %26
  store %struct.indir* %23, %struct.indir** %27, align 8
  %28 = load %struct.indir*, %struct.indir** %8, align 8
  %29 = getelementptr inbounds %struct.indir, %struct.indir* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %90

32:                                               ; preds = %22
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.indir*, %struct.indir** %8, align 8
  %35 = getelementptr inbounds %struct.indir, %struct.indir* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = ashr i32 %33, %36
  %38 = load i32, i32* @NMASK, align 4
  %39 = and i32 %37, %38
  store i32 %39, i32* %10, align 4
  %40 = load %struct.indir*, %struct.indir** %8, align 8
  %41 = getelementptr inbounds %struct.indir, %struct.indir* %40, i32 0, i32 1
  %42 = load i64*, i64** %41, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %12, align 8
  %47 = load i64, i64* %12, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %32
  %50 = load i64, i64* %12, align 8
  %51 = inttoptr i64 %50 to %struct.indir*
  store %struct.indir* %51, %struct.indir** %8, align 8
  br label %22

52:                                               ; preds = %32
  %53 = load %struct.indir*, %struct.indir** %8, align 8
  %54 = getelementptr inbounds %struct.indir, %struct.indir* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = load i64, i64* @nshift, align 8
  %58 = sub nsw i64 %56, %57
  %59 = call i64 @new_indir(i64 %58)
  %60 = load %struct.indir*, %struct.indir** %8, align 8
  %61 = getelementptr inbounds %struct.indir, %struct.indir* %60, i32 0, i32 1
  %62 = load i64*, i64** %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  store i64 %59, i64* %65, align 8
  %66 = load %struct.indir*, %struct.indir** %8, align 8
  %67 = getelementptr inbounds %struct.indir, %struct.indir* %66, i32 0, i32 1
  %68 = load i64*, i64** %67, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %52
  %75 = load i32, i32* @ENOSPC, align 4
  store i32 %75, i32* %4, align 4
  br label %199

76:                                               ; preds = %52
  %77 = load %struct.indir*, %struct.indir** %8, align 8
  %78 = getelementptr inbounds %struct.indir, %struct.indir* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %79, 1
  store i64 %80, i64* %78, align 8
  %81 = load %struct.indir*, %struct.indir** %8, align 8
  %82 = getelementptr inbounds %struct.indir, %struct.indir* %81, i32 0, i32 1
  %83 = load i64*, i64** %82, align 8
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %83, i64 %85
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %12, align 8
  %88 = load i64, i64* %12, align 8
  %89 = inttoptr i64 %88 to %struct.indir*
  store %struct.indir* %89, %struct.indir** %8, align 8
  br label %22

90:                                               ; preds = %22
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @NMASK, align 4
  %93 = and i32 %91, %92
  store i32 %93, i32* %10, align 4
  %94 = load %struct.indir*, %struct.indir** %8, align 8
  %95 = getelementptr inbounds %struct.indir, %struct.indir* %94, i32 0, i32 1
  %96 = load i64*, i64** %95, align 8
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %96, i64 %98
  %100 = load i64, i64* %99, align 8
  store i64 %100, i64* %12, align 8
  %101 = load i64, i64* %12, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %90
  %104 = load %struct.indir*, %struct.indir** %8, align 8
  %105 = getelementptr inbounds %struct.indir, %struct.indir* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = add nsw i64 %106, -1
  store i64 %107, i64* %105, align 8
  br label %108

108:                                              ; preds = %103, %90
  %109 = load i64, i64* %7, align 8
  %110 = load %struct.indir*, %struct.indir** %8, align 8
  %111 = getelementptr inbounds %struct.indir, %struct.indir* %110, i32 0, i32 1
  %112 = load i64*, i64** %111, align 8
  %113 = load i32, i32* %10, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i64, i64* %112, i64 %114
  store i64 %109, i64* %115, align 8
  %116 = load i64, i64* %7, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %108
  %119 = load %struct.indir*, %struct.indir** %8, align 8
  %120 = getelementptr inbounds %struct.indir, %struct.indir* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = add nsw i64 %121, 1
  store i64 %122, i64* %120, align 8
  br label %123

123:                                              ; preds = %118, %108
  br label %124

124:                                              ; preds = %123
  %125 = load %struct.indir*, %struct.indir** %8, align 8
  %126 = getelementptr inbounds %struct.indir, %struct.indir* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %124
  %130 = load i32, i32* %11, align 4
  %131 = icmp eq i32 %130, 1
  br i1 %131, label %132, label %133

132:                                              ; preds = %129, %124
  store i32 0, i32* %4, align 4
  br label %199

133:                                              ; preds = %129
  %134 = load i32, i32* %11, align 4
  %135 = add nsw i32 %134, -1
  store i32 %135, i32* %11, align 4
  br label %136

136:                                              ; preds = %147, %133
  %137 = load %struct.indir*, %struct.indir** %8, align 8
  %138 = getelementptr inbounds %struct.indir, %struct.indir* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %136
  %142 = load %struct.indir*, %struct.indir** %8, align 8
  %143 = load %struct.indir*, %struct.indir** %5, align 8
  %144 = icmp ne %struct.indir* %142, %143
  br label %145

145:                                              ; preds = %141, %136
  %146 = phi i1 [ false, %136 ], [ %144, %141 ]
  br i1 %146, label %147, label %198

147:                                              ; preds = %145
  %148 = load i32, i32* %11, align 4
  %149 = add nsw i32 %148, -1
  store i32 %149, i32* %11, align 4
  %150 = load i32, i32* %6, align 4
  %151 = load i32, i32* %11, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [10 x %struct.indir*], [10 x %struct.indir*]* %9, i64 0, i64 %152
  %154 = load %struct.indir*, %struct.indir** %153, align 8
  %155 = getelementptr inbounds %struct.indir, %struct.indir* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = ashr i32 %150, %156
  %158 = load i32, i32* @NMASK, align 4
  %159 = and i32 %157, %158
  store i32 %159, i32* %10, align 4
  %160 = load i32, i32* %11, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [10 x %struct.indir*], [10 x %struct.indir*]* %9, i64 0, i64 %161
  %163 = load %struct.indir*, %struct.indir** %162, align 8
  %164 = getelementptr inbounds %struct.indir, %struct.indir* %163, i32 0, i32 1
  %165 = load i64*, i64** %164, align 8
  %166 = load i32, i32* %10, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i64, i64* %165, i64 %167
  %169 = load i64, i64* %168, align 8
  store i64 %169, i64* %12, align 8
  %170 = load i64, i64* %12, align 8
  %171 = load %struct.indir*, %struct.indir** %8, align 8
  %172 = ptrtoint %struct.indir* %171 to i64
  %173 = icmp eq i64 %170, %172
  %174 = zext i1 %173 to i32
  %175 = call i32 @KASSERT(i32 %174, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %176 = load %struct.indir*, %struct.indir** %8, align 8
  %177 = call i32 @del_indir(%struct.indir* %176)
  %178 = load i32, i32* %11, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [10 x %struct.indir*], [10 x %struct.indir*]* %9, i64 0, i64 %179
  %181 = load %struct.indir*, %struct.indir** %180, align 8
  %182 = getelementptr inbounds %struct.indir, %struct.indir* %181, i32 0, i32 1
  %183 = load i64*, i64** %182, align 8
  %184 = load i32, i32* %10, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i64, i64* %183, i64 %185
  store i64 0, i64* %186, align 8
  %187 = load i32, i32* %11, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [10 x %struct.indir*], [10 x %struct.indir*]* %9, i64 0, i64 %188
  %190 = load %struct.indir*, %struct.indir** %189, align 8
  %191 = getelementptr inbounds %struct.indir, %struct.indir* %190, i32 0, i32 2
  %192 = load i64, i64* %191, align 8
  %193 = add nsw i64 %192, -1
  store i64 %193, i64* %191, align 8
  %194 = load i32, i32* %11, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [10 x %struct.indir*], [10 x %struct.indir*]* %9, i64 0, i64 %195
  %197 = load %struct.indir*, %struct.indir** %196, align 8
  store %struct.indir* %197, %struct.indir** %8, align 8
  br label %136

198:                                              ; preds = %145
  store i32 0, i32* %4, align 4
  br label %199

199:                                              ; preds = %198, %132, %74
  %200 = load i32, i32* %4, align 4
  ret i32 %200
}

declare dso_local i32 @printf(i8*, i32, i8*) #1

declare dso_local i64 @new_indir(i64) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @del_indir(%struct.indir*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
