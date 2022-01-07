; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_remote.c_set_url.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_remote.c_set_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.remote = type { i8**, i32, i8**, i32 }
%struct.option = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [5 x i8] c"push\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"manipulate push URLs\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"add URL\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"delete URLs\00", align 1
@builtin_remote_seturl_usage = common dso_local global i32 0, align 4
@PARSE_OPT_KEEP_ARGV0 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"--add --delete doesn't make sense\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"No such remote '%s'\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"remote.%s.pushurl\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"remote.%s.url\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"^$\00", align 1
@REG_EXTENDED = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [28 x i8] c"Invalid old URL pattern: %s\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"No such URL found: %s\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"Will not delete all non-push URLs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @set_url to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_url(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.remote*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8**, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.strbuf, align 4
  %19 = alloca [4 x %struct.option], align 16
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  %20 = bitcast %struct.strbuf* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %21 = getelementptr inbounds [4 x %struct.option], [4 x %struct.option]* %19, i64 0, i64 0
  %22 = call i32 @N_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %23 = call i32 @OPT_BOOL(i8 signext 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %6, i32 %22)
  %24 = getelementptr inbounds %struct.option, %struct.option* %21, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds %struct.option, %struct.option* %21, i64 1
  %26 = call i32 @N_(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %27 = call i32 @OPT_BOOL(i8 signext 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32* %7, i32 %26)
  %28 = getelementptr inbounds %struct.option, %struct.option* %25, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds %struct.option, %struct.option* %25, i64 1
  %30 = call i32 @N_(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %31 = call i32 @OPT_BOOL(i8 signext 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32* %8, i32 %30)
  %32 = getelementptr inbounds %struct.option, %struct.option* %29, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = getelementptr inbounds %struct.option, %struct.option* %29, i64 1
  %34 = call i32 (...) @OPT_END()
  %35 = getelementptr inbounds %struct.option, %struct.option* %33, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* %3, align 4
  %37 = load i8**, i8*** %4, align 8
  %38 = getelementptr inbounds [4 x %struct.option], [4 x %struct.option]* %19, i64 0, i64 0
  %39 = load i32, i32* @builtin_remote_seturl_usage, align 4
  %40 = load i32, i32* @PARSE_OPT_KEEP_ARGV0, align 4
  %41 = call i32 @parse_options(i32 %36, i8** %37, i32* null, %struct.option* %38, i32 %39, i32 %40)
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %2
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  %49 = call i32 (i32, ...) @die(i32 %48)
  br label %50

50:                                               ; preds = %47, %44, %2
  %51 = load i32, i32* %3, align 4
  %52 = icmp slt i32 %51, 3
  br i1 %52, label %65, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %3, align 4
  %55 = icmp sgt i32 %54, 4
  br i1 %55, label %65, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %59, %56
  %63 = load i32, i32* %3, align 4
  %64 = icmp ne i32 %63, 3
  br i1 %64, label %65, label %69

65:                                               ; preds = %62, %53, %50
  %66 = load i32, i32* @builtin_remote_seturl_usage, align 4
  %67 = getelementptr inbounds [4 x %struct.option], [4 x %struct.option]* %19, i64 0, i64 0
  %68 = call i32 @usage_with_options(i32 %66, %struct.option* %67)
  br label %69

69:                                               ; preds = %65, %62, %59
  %70 = load i8**, i8*** %4, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 1
  %72 = load i8*, i8** %71, align 8
  store i8* %72, i8** %11, align 8
  %73 = load i8**, i8*** %4, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 2
  %75 = load i8*, i8** %74, align 8
  store i8* %75, i8** %12, align 8
  %76 = load i32, i32* %3, align 4
  %77 = icmp sgt i32 %76, 3
  br i1 %77, label %78, label %82

78:                                               ; preds = %69
  %79 = load i8**, i8*** %4, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 3
  %81 = load i8*, i8** %80, align 8
  store i8* %81, i8** %13, align 8
  br label %82

82:                                               ; preds = %78, %69
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = load i8*, i8** %12, align 8
  store i8* %86, i8** %13, align 8
  br label %87

87:                                               ; preds = %85, %82
  %88 = load i8*, i8** %11, align 8
  %89 = call %struct.remote* @remote_get(i8* %88)
  store %struct.remote* %89, %struct.remote** %14, align 8
  %90 = load %struct.remote*, %struct.remote** %14, align 8
  %91 = call i32 @remote_is_configured(%struct.remote* %90, i32 1)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %87
  %94 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %95 = load i8*, i8** %11, align 8
  %96 = call i32 (i32, ...) @die(i32 %94, i8* %95)
  br label %97

97:                                               ; preds = %93, %87
  %98 = load i32, i32* %6, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %97
  %101 = load i8*, i8** %11, align 8
  %102 = call i32 @strbuf_addf(%struct.strbuf* %18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i8* %101)
  %103 = load %struct.remote*, %struct.remote** %14, align 8
  %104 = getelementptr inbounds %struct.remote, %struct.remote* %103, i32 0, i32 0
  %105 = load i8**, i8*** %104, align 8
  store i8** %105, i8*** %16, align 8
  %106 = load %struct.remote*, %struct.remote** %14, align 8
  %107 = getelementptr inbounds %struct.remote, %struct.remote* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  store i32 %108, i32* %17, align 4
  br label %118

109:                                              ; preds = %97
  %110 = load i8*, i8** %11, align 8
  %111 = call i32 @strbuf_addf(%struct.strbuf* %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* %110)
  %112 = load %struct.remote*, %struct.remote** %14, align 8
  %113 = getelementptr inbounds %struct.remote, %struct.remote* %112, i32 0, i32 2
  %114 = load i8**, i8*** %113, align 8
  store i8** %114, i8*** %16, align 8
  %115 = load %struct.remote*, %struct.remote** %14, align 8
  %116 = getelementptr inbounds %struct.remote, %struct.remote* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  store i32 %117, i32* %17, align 4
  br label %118

118:                                              ; preds = %109, %100
  %119 = load i8*, i8** %13, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %124, label %121

121:                                              ; preds = %118
  %122 = load i32, i32* %8, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %121, %118
  %125 = load i32, i32* %7, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %141

127:                                              ; preds = %124, %121
  %128 = load i32, i32* %7, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %127
  %131 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %18, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i8*, i8** %12, align 8
  %134 = call i32 @git_config_set_multivar(i32 %132, i8* %133, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i32 0)
  br label %140

135:                                              ; preds = %127
  %136 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %18, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i8*, i8** %12, align 8
  %139 = call i32 @git_config_set(i32 %137, i8* %138)
  br label %140

140:                                              ; preds = %135, %130
  br label %211

141:                                              ; preds = %124
  %142 = load i8*, i8** %13, align 8
  %143 = load i32, i32* @REG_EXTENDED, align 4
  %144 = call i64 @regcomp(i32* %15, i8* %142, i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %141
  %147 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0))
  %148 = load i8*, i8** %13, align 8
  %149 = call i32 (i32, ...) @die(i32 %147, i8* %148)
  br label %150

150:                                              ; preds = %146, %141
  store i32 0, i32* %5, align 4
  br label %151

151:                                              ; preds = %170, %150
  %152 = load i32, i32* %5, align 4
  %153 = load i32, i32* %17, align 4
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %155, label %173

155:                                              ; preds = %151
  %156 = load i8**, i8*** %16, align 8
  %157 = load i32, i32* %5, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8*, i8** %156, i64 %158
  %160 = load i8*, i8** %159, align 8
  %161 = call i32 @regexec(i32* %15, i8* %160, i32 0, i32* null, i32 0)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %166, label %163

163:                                              ; preds = %155
  %164 = load i32, i32* %9, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %9, align 4
  br label %169

166:                                              ; preds = %155
  %167 = load i32, i32* %10, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %10, align 4
  br label %169

169:                                              ; preds = %166, %163
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %5, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %5, align 4
  br label %151

173:                                              ; preds = %151
  %174 = load i32, i32* %8, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %183, label %176

176:                                              ; preds = %173
  %177 = load i32, i32* %9, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %183, label %179

179:                                              ; preds = %176
  %180 = call i32 @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0))
  %181 = load i8*, i8** %13, align 8
  %182 = call i32 (i32, ...) @die(i32 %180, i8* %181)
  br label %183

183:                                              ; preds = %179, %176, %173
  %184 = load i32, i32* %8, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %195

186:                                              ; preds = %183
  %187 = load i32, i32* %10, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %195, label %189

189:                                              ; preds = %186
  %190 = load i32, i32* %6, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %195, label %192

192:                                              ; preds = %189
  %193 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0))
  %194 = call i32 (i32, ...) @die(i32 %193)
  br label %195

195:                                              ; preds = %192, %189, %186, %183
  %196 = call i32 @regfree(i32* %15)
  %197 = load i32, i32* %8, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %205, label %199

199:                                              ; preds = %195
  %200 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %18, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load i8*, i8** %12, align 8
  %203 = load i8*, i8** %13, align 8
  %204 = call i32 @git_config_set_multivar(i32 %201, i8* %202, i8* %203, i32 0)
  br label %210

205:                                              ; preds = %195
  %206 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %18, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load i8*, i8** %13, align 8
  %209 = call i32 @git_config_set_multivar(i32 %207, i8* null, i8* %208, i32 1)
  br label %210

210:                                              ; preds = %205, %199
  br label %211

211:                                              ; preds = %210, %140
  %212 = call i32 @strbuf_release(%struct.strbuf* %18)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @OPT_BOOL(i8 signext, i8*, i32*, i32) #2

declare dso_local i32 @N_(i8*) #2

declare dso_local i32 @OPT_END(...) #2

declare dso_local i32 @parse_options(i32, i8**, i32*, %struct.option*, i32, i32) #2

declare dso_local i32 @die(i32, ...) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @usage_with_options(i32, %struct.option*) #2

declare dso_local %struct.remote* @remote_get(i8*) #2

declare dso_local i32 @remote_is_configured(%struct.remote*, i32) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*) #2

declare dso_local i32 @git_config_set_multivar(i32, i8*, i8*, i32) #2

declare dso_local i32 @git_config_set(i32, i8*) #2

declare dso_local i64 @regcomp(i32*, i8*, i32) #2

declare dso_local i32 @regexec(i32*, i8*, i32, i32*, i32) #2

declare dso_local i32 @regfree(i32*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
