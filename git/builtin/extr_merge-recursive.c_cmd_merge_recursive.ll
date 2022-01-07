; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_merge-recursive.c_cmd_merge_recursive.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_merge-recursive.c_cmd_merge_recursive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.merge_options = type { i8*, i8*, i8*, i32 }
%struct.commit = type { i32 }

@the_repository = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"-subtree\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@builtin_merge_recursive_usage = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"unknown option %s\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"could not parse object '%s'\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"cannot handle more than %d base. Ignoring %s.\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"cannot handle more than %d bases. Ignoring %s.\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"not handling anything other than two heads merge.\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"merge\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"could not resolve ref '%s'\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"Merging %s with %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_merge_recursive(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [21 x %struct.object_id*], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.object_id, align 4
  %13 = alloca %struct.object_id, align 4
  %14 = alloca %struct.merge_options, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.commit*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.object_id*, align 8
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %9, align 4
  %20 = load i32, i32* @the_repository, align 4
  %21 = call i32 @init_merge_options(%struct.merge_options* %14, i32 %20)
  %22 = load i8**, i8*** %6, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 0
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %3
  %27 = load i8**, i8*** %6, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i64 @ends_with(i8* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %14, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %33, align 8
  br label %34

34:                                               ; preds = %32, %26, %3
  %35 = load i32, i32* %5, align 4
  %36 = icmp slt i32 %35, 4
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load i32, i32* @builtin_merge_recursive_usage, align 4
  %39 = load i8**, i8*** %6, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @usagef(i32 %38, i8* %41)
  br label %43

43:                                               ; preds = %37, %34
  store i32 1, i32* %10, align 4
  br label %44

44:                                               ; preds = %118, %43
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %121

48:                                               ; preds = %44
  %49 = load i8**, i8*** %6, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %49, i64 %51
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %18, align 8
  %54 = load i8*, i8** %18, align 8
  %55 = call i64 @starts_with(i8* %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %73

57:                                               ; preds = %48
  %58 = load i8*, i8** %18, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 2
  %60 = load i8, i8* %59, align 1
  %61 = icmp ne i8 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %57
  br label %121

63:                                               ; preds = %57
  %64 = load i8*, i8** %18, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 2
  %66 = call i64 @parse_merge_opt(%struct.merge_options* %14, i8* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = call i8* @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %70 = load i8*, i8** %18, align 8
  %71 = call i32 (i8*, ...) @die(i8* %69, i8* %70)
  br label %72

72:                                               ; preds = %68, %63
  br label %118

73:                                               ; preds = %48
  %74 = load i32, i32* %9, align 4
  %75 = getelementptr inbounds [21 x %struct.object_id*], [21 x %struct.object_id*]* %8, i64 0, i64 0
  %76 = call i32 @ARRAY_SIZE(%struct.object_id** %75)
  %77 = sub nsw i32 %76, 1
  %78 = icmp ult i32 %74, %77
  br i1 %78, label %79, label %103

79:                                               ; preds = %73
  %80 = call %struct.object_id* @xmalloc(i32 4)
  store %struct.object_id* %80, %struct.object_id** %19, align 8
  %81 = load i8**, i8*** %6, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8*, i8** %81, i64 %83
  %85 = load i8*, i8** %84, align 8
  %86 = load %struct.object_id*, %struct.object_id** %19, align 8
  %87 = call i64 @get_oid(i8* %85, %struct.object_id* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %79
  %90 = call i8* @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %91 = load i8**, i8*** %6, align 8
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8*, i8** %91, i64 %93
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 (i8*, ...) @die(i8* %90, i8* %95)
  br label %97

97:                                               ; preds = %89, %79
  %98 = load %struct.object_id*, %struct.object_id** %19, align 8
  %99 = load i32, i32* %9, align 4
  %100 = add i32 %99, 1
  store i32 %100, i32* %9, align 4
  %101 = zext i32 %99 to i64
  %102 = getelementptr inbounds [21 x %struct.object_id*], [21 x %struct.object_id*]* %8, i64 0, i64 %101
  store %struct.object_id* %98, %struct.object_id** %102, align 8
  br label %117

103:                                              ; preds = %73
  %104 = getelementptr inbounds [21 x %struct.object_id*], [21 x %struct.object_id*]* %8, i64 0, i64 0
  %105 = call i32 @ARRAY_SIZE(%struct.object_id** %104)
  %106 = sub nsw i32 %105, 1
  %107 = call i32 @Q_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i32 %106)
  %108 = getelementptr inbounds [21 x %struct.object_id*], [21 x %struct.object_id*]* %8, i64 0, i64 0
  %109 = call i32 @ARRAY_SIZE(%struct.object_id** %108)
  %110 = sub nsw i32 %109, 1
  %111 = load i8**, i8*** %6, align 8
  %112 = load i32, i32* %10, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8*, i8** %111, i64 %113
  %115 = load i8*, i8** %114, align 8
  %116 = call i32 @warning(i32 %107, i32 %110, i8* %115)
  br label %117

117:                                              ; preds = %103, %97
  br label %118

118:                                              ; preds = %117, %72
  %119 = load i32, i32* %10, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %10, align 4
  br label %44

121:                                              ; preds = %62, %44
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* %10, align 4
  %124 = sub nsw i32 %122, %123
  %125 = icmp ne i32 %124, 3
  br i1 %125, label %126, label %129

126:                                              ; preds = %121
  %127 = call i8* @_(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0))
  %128 = call i32 (i8*, ...) @die(i8* %127)
  br label %129

129:                                              ; preds = %126, %121
  %130 = load i32, i32* @the_repository, align 4
  %131 = call i64 @repo_read_index_unmerged(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %129
  %134 = call i32 @die_resolve_conflict(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  br label %135

135:                                              ; preds = %133, %129
  %136 = load i8**, i8*** %6, align 8
  %137 = load i32, i32* %10, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %10, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8*, i8** %136, i64 %139
  %141 = load i8*, i8** %140, align 8
  %142 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %14, i32 0, i32 1
  store i8* %141, i8** %142, align 8
  %143 = load i8**, i8*** %6, align 8
  %144 = load i32, i32* %10, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %10, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8*, i8** %143, i64 %146
  %148 = load i8*, i8** %147, align 8
  %149 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %14, i32 0, i32 2
  store i8* %148, i8** %149, align 8
  %150 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %14, i32 0, i32 1
  %151 = load i8*, i8** %150, align 8
  %152 = call i64 @get_oid(i8* %151, %struct.object_id* %12)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %135
  %155 = call i8* @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  %156 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %14, i32 0, i32 1
  %157 = load i8*, i8** %156, align 8
  %158 = call i32 (i8*, ...) @die(i8* %155, i8* %157)
  br label %159

159:                                              ; preds = %154, %135
  %160 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %14, i32 0, i32 2
  %161 = load i8*, i8** %160, align 8
  %162 = call i64 @get_oid(i8* %161, %struct.object_id* %13)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %159
  %165 = call i8* @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  %166 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %14, i32 0, i32 2
  %167 = load i8*, i8** %166, align 8
  %168 = call i32 (i8*, ...) @die(i8* %165, i8* %167)
  br label %169

169:                                              ; preds = %164, %159
  %170 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %14, i32 0, i32 1
  %171 = load i8*, i8** %170, align 8
  %172 = call i8* @better_branch_name(i8* %171)
  store i8* %172, i8** %15, align 8
  %173 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %14, i32 0, i32 1
  store i8* %172, i8** %173, align 8
  %174 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %14, i32 0, i32 2
  %175 = load i8*, i8** %174, align 8
  %176 = call i8* @better_branch_name(i8* %175)
  store i8* %176, i8** %16, align 8
  %177 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %14, i32 0, i32 2
  store i8* %176, i8** %177, align 8
  %178 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %14, i32 0, i32 3
  %179 = load i32, i32* %178, align 8
  %180 = icmp sge i32 %179, 3
  br i1 %180, label %181, label %188

181:                                              ; preds = %169
  %182 = call i8* @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  %183 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %14, i32 0, i32 1
  %184 = load i8*, i8** %183, align 8
  %185 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %14, i32 0, i32 2
  %186 = load i8*, i8** %185, align 8
  %187 = call i32 @printf(i8* %182, i8* %184, i8* %186)
  br label %188

188:                                              ; preds = %181, %169
  %189 = load i32, i32* %9, align 4
  %190 = getelementptr inbounds [21 x %struct.object_id*], [21 x %struct.object_id*]* %8, i64 0, i64 0
  %191 = call i32 @merge_recursive_generic(%struct.merge_options* %14, %struct.object_id* %12, %struct.object_id* %13, i32 %189, %struct.object_id** %190, %struct.commit** %17)
  store i32 %191, i32* %11, align 4
  %192 = load i8*, i8** %15, align 8
  %193 = call i32 @free(i8* %192)
  %194 = load i8*, i8** %16, align 8
  %195 = call i32 @free(i8* %194)
  %196 = load i32, i32* %11, align 4
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %188
  store i32 128, i32* %4, align 4
  br label %201

199:                                              ; preds = %188
  %200 = load i32, i32* %11, align 4
  store i32 %200, i32* %4, align 4
  br label %201

201:                                              ; preds = %199, %198
  %202 = load i32, i32* %4, align 4
  ret i32 %202
}

declare dso_local i32 @init_merge_options(%struct.merge_options*, i32) #1

declare dso_local i64 @ends_with(i8*, i8*) #1

declare dso_local i32 @usagef(i32, i8*) #1

declare dso_local i64 @starts_with(i8*, i8*) #1

declare dso_local i64 @parse_merge_opt(%struct.merge_options*, i8*) #1

declare dso_local i32 @die(i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.object_id**) #1

declare dso_local %struct.object_id* @xmalloc(i32) #1

declare dso_local i64 @get_oid(i8*, %struct.object_id*) #1

declare dso_local i32 @warning(i32, i32, i8*) #1

declare dso_local i32 @Q_(i8*, i8*, i32) #1

declare dso_local i64 @repo_read_index_unmerged(i32) #1

declare dso_local i32 @die_resolve_conflict(i8*) #1

declare dso_local i8* @better_branch_name(i8*) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

declare dso_local i32 @merge_recursive_generic(%struct.merge_options*, %struct.object_id*, %struct.object_id*, i32, %struct.object_id**, %struct.commit**) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
