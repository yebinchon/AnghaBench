; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_fio.c_expand.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_fio.c_expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@PATHSIZE = common dso_local global i32 0, align 4
@myname = common dso_local global i8* null, align 8
@prevfile = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"No previous file\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"MBOX\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"~/mbox\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@homedir = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"~{[*?$`'\22\\\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"pipe\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"echo %s\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"SHELL\00", align 1
@_PATH_CSHELL = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@BUFSIZ = common dso_local global i32 0, align 4
@wait_status = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [25 x i8] c"\22%s\22: Expansion failed.\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"\22%s\22: No match.\0A\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"\22%s\22: Expansion buffer overflow.\0A\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"\22%s\22: Ambiguous.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @expand(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [2 x i32], align 4
  %12 = alloca %struct.stat, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %14 = load i32, i32* @PATHSIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %4, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %5, align 8
  %18 = load i32, i32* @PATHSIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %6, align 8
  %21 = load i8*, i8** %3, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  switch i32 %23, label %69 [
    i32 37, label %24
    i32 35, label %40
    i32 38, label %58
  ]

24:                                               ; preds = %1
  %25 = load i8*, i8** %3, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i8*, i8** %3, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  br label %35

33:                                               ; preds = %24
  %34 = load i8*, i8** @myname, align 8
  br label %35

35:                                               ; preds = %33, %30
  %36 = phi i8* [ %32, %30 ], [ %34, %33 ]
  %37 = trunc i64 %15 to i32
  %38 = call i32 @findmail(i8* %36, i8* %17, i32 %37)
  %39 = call i8* @savestr(i8* %17)
  store i8* %39, i8** %2, align 8
  store i32 1, i32* %13, align 4
  br label %231

40:                                               ; preds = %1
  %41 = load i8*, i8** %3, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %69

47:                                               ; preds = %40
  %48 = load i8*, i8** @prevfile, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %2, align 8
  store i32 1, i32* %13, align 4
  br label %231

55:                                               ; preds = %47
  %56 = load i8*, i8** @prevfile, align 8
  %57 = call i8* @savestr(i8* %56)
  store i8* %57, i8** %2, align 8
  store i32 1, i32* %13, align 4
  br label %231

58:                                               ; preds = %1
  %59 = load i8*, i8** %3, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 1
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = call i8* @value(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %65, i8** %3, align 8
  %66 = icmp eq i8* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %68

68:                                               ; preds = %67, %64, %58
  br label %69

69:                                               ; preds = %68, %1, %46
  %70 = load i8*, i8** %3, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 0
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 43
  br i1 %74, label %75, label %85

75:                                               ; preds = %69
  %76 = trunc i64 %19 to i32
  %77 = call i64 @getfold(i8* %20, i32 %76)
  %78 = icmp sge i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %75
  %80 = trunc i64 %15 to i32
  %81 = load i8*, i8** %3, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 1
  %83 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %17, i32 %80, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %20, i8* %82)
  %84 = call i8* @savestr(i8* %17)
  store i8* %84, i8** %3, align 8
  br label %85

85:                                               ; preds = %79, %75, %69
  %86 = load i8*, i8** %3, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 0
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 126
  br i1 %90, label %91, label %113

91:                                               ; preds = %85
  %92 = load i8*, i8** @homedir, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %113

94:                                               ; preds = %91
  %95 = load i8*, i8** %3, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 1
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 47
  br i1 %99, label %106, label %100

100:                                              ; preds = %94
  %101 = load i8*, i8** %3, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 1
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %100, %94
  %107 = trunc i64 %15 to i32
  %108 = load i8*, i8** @homedir, align 8
  %109 = load i8*, i8** %3, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 1
  %111 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %17, i32 %107, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %108, i8* %110)
  %112 = call i8* @savestr(i8* %17)
  store i8* %112, i8** %3, align 8
  br label %113

113:                                              ; preds = %106, %100, %91, %85
  %114 = load i8*, i8** %3, align 8
  %115 = call i32 @strpbrk(i8* %114, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %113
  %118 = load i8*, i8** %3, align 8
  %119 = call i8* @savestr(i8* %118)
  store i8* %119, i8** %2, align 8
  store i32 1, i32* %13, align 4
  br label %231

120:                                              ; preds = %113
  %121 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %122 = call i64 @pipe(i32* %121)
  %123 = icmp slt i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %120
  %125 = call i32 @warn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  store i8* null, i8** %2, align 8
  store i32 1, i32* %13, align 4
  br label %231

126:                                              ; preds = %120
  %127 = trunc i64 %19 to i32
  %128 = load i8*, i8** %3, align 8
  %129 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %20, i32 %127, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* %128)
  %130 = call i8* @value(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  store i8* %130, i8** %10, align 8
  %131 = icmp eq i8* %130, null
  br i1 %131, label %132, label %134

132:                                              ; preds = %126
  %133 = load i8*, i8** @_PATH_CSHELL, align 8
  store i8* %133, i8** %10, align 8
  br label %134

134:                                              ; preds = %132, %126
  %135 = load i8*, i8** %10, align 8
  %136 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @start_command(i8* %135, i32 0, i32 -1, i32 %137, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* %20, i32* null)
  store i32 %138, i32* %7, align 4
  %139 = load i32, i32* %7, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %134
  %142 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @close(i32 %143)
  %145 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @close(i32 %146)
  store i8* null, i8** %2, align 8
  store i32 1, i32* %13, align 4
  br label %231

148:                                              ; preds = %134
  %149 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @close(i32 %150)
  %152 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @BUFSIZ, align 4
  %155 = call i32 @read(i32 %153, i8* %17, i32 %154)
  store i32 %155, i32* %8, align 4
  %156 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @close(i32 %157)
  %159 = load i32, i32* %7, align 4
  %160 = call i64 @wait_child(i32 %159)
  %161 = icmp slt i64 %160, 0
  br i1 %161, label %162, label %175

162:                                              ; preds = %148
  %163 = load i32, i32* @wait_status, align 4
  %164 = call i64 @WIFSIGNALED(i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %175

166:                                              ; preds = %162
  %167 = load i32, i32* @wait_status, align 4
  %168 = call i64 @WTERMSIG(i32 %167)
  %169 = load i64, i64* @SIGPIPE, align 8
  %170 = icmp ne i64 %168, %169
  br i1 %170, label %171, label %175

171:                                              ; preds = %166
  %172 = load i32, i32* @stderr, align 4
  %173 = load i8*, i8** %3, align 8
  %174 = call i32 @fprintf(i32 %172, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i8* %173)
  store i8* null, i8** %2, align 8
  store i32 1, i32* %13, align 4
  br label %231

175:                                              ; preds = %166, %162, %148
  %176 = load i32, i32* %8, align 4
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %175
  %179 = call i32 @warn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  store i8* null, i8** %2, align 8
  store i32 1, i32* %13, align 4
  br label %231

180:                                              ; preds = %175
  %181 = load i32, i32* %8, align 4
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %180
  %184 = load i32, i32* @stderr, align 4
  %185 = load i8*, i8** %3, align 8
  %186 = call i32 @fprintf(i32 %184, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i8* %185)
  store i8* null, i8** %2, align 8
  store i32 1, i32* %13, align 4
  br label %231

187:                                              ; preds = %180
  %188 = load i32, i32* %8, align 4
  %189 = load i32, i32* @BUFSIZ, align 4
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %191, label %195

191:                                              ; preds = %187
  %192 = load i32, i32* @stderr, align 4
  %193 = load i8*, i8** %3, align 8
  %194 = call i32 @fprintf(i32 %192, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0), i8* %193)
  store i8* null, i8** %2, align 8
  store i32 1, i32* %13, align 4
  br label %231

195:                                              ; preds = %187
  %196 = load i32, i32* %8, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i8, i8* %17, i64 %197
  store i8 0, i8* %198, align 1
  %199 = load i32, i32* %8, align 4
  %200 = sub nsw i32 %199, 1
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8, i8* %17, i64 %201
  store i8* %202, i8** %9, align 8
  br label %203

203:                                              ; preds = %214, %195
  %204 = load i8*, i8** %9, align 8
  %205 = load i8, i8* %204, align 1
  %206 = sext i8 %205 to i32
  %207 = icmp eq i32 %206, 10
  br i1 %207, label %208, label %211

208:                                              ; preds = %203
  %209 = load i8*, i8** %9, align 8
  %210 = icmp ugt i8* %209, %17
  br label %211

211:                                              ; preds = %208, %203
  %212 = phi i1 [ false, %203 ], [ %210, %208 ]
  br i1 %212, label %213, label %217

213:                                              ; preds = %211
  br label %214

214:                                              ; preds = %213
  %215 = load i8*, i8** %9, align 8
  %216 = getelementptr inbounds i8, i8* %215, i32 -1
  store i8* %216, i8** %9, align 8
  br label %203

217:                                              ; preds = %211
  %218 = load i8*, i8** %9, align 8
  %219 = getelementptr inbounds i8, i8* %218, i64 1
  store i8 0, i8* %219, align 1
  %220 = call i64 @strchr(i8* %17, i8 signext 32)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %229

222:                                              ; preds = %217
  %223 = call i64 @stat(i8* %17, %struct.stat* %12)
  %224 = icmp slt i64 %223, 0
  br i1 %224, label %225, label %229

225:                                              ; preds = %222
  %226 = load i32, i32* @stderr, align 4
  %227 = load i8*, i8** %3, align 8
  %228 = call i32 @fprintf(i32 %226, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i8* %227)
  store i8* null, i8** %2, align 8
  store i32 1, i32* %13, align 4
  br label %231

229:                                              ; preds = %222, %217
  %230 = call i8* @savestr(i8* %17)
  store i8* %230, i8** %2, align 8
  store i32 1, i32* %13, align 4
  br label %231

231:                                              ; preds = %229, %225, %191, %183, %178, %171, %141, %124, %117, %55, %53, %35
  %232 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %232)
  %233 = load i8*, i8** %2, align 8
  ret i8* %233
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @findmail(i8*, i8*, i32) #2

declare dso_local i8* @savestr(i8*) #2

declare dso_local i32 @printf(i8*) #2

declare dso_local i8* @value(i8*) #2

declare dso_local i64 @getfold(i8*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #2

declare dso_local i32 @strpbrk(i8*, i8*) #2

declare dso_local i64 @pipe(i32*) #2

declare dso_local i32 @warn(i8*) #2

declare dso_local i32 @start_command(i8*, i32, i32, i32, i8*, i8*, i32*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @read(i32, i8*, i32) #2

declare dso_local i64 @wait_child(i32) #2

declare dso_local i64 @WIFSIGNALED(i32) #2

declare dso_local i64 @WTERMSIG(i32) #2

declare dso_local i32 @fprintf(i32, i8*, i8*) #2

declare dso_local i64 @strchr(i8*, i8 signext) #2

declare dso_local i64 @stat(i8*, %struct.stat*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
