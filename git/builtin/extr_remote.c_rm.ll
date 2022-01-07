; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_remote.c_rm.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_remote.c_rm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8* }
%struct.string_list = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }
%struct.TYPE_4__ = type { i32, %struct.string_list_item* }
%struct.string_list_item = type { i32, %struct.branch_info* }
%struct.branch_info = type { i64 }
%struct.option = type { i32 }
%struct.remote = type { i32 }
%struct.known_remotes = type { %struct.remote*, i32*, i32* }
%struct.branches_for_remote = type { %struct.remote*, %struct.known_remotes*, %struct.string_list*, %struct.string_list* }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@STRING_LIST_INIT_DUP = common dso_local global %struct.string_list zeroinitializer, align 8
@builtin_remote_rm_usage = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"No such remote: '%s'\00", align 1
@add_known_remote = common dso_local global i32 0, align 4
@branch_list = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"remote\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"merge\00", align 1
@__const.rm.keys = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* null], align 16
@.str.3 = private unnamed_addr constant [13 x i8] c"branch.%s.%s\00", align 1
@CONFIG_NOTHING_SET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"could not unset '%s'\00", align 1
@add_branch_for_removal = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"remote: remove\00", align 1
@REF_NO_DEREF = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [87 x i8] c"Note: A branch outside the refs/remotes/ hierarchy was not removed;\0Ato delete it, use:\00", align 1
@.str.7 = private unnamed_addr constant [95 x i8] c"Note: Some branches outside the refs/remotes/ hierarchy were not removed;\0Ato delete them, use:\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"  git branch -d %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"remote.%s\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"Could not remove config section '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @rm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rm(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [1 x %struct.option], align 4
  %7 = alloca %struct.remote*, align 8
  %8 = alloca %struct.strbuf, align 8
  %9 = alloca %struct.known_remotes, align 8
  %10 = alloca %struct.string_list, align 8
  %11 = alloca %struct.string_list, align 8
  %12 = alloca %struct.branches_for_remote, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.string_list_item*, align 8
  %16 = alloca %struct.branch_info*, align 8
  %17 = alloca [3 x i8*], align 16
  %18 = alloca i8**, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %19 = getelementptr inbounds [1 x %struct.option], [1 x %struct.option]* %6, i64 0, i64 0
  %20 = call i32 (...) @OPT_END()
  %21 = getelementptr inbounds %struct.option, %struct.option* %19, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = bitcast %struct.strbuf* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %23 = bitcast %struct.known_remotes* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %23, i8 0, i64 24, i1 false)
  %24 = bitcast %struct.string_list* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 bitcast (%struct.string_list* @STRING_LIST_INIT_DUP to i8*), i64 16, i1 false)
  %25 = bitcast %struct.string_list* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 bitcast (%struct.string_list* @STRING_LIST_INIT_DUP to i8*), i64 16, i1 false)
  %26 = call i32 @memset(%struct.branches_for_remote* %12, i32 0, i32 32)
  %27 = getelementptr inbounds %struct.branches_for_remote, %struct.branches_for_remote* %12, i32 0, i32 3
  store %struct.string_list* %10, %struct.string_list** %27, align 8
  %28 = getelementptr inbounds %struct.branches_for_remote, %struct.branches_for_remote* %12, i32 0, i32 2
  store %struct.string_list* %11, %struct.string_list** %28, align 8
  %29 = getelementptr inbounds %struct.branches_for_remote, %struct.branches_for_remote* %12, i32 0, i32 1
  store %struct.known_remotes* %9, %struct.known_remotes** %29, align 8
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 2
  br i1 %31, label %32, label %36

32:                                               ; preds = %2
  %33 = load i32, i32* @builtin_remote_rm_usage, align 4
  %34 = getelementptr inbounds [1 x %struct.option], [1 x %struct.option]* %6, i64 0, i64 0
  %35 = call i32 @usage_with_options(i32 %33, %struct.option* %34)
  br label %36

36:                                               ; preds = %32, %2
  %37 = load i8**, i8*** %5, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 1
  %39 = load i8*, i8** %38, align 8
  %40 = call %struct.remote* @remote_get(i8* %39)
  store %struct.remote* %40, %struct.remote** %7, align 8
  %41 = load %struct.remote*, %struct.remote** %7, align 8
  %42 = call i32 @remote_is_configured(%struct.remote* %41, i32 1)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %36
  %45 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %46 = load i8**, i8*** %5, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 1
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @die(i32 %45, i8* %48)
  br label %50

50:                                               ; preds = %44, %36
  %51 = load %struct.remote*, %struct.remote** %7, align 8
  %52 = getelementptr inbounds %struct.known_remotes, %struct.known_remotes* %9, i32 0, i32 0
  store %struct.remote* %51, %struct.remote** %52, align 8
  %53 = load i32, i32* @add_known_remote, align 4
  %54 = call i32 @for_each_remote(i32 %53, %struct.known_remotes* %9)
  %55 = call i32 (...) @read_branches()
  store i32 0, i32* %13, align 4
  br label %56

56:                                               ; preds = %116, %50
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @branch_list, i32 0, i32 0), align 8
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %119

60:                                               ; preds = %56
  %61 = load %struct.string_list_item*, %struct.string_list_item** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @branch_list, i32 0, i32 1), align 8
  %62 = load i32, i32* %13, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %61, i64 %63
  store %struct.string_list_item* %64, %struct.string_list_item** %15, align 8
  %65 = load %struct.string_list_item*, %struct.string_list_item** %15, align 8
  %66 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %65, i32 0, i32 1
  %67 = load %struct.branch_info*, %struct.branch_info** %66, align 8
  store %struct.branch_info* %67, %struct.branch_info** %16, align 8
  %68 = load %struct.branch_info*, %struct.branch_info** %16, align 8
  %69 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %115

72:                                               ; preds = %60
  %73 = load %struct.branch_info*, %struct.branch_info** %16, align 8
  %74 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.remote*, %struct.remote** %7, align 8
  %77 = getelementptr inbounds %struct.remote, %struct.remote* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @strcmp(i64 %75, i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %115, label %81

81:                                               ; preds = %72
  %82 = bitcast [3 x i8*]* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %82, i8* align 16 bitcast ([3 x i8*]* @__const.rm.keys to i8*), i64 24, i1 false)
  %83 = getelementptr inbounds [3 x i8*], [3 x i8*]* %17, i64 0, i64 0
  store i8** %83, i8*** %18, align 8
  br label %84

84:                                               ; preds = %111, %81
  %85 = load i8**, i8*** %18, align 8
  %86 = load i8*, i8** %85, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %114

88:                                               ; preds = %84
  %89 = call i32 @strbuf_reset(%struct.strbuf* %8)
  %90 = load %struct.string_list_item*, %struct.string_list_item** %15, align 8
  %91 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i8**, i8*** %18, align 8
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 (%struct.strbuf*, i8*, i32, ...) @strbuf_addf(%struct.strbuf* %8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %92, i8* %94)
  %96 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @git_config_set_gently(i8* %97, i32* null)
  store i32 %98, i32* %14, align 4
  %99 = load i32, i32* %14, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %88
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* @CONFIG_NOTHING_SET, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %101
  %106 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %107 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 @die(i32 %106, i8* %108)
  br label %110

110:                                              ; preds = %105, %101, %88
  br label %111

111:                                              ; preds = %110
  %112 = load i8**, i8*** %18, align 8
  %113 = getelementptr inbounds i8*, i8** %112, i32 1
  store i8** %113, i8*** %18, align 8
  br label %84

114:                                              ; preds = %84
  br label %115

115:                                              ; preds = %114, %72, %60
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %13, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %13, align 4
  br label %56

119:                                              ; preds = %56
  %120 = load %struct.remote*, %struct.remote** %7, align 8
  %121 = getelementptr inbounds %struct.branches_for_remote, %struct.branches_for_remote* %12, i32 0, i32 0
  store %struct.remote* %120, %struct.remote** %121, align 8
  %122 = load i32, i32* @add_branch_for_removal, align 4
  %123 = call i32 @for_each_ref(i32 %122, %struct.branches_for_remote* %12)
  store i32 %123, i32* %14, align 4
  %124 = call i32 @strbuf_release(%struct.strbuf* %8)
  %125 = load i32, i32* %14, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %119
  %128 = load i32, i32* @REF_NO_DEREF, align 4
  %129 = call i32 @delete_refs(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), %struct.string_list* %10, i32 %128)
  store i32 %129, i32* %14, align 4
  br label %130

130:                                              ; preds = %127, %119
  %131 = call i32 @string_list_clear(%struct.string_list* %10, i32 0)
  %132 = getelementptr inbounds %struct.string_list, %struct.string_list* %11, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %160

135:                                              ; preds = %130
  %136 = load i32, i32* @stderr, align 4
  %137 = getelementptr inbounds %struct.string_list, %struct.string_list* %11, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @Q_(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.7, i64 0, i64 0), i32 %138)
  %140 = call i32 @fprintf_ln(i32 %136, i32 %139)
  store i32 0, i32* %13, align 4
  br label %141

141:                                              ; preds = %156, %135
  %142 = load i32, i32* %13, align 4
  %143 = getelementptr inbounds %struct.string_list, %struct.string_list* %11, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = icmp slt i32 %142, %144
  br i1 %145, label %146, label %159

146:                                              ; preds = %141
  %147 = load i32, i32* @stderr, align 4
  %148 = getelementptr inbounds %struct.string_list, %struct.string_list* %11, i32 0, i32 1
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %148, align 8
  %150 = load i32, i32* %13, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  %155 = call i32 @fprintf(i32 %147, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i8* %154)
  br label %156

156:                                              ; preds = %146
  %157 = load i32, i32* %13, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %13, align 4
  br label %141

159:                                              ; preds = %141
  br label %160

160:                                              ; preds = %159, %130
  %161 = call i32 @string_list_clear(%struct.string_list* %11, i32 0)
  %162 = load i32, i32* %14, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %179, label %164

164:                                              ; preds = %160
  %165 = load %struct.remote*, %struct.remote** %7, align 8
  %166 = getelementptr inbounds %struct.remote, %struct.remote* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i32 (%struct.strbuf*, i8*, i32, ...) @strbuf_addf(%struct.strbuf* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 %167)
  %169 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %170 = load i8*, i8** %169, align 8
  %171 = call i32 @git_config_rename_section(i8* %170, i32* null)
  %172 = icmp slt i32 %171, 1
  br i1 %172, label %173, label %178

173:                                              ; preds = %164
  %174 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0))
  %175 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %176 = load i8*, i8** %175, align 8
  %177 = call i32 @error(i32 %174, i8* %176)
  store i32 %177, i32* %3, align 4
  br label %181

178:                                              ; preds = %164
  br label %179

179:                                              ; preds = %178, %160
  %180 = load i32, i32* %14, align 4
  store i32 %180, i32* %3, align 4
  br label %181

181:                                              ; preds = %179, %173
  %182 = load i32, i32* %3, align 4
  ret i32 %182
}

declare dso_local i32 @OPT_END(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @memset(%struct.branches_for_remote*, i32, i32) #1

declare dso_local i32 @usage_with_options(i32, %struct.option*) #1

declare dso_local %struct.remote* @remote_get(i8*) #1

declare dso_local i32 @remote_is_configured(%struct.remote*, i32) #1

declare dso_local i32 @die(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @for_each_remote(i32, %struct.known_remotes*) #1

declare dso_local i32 @read_branches(...) #1

declare dso_local i32 @strcmp(i64, i32) #1

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32, ...) #1

declare dso_local i32 @git_config_set_gently(i8*, i32*) #1

declare dso_local i32 @for_each_ref(i32, %struct.branches_for_remote*) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

declare dso_local i32 @delete_refs(i8*, %struct.string_list*, i32) #1

declare dso_local i32 @string_list_clear(%struct.string_list*, i32) #1

declare dso_local i32 @fprintf_ln(i32, i32) #1

declare dso_local i32 @Q_(i8*, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @git_config_rename_section(i8*, i32*) #1

declare dso_local i32 @error(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
