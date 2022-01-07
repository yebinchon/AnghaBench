; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_names.c_outof.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_names.c_outof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.name = type { i8*, %struct.name*, i32 }
%struct.header = type { i32 }

@image = common dso_local global i32 0, align 4
@PATHSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"%s/mail.ReXXXXXXXXXX\00", align 1
@tmpdir = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@senderr = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@F_SETFD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"From %s %s\00", align 1
@myname = common dso_local global i8* null, align 8
@GTO = common dso_local global i32 0, align 4
@GSUBJECT = common dso_local global i32 0, align 4
@GCC = common dso_local global i32 0, align 4
@GREPLYTO = common dso_local global i32 0, align 4
@GINREPLYTO = common dso_local global i32 0, align 4
@GNL = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"SHELL\00", align 1
@_PATH_CSHELL = common dso_local global i8* null, align 8
@SIGHUP = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"dup\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = common dso_local global i32* null, align 8
@.str.9 = private unnamed_addr constant [20 x i8] c"Can't reopen image\0A\00", align 1
@GDEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.name* @outof(%struct.name* %0, i32* %1, %struct.header* %2) #0 {
  %4 = alloca %struct.name*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.header*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.name*, align 8
  %10 = alloca %struct.name*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.name* %0, %struct.name** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.header* %2, %struct.header** %6, align 8
  %24 = load %struct.name*, %struct.name** %4, align 8
  store %struct.name* %24, %struct.name** %10, align 8
  %25 = load %struct.name*, %struct.name** %4, align 8
  store %struct.name* %25, %struct.name** %9, align 8
  %26 = call i32 @time(i32* %11)
  %27 = call i8* @ctime(i32* %11)
  store i8* %27, i8** %12, align 8
  br label %28

28:                                               ; preds = %244, %45, %3
  %29 = load %struct.name*, %struct.name** %9, align 8
  %30 = icmp ne %struct.name* %29, null
  br i1 %30, label %31, label %253

31:                                               ; preds = %28
  %32 = load %struct.name*, %struct.name** %9, align 8
  %33 = getelementptr inbounds %struct.name, %struct.name* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @isfileaddr(i8* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %49, label %37

37:                                               ; preds = %31
  %38 = load %struct.name*, %struct.name** %9, align 8
  %39 = getelementptr inbounds %struct.name, %struct.name* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 124
  br i1 %44, label %45, label %49

45:                                               ; preds = %37
  %46 = load %struct.name*, %struct.name** %9, align 8
  %47 = getelementptr inbounds %struct.name, %struct.name* %46, i32 0, i32 1
  %48 = load %struct.name*, %struct.name** %47, align 8
  store %struct.name* %48, %struct.name** %9, align 8
  br label %28

49:                                               ; preds = %37, %31
  %50 = load %struct.name*, %struct.name** %9, align 8
  %51 = getelementptr inbounds %struct.name, %struct.name* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 124
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %49
  %61 = load %struct.name*, %struct.name** %9, align 8
  %62 = getelementptr inbounds %struct.name, %struct.name* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 1
  store i8* %64, i8** %13, align 8
  br label %70

65:                                               ; preds = %49
  %66 = load %struct.name*, %struct.name** %9, align 8
  %67 = getelementptr inbounds %struct.name, %struct.name* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = call i8* @expand(i8* %68)
  store i8* %69, i8** %13, align 8
  br label %70

70:                                               ; preds = %65, %60
  %71 = load i32, i32* @image, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %157

73:                                               ; preds = %70
  %74 = load i32, i32* @PATHSIZE, align 4
  %75 = zext i32 %74 to i64
  %76 = call i8* @llvm.stacksave()
  store i8* %76, i8** %17, align 8
  %77 = alloca i8, i64 %75, align 16
  store i64 %75, i64* %18, align 8
  %78 = trunc i64 %75 to i32
  %79 = load i8*, i8** @tmpdir, align 8
  %80 = call i32 @snprintf(i8* %77, i32 %78, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %79)
  %81 = call i32 @mkstemp(i8* %77)
  store i32 %81, i32* %16, align 4
  %82 = icmp eq i32 %81, -1
  br i1 %82, label %87, label %83

83:                                               ; preds = %73
  %84 = load i32, i32* %16, align 4
  %85 = call i32* @Fdopen(i32 %84, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %85, i32** %14, align 8
  %86 = icmp eq i32* %85, null
  br i1 %86, label %87, label %91

87:                                               ; preds = %83, %73
  %88 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %77)
  %89 = load i32, i32* @senderr, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* @senderr, align 4
  store i32 4, i32* %19, align 4
  br label %153

91:                                               ; preds = %83
  %92 = load i32, i32* @O_RDWR, align 4
  %93 = call i32 @open(i8* %77, i32 %92)
  store i32 %93, i32* @image, align 4
  %94 = call i32 @rm(i8* %77)
  %95 = load i32, i32* @image, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %91
  %98 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %77)
  %99 = load i32, i32* @senderr, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* @senderr, align 4
  %101 = load i32*, i32** %14, align 8
  %102 = call i32 @Fclose(i32* %101)
  store i32 4, i32* %19, align 4
  br label %153

103:                                              ; preds = %91
  %104 = load i32, i32* @image, align 4
  %105 = load i32, i32* @F_SETFD, align 4
  %106 = call i32 @fcntl(i32 %104, i32 %105, i32 1)
  %107 = load i32*, i32** %14, align 8
  %108 = load i8*, i8** @myname, align 8
  %109 = load i8*, i8** %12, align 8
  %110 = call i32 (i32*, i8*, ...) @fprintf(i32* %107, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %108, i8* %109)
  %111 = load %struct.header*, %struct.header** %6, align 8
  %112 = load i32*, i32** %14, align 8
  %113 = load i32, i32* @GTO, align 4
  %114 = load i32, i32* @GSUBJECT, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* @GCC, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @GREPLYTO, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @GINREPLYTO, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @GNL, align 4
  %123 = or i32 %121, %122
  %124 = call i32 @puthead(%struct.header* %111, i32* %112, i32 %123)
  br label %125

125:                                              ; preds = %130, %103
  %126 = load i32*, i32** %5, align 8
  %127 = call i32 @getc(i32* %126)
  store i32 %127, i32* %7, align 4
  %128 = load i32, i32* @EOF, align 4
  %129 = icmp ne i32 %127, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %125
  %131 = load i32, i32* %7, align 4
  %132 = load i32*, i32** %14, align 8
  %133 = call i32 @putc(i32 %131, i32* %132)
  br label %125

134:                                              ; preds = %125
  %135 = load i32*, i32** %5, align 8
  %136 = call i32 @rewind(i32* %135)
  %137 = load i32*, i32** %14, align 8
  %138 = call i32 (i32*, i8*, ...) @fprintf(i32* %137, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %139 = load i32*, i32** %14, align 8
  %140 = call i32 @fflush(i32* %139)
  %141 = load i32*, i32** %14, align 8
  %142 = call i64 @ferror(i32* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %134
  %145 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %77)
  %146 = load i32, i32* @senderr, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* @senderr, align 4
  %148 = load i32*, i32** %14, align 8
  %149 = call i32 @Fclose(i32* %148)
  store i32 4, i32* %19, align 4
  br label %153

150:                                              ; preds = %134
  %151 = load i32*, i32** %14, align 8
  %152 = call i32 @Fclose(i32* %151)
  store i32 0, i32* %19, align 4
  br label %153

153:                                              ; preds = %144, %97, %87, %150
  %154 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %154)
  %155 = load i32, i32* %19, align 4
  switch i32 %155, label %261 [
    i32 0, label %156
    i32 4, label %244
  ]

156:                                              ; preds = %153
  br label %157

157:                                              ; preds = %156, %70
  %158 = load i32, i32* %8, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %185

160:                                              ; preds = %157
  %161 = call i8* @value(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  store i8* %161, i8** %21, align 8
  %162 = icmp eq i8* %161, null
  br i1 %162, label %163, label %165

163:                                              ; preds = %160
  %164 = load i8*, i8** @_PATH_CSHELL, align 8
  store i8* %164, i8** %21, align 8
  br label %165

165:                                              ; preds = %163, %160
  %166 = call i32 @sigemptyset(i32* %22)
  %167 = load i32, i32* @SIGHUP, align 4
  %168 = call i32 @sigaddset(i32* %22, i32 %167)
  %169 = load i32, i32* @SIGINT, align 4
  %170 = call i32 @sigaddset(i32* %22, i32 %169)
  %171 = load i32, i32* @SIGQUIT, align 4
  %172 = call i32 @sigaddset(i32* %22, i32 %171)
  %173 = load i8*, i8** %21, align 8
  %174 = load i32, i32* @image, align 4
  %175 = load i8*, i8** %13, align 8
  %176 = call i32 @start_command(i8* %173, i32* %22, i32 %174, i32 -1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %175, i32* null)
  store i32 %176, i32* %20, align 4
  %177 = load i32, i32* %20, align 4
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %165
  %180 = load i32, i32* @senderr, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* @senderr, align 4
  br label %244

182:                                              ; preds = %165
  %183 = load i32, i32* %20, align 4
  %184 = call i32 @free_child(i32 %183)
  br label %243

185:                                              ; preds = %157
  %186 = load i8*, i8** %13, align 8
  %187 = call i32* @Fopen(i8* %186, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %187, i32** %14, align 8
  %188 = icmp eq i32* %187, null
  br i1 %188, label %189, label %194

189:                                              ; preds = %185
  %190 = load i8*, i8** %13, align 8
  %191 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %190)
  %192 = load i32, i32* @senderr, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* @senderr, align 4
  br label %244

194:                                              ; preds = %185
  %195 = load i32, i32* @image, align 4
  %196 = call i32 @dup(i32 %195)
  store i32 %196, i32* %23, align 4
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %194
  %199 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  store i32* null, i32** %15, align 8
  br label %203

200:                                              ; preds = %194
  %201 = load i32, i32* %23, align 4
  %202 = call i32* @Fdopen(i32 %201, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  store i32* %202, i32** %15, align 8
  br label %203

203:                                              ; preds = %200, %198
  %204 = load i32*, i32** %15, align 8
  %205 = icmp eq i32* %204, null
  br i1 %205, label %206, label %213

206:                                              ; preds = %203
  %207 = load i32*, i32** @stderr, align 8
  %208 = call i32 (i32*, i8*, ...) @fprintf(i32* %207, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  %209 = load i32*, i32** %14, align 8
  %210 = call i32 @Fclose(i32* %209)
  %211 = load i32, i32* @senderr, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* @senderr, align 4
  br label %244

213:                                              ; preds = %203
  %214 = load i32*, i32** %15, align 8
  %215 = call i32 @rewind(i32* %214)
  br label %216

216:                                              ; preds = %221, %213
  %217 = load i32*, i32** %15, align 8
  %218 = call i32 @getc(i32* %217)
  store i32 %218, i32* %7, align 4
  %219 = load i32, i32* @EOF, align 4
  %220 = icmp ne i32 %218, %219
  br i1 %220, label %221, label %225

221:                                              ; preds = %216
  %222 = load i32, i32* %7, align 4
  %223 = load i32*, i32** %14, align 8
  %224 = call i32 @putc(i32 %222, i32* %223)
  br label %216

225:                                              ; preds = %216
  %226 = load i32*, i32** %14, align 8
  %227 = call i64 @ferror(i32* %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %238

229:                                              ; preds = %225
  %230 = load i8*, i8** %13, align 8
  %231 = call i32 @warnx(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %230)
  %232 = load i32, i32* @senderr, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* @senderr, align 4
  %234 = load i32*, i32** %14, align 8
  %235 = call i32 @Fclose(i32* %234)
  %236 = load i32*, i32** %15, align 8
  %237 = call i32 @Fclose(i32* %236)
  br label %244

238:                                              ; preds = %225
  %239 = load i32*, i32** %14, align 8
  %240 = call i32 @Fclose(i32* %239)
  %241 = load i32*, i32** %15, align 8
  %242 = call i32 @Fclose(i32* %241)
  br label %243

243:                                              ; preds = %238, %182
  br label %244

244:                                              ; preds = %243, %229, %206, %189, %179, %153
  %245 = load i32, i32* @GDEL, align 4
  %246 = load %struct.name*, %struct.name** %9, align 8
  %247 = getelementptr inbounds %struct.name, %struct.name* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 8
  %249 = or i32 %248, %245
  store i32 %249, i32* %247, align 8
  %250 = load %struct.name*, %struct.name** %9, align 8
  %251 = getelementptr inbounds %struct.name, %struct.name* %250, i32 0, i32 1
  %252 = load %struct.name*, %struct.name** %251, align 8
  store %struct.name* %252, %struct.name** %9, align 8
  br label %28

253:                                              ; preds = %28
  %254 = load i32, i32* @image, align 4
  %255 = icmp sge i32 %254, 0
  br i1 %255, label %256, label %259

256:                                              ; preds = %253
  %257 = load i32, i32* @image, align 4
  %258 = call i32 @close(i32 %257)
  store i32 -1, i32* @image, align 4
  br label %259

259:                                              ; preds = %256, %253
  %260 = load %struct.name*, %struct.name** %10, align 8
  ret %struct.name* %260

261:                                              ; preds = %153
  unreachable
}

declare dso_local i32 @time(i32*) #1

declare dso_local i8* @ctime(i32*) #1

declare dso_local i32 @isfileaddr(i8*) #1

declare dso_local i8* @expand(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @mkstemp(i8*) #1

declare dso_local i32* @Fdopen(i32, i8*) #1

declare dso_local i32 @warn(i8*, ...) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @rm(i8*) #1

declare dso_local i32 @Fclose(i32*) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @puthead(%struct.header*, i32*, i32) #1

declare dso_local i32 @getc(i32*) #1

declare dso_local i32 @putc(i32, i32*) #1

declare dso_local i32 @rewind(i32*) #1

declare dso_local i32 @fflush(i32*) #1

declare dso_local i64 @ferror(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i8* @value(i8*) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaddset(i32*, i32) #1

declare dso_local i32 @start_command(i8*, i32*, i32, i32, i8*, i8*, i32*) #1

declare dso_local i32 @free_child(i32) #1

declare dso_local i32* @Fopen(i8*, i8*) #1

declare dso_local i32 @dup(i32) #1

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
