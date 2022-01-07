; ModuleID = '/home/carl/AnghaBench/git/extr_branch.c_create_branch.c'
source_filename = "/home/carl/AnghaBench/git/extr_branch.c_create_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8* }
%struct.repository = type { i32 }
%struct.commit = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.object_id = type { i32 }
%struct.ref_transaction = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@BRANCH_TRACK_EXPLICIT = common dso_local global i32 0, align 4
@BRANCH_TRACK_OVERRIDE = common dso_local global i32 0, align 4
@advice_set_upstream_failure = common dso_local global i64 0, align 8
@upstream_missing = common dso_local global i8* null, align 8
@upstream_advice = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"Not a valid object name: '%s'.\00", align 1
@upstream_not_branch = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"refs/heads/\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Ambiguous object name: '%s'.\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Not a valid branch point: '%s'.\00", align 1
@LOG_REFS_NORMAL = common dso_local global i32 0, align 4
@log_all_ref_updates = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"branch: Reset to %s\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"branch: Created from %s\00", align 1
@null_oid = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @create_branch(%struct.repository* %0, i8* %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.repository*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.commit*, align 8
  %18 = alloca %struct.object_id, align 4
  %19 = alloca i8*, align 8
  %20 = alloca %struct.strbuf, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.ref_transaction*, align 8
  %25 = alloca %struct.strbuf, align 8
  %26 = alloca i8*, align 8
  store %struct.repository* %0, %struct.repository** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %27 = bitcast %struct.strbuf* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %28 = load i32, i32* %16, align 4
  %29 = load i32, i32* @BRANCH_TRACK_EXPLICIT, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %8
  %32 = load i32, i32* %16, align 4
  %33 = load i32, i32* @BRANCH_TRACK_OVERRIDE, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31, %8
  store i32 1, i32* %23, align 4
  br label %36

36:                                               ; preds = %35, %31
  %37 = load i32, i32* %16, align 4
  %38 = load i32, i32* @BRANCH_TRACK_OVERRIDE, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40, %36
  %44 = load i8*, i8** %10, align 8
  %45 = call i64 @validate_branchname(i8* %44, %struct.strbuf* %20)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %52, label %58

47:                                               ; preds = %40
  %48 = load i8*, i8** %10, align 8
  %49 = load i32, i32* %12, align 4
  %50 = call i64 @validate_new_branchname(i8* %48, %struct.strbuf* %20, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %47, %43
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  store i32 1, i32* %22, align 4
  br label %57

56:                                               ; preds = %52
  store i32 1, i32* %21, align 4
  br label %57

57:                                               ; preds = %56, %55
  br label %58

58:                                               ; preds = %57, %47, %43
  store i8* null, i8** %19, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = call i64 @get_oid_mb(i8* %59, %struct.object_id* %18)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %86

62:                                               ; preds = %58
  %63 = load i32, i32* %23, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %82

65:                                               ; preds = %62
  %66 = load i64, i64* @advice_set_upstream_failure, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %65
  %69 = load i8*, i8** @upstream_missing, align 8
  %70 = call i8* @_(i8* %69)
  %71 = load i8*, i8** %11, align 8
  %72 = call i32 @error(i8* %70, i8* %71)
  %73 = load i8*, i8** @upstream_advice, align 8
  %74 = call i8* @_(i8* %73)
  %75 = call i32 @advise(i8* %74)
  %76 = call i32 @exit(i32 1) #4
  unreachable

77:                                               ; preds = %65
  %78 = load i8*, i8** @upstream_missing, align 8
  %79 = call i8* @_(i8* %78)
  %80 = load i8*, i8** %11, align 8
  %81 = call i32 @die(i8* %79, i8* %80)
  br label %82

82:                                               ; preds = %77, %62
  %83 = call i8* @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %84 = load i8*, i8** %11, align 8
  %85 = call i32 @die(i8* %83, i8* %84)
  br label %86

86:                                               ; preds = %82, %58
  %87 = load i8*, i8** %11, align 8
  %88 = load i8*, i8** %11, align 8
  %89 = call i32 @strlen(i8* %88)
  %90 = call i32 @dwim_ref(i8* %87, i32 %89, %struct.object_id* %18, i8** %19)
  switch i32 %90, label %119 [
    i32 0, label %91
    i32 1, label %100
  ]

91:                                               ; preds = %86
  %92 = load i32, i32* %23, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %91
  %95 = load i8*, i8** @upstream_not_branch, align 8
  %96 = call i8* @_(i8* %95)
  %97 = load i8*, i8** %11, align 8
  %98 = call i32 @die(i8* %96, i8* %97)
  br label %99

99:                                               ; preds = %94, %91
  br label %123

100:                                              ; preds = %86
  %101 = load i8*, i8** %19, align 8
  %102 = call i32 @starts_with(i8* %101, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %118, label %104

104:                                              ; preds = %100
  %105 = load i8*, i8** %19, align 8
  %106 = call i32 @validate_remote_tracking_branch(i8* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %118

108:                                              ; preds = %104
  %109 = load i32, i32* %23, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %108
  %112 = load i8*, i8** @upstream_not_branch, align 8
  %113 = call i8* @_(i8* %112)
  %114 = load i8*, i8** %11, align 8
  %115 = call i32 @die(i8* %113, i8* %114)
  br label %117

116:                                              ; preds = %108
  store i8* null, i8** %19, align 8
  br label %117

117:                                              ; preds = %116, %111
  br label %118

118:                                              ; preds = %117, %104, %100
  br label %123

119:                                              ; preds = %86
  %120 = call i8* @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %121 = load i8*, i8** %11, align 8
  %122 = call i32 @die(i8* %120, i8* %121)
  br label %123

123:                                              ; preds = %119, %118, %99
  %124 = load %struct.repository*, %struct.repository** %9, align 8
  %125 = call %struct.commit* @lookup_commit_reference(%struct.repository* %124, %struct.object_id* %18)
  store %struct.commit* %125, %struct.commit** %17, align 8
  %126 = icmp eq %struct.commit* %125, null
  br i1 %126, label %127, label %131

127:                                              ; preds = %123
  %128 = call i8* @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %129 = load i8*, i8** %11, align 8
  %130 = call i32 @die(i8* %128, i8* %129)
  br label %131

131:                                              ; preds = %127, %123
  %132 = load %struct.commit*, %struct.commit** %17, align 8
  %133 = getelementptr inbounds %struct.commit, %struct.commit* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = call i32 @oidcpy(%struct.object_id* %18, i32* %134)
  %136 = load i32, i32* %14, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %131
  %139 = load i32, i32* @LOG_REFS_NORMAL, align 4
  store i32 %139, i32* @log_all_ref_updates, align 4
  br label %140

140:                                              ; preds = %138, %131
  %141 = load i32, i32* %22, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %182, label %143

143:                                              ; preds = %140
  %144 = bitcast %struct.strbuf* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %144, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %145 = load i32, i32* %21, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %143
  %148 = load i8*, i8** %11, align 8
  %149 = call i8* @xstrfmt(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* %148)
  store i8* %149, i8** %26, align 8
  br label %153

150:                                              ; preds = %143
  %151 = load i8*, i8** %11, align 8
  %152 = call i8* @xstrfmt(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i8* %151)
  store i8* %152, i8** %26, align 8
  br label %153

153:                                              ; preds = %150, %147
  %154 = call %struct.ref_transaction* @ref_transaction_begin(%struct.strbuf* %25)
  store %struct.ref_transaction* %154, %struct.ref_transaction** %24, align 8
  %155 = load %struct.ref_transaction*, %struct.ref_transaction** %24, align 8
  %156 = icmp ne %struct.ref_transaction* %155, null
  br i1 %156, label %157, label %172

157:                                              ; preds = %153
  %158 = load %struct.ref_transaction*, %struct.ref_transaction** %24, align 8
  %159 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %20, i32 0, i32 0
  %160 = load i8*, i8** %159, align 8
  %161 = load i32, i32* %21, align 4
  %162 = icmp ne i32 %161, 0
  %163 = zext i1 %162 to i64
  %164 = select i1 %162, i32* null, i32* @null_oid
  %165 = load i8*, i8** %26, align 8
  %166 = call i64 @ref_transaction_update(%struct.ref_transaction* %158, i8* %160, %struct.object_id* %18, i32* %164, i32 0, i8* %165, %struct.strbuf* %25)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %172, label %168

168:                                              ; preds = %157
  %169 = load %struct.ref_transaction*, %struct.ref_transaction** %24, align 8
  %170 = call i64 @ref_transaction_commit(%struct.ref_transaction* %169, %struct.strbuf* %25)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %168, %157, %153
  %173 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %25, i32 0, i32 0
  %174 = load i8*, i8** %173, align 8
  %175 = call i32 @die(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %174)
  br label %176

176:                                              ; preds = %172, %168
  %177 = load %struct.ref_transaction*, %struct.ref_transaction** %24, align 8
  %178 = call i32 @ref_transaction_free(%struct.ref_transaction* %177)
  %179 = call i32 @strbuf_release(%struct.strbuf* %25)
  %180 = load i8*, i8** %26, align 8
  %181 = call i32 @free(i8* %180)
  br label %182

182:                                              ; preds = %176, %140
  %183 = load i8*, i8** %19, align 8
  %184 = icmp ne i8* %183, null
  br i1 %184, label %185, label %196

185:                                              ; preds = %182
  %186 = load i32, i32* %16, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %196

188:                                              ; preds = %185
  %189 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %20, i32 0, i32 0
  %190 = load i8*, i8** %189, align 8
  %191 = getelementptr inbounds i8, i8* %190, i64 11
  %192 = load i8*, i8** %19, align 8
  %193 = load i32, i32* %16, align 4
  %194 = load i32, i32* %15, align 4
  %195 = call i32 @setup_tracking(i8* %191, i8* %192, i32 %193, i32 %194)
  br label %196

196:                                              ; preds = %188, %185, %182
  %197 = call i32 @strbuf_release(%struct.strbuf* %20)
  %198 = load i8*, i8** %19, align 8
  %199 = call i32 @free(i8* %198)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @validate_branchname(i8*, %struct.strbuf*) #2

declare dso_local i64 @validate_new_branchname(i8*, %struct.strbuf*, i32) #2

declare dso_local i64 @get_oid_mb(i8*, %struct.object_id*) #2

declare dso_local i32 @error(i8*, i8*) #2

declare dso_local i8* @_(i8*) #2

declare dso_local i32 @advise(i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @die(i8*, i8*) #2

declare dso_local i32 @dwim_ref(i8*, i32, %struct.object_id*, i8**) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @starts_with(i8*, i8*) #2

declare dso_local i32 @validate_remote_tracking_branch(i8*) #2

declare dso_local %struct.commit* @lookup_commit_reference(%struct.repository*, %struct.object_id*) #2

declare dso_local i32 @oidcpy(%struct.object_id*, i32*) #2

declare dso_local i8* @xstrfmt(i8*, i8*) #2

declare dso_local %struct.ref_transaction* @ref_transaction_begin(%struct.strbuf*) #2

declare dso_local i64 @ref_transaction_update(%struct.ref_transaction*, i8*, %struct.object_id*, i32*, i32, i8*, %struct.strbuf*) #2

declare dso_local i64 @ref_transaction_commit(%struct.ref_transaction*, %struct.strbuf*) #2

declare dso_local i32 @ref_transaction_free(%struct.ref_transaction*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @setup_tracking(i8*, i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
