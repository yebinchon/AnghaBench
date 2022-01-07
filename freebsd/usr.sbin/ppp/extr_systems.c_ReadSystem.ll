; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_systems.c_ReadSystem.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_systems.c_ReadSystem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prompt = type { i32 }
%struct.bundle = type { i32 }
%struct.datalink = type { i32 }

@LINE_LEN = common dso_local global i32 0, align 4
@PATH_MAX = common dso_local global i32 0, align 4
@MAXARGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@PPP_CONFDIR = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@LogDEBUG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"ReadSystem: Can't open %s.\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"ReadSystem: Checking %s (%s).\0A\00", align 1
@LogCOMMAND = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"%s: Including \22%s\22\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"%s: Done include of \22%s\22\0A\00", align 1
@LogWARN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"%s: %s: Invalid command\0A\00", align 1
@SYSTEM_EXISTS = common dso_local global i32 0, align 4
@SYSTEM_EXEC = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [22 x i8] c"%s: %d: Syntax error\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"allow\00", align 1
@log_PromptContext = common dso_local global %struct.prompt* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bundle*, i8*, i8*, %struct.prompt*, %struct.datalink*, i32)* @ReadSystem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ReadSystem(%struct.bundle* %0, i8* %1, i8* %2, %struct.prompt* %3, %struct.datalink* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.bundle*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.prompt*, align 8
  %12 = alloca %struct.datalink*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca %struct.prompt*, align 8
  %28 = alloca i32, align 4
  store %struct.bundle* %0, %struct.bundle** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store %struct.prompt* %3, %struct.prompt** %11, align 8
  store %struct.datalink* %4, %struct.datalink** %12, align 8
  store i32 %5, i32* %13, align 4
  %29 = load i32, i32* @LINE_LEN, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %18, align 8
  %32 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %19, align 8
  %33 = load i32, i32* @PATH_MAX, align 4
  %34 = zext i32 %33 to i64
  %35 = alloca i8, i64 %34, align 16
  store i64 %34, i64* %20, align 8
  %36 = load i32, i32* @MAXARGS, align 4
  %37 = zext i32 %36 to i64
  %38 = alloca i8*, i64 %37, align 16
  store i64 %37, i64* %23, align 8
  %39 = load i32, i32* @LINE_LEN, align 4
  %40 = zext i32 %39 to i64
  %41 = alloca i8, i64 %40, align 16
  store i64 %40, i64* %26, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 47
  br i1 %45, label %46, label %50

46:                                               ; preds = %6
  %47 = trunc i64 %34 to i32
  %48 = load i8*, i8** %10, align 8
  %49 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %35, i32 %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %48)
  br label %55

50:                                               ; preds = %6
  %51 = trunc i64 %34 to i32
  %52 = load i8*, i8** @PPP_CONFDIR, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %35, i32 %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %52, i8* %53)
  br label %55

55:                                               ; preds = %50, %46
  %56 = call i32* @ID0fopen(i8* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %56, i32** %14, align 8
  %57 = load i32*, i32** %14, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32, i32* @LogDEBUG, align 4
  %61 = call i32 (i32, i8*, i8*, ...) @log_Printf(i32 %60, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %35)
  store i32 -2, i32* %7, align 4
  store i32 1, i32* %28, align 4
  br label %224

62:                                               ; preds = %55
  %63 = load i32, i32* @LogDEBUG, align 4
  %64 = load i8*, i8** %9, align 8
  %65 = call i32 (i32, i8*, i8*, ...) @log_Printf(i32 %63, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* %64, i8* %35)
  store i32 0, i32* %21, align 4
  br label %66

66:                                               ; preds = %220, %116, %78, %62
  %67 = trunc i64 %30 to i32
  %68 = load i32*, i32** %14, align 8
  %69 = call i32 @xgets(i8* %32, i32 %67, i32* %68)
  store i32 %69, i32* %16, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %221

71:                                               ; preds = %66
  %72 = load i32, i32* %16, align 4
  %73 = load i32, i32* %21, align 4
  %74 = add nsw i32 %73, %72
  store i32 %74, i32* %21, align 4
  %75 = load i8, i8* %32, align 16
  %76 = call i32 @issep(i8 signext %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  br label %66

79:                                               ; preds = %71
  %80 = call i8* @strip(i8* %32)
  store i8* %80, i8** %15, align 8
  %81 = load i8*, i8** %15, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  switch i32 %83, label %111 [
    i32 0, label %84
    i32 33, label %85
  ]

84:                                               ; preds = %79
  br label %220

85:                                               ; preds = %79
  %86 = load i8*, i8** %15, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 1
  %88 = call i32 @DecodeCtrlCommand(i8* %87, i8* %41)
  switch i32 %88, label %106 [
    i32 128, label %89
  ]

89:                                               ; preds = %85
  %90 = load i32, i32* @LogCOMMAND, align 4
  %91 = call i32 (i32, i8*, i8*, ...) @log_Printf(i32 %90, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* %35, i8* %41)
  %92 = load %struct.bundle*, %struct.bundle** %8, align 8
  %93 = load i8*, i8** %9, align 8
  %94 = load %struct.prompt*, %struct.prompt** %11, align 8
  %95 = load %struct.datalink*, %struct.datalink** %12, align 8
  %96 = load i32, i32* %13, align 4
  %97 = call i32 @ReadSystem(%struct.bundle* %92, i8* %93, i8* %41, %struct.prompt* %94, %struct.datalink* %95, i32 %96)
  store i32 %97, i32* %16, align 4
  %98 = load i32, i32* @LogCOMMAND, align 4
  %99 = call i32 (i32, i8*, i8*, ...) @log_Printf(i32 %98, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* %35, i8* %41)
  %100 = load i32, i32* %16, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %89
  %103 = load i32*, i32** %14, align 8
  %104 = call i32 @fclose(i32* %103)
  store i32 0, i32* %7, align 4
  store i32 1, i32* %28, align 4
  br label %224

105:                                              ; preds = %89
  br label %110

106:                                              ; preds = %85
  %107 = load i32, i32* @LogWARN, align 4
  %108 = load i8*, i8** %15, align 8
  %109 = call i32 (i32, i8*, i8*, ...) @log_Printf(i32 %107, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i8* %35, i8* %108)
  br label %110

110:                                              ; preds = %106, %105
  br label %220

111:                                              ; preds = %79
  %112 = load i8*, i8** %15, align 8
  %113 = load i32, i32* %21, align 4
  %114 = call i8* @GetLabel(i8* %112, i8* %35, i32 %113)
  store i8* %114, i8** %15, align 8
  %115 = icmp eq i8* %114, null
  br i1 %115, label %116, label %117

116:                                              ; preds = %111
  br label %66

117:                                              ; preds = %111
  %118 = load i8*, i8** %15, align 8
  %119 = load i8*, i8** %9, align 8
  %120 = call i32 @strcmp(i8* %118, i8* %119)
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %219

122:                                              ; preds = %117
  %123 = load i32, i32* %13, align 4
  %124 = load i32, i32* @SYSTEM_EXISTS, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %122
  %127 = load i32*, i32** %14, align 8
  %128 = call i32 @fclose(i32* %127)
  store i32 0, i32* %7, align 4
  store i32 1, i32* %28, align 4
  br label %224

129:                                              ; preds = %122
  br label %130

130:                                              ; preds = %215, %146, %129
  %131 = trunc i64 %30 to i32
  %132 = load i32*, i32** %14, align 8
  %133 = call i32 @xgets(i8* %32, i32 %131, i32* %132)
  store i32 %133, i32* %16, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %216

135:                                              ; preds = %130
  %136 = load i32, i32* %16, align 4
  %137 = load i32, i32* %21, align 4
  %138 = add nsw i32 %137, %136
  store i32 %138, i32* %21, align 4
  %139 = load i8, i8* %32, align 16
  %140 = call i32 @issep(i8 signext %139)
  store i32 %140, i32* %25, align 4
  %141 = call i8* @strip(i8* %32)
  store i8* %141, i8** %15, align 8
  %142 = load i8*, i8** %15, align 8
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %135
  br label %130

147:                                              ; preds = %135
  %148 = load i32, i32* %25, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %164, label %150

150:                                              ; preds = %147
  %151 = load i8*, i8** %15, align 8
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp ne i32 %153, 33
  br i1 %154, label %155, label %163

155:                                              ; preds = %150
  %156 = load i32, i32* %13, align 4
  %157 = load i32, i32* @SYSTEM_EXEC, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %163

159:                                              ; preds = %155
  %160 = load i8*, i8** %15, align 8
  %161 = load i32, i32* %21, align 4
  %162 = call i8* @GetLabel(i8* %160, i8* %35, i32 %161)
  store i8* %162, i8** %15, align 8
  br label %163

163:                                              ; preds = %159, %155, %150
  br label %216

164:                                              ; preds = %147
  %165 = load i8*, i8** %15, align 8
  %166 = call i32 @strlen(i8* %165)
  store i32 %166, i32* %17, align 4
  %167 = load i8*, i8** %15, align 8
  %168 = load i32, i32* %17, align 4
  %169 = load i8*, i8** %15, align 8
  %170 = ptrtoint i8* %169 to i64
  %171 = ptrtoint i8* %32 to i64
  %172 = sub i64 %170, %171
  %173 = trunc i64 %172 to i32
  %174 = call i32 @command_Expand_Interpret(i8* %167, i32 %168, i8** %38, i32 %173)
  store i32 %174, i32* %22, align 4
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %164
  %177 = load i32, i32* @LogWARN, align 4
  %178 = load i32, i32* %21, align 4
  %179 = call i32 (i32, i8*, i8*, ...) @log_Printf(i32 %177, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i8* %35, i32 %178)
  br label %215

180:                                              ; preds = %164
  %181 = load i32, i32* %22, align 4
  %182 = icmp sgt i32 %181, 0
  br i1 %182, label %183, label %189

183:                                              ; preds = %180
  %184 = getelementptr inbounds i8*, i8** %38, i64 0
  %185 = load i8*, i8** %184, align 16
  %186 = call i32 @strcasecmp(i8* %185, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %187 = icmp ne i32 %186, 0
  %188 = xor i1 %187, true
  br label %189

189:                                              ; preds = %183, %180
  %190 = phi i1 [ false, %180 ], [ %188, %183 ]
  %191 = zext i1 %190 to i32
  store i32 %191, i32* %24, align 4
  %192 = load i32, i32* %13, align 4
  %193 = load i32, i32* @SYSTEM_EXEC, align 4
  %194 = icmp ne i32 %192, %193
  br i1 %194, label %195, label %198

195:                                              ; preds = %189
  %196 = load i32, i32* %24, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %205, label %198

198:                                              ; preds = %195, %189
  %199 = load i32, i32* %13, align 4
  %200 = load i32, i32* @SYSTEM_EXEC, align 4
  %201 = icmp eq i32 %199, %200
  br i1 %201, label %202, label %214

202:                                              ; preds = %198
  %203 = load i32, i32* %24, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %214, label %205

205:                                              ; preds = %202, %195
  %206 = load %struct.prompt*, %struct.prompt** @log_PromptContext, align 8
  store %struct.prompt* %206, %struct.prompt** %27, align 8
  store %struct.prompt* null, %struct.prompt** @log_PromptContext, align 8
  %207 = load %struct.bundle*, %struct.bundle** %8, align 8
  %208 = load i32, i32* %22, align 4
  %209 = load %struct.prompt*, %struct.prompt** %11, align 8
  %210 = load i8*, i8** %9, align 8
  %211 = load %struct.datalink*, %struct.datalink** %12, align 8
  %212 = call i32 @command_Run(%struct.bundle* %207, i32 %208, i8** %38, %struct.prompt* %209, i8* %210, %struct.datalink* %211)
  %213 = load %struct.prompt*, %struct.prompt** %27, align 8
  store %struct.prompt* %213, %struct.prompt** @log_PromptContext, align 8
  br label %214

214:                                              ; preds = %205, %202, %198
  br label %215

215:                                              ; preds = %214, %176
  br label %130

216:                                              ; preds = %163, %130
  %217 = load i32*, i32** %14, align 8
  %218 = call i32 @fclose(i32* %217)
  store i32 0, i32* %7, align 4
  store i32 1, i32* %28, align 4
  br label %224

219:                                              ; preds = %117
  br label %220

220:                                              ; preds = %219, %110, %84
  br label %66

221:                                              ; preds = %66
  %222 = load i32*, i32** %14, align 8
  %223 = call i32 @fclose(i32* %222)
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %28, align 4
  br label %224

224:                                              ; preds = %221, %216, %126, %102, %59
  %225 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %225)
  %226 = load i32, i32* %7, align 4
  ret i32 %226
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #2

declare dso_local i32* @ID0fopen(i8*, i8*) #2

declare dso_local i32 @log_Printf(i32, i8*, i8*, ...) #2

declare dso_local i32 @xgets(i8*, i32, i32*) #2

declare dso_local i32 @issep(i8 signext) #2

declare dso_local i8* @strip(i8*) #2

declare dso_local i32 @DecodeCtrlCommand(i8*, i8*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i8* @GetLabel(i8*, i8*, i32) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @command_Expand_Interpret(i8*, i32, i8**, i32) #2

declare dso_local i32 @strcasecmp(i8*, i8*) #2

declare dso_local i32 @command_Run(%struct.bundle*, i32, i8**, %struct.prompt*, i8*, %struct.datalink*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
