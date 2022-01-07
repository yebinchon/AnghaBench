; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_log.c_get_base_commit.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_log.c_get_base_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit = type { i32 }
%struct.branch = type { i32 }
%struct.commit_list = type { %struct.commit*, i64 }
%struct.object_id = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"unknown commit %s\00", align 1
@base_auto = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"failed to resolve '%s' as a valid ref\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"upstream base\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"could not find exact merge base\00", align 1
@.str.5 = private unnamed_addr constant [208 x i8] c"failed to get upstream, if you want to record base commit automatically,\0Aplease use git branch --set-upstream-to to track a remote branch.\0AOr you could specify base commit by --base=<base-commit-id> manually\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"failed to find exact merge base\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"base commit should be the ancestor of revision list\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"base commit shouldn't be in revision list\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.commit* (i8*, %struct.commit**, i32)* @get_base_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.commit* @get_base_commit(i8* %0, %struct.commit** %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.commit**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.commit*, align 8
  %8 = alloca %struct.commit**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.branch*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.commit_list*, align 8
  %14 = alloca %struct.commit*, align 8
  %15 = alloca %struct.object_id, align 4
  %16 = alloca %struct.commit_list*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.commit** %1, %struct.commit*** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.commit* null, %struct.commit** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %33

19:                                               ; preds = %3
  %20 = load i8*, i8** %4, align 8
  %21 = call i64 @strcmp(i8* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %19
  %24 = load i8*, i8** %4, align 8
  %25 = call %struct.commit* @lookup_commit_reference_by_name(i8* %24)
  store %struct.commit* %25, %struct.commit** %7, align 8
  %26 = load %struct.commit*, %struct.commit** %7, align 8
  %27 = icmp ne %struct.commit* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = call i32 @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 (i32, ...) @die(i32 %29, i8* %30)
  br label %32

32:                                               ; preds = %28, %23
  br label %84

33:                                               ; preds = %19, %3
  %34 = load i8*, i8** %4, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i8*, i8** %4, align 8
  %38 = call i64 @strcmp(i8* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36, %33
  %41 = load i64, i64* @base_auto, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %83

43:                                               ; preds = %40, %36
  %44 = call %struct.branch* @branch_get(i32* null)
  store %struct.branch* %44, %struct.branch** %11, align 8
  %45 = load %struct.branch*, %struct.branch** %11, align 8
  %46 = call i8* @branch_get_upstream(%struct.branch* %45, i32* null)
  store i8* %46, i8** %12, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %79

49:                                               ; preds = %43
  %50 = load i8*, i8** %12, align 8
  %51 = call i64 @get_oid(i8* %50, %struct.object_id* %15)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %55 = load i8*, i8** %12, align 8
  %56 = call i32 (i32, ...) @die(i32 %54, i8* %55)
  br label %57

57:                                               ; preds = %53, %49
  %58 = call %struct.commit* @lookup_commit_or_die(%struct.object_id* %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  store %struct.commit* %58, %struct.commit** %14, align 8
  %59 = load %struct.commit*, %struct.commit** %14, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.commit**, %struct.commit*** %5, align 8
  %62 = call %struct.commit_list* @get_merge_bases_many(%struct.commit* %59, i32 %60, %struct.commit** %61)
  store %struct.commit_list* %62, %struct.commit_list** %13, align 8
  %63 = load %struct.commit_list*, %struct.commit_list** %13, align 8
  %64 = icmp ne %struct.commit_list* %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %57
  %66 = load %struct.commit_list*, %struct.commit_list** %13, align 8
  %67 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %65, %57
  %71 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %72 = call i32 (i32, ...) @die(i32 %71)
  br label %73

73:                                               ; preds = %70, %65
  %74 = load %struct.commit_list*, %struct.commit_list** %13, align 8
  %75 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %74, i32 0, i32 0
  %76 = load %struct.commit*, %struct.commit** %75, align 8
  store %struct.commit* %76, %struct.commit** %7, align 8
  %77 = load %struct.commit_list*, %struct.commit_list** %13, align 8
  %78 = call i32 @free_commit_list(%struct.commit_list* %77)
  br label %82

79:                                               ; preds = %43
  %80 = call i32 @_(i8* getelementptr inbounds ([208 x i8], [208 x i8]* @.str.5, i64 0, i64 0))
  %81 = call i32 (i32, ...) @die(i32 %80)
  br label %82

82:                                               ; preds = %79, %73
  br label %83

83:                                               ; preds = %82, %40
  br label %84

84:                                               ; preds = %83, %32
  %85 = load %struct.commit**, %struct.commit*** %8, align 8
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @ALLOC_ARRAY(%struct.commit** %85, i32 %86)
  store i32 0, i32* %9, align 4
  br label %88

88:                                               ; preds = %102, %84
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %6, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %105

92:                                               ; preds = %88
  %93 = load %struct.commit**, %struct.commit*** %5, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.commit*, %struct.commit** %93, i64 %95
  %97 = load %struct.commit*, %struct.commit** %96, align 8
  %98 = load %struct.commit**, %struct.commit*** %8, align 8
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.commit*, %struct.commit** %98, i64 %100
  store %struct.commit* %97, %struct.commit** %101, align 8
  br label %102

102:                                              ; preds = %92
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %9, align 4
  br label %88

105:                                              ; preds = %88
  %106 = load i32, i32* %6, align 4
  store i32 %106, i32* %10, align 4
  br label %107

107:                                              ; preds = %167, %105
  %108 = load i32, i32* %10, align 4
  %109 = icmp sgt i32 %108, 1
  br i1 %109, label %110, label %170

110:                                              ; preds = %107
  store i32 0, i32* %9, align 4
  br label %111

111:                                              ; preds = %149, %110
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* %10, align 4
  %114 = sdiv i32 %113, 2
  %115 = icmp slt i32 %112, %114
  br i1 %115, label %116, label %152

116:                                              ; preds = %111
  %117 = load %struct.commit**, %struct.commit*** %8, align 8
  %118 = load i32, i32* %9, align 4
  %119 = mul nsw i32 2, %118
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.commit*, %struct.commit** %117, i64 %120
  %122 = load %struct.commit*, %struct.commit** %121, align 8
  %123 = load %struct.commit**, %struct.commit*** %8, align 8
  %124 = load i32, i32* %9, align 4
  %125 = mul nsw i32 2, %124
  %126 = add nsw i32 %125, 1
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.commit*, %struct.commit** %123, i64 %127
  %129 = load %struct.commit*, %struct.commit** %128, align 8
  %130 = call %struct.commit_list* @get_merge_bases(%struct.commit* %122, %struct.commit* %129)
  store %struct.commit_list* %130, %struct.commit_list** %16, align 8
  %131 = load %struct.commit_list*, %struct.commit_list** %16, align 8
  %132 = icmp ne %struct.commit_list* %131, null
  br i1 %132, label %133, label %138

133:                                              ; preds = %116
  %134 = load %struct.commit_list*, %struct.commit_list** %16, align 8
  %135 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %133, %116
  %139 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %140 = call i32 (i32, ...) @die(i32 %139)
  br label %141

141:                                              ; preds = %138, %133
  %142 = load %struct.commit_list*, %struct.commit_list** %16, align 8
  %143 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %142, i32 0, i32 0
  %144 = load %struct.commit*, %struct.commit** %143, align 8
  %145 = load %struct.commit**, %struct.commit*** %8, align 8
  %146 = load i32, i32* %9, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.commit*, %struct.commit** %145, i64 %147
  store %struct.commit* %144, %struct.commit** %148, align 8
  br label %149

149:                                              ; preds = %141
  %150 = load i32, i32* %9, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %9, align 4
  br label %111

152:                                              ; preds = %111
  %153 = load i32, i32* %10, align 4
  %154 = srem i32 %153, 2
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %167

156:                                              ; preds = %152
  %157 = load %struct.commit**, %struct.commit*** %8, align 8
  %158 = load i32, i32* %9, align 4
  %159 = mul nsw i32 2, %158
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.commit*, %struct.commit** %157, i64 %160
  %162 = load %struct.commit*, %struct.commit** %161, align 8
  %163 = load %struct.commit**, %struct.commit*** %8, align 8
  %164 = load i32, i32* %9, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.commit*, %struct.commit** %163, i64 %165
  store %struct.commit* %162, %struct.commit** %166, align 8
  br label %167

167:                                              ; preds = %156, %152
  %168 = load i32, i32* %10, align 4
  %169 = call i32 @DIV_ROUND_UP(i32 %168, i32 2)
  store i32 %169, i32* %10, align 4
  br label %107

170:                                              ; preds = %107
  %171 = load %struct.commit*, %struct.commit** %7, align 8
  %172 = load %struct.commit**, %struct.commit*** %8, align 8
  %173 = getelementptr inbounds %struct.commit*, %struct.commit** %172, i64 0
  %174 = load %struct.commit*, %struct.commit** %173, align 8
  %175 = call i32 @in_merge_bases(%struct.commit* %171, %struct.commit* %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %180, label %177

177:                                              ; preds = %170
  %178 = call i32 @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0))
  %179 = call i32 (i32, ...) @die(i32 %178)
  br label %180

180:                                              ; preds = %177, %170
  store i32 0, i32* %9, align 4
  br label %181

181:                                              ; preds = %197, %180
  %182 = load i32, i32* %9, align 4
  %183 = load i32, i32* %6, align 4
  %184 = icmp slt i32 %182, %183
  br i1 %184, label %185, label %200

185:                                              ; preds = %181
  %186 = load %struct.commit*, %struct.commit** %7, align 8
  %187 = load %struct.commit**, %struct.commit*** %5, align 8
  %188 = load i32, i32* %9, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.commit*, %struct.commit** %187, i64 %189
  %191 = load %struct.commit*, %struct.commit** %190, align 8
  %192 = icmp eq %struct.commit* %186, %191
  br i1 %192, label %193, label %196

193:                                              ; preds = %185
  %194 = call i32 @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0))
  %195 = call i32 (i32, ...) @die(i32 %194)
  br label %196

196:                                              ; preds = %193, %185
  br label %197

197:                                              ; preds = %196
  %198 = load i32, i32* %9, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %9, align 4
  br label %181

200:                                              ; preds = %181
  %201 = load %struct.commit**, %struct.commit*** %8, align 8
  %202 = call i32 @free(%struct.commit** %201)
  %203 = load %struct.commit*, %struct.commit** %7, align 8
  ret %struct.commit* %203
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.commit* @lookup_commit_reference_by_name(i8*) #1

declare dso_local i32 @die(i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.branch* @branch_get(i32*) #1

declare dso_local i8* @branch_get_upstream(%struct.branch*, i32*) #1

declare dso_local i64 @get_oid(i8*, %struct.object_id*) #1

declare dso_local %struct.commit* @lookup_commit_or_die(%struct.object_id*, i8*) #1

declare dso_local %struct.commit_list* @get_merge_bases_many(%struct.commit*, i32, %struct.commit**) #1

declare dso_local i32 @free_commit_list(%struct.commit_list*) #1

declare dso_local i32 @ALLOC_ARRAY(%struct.commit**, i32) #1

declare dso_local %struct.commit_list* @get_merge_bases(%struct.commit*, %struct.commit*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @in_merge_bases(%struct.commit*, %struct.commit*) #1

declare dso_local i32 @free(%struct.commit**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
