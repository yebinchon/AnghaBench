; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_remote.c_set_head.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_remote.c_set_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.option = type { i32 }
%struct.ref_states = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"set refs/remotes/<name>/HEAD according to remote\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"delete refs/remotes/<name>/HEAD\00", align 1
@builtin_remote_sethead_usage = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"refs/remotes/%s/HEAD\00", align 1
@GET_HEAD_NAMES = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"Cannot determine remote HEAD\00", align 1
@.str.6 = private unnamed_addr constant [66 x i8] c"Multiple remote HEAD branches. Please choose one explicitly with:\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"  git remote set-head %s %s\0A\00", align 1
@REF_NO_DEREF = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [20 x i8] c"Could not delete %s\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"refs/remotes/%s/%s\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"Not a valid ref: %s\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"remote set-head\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"Could not setup %s\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"%s/HEAD set to %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @set_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_head(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.strbuf, align 4
  %10 = alloca %struct.strbuf, align 4
  %11 = alloca i8*, align 8
  %12 = alloca [3 x %struct.option], align 4
  %13 = alloca %struct.ref_states, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %14 = bitcast %struct.strbuf* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %15 = bitcast %struct.strbuf* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  store i8* null, i8** %11, align 8
  %16 = getelementptr inbounds [3 x %struct.option], [3 x %struct.option]* %12, i64 0, i64 0
  %17 = call i32 @N_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %18 = call i32 @OPT_BOOL(i8 signext 97, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %6, i32 %17)
  %19 = getelementptr inbounds %struct.option, %struct.option* %16, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = getelementptr inbounds %struct.option, %struct.option* %16, i64 1
  %21 = call i32 @N_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %22 = call i32 @OPT_BOOL(i8 signext 100, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* %7, i32 %21)
  %23 = getelementptr inbounds %struct.option, %struct.option* %20, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = getelementptr inbounds %struct.option, %struct.option* %20, i64 1
  %25 = call i32 (...) @OPT_END()
  %26 = getelementptr inbounds %struct.option, %struct.option* %24, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load i8**, i8*** %4, align 8
  %29 = getelementptr inbounds [3 x %struct.option], [3 x %struct.option]* %12, i64 0, i64 0
  %30 = load i32, i32* @builtin_remote_sethead_usage, align 4
  %31 = call i32 @parse_options(i32 %27, i8** %28, i32* null, %struct.option* %29, i32 %30, i32 0)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %2
  %35 = load i8**, i8*** %4, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %9, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* %37)
  br label %39

39:                                               ; preds = %34, %2
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %53, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %3, align 4
  %47 = icmp eq i32 %46, 2
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load i8**, i8*** %4, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 1
  %51 = load i8*, i8** %50, align 8
  %52 = call i8* @xstrdup(i8* %51)
  store i8* %52, i8** %11, align 8
  br label %152

53:                                               ; preds = %45, %42, %39
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %123

56:                                               ; preds = %53
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %123, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* %3, align 4
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %123

62:                                               ; preds = %59
  %63 = call i32 @memset(%struct.ref_states* %13, i32 0, i32 16)
  %64 = load i8**, i8*** %4, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 0
  %66 = load i8*, i8** %65, align 8
  %67 = load i32, i32* @GET_HEAD_NAMES, align 4
  %68 = call i32 @get_remote_ref_states(i8* %66, %struct.ref_states* %13, i32 %67)
  %69 = getelementptr inbounds %struct.ref_states, %struct.ref_states* %13, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %62
  %74 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %75 = call i32 (i32, ...) @error(i32 %74)
  %76 = load i32, i32* %8, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %8, align 4
  br label %121

78:                                               ; preds = %62
  %79 = getelementptr inbounds %struct.ref_states, %struct.ref_states* %13, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp sgt i32 %81, 1
  br i1 %82, label %83, label %112

83:                                               ; preds = %78
  %84 = call i32 @_(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.6, i64 0, i64 0))
  %85 = call i32 (i32, ...) @error(i32 %84)
  %86 = load i32, i32* %8, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %8, align 4
  store i32 0, i32* %5, align 4
  br label %88

88:                                               ; preds = %108, %83
  %89 = load i32, i32* %5, align 4
  %90 = getelementptr inbounds %struct.ref_states, %struct.ref_states* %13, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp slt i32 %89, %92
  br i1 %93, label %94, label %111

94:                                               ; preds = %88
  %95 = load i32, i32* @stderr, align 4
  %96 = load i8**, i8*** %4, align 8
  %97 = getelementptr inbounds i8*, i8** %96, i64 0
  %98 = load i8*, i8** %97, align 8
  %99 = getelementptr inbounds %struct.ref_states, %struct.ref_states* %13, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %100, align 8
  %102 = load i32, i32* %5, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 @fprintf(i32 %95, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i8* %98, i8* %106)
  br label %108

108:                                              ; preds = %94
  %109 = load i32, i32* %5, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %5, align 4
  br label %88

111:                                              ; preds = %88
  br label %120

112:                                              ; preds = %78
  %113 = getelementptr inbounds %struct.ref_states, %struct.ref_states* %13, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i64 0
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = call i8* @xstrdup(i8* %118)
  store i8* %119, i8** %11, align 8
  br label %120

120:                                              ; preds = %112, %111
  br label %121

121:                                              ; preds = %120, %73
  %122 = call i32 @free_remote_ref_states(%struct.ref_states* %13)
  br label %151

123:                                              ; preds = %59, %56, %53
  %124 = load i32, i32* %7, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %146

126:                                              ; preds = %123
  %127 = load i32, i32* %6, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %146, label %129

129:                                              ; preds = %126
  %130 = load i32, i32* %3, align 4
  %131 = icmp eq i32 %130, 1
  br i1 %131, label %132, label %146

132:                                              ; preds = %129
  %133 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @REF_NO_DEREF, align 4
  %136 = call i64 @delete_ref(i32* null, i32 %134, i32* null, i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %132
  %139 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %140 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 (i32, ...) @error(i32 %139, i32 %141)
  %143 = load i32, i32* %8, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %8, align 4
  br label %145

145:                                              ; preds = %138, %132
  br label %150

146:                                              ; preds = %129, %126, %123
  %147 = load i32, i32* @builtin_remote_sethead_usage, align 4
  %148 = getelementptr inbounds [3 x %struct.option], [3 x %struct.option]* %12, i64 0, i64 0
  %149 = call i32 @usage_with_options(i32 %147, %struct.option* %148)
  br label %150

150:                                              ; preds = %146, %145
  br label %151

151:                                              ; preds = %150, %121
  br label %152

152:                                              ; preds = %151, %48
  %153 = load i8*, i8** %11, align 8
  %154 = icmp ne i8* %153, null
  br i1 %154, label %155, label %199

155:                                              ; preds = %152
  %156 = load i8**, i8*** %4, align 8
  %157 = getelementptr inbounds i8*, i8** %156, i64 0
  %158 = load i8*, i8** %157, align 8
  %159 = load i8*, i8** %11, align 8
  %160 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %10, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i8* %158, i8* %159)
  %161 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @ref_exists(i32 %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %172, label %165

165:                                              ; preds = %155
  %166 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  %167 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 (i32, ...) @error(i32 %166, i32 %168)
  %170 = load i32, i32* %8, align 4
  %171 = or i32 %170, %169
  store i32 %171, i32* %8, align 4
  br label %187

172:                                              ; preds = %155
  %173 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = call i64 @create_symref(i32 %174, i32 %176, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0))
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %186

179:                                              ; preds = %172
  %180 = call i32 @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0))
  %181 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = call i32 (i32, ...) @error(i32 %180, i32 %182)
  %184 = load i32, i32* %8, align 4
  %185 = or i32 %184, %183
  store i32 %185, i32* %8, align 4
  br label %186

186:                                              ; preds = %179, %172
  br label %187

187:                                              ; preds = %186, %165
  %188 = load i32, i32* %6, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %196

190:                                              ; preds = %187
  %191 = load i8**, i8*** %4, align 8
  %192 = getelementptr inbounds i8*, i8** %191, i64 0
  %193 = load i8*, i8** %192, align 8
  %194 = load i8*, i8** %11, align 8
  %195 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0), i8* %193, i8* %194)
  br label %196

196:                                              ; preds = %190, %187
  %197 = load i8*, i8** %11, align 8
  %198 = call i32 @free(i8* %197)
  br label %199

199:                                              ; preds = %196, %152
  %200 = call i32 @strbuf_release(%struct.strbuf* %9)
  %201 = call i32 @strbuf_release(%struct.strbuf* %10)
  %202 = load i32, i32* %8, align 4
  ret i32 %202
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @OPT_BOOL(i8 signext, i8*, i32*, i32) #2

declare dso_local i32 @N_(i8*) #2

declare dso_local i32 @OPT_END(...) #2

declare dso_local i32 @parse_options(i32, i8**, i32*, %struct.option*, i32, i32) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*, ...) #2

declare dso_local i8* @xstrdup(i8*) #2

declare dso_local i32 @memset(%struct.ref_states*, i32, i32) #2

declare dso_local i32 @get_remote_ref_states(i8*, %struct.ref_states*, i32) #2

declare dso_local i32 @error(i32, ...) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #2

declare dso_local i32 @free_remote_ref_states(%struct.ref_states*) #2

declare dso_local i64 @delete_ref(i32*, i32, i32*, i32) #2

declare dso_local i32 @usage_with_options(i32, %struct.option*) #2

declare dso_local i32 @ref_exists(i32) #2

declare dso_local i64 @create_symref(i32, i32, i8*) #2

declare dso_local i32 @printf(i8*, i8*, i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
