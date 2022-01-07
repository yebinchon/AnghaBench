; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_mailsplit.c_cmd_mailsplit.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_mailsplit.c_cmd_mailsplit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@cmd_mailsplit.stdin_only = internal global [2 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@git_mailsplit_usage = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"--keep-cr\00", align 1
@keep_cr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"--mboxrd\00", align 1
@mboxrd = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"unknown option: %s\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"cannot split patches from stdin\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"cannot stat %s\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"cannot split patches from %s\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_mailsplit(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.stat, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 4, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i8* null, i8** %12, align 8
  %18 = load i8**, i8*** %6, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 1
  store i8** %19, i8*** %13, align 8
  br label %20

20:                                               ; preds = %133, %3
  %21 = load i8**, i8*** %13, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %136

24:                                               ; preds = %20
  %25 = load i8**, i8*** %13, align 8
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %14, align 8
  %27 = load i8*, i8** %14, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 45
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %136

33:                                               ; preds = %24
  %34 = load i8*, i8** %14, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 100
  br i1 %38, label %39, label %52

39:                                               ; preds = %33
  %40 = load i8*, i8** %14, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 2
  %42 = call i32 @strtol(i8* %41, i32* null, i32 10)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %43, 3
  br i1 %44, label %48, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* %9, align 4
  %47 = icmp sle i32 10, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %45, %39
  %49 = load i32, i32* @git_mailsplit_usage, align 4
  %50 = call i32 @usage(i32 %49)
  br label %51

51:                                               ; preds = %48, %45
  br label %133

52:                                               ; preds = %33
  %53 = load i8*, i8** %14, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 102
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = load i8*, i8** %14, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 2
  %61 = call i32 @strtol(i8* %60, i32* null, i32 10)
  store i32 %61, i32* %8, align 4
  br label %131

62:                                               ; preds = %52
  %63 = load i8*, i8** %14, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 1
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 104
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load i32, i32* @git_mailsplit_usage, align 4
  %70 = call i32 @usage(i32 %69)
  br label %130

71:                                               ; preds = %62
  %72 = load i8*, i8** %14, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 1
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 98
  br i1 %76, label %77, label %83

77:                                               ; preds = %71
  %78 = load i8*, i8** %14, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 2
  %80 = load i8, i8* %79, align 1
  %81 = icmp ne i8 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %77
  store i32 1, i32* %11, align 4
  br label %129

83:                                               ; preds = %77, %71
  %84 = load i8*, i8** %14, align 8
  %85 = call i32 @strcmp(i8* %84, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %83
  store i32 1, i32* @keep_cr, align 4
  br label %128

88:                                               ; preds = %83
  %89 = load i8*, i8** %14, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 1
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 111
  br i1 %93, label %94, label %103

94:                                               ; preds = %88
  %95 = load i8*, i8** %14, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 2
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %94
  %101 = load i8*, i8** %14, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 2
  store i8* %102, i8** %12, align 8
  br label %127

103:                                              ; preds = %94, %88
  %104 = load i8*, i8** %14, align 8
  %105 = call i32 @strcmp(i8* %104, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %103
  store i32 1, i32* @mboxrd, align 4
  br label %126

108:                                              ; preds = %103
  %109 = load i8*, i8** %14, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 1
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp eq i32 %112, 45
  br i1 %113, label %114, label %122

114:                                              ; preds = %108
  %115 = load i8*, i8** %14, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 2
  %117 = load i8, i8* %116, align 1
  %118 = icmp ne i8 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %114
  %120 = load i8**, i8*** %13, align 8
  %121 = getelementptr inbounds i8*, i8** %120, i32 1
  store i8** %121, i8*** %13, align 8
  br label %136

122:                                              ; preds = %114, %108
  %123 = load i8*, i8** %14, align 8
  %124 = call i32 @die(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %123)
  br label %125

125:                                              ; preds = %122
  br label %126

126:                                              ; preds = %125, %107
  br label %127

127:                                              ; preds = %126, %100
  br label %128

128:                                              ; preds = %127, %87
  br label %129

129:                                              ; preds = %128, %82
  br label %130

130:                                              ; preds = %129, %68
  br label %131

131:                                              ; preds = %130, %58
  br label %132

132:                                              ; preds = %131
  br label %133

133:                                              ; preds = %132, %51
  %134 = load i8**, i8*** %13, align 8
  %135 = getelementptr inbounds i8*, i8** %134, i32 1
  store i8** %135, i8*** %13, align 8
  br label %20

136:                                              ; preds = %119, %32, %20
  %137 = load i8*, i8** %12, align 8
  %138 = icmp ne i8* %137, null
  br i1 %138, label %164, label %139

139:                                              ; preds = %136
  %140 = load i32, i32* %5, align 4
  %141 = sext i32 %140 to i64
  %142 = load i8**, i8*** %13, align 8
  %143 = load i8**, i8*** %6, align 8
  %144 = ptrtoint i8** %142 to i64
  %145 = ptrtoint i8** %143 to i64
  %146 = sub i64 %144, %145
  %147 = sdiv exact i64 %146, 8
  %148 = sub nsw i64 %141, %147
  switch i64 %148, label %160 [
    i64 1, label %149
    i64 2, label %153
  ]

149:                                              ; preds = %139
  %150 = load i8**, i8*** %13, align 8
  %151 = getelementptr inbounds i8*, i8** %150, i64 0
  %152 = load i8*, i8** %151, align 8
  store i8* %152, i8** %12, align 8
  store i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @cmd_mailsplit.stdin_only, i64 0, i64 0), i8*** %13, align 8
  br label %163

153:                                              ; preds = %139
  %154 = load i8**, i8*** %13, align 8
  %155 = getelementptr inbounds i8*, i8** %154, i64 0
  %156 = load i8*, i8** %155, align 8
  store i8* %156, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @cmd_mailsplit.stdin_only, i64 0, i64 0), align 16
  %157 = load i8**, i8*** %13, align 8
  %158 = getelementptr inbounds i8*, i8** %157, i64 1
  %159 = load i8*, i8** %158, align 8
  store i8* %159, i8** %12, align 8
  store i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @cmd_mailsplit.stdin_only, i64 0, i64 0), i8*** %13, align 8
  br label %163

160:                                              ; preds = %139
  %161 = load i32, i32* @git_mailsplit_usage, align 4
  %162 = call i32 @usage(i32 %161)
  br label %163

163:                                              ; preds = %160, %153, %149
  br label %170

164:                                              ; preds = %136
  %165 = load i8**, i8*** %13, align 8
  %166 = load i8*, i8** %165, align 8
  %167 = icmp ne i8* %166, null
  br i1 %167, label %169, label %168

168:                                              ; preds = %164
  store i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @cmd_mailsplit.stdin_only, i64 0, i64 0), i8*** %13, align 8
  br label %169

169:                                              ; preds = %168, %164
  br label %170

170:                                              ; preds = %169, %163
  br label %171

171:                                              ; preds = %239, %201, %170
  %172 = load i8**, i8*** %13, align 8
  %173 = load i8*, i8** %172, align 8
  %174 = icmp ne i8* %173, null
  br i1 %174, label %175, label %246

175:                                              ; preds = %171
  %176 = load i8**, i8*** %13, align 8
  %177 = getelementptr inbounds i8*, i8** %176, i32 1
  store i8** %177, i8*** %13, align 8
  %178 = load i8*, i8** %176, align 8
  store i8* %178, i8** %15, align 8
  store i32 0, i32* %17, align 4
  %179 = load i8*, i8** %15, align 8
  %180 = getelementptr inbounds i8, i8* %179, i64 0
  %181 = load i8, i8* %180, align 1
  %182 = sext i8 %181 to i32
  %183 = icmp eq i32 %182, 45
  br i1 %183, label %184, label %208

184:                                              ; preds = %175
  %185 = load i8*, i8** %15, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 1
  %187 = load i8, i8* %186, align 1
  %188 = sext i8 %187 to i32
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %208

190:                                              ; preds = %184
  %191 = load i8*, i8** %15, align 8
  %192 = load i8*, i8** %12, align 8
  %193 = load i32, i32* %11, align 4
  %194 = load i32, i32* %9, align 4
  %195 = load i32, i32* %8, align 4
  %196 = call i32 @split_mbox(i8* %191, i8* %192, i32 %193, i32 %194, i32 %195)
  store i32 %196, i32* %17, align 4
  %197 = load i32, i32* %17, align 4
  %198 = icmp slt i32 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %190
  %200 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %249

201:                                              ; preds = %190
  %202 = load i32, i32* %17, align 4
  %203 = load i32, i32* %8, align 4
  %204 = sub nsw i32 %202, %203
  %205 = load i32, i32* %10, align 4
  %206 = add nsw i32 %205, %204
  store i32 %206, i32* %10, align 4
  %207 = load i32, i32* %17, align 4
  store i32 %207, i32* %8, align 4
  br label %171

208:                                              ; preds = %184, %175
  %209 = load i8*, i8** %15, align 8
  %210 = call i32 @stat(i8* %209, %struct.stat* %16)
  %211 = icmp eq i32 %210, -1
  br i1 %211, label %212, label %215

212:                                              ; preds = %208
  %213 = load i8*, i8** %15, align 8
  %214 = call i32 @error_errno(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* %213)
  store i32 1, i32* %4, align 4
  br label %249

215:                                              ; preds = %208
  %216 = getelementptr inbounds %struct.stat, %struct.stat* %16, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = call i64 @S_ISDIR(i32 %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %226

220:                                              ; preds = %215
  %221 = load i8*, i8** %15, align 8
  %222 = load i8*, i8** %12, align 8
  %223 = load i32, i32* %9, align 4
  %224 = load i32, i32* %8, align 4
  %225 = call i32 @split_maildir(i8* %221, i8* %222, i32 %223, i32 %224)
  store i32 %225, i32* %17, align 4
  br label %233

226:                                              ; preds = %215
  %227 = load i8*, i8** %15, align 8
  %228 = load i8*, i8** %12, align 8
  %229 = load i32, i32* %11, align 4
  %230 = load i32, i32* %9, align 4
  %231 = load i32, i32* %8, align 4
  %232 = call i32 @split_mbox(i8* %227, i8* %228, i32 %229, i32 %230, i32 %231)
  store i32 %232, i32* %17, align 4
  br label %233

233:                                              ; preds = %226, %220
  %234 = load i32, i32* %17, align 4
  %235 = icmp slt i32 %234, 0
  br i1 %235, label %236, label %239

236:                                              ; preds = %233
  %237 = load i8*, i8** %15, align 8
  %238 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i8* %237)
  store i32 1, i32* %4, align 4
  br label %249

239:                                              ; preds = %233
  %240 = load i32, i32* %17, align 4
  %241 = load i32, i32* %8, align 4
  %242 = sub nsw i32 %240, %241
  %243 = load i32, i32* %10, align 4
  %244 = add nsw i32 %243, %242
  store i32 %244, i32* %10, align 4
  %245 = load i32, i32* %17, align 4
  store i32 %245, i32* %8, align 4
  br label %171

246:                                              ; preds = %171
  %247 = load i32, i32* %10, align 4
  %248 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 %247)
  store i32 0, i32* %4, align 4
  br label %249

249:                                              ; preds = %246, %236, %212, %199
  %250 = load i32, i32* %4, align 4
  ret i32 %250
}

declare dso_local i32 @strtol(i8*, i32*, i32) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @die(i8*, i8*) #1

declare dso_local i32 @split_mbox(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @error_errno(i8*, i8*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @split_maildir(i8*, i8*, i32, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
