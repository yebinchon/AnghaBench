; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_branch.c_copy_or_rename_branch.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_branch.c_copy_or_rename_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [49 x i8] c"cannot copy the current branch while not on any.\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"cannot rename the current branch while not on any.\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Invalid branch name: '%s'\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"refs/heads/\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"expected prefix missing for refs\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Branch: copied %s to %s\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Branch: renamed %s to %s\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"Branch rename failed\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"Branch copy failed\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"Created a copy of a misnamed branch '%s'\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"Renamed a misnamed branch '%s' away\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"Branch renamed to %s, but HEAD is not updated!\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"branch.%s\00", align 1
@.str.13 = private unnamed_addr constant [52 x i8] c"Branch is renamed, but update of config-file failed\00", align 1
@.str.14 = private unnamed_addr constant [51 x i8] c"Branch is copied, but update of config-file failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i32)* @copy_or_rename_branch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_or_rename_branch(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.strbuf, align 4
  %10 = alloca %struct.strbuf, align 4
  %11 = alloca %struct.strbuf, align 4
  %12 = alloca %struct.strbuf, align 4
  %13 = alloca %struct.strbuf, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = bitcast %struct.strbuf* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %18 = bitcast %struct.strbuf* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %19 = bitcast %struct.strbuf* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %20 = bitcast %struct.strbuf* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %21 = bitcast %struct.strbuf* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  store i32 0, i32* %16, align 4
  %22 = load i8*, i8** %5, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %34, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = call i32 @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %29 = call i32 (i32, ...) @die(i32 %28)
  br label %33

30:                                               ; preds = %24
  %31 = call i32 @_(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %32 = call i32 (i32, ...) @die(i32 %31)
  br label %33

33:                                               ; preds = %30, %27
  br label %34

34:                                               ; preds = %33, %4
  %35 = load i8*, i8** %5, align 8
  %36 = call i64 @strbuf_check_branch_ref(%struct.strbuf* %9, i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @ref_exists(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32 1, i32* %16, align 4
  br label %48

44:                                               ; preds = %38
  %45 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i8*, i8** %5, align 8
  %47 = call i32 (i32, ...) @die(i32 %45, i8* %46)
  br label %48

48:                                               ; preds = %44, %43
  br label %49

49:                                               ; preds = %48, %34
  %50 = load i8*, i8** %5, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = call i64 @strcmp(i8* %50, i8* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = load i8*, i8** %6, align 8
  %56 = call i32 @validate_branchname(i8* %55, %struct.strbuf* %10)
  br label %61

57:                                               ; preds = %49
  %58 = load i8*, i8** %6, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @validate_new_branchname(i8* %58, %struct.strbuf* %10, i32 %59)
  br label %61

61:                                               ; preds = %57, %54
  %62 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @reject_rebase_or_bisect_branch(i32 %63)
  %65 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @skip_prefix(i32 %66, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8** %14)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %61
  %70 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @skip_prefix(i32 %71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8** %15)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %69, %61
  %75 = call i32 @BUG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %76

76:                                               ; preds = %74, %69
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = inttoptr i64 %82 to i8*
  %84 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %11, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i8* %83, i32 %85)
  br label %95

87:                                               ; preds = %76
  %88 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = inttoptr i64 %90 to i8*
  %92 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %11, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i8* %91, i32 %93)
  br label %95

95:                                               ; preds = %87, %79
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %110, label %98

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i64 @rename_ref(i32 %100, i32 %102, i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %98
  %108 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %109 = call i32 (i32, ...) @die(i32 %108)
  br label %110

110:                                              ; preds = %107, %98, %95
  %111 = load i32, i32* %7, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %125

113:                                              ; preds = %110
  %114 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i64 @copy_existing_ref(i32 %115, i32 %117, i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %113
  %123 = call i32 @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  %124 = call i32 (i32, ...) @die(i32 %123)
  br label %125

125:                                              ; preds = %122, %113, %110
  %126 = load i32, i32* %16, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %140

128:                                              ; preds = %125
  %129 = load i32, i32* %7, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %128
  %132 = call i32 @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0))
  %133 = load i8*, i8** %14, align 8
  %134 = call i32 @warning(i32 %132, i8* %133)
  br label %139

135:                                              ; preds = %128
  %136 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0))
  %137 = load i8*, i8** %14, align 8
  %138 = call i32 @warning(i32 %136, i8* %137)
  br label %139

139:                                              ; preds = %135, %131
  br label %140

140:                                              ; preds = %139, %125
  %141 = load i32, i32* %7, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %156, label %143

143:                                              ; preds = %140
  %144 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i64 @replace_each_worktree_head_symref(i32 %145, i32 %147, i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %143
  %153 = call i32 @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i64 0, i64 0))
  %154 = load i8*, i8** %6, align 8
  %155 = call i32 (i32, ...) @die(i32 %153, i8* %154)
  br label %156

156:                                              ; preds = %152, %143, %140
  %157 = call i32 @strbuf_release(%struct.strbuf* %11)
  %158 = load i8*, i8** %14, align 8
  %159 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* %158)
  %160 = call i32 @strbuf_release(%struct.strbuf* %9)
  %161 = load i8*, i8** %15, align 8
  %162 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* %161)
  %163 = call i32 @strbuf_release(%struct.strbuf* %10)
  %164 = load i32, i32* %7, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %176, label %166

166:                                              ; preds = %156
  %167 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i64 @git_config_rename_section(i32 %168, i32 %170)
  %172 = icmp slt i64 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %166
  %174 = call i32 @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.13, i64 0, i64 0))
  %175 = call i32 (i32, ...) @die(i32 %174)
  br label %176

176:                                              ; preds = %173, %166, %156
  %177 = load i32, i32* %7, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %194

179:                                              ; preds = %176
  %180 = load i8*, i8** %5, align 8
  %181 = load i8*, i8** %6, align 8
  %182 = call i64 @strcmp(i8* %180, i8* %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %194

184:                                              ; preds = %179
  %185 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = call i64 @git_config_copy_section(i32 %186, i32 %188)
  %190 = icmp slt i64 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %184
  %192 = call i32 @_(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.14, i64 0, i64 0))
  %193 = call i32 (i32, ...) @die(i32 %192)
  br label %194

194:                                              ; preds = %191, %184, %179, %176
  %195 = call i32 @strbuf_release(%struct.strbuf* %12)
  %196 = call i32 @strbuf_release(%struct.strbuf* %13)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @die(i32, ...) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i64 @strbuf_check_branch_ref(%struct.strbuf*, i8*) #2

declare dso_local i64 @ref_exists(i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @validate_branchname(i8*, %struct.strbuf*) #2

declare dso_local i32 @validate_new_branchname(i8*, %struct.strbuf*, i32) #2

declare dso_local i32 @reject_rebase_or_bisect_branch(i32) #2

declare dso_local i32 @skip_prefix(i32, i8*, i8**) #2

declare dso_local i32 @BUG(i8*) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*, ...) #2

declare dso_local i64 @rename_ref(i32, i32, i32) #2

declare dso_local i64 @copy_existing_ref(i32, i32, i32) #2

declare dso_local i32 @warning(i32, i8*) #2

declare dso_local i64 @replace_each_worktree_head_symref(i32, i32, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i64 @git_config_rename_section(i32, i32) #2

declare dso_local i64 @git_config_copy_section(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
