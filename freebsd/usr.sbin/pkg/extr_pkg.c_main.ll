; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pkg/extr_pkg.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pkg/extr_pkg.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"%s/sbin/pkg\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"LOCALBASE\00", align 1
@_LOCALBASE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"bootstrap\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-f\00", align 1
@X_OK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"-N\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"pkg is not installed\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"Path to pkg.txz required\0A\00", align 1
@R_OK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"No such file: %s\0A\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@ASSUME_ALWAYS_YES = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [3 x i8] c"-y\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"--yes\00", align 1
@stdin = common dso_local global i32 0, align 4
@non_interactive_message = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@confirmation_message = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [32 x i8] c"pkg already bootstrapped at %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load i32, i32* @MAXPATHLEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i8* null, i8** %8, align 8
  store i32 0, i32* %12, align 4
  %17 = load i32, i32* @MAXPATHLEN, align 4
  %18 = call i8* @getenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = call i8* @getenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %24

22:                                               ; preds = %2
  %23 = load i8*, i8** @_LOCALBASE, align 8
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i8* [ %21, %20 ], [ %23, %22 ]
  %26 = call i32 @snprintf(i8* %16, i32 %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = load i32, i32* %4, align 4
  %28 = icmp sgt i32 %27, 1
  br i1 %28, label %29, label %46

29:                                               ; preds = %24
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i64 @strcmp(i8* %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %29
  store i32 1, i32* %10, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp eq i32 %36, 3
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load i8**, i8*** %5, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 2
  %41 = load i8*, i8** %40, align 8
  %42 = call i64 @strcmp(i8* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i32 1, i32* %11, align 4
  br label %45

45:                                               ; preds = %44, %38, %35
  br label %46

46:                                               ; preds = %45, %29, %24
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %49, %46
  %53 = load i32, i32* @X_OK, align 4
  %54 = call i32 @access(i8* %16, i32 %53)
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %197

56:                                               ; preds = %52, %49
  %57 = load i8**, i8*** %5, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 1
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %70

61:                                               ; preds = %56
  %62 = load i8**, i8*** %5, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 1
  %64 = load i8*, i8** %63, align 8
  %65 = call i64 @strcmp(i8* %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i32, i32* @EXIT_FAILURE, align 4
  %69 = call i32 @errx(i32 %68, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  br label %70

70:                                               ; preds = %67, %61, %56
  %71 = call i32 (...) @config_init()
  %72 = load i32, i32* %4, align 4
  %73 = icmp sgt i32 %72, 1
  br i1 %73, label %74, label %127

74:                                               ; preds = %70
  %75 = load i8**, i8*** %5, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i64 1
  %77 = load i8*, i8** %76, align 8
  %78 = call i64 @strcmp(i8* %77, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %127

80:                                               ; preds = %74
  %81 = load i32, i32* %4, align 4
  %82 = icmp sgt i32 %81, 2
  br i1 %82, label %83, label %93

83:                                               ; preds = %80
  %84 = load i8**, i8*** %5, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i64 2
  %86 = load i8*, i8** %85, align 8
  %87 = call i64 @strcmp(i8* %86, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %83
  store i32 1, i32* %11, align 4
  %90 = load i8**, i8*** %5, align 8
  %91 = getelementptr inbounds i8*, i8** %90, i64 3
  %92 = load i8*, i8** %91, align 8
  store i8* %92, i8** %8, align 8
  br label %97

93:                                               ; preds = %83, %80
  %94 = load i8**, i8*** %5, align 8
  %95 = getelementptr inbounds i8*, i8** %94, i64 2
  %96 = load i8*, i8** %95, align 8
  store i8* %96, i8** %8, align 8
  br label %97

97:                                               ; preds = %93, %89
  %98 = load i8*, i8** %8, align 8
  %99 = icmp eq i8* %98, null
  br i1 %99, label %100, label %105

100:                                              ; preds = %97
  %101 = load i32, i32* @stderr, align 4
  %102 = call i32 (i32, i8*, ...) @fprintf(i32 %101, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %103 = load i32, i32* @EXIT_FAILURE, align 4
  %104 = call i32 @exit(i32 %103) #4
  unreachable

105:                                              ; preds = %97
  %106 = load i8*, i8** %8, align 8
  %107 = load i32, i32* @R_OK, align 4
  %108 = call i32 @access(i8* %106, i32 %107)
  %109 = icmp eq i32 %108, -1
  br i1 %109, label %110, label %116

110:                                              ; preds = %105
  %111 = load i32, i32* @stderr, align 4
  %112 = load i8*, i8** %8, align 8
  %113 = call i32 (i32, i8*, ...) @fprintf(i32 %111, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i8* %112)
  %114 = load i32, i32* @EXIT_FAILURE, align 4
  %115 = call i32 @exit(i32 %114) #4
  unreachable

116:                                              ; preds = %105
  %117 = load i8*, i8** %8, align 8
  %118 = load i32, i32* %11, align 4
  %119 = call i64 @bootstrap_pkg_local(i8* %117, i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %116
  %122 = load i32, i32* @EXIT_FAILURE, align 4
  %123 = call i32 @exit(i32 %122) #4
  unreachable

124:                                              ; preds = %116
  %125 = load i32, i32* @EXIT_SUCCESS, align 4
  %126 = call i32 @exit(i32 %125) #4
  unreachable

127:                                              ; preds = %74, %70
  %128 = load i32, i32* @ASSUME_ALWAYS_YES, align 4
  %129 = call i32 @config_bool(i32 %128, i32* %12)
  %130 = load i32, i32* %12, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %159, label %132

132:                                              ; preds = %127
  store i32 1, i32* %9, align 4
  br label %133

133:                                              ; preds = %155, %132
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* %4, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %158

137:                                              ; preds = %133
  %138 = load i8**, i8*** %5, align 8
  %139 = load i32, i32* %9, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8*, i8** %138, i64 %140
  %142 = load i8*, i8** %141, align 8
  %143 = call i64 @strcmp(i8* %142, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %153, label %145

145:                                              ; preds = %137
  %146 = load i8**, i8*** %5, align 8
  %147 = load i32, i32* %9, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8*, i8** %146, i64 %148
  %150 = load i8*, i8** %149, align 8
  %151 = call i64 @strcmp(i8* %150, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %145, %137
  store i32 1, i32* %12, align 4
  br label %158

154:                                              ; preds = %145
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %9, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %9, align 4
  br label %133

158:                                              ; preds = %153, %133
  br label %159

159:                                              ; preds = %158, %127
  %160 = load i32, i32* %12, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %182, label %162

162:                                              ; preds = %159
  %163 = load i32, i32* @stdin, align 4
  %164 = call i32 @fileno(i32 %163)
  %165 = call i32 @isatty(i32 %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %173, label %167

167:                                              ; preds = %162
  %168 = load i32, i32* @stderr, align 4
  %169 = load i8*, i8** @non_interactive_message, align 8
  %170 = call i32 (i32, i8*, ...) @fprintf(i32 %168, i8* %169)
  %171 = load i32, i32* @EXIT_FAILURE, align 4
  %172 = call i32 @exit(i32 %171) #4
  unreachable

173:                                              ; preds = %162
  %174 = load i8*, i8** @confirmation_message, align 8
  %175 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* %174)
  %176 = call i64 (...) @pkg_query_yes_no()
  %177 = icmp eq i64 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %173
  %179 = load i32, i32* @EXIT_FAILURE, align 4
  %180 = call i32 @exit(i32 %179) #4
  unreachable

181:                                              ; preds = %173
  br label %182

182:                                              ; preds = %181, %159
  %183 = load i32, i32* %11, align 4
  %184 = call i64 @bootstrap_pkg(i32 %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %182
  %187 = load i32, i32* @EXIT_FAILURE, align 4
  %188 = call i32 @exit(i32 %187) #4
  unreachable

189:                                              ; preds = %182
  %190 = call i32 (...) @config_finish()
  %191 = load i32, i32* %10, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %189
  %194 = load i32, i32* @EXIT_SUCCESS, align 4
  %195 = call i32 @exit(i32 %194) #4
  unreachable

196:                                              ; preds = %189
  br label %205

197:                                              ; preds = %52
  %198 = load i32, i32* %10, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %197
  %201 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0), i8* %16)
  %202 = load i32, i32* @EXIT_SUCCESS, align 4
  %203 = call i32 @exit(i32 %202) #4
  unreachable

204:                                              ; preds = %197
  br label %205

205:                                              ; preds = %204, %196
  %206 = load i8**, i8*** %5, align 8
  %207 = call i32 @execv(i8* %16, i8** %206)
  %208 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %208, i32* %3, align 4
  %209 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %209)
  %210 = load i32, i32* %3, align 4
  ret i32 %210
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i8* @getenv(i8*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @access(i8*, i32) #2

declare dso_local i32 @errx(i32, i8*) #2

declare dso_local i32 @config_init(...) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i64 @bootstrap_pkg_local(i8*, i32) #2

declare dso_local i32 @config_bool(i32, i32*) #2

declare dso_local i32 @isatty(i32) #2

declare dso_local i32 @fileno(i32) #2

declare dso_local i32 @printf(i8*, i8*) #2

declare dso_local i64 @pkg_query_yes_no(...) #2

declare dso_local i64 @bootstrap_pkg(i32) #2

declare dso_local i32 @config_finish(...) #2

declare dso_local i32 @execv(i8*, i8**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
