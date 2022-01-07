; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_branch.c_delete_branches.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_branch.c_delete_branches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.commit = type { i32 }
%struct.object_id = type { i32 }
%struct.worktree = type { i8* }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [16 x i8] c"refs/remotes/%s\00", align 1
@INTERPRET_BRANCH_REMOTE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"refs/heads/%s\00", align 1
@INTERPRET_BRANCH_LOCAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"cannot use -a with -d\00", align 1
@the_repository = common dso_local global i32 0, align 4
@head_oid = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"Couldn't look up commit object for HEAD\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"Cannot delete branch '%s' checked out at '%s'\00", align 1
@RESOLVE_REF_READING = common dso_local global i32 0, align 4
@RESOLVE_REF_NO_RECURSE = common dso_local global i32 0, align 4
@RESOLVE_REF_ALLOW_BAD_NAME = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [39 x i8] c"remote-tracking branch '%s' not found.\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"branch '%s' not found.\00", align 1
@REF_ISSYMREF = common dso_local global i32 0, align 4
@REF_ISBROKEN = common dso_local global i32 0, align 4
@REF_NO_DEREF = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [43 x i8] c"Error deleting remote-tracking branch '%s'\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"Error deleting branch '%s'\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"Deleted remote-tracking branch %s (was %s).\0A\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"Deleted branch %s (was %s).\0A\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"broken\00", align 1
@DEFAULT_ABBREV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i32, i32, i32)* @delete_branches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delete_branches(i32 %0, i8** %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.commit*, align 8
  %12 = alloca %struct.object_id, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.strbuf, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.worktree*, align 8
  store i32 %0, i32* %6, align 4
  store i8** %1, i8*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store %struct.commit* null, %struct.commit** %11, align 8
  store i8* null, i8** %13, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %23 = bitcast %struct.strbuf* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %24 = load i32, i32* %9, align 4
  switch i32 %24, label %29 [
    i32 128, label %25
    i32 129, label %27
  ]

25:                                               ; preds = %5
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  store i32 1, i32* %17, align 4
  %26 = load i32, i32* @INTERPRET_BRANCH_REMOTE, align 4
  store i32 %26, i32* %19, align 4
  store i32 1, i32* %8, align 4
  br label %32

27:                                               ; preds = %5
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %14, align 8
  %28 = load i32, i32* @INTERPRET_BRANCH_LOCAL, align 4
  store i32 %28, i32* %19, align 4
  br label %32

29:                                               ; preds = %5
  %30 = call i8* @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %31 = call i32 @die(i8* %30)
  br label %32

32:                                               ; preds = %29, %27, %25
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* @the_repository, align 4
  %37 = call %struct.commit* @lookup_commit_reference(i32 %36, i32* @head_oid)
  store %struct.commit* %37, %struct.commit** %11, align 8
  %38 = load %struct.commit*, %struct.commit** %11, align 8
  %39 = icmp ne %struct.commit* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = call i8* @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %42 = call i32 @die(i8* %41)
  br label %43

43:                                               ; preds = %40, %35
  br label %44

44:                                               ; preds = %43, %32
  store i32 0, i32* %15, align 4
  br label %45

45:                                               ; preds = %182, %44
  %46 = load i32, i32* %15, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %186

49:                                               ; preds = %45
  store i8* null, i8** %20, align 8
  store i32 0, i32* %21, align 4
  %50 = load i8**, i8*** %7, align 8
  %51 = load i32, i32* %15, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %50, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = load i32, i32* %19, align 4
  %56 = call i32 @strbuf_branchname(%struct.strbuf* %18, i8* %54, i32 %55)
  %57 = load i8*, i8** %13, align 8
  %58 = call i32 @free(i8* %57)
  %59 = load i8*, i8** %14, align 8
  %60 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %18, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @mkpathdup(i8* %59, i32 %61)
  store i8* %62, i8** %13, align 8
  %63 = load i32, i32* %9, align 4
  %64 = icmp eq i32 %63, 129
  br i1 %64, label %65, label %79

65:                                               ; preds = %49
  %66 = load i8*, i8** %13, align 8
  %67 = call %struct.worktree* @find_shared_symref(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %66)
  store %struct.worktree* %67, %struct.worktree** %22, align 8
  %68 = load %struct.worktree*, %struct.worktree** %22, align 8
  %69 = icmp ne %struct.worktree* %68, null
  br i1 %69, label %70, label %78

70:                                               ; preds = %65
  %71 = call i8* @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0))
  %72 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %18, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.worktree*, %struct.worktree** %22, align 8
  %75 = getelementptr inbounds %struct.worktree, %struct.worktree* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 (i8*, i32, ...) @error(i8* %71, i32 %73, i8* %76)
  store i32 1, i32* %16, align 4
  br label %182

78:                                               ; preds = %65
  br label %79

79:                                               ; preds = %78, %49
  %80 = load i8*, i8** %13, align 8
  %81 = load i32, i32* @RESOLVE_REF_READING, align 4
  %82 = load i32, i32* @RESOLVE_REF_NO_RECURSE, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @RESOLVE_REF_ALLOW_BAD_NAME, align 4
  %85 = or i32 %83, %84
  %86 = call i8* @resolve_refdup(i8* %80, i32 %85, %struct.object_id* %12, i32* %21)
  store i8* %86, i8** %20, align 8
  %87 = load i8*, i8** %20, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %101, label %89

89:                                               ; preds = %79
  %90 = load i32, i32* %17, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = call i8* @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  br label %96

94:                                               ; preds = %89
  %95 = call i8* @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  br label %96

96:                                               ; preds = %94, %92
  %97 = phi i8* [ %93, %92 ], [ %95, %94 ]
  %98 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %18, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 (i8*, i32, ...) @error(i8* %97, i32 %99)
  store i32 1, i32* %16, align 4
  br label %182

101:                                              ; preds = %79
  %102 = load i32, i32* %21, align 4
  %103 = load i32, i32* @REF_ISSYMREF, align 4
  %104 = load i32, i32* @REF_ISBROKEN, align 4
  %105 = or i32 %103, %104
  %106 = and i32 %102, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %118, label %108

108:                                              ; preds = %101
  %109 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %18, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i8*, i8** %13, align 8
  %112 = load %struct.commit*, %struct.commit** %11, align 8
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* %8, align 4
  %115 = call i64 @check_branch_commit(i32 %110, i8* %111, %struct.object_id* %12, %struct.commit* %112, i32 %113, i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %108
  store i32 1, i32* %16, align 4
  br label %179

118:                                              ; preds = %108, %101
  %119 = load i8*, i8** %13, align 8
  %120 = call i64 @is_null_oid(%struct.object_id* %12)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %118
  br label %124

123:                                              ; preds = %118
  br label %124

124:                                              ; preds = %123, %122
  %125 = phi %struct.object_id* [ null, %122 ], [ %12, %123 ]
  %126 = load i32, i32* @REF_NO_DEREF, align 4
  %127 = call i64 @delete_ref(i32* null, i8* %119, %struct.object_id* %125, i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %141

129:                                              ; preds = %124
  %130 = load i32, i32* %17, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %129
  %133 = call i8* @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0))
  br label %136

134:                                              ; preds = %129
  %135 = call i8* @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  br label %136

136:                                              ; preds = %134, %132
  %137 = phi i8* [ %133, %132 ], [ %135, %134 ]
  %138 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %18, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 (i8*, i32, ...) @error(i8* %137, i32 %139)
  store i32 1, i32* %16, align 4
  br label %179

141:                                              ; preds = %124
  %142 = load i32, i32* %10, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %175, label %144

144:                                              ; preds = %141
  %145 = load i32, i32* %17, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %144
  %148 = call i8* @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0))
  br label %151

149:                                              ; preds = %144
  %150 = call i8* @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0))
  br label %151

151:                                              ; preds = %149, %147
  %152 = phi i8* [ %148, %147 ], [ %150, %149 ]
  %153 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %18, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %21, align 4
  %156 = load i32, i32* @REF_ISBROKEN, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %151
  br label %172

160:                                              ; preds = %151
  %161 = load i32, i32* %21, align 4
  %162 = load i32, i32* @REF_ISSYMREF, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %160
  %166 = load i8*, i8** %20, align 8
  br label %170

167:                                              ; preds = %160
  %168 = load i32, i32* @DEFAULT_ABBREV, align 4
  %169 = call i8* @find_unique_abbrev(%struct.object_id* %12, i32 %168)
  br label %170

170:                                              ; preds = %167, %165
  %171 = phi i8* [ %166, %165 ], [ %169, %167 ]
  br label %172

172:                                              ; preds = %170, %159
  %173 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), %159 ], [ %171, %170 ]
  %174 = call i32 @printf(i8* %152, i32 %154, i8* %173)
  br label %175

175:                                              ; preds = %172, %141
  %176 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %18, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @delete_branch_config(i32 %177)
  br label %179

179:                                              ; preds = %175, %136, %117
  %180 = load i8*, i8** %20, align 8
  %181 = call i32 @free(i8* %180)
  br label %182

182:                                              ; preds = %179, %96, %70
  %183 = load i32, i32* %15, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %15, align 4
  %185 = call i32 @strbuf_reset(%struct.strbuf* %18)
  br label %45

186:                                              ; preds = %45
  %187 = load i8*, i8** %13, align 8
  %188 = call i32 @free(i8* %187)
  %189 = call i32 @strbuf_release(%struct.strbuf* %18)
  %190 = load i32, i32* %16, align 4
  ret i32 %190
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @die(i8*) #2

declare dso_local i8* @_(i8*) #2

declare dso_local %struct.commit* @lookup_commit_reference(i32, i32*) #2

declare dso_local i32 @strbuf_branchname(%struct.strbuf*, i8*, i32) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i8* @mkpathdup(i8*, i32) #2

declare dso_local %struct.worktree* @find_shared_symref(i8*, i8*) #2

declare dso_local i32 @error(i8*, i32, ...) #2

declare dso_local i8* @resolve_refdup(i8*, i32, %struct.object_id*, i32*) #2

declare dso_local i64 @check_branch_commit(i32, i8*, %struct.object_id*, %struct.commit*, i32, i32) #2

declare dso_local i64 @delete_ref(i32*, i8*, %struct.object_id*, i32) #2

declare dso_local i64 @is_null_oid(%struct.object_id*) #2

declare dso_local i32 @printf(i8*, i32, i8*) #2

declare dso_local i8* @find_unique_abbrev(%struct.object_id*, i32) #2

declare dso_local i32 @delete_branch_config(i32) #2

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
