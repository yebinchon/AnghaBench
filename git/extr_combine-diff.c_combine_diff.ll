; ModuleID = '/home/carl/AnghaBench/git/extr_combine-diff.c_combine_diff.c'
source_filename = "/home/carl/AnghaBench/git/extr_combine-diff.c_combine_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.object_id = type { i32 }
%struct.TYPE_7__ = type { i64, i32 }
%struct.sline = type { i32*, i64, %struct.lline*, %struct.TYPE_6__, i32 }
%struct.lline = type { i64, %struct.lline* }
%struct.TYPE_6__ = type { i64, i32*, i64 }
%struct.userdiff_driver = type { i32 }
%struct.combine_diff_state = type { i64, i64, i32, i32, i32, %struct.sline* }

@consume_hunk = common dso_local global i32 0, align 4
@consume_line = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"unable to generate combined diff for %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.repository*, %struct.object_id*, i32, %struct.TYPE_7__*, %struct.sline*, i32, i32, i32, i32, %struct.userdiff_driver*, i8*, i64)* @combine_diff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @combine_diff(%struct.repository* %0, %struct.object_id* %1, i32 %2, %struct.TYPE_7__* %3, %struct.sline* %4, i32 %5, i32 %6, i32 %7, i32 %8, %struct.userdiff_driver* %9, i8* %10, i64 %11) #0 {
  %13 = alloca %struct.repository*, align 8
  %14 = alloca %struct.object_id*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_7__*, align 8
  %17 = alloca %struct.sline*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.userdiff_driver*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca %struct.combine_diff_state, align 8
  %29 = alloca %struct.combine_diff_state, align 8
  %30 = alloca %struct.TYPE_7__, align 8
  %31 = alloca %struct.combine_diff_state, align 8
  %32 = alloca i64, align 8
  %33 = alloca %struct.lline*, align 8
  %34 = alloca %struct.sline*, align 8
  store %struct.repository* %0, %struct.repository** %13, align 8
  store %struct.object_id* %1, %struct.object_id** %14, align 8
  store i32 %2, i32* %15, align 4
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %16, align 8
  store %struct.sline* %4, %struct.sline** %17, align 8
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store %struct.userdiff_driver* %9, %struct.userdiff_driver** %22, align 8
  store i8* %10, i8** %23, align 8
  store i64 %11, i64* %24, align 8
  %35 = load i32, i32* %19, align 4
  %36 = zext i32 %35 to i64
  %37 = shl i64 1, %36
  store i64 %37, i64* %27, align 8
  %38 = load i32, i32* %21, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %12
  br label %189

41:                                               ; preds = %12
  %42 = load %struct.repository*, %struct.repository** %13, align 8
  %43 = load %struct.object_id*, %struct.object_id** %14, align 8
  %44 = load i32, i32* %15, align 4
  %45 = load %struct.userdiff_driver*, %struct.userdiff_driver** %22, align 8
  %46 = load i8*, i8** %23, align 8
  %47 = call i32 @grab_blob(%struct.repository* %42, %struct.object_id* %43, i32 %44, i64* %32, %struct.userdiff_driver* %45, i8* %46)
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  store i32 %47, i32* %48, align 8
  %49 = load i64, i64* %32, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  store i64 %49, i64* %50, align 8
  %51 = call i32 @memset(%struct.combine_diff_state* %28, i32 0, i32 40)
  %52 = load i64, i64* %24, align 8
  %53 = getelementptr inbounds %struct.combine_diff_state, %struct.combine_diff_state* %28, i32 0, i32 0
  store i64 %52, i64* %53, align 8
  %54 = call i32 @memset(%struct.combine_diff_state* %29, i32 0, i32 40)
  %55 = call i32 @memset(%struct.combine_diff_state* %31, i32 0, i32 40)
  %56 = load i64, i64* %27, align 8
  %57 = getelementptr inbounds %struct.combine_diff_state, %struct.combine_diff_state* %31, i32 0, i32 1
  store i64 %56, i64* %57, align 8
  %58 = load %struct.sline*, %struct.sline** %17, align 8
  %59 = getelementptr inbounds %struct.combine_diff_state, %struct.combine_diff_state* %31, i32 0, i32 5
  store %struct.sline* %58, %struct.sline** %59, align 8
  %60 = getelementptr inbounds %struct.combine_diff_state, %struct.combine_diff_state* %31, i32 0, i32 2
  store i32 1, i32* %60, align 8
  %61 = load i32, i32* %20, align 4
  %62 = getelementptr inbounds %struct.combine_diff_state, %struct.combine_diff_state* %31, i32 0, i32 3
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* %19, align 4
  %64 = getelementptr inbounds %struct.combine_diff_state, %struct.combine_diff_state* %31, i32 0, i32 4
  store i32 %63, i32* %64, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %66 = load i32, i32* @consume_hunk, align 4
  %67 = load i32, i32* @consume_line, align 4
  %68 = call i64 @xdi_diff_outf(%struct.TYPE_7__* %30, %struct.TYPE_7__* %65, i32 %66, i32 %67, %struct.combine_diff_state* %31, %struct.combine_diff_state* %28, %struct.combine_diff_state* %29)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %41
  %71 = load %struct.object_id*, %struct.object_id** %14, align 8
  %72 = call i32 @oid_to_hex(%struct.object_id* %71)
  %73 = call i32 @die(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %70, %41
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @free(i32 %76)
  store i32 0, i32* %26, align 4
  store i32 1, i32* %25, align 4
  br label %78

78:                                               ; preds = %175, %74
  %79 = load i32, i32* %26, align 4
  %80 = load i32, i32* %18, align 4
  %81 = icmp ule i32 %79, %80
  br i1 %81, label %82, label %178

82:                                               ; preds = %78
  %83 = load i32, i32* %25, align 4
  %84 = load %struct.sline*, %struct.sline** %17, align 8
  %85 = load i32, i32* %26, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct.sline, %struct.sline* %84, i64 %86
  %88 = getelementptr inbounds %struct.sline, %struct.sline* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %19, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  store i32 %83, i32* %92, align 4
  %93 = load %struct.sline*, %struct.sline** %17, align 8
  %94 = load i32, i32* %26, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.sline, %struct.sline* %93, i64 %95
  %97 = getelementptr inbounds %struct.sline, %struct.sline* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %133

101:                                              ; preds = %82
  %102 = load %struct.sline*, %struct.sline** %17, align 8
  %103 = load i32, i32* %26, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.sline, %struct.sline* %102, i64 %104
  store %struct.sline* %105, %struct.sline** %34, align 8
  %106 = load %struct.sline*, %struct.sline** %34, align 8
  %107 = getelementptr inbounds %struct.sline, %struct.sline* %106, i32 0, i32 2
  %108 = load %struct.lline*, %struct.lline** %107, align 8
  %109 = load %struct.sline*, %struct.sline** %34, align 8
  %110 = getelementptr inbounds %struct.sline, %struct.sline* %109, i32 0, i32 4
  %111 = load %struct.sline*, %struct.sline** %34, align 8
  %112 = getelementptr inbounds %struct.sline, %struct.sline* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.sline*, %struct.sline** %34, align 8
  %116 = getelementptr inbounds %struct.sline, %struct.sline* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i32, i32* %19, align 4
  %120 = load i64, i64* %24, align 8
  %121 = call %struct.lline* @coalesce_lines(%struct.lline* %108, i32* %110, i64 %114, i64 %118, i32 %119, i64 %120)
  %122 = load %struct.sline*, %struct.sline** %34, align 8
  %123 = getelementptr inbounds %struct.sline, %struct.sline* %122, i32 0, i32 2
  store %struct.lline* %121, %struct.lline** %123, align 8
  %124 = load %struct.sline*, %struct.sline** %34, align 8
  %125 = getelementptr inbounds %struct.sline, %struct.sline* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 1
  store i32* null, i32** %126, align 8
  %127 = load %struct.sline*, %struct.sline** %34, align 8
  %128 = getelementptr inbounds %struct.sline, %struct.sline* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 2
  store i64 0, i64* %129, align 8
  %130 = load %struct.sline*, %struct.sline** %34, align 8
  %131 = getelementptr inbounds %struct.sline, %struct.sline* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  store i64 0, i64* %132, align 8
  br label %133

133:                                              ; preds = %101, %82
  %134 = load %struct.sline*, %struct.sline** %17, align 8
  %135 = load i32, i32* %26, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds %struct.sline, %struct.sline* %134, i64 %136
  %138 = getelementptr inbounds %struct.sline, %struct.sline* %137, i32 0, i32 2
  %139 = load %struct.lline*, %struct.lline** %138, align 8
  store %struct.lline* %139, %struct.lline** %33, align 8
  br label %140

140:                                              ; preds = %153, %133
  %141 = load %struct.lline*, %struct.lline** %33, align 8
  %142 = icmp ne %struct.lline* %141, null
  br i1 %142, label %143, label %157

143:                                              ; preds = %140
  %144 = load %struct.lline*, %struct.lline** %33, align 8
  %145 = getelementptr inbounds %struct.lline, %struct.lline* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* %27, align 8
  %148 = and i64 %146, %147
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %143
  %151 = load i32, i32* %25, align 4
  %152 = add i32 %151, 1
  store i32 %152, i32* %25, align 4
  br label %153

153:                                              ; preds = %150, %143
  %154 = load %struct.lline*, %struct.lline** %33, align 8
  %155 = getelementptr inbounds %struct.lline, %struct.lline* %154, i32 0, i32 1
  %156 = load %struct.lline*, %struct.lline** %155, align 8
  store %struct.lline* %156, %struct.lline** %33, align 8
  br label %140

157:                                              ; preds = %140
  %158 = load i32, i32* %26, align 4
  %159 = load i32, i32* %18, align 4
  %160 = icmp ult i32 %158, %159
  br i1 %160, label %161, label %174

161:                                              ; preds = %157
  %162 = load %struct.sline*, %struct.sline** %17, align 8
  %163 = load i32, i32* %26, align 4
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds %struct.sline, %struct.sline* %162, i64 %164
  %166 = getelementptr inbounds %struct.sline, %struct.sline* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* %27, align 8
  %169 = and i64 %167, %168
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %174, label %171

171:                                              ; preds = %161
  %172 = load i32, i32* %25, align 4
  %173 = add i32 %172, 1
  store i32 %173, i32* %25, align 4
  br label %174

174:                                              ; preds = %171, %161, %157
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %26, align 4
  %177 = add i32 %176, 1
  store i32 %177, i32* %26, align 4
  br label %78

178:                                              ; preds = %78
  %179 = load i32, i32* %25, align 4
  %180 = load %struct.sline*, %struct.sline** %17, align 8
  %181 = load i32, i32* %26, align 4
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds %struct.sline, %struct.sline* %180, i64 %182
  %184 = getelementptr inbounds %struct.sline, %struct.sline* %183, i32 0, i32 0
  %185 = load i32*, i32** %184, align 8
  %186 = load i32, i32* %19, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  store i32 %179, i32* %188, align 4
  br label %189

189:                                              ; preds = %178, %40
  ret void
}

declare dso_local i32 @grab_blob(%struct.repository*, %struct.object_id*, i32, i64*, %struct.userdiff_driver*, i8*) #1

declare dso_local i32 @memset(%struct.combine_diff_state*, i32, i32) #1

declare dso_local i64 @xdi_diff_outf(%struct.TYPE_7__*, %struct.TYPE_7__*, i32, i32, %struct.combine_diff_state*, %struct.combine_diff_state*, %struct.combine_diff_state*) #1

declare dso_local i32 @die(i8*, i32) #1

declare dso_local i32 @oid_to_hex(%struct.object_id*) #1

declare dso_local i32 @free(i32) #1

declare dso_local %struct.lline* @coalesce_lines(%struct.lline*, i32*, i64, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
