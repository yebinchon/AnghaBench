; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tip/tip/extr_cmds.c_transmit.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tip/tip/extr_cmds.c_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tipout_pid = common dso_local global i32 0, align 4
@SIGIOT = common dso_local global i32 0, align 4
@stop = common dso_local global i64 0, align 8
@SIGINT = common dso_local global i32 0, align 4
@stopsnd = common dso_local global i32 0, align 4
@TCSAFLUSH = common dso_local global i32 0, align 4
@defchars = common dso_local global i32 0, align 4
@repdes = common dso_local global i32* null, align 8
@ccc = common dso_local global i32 0, align 4
@ECHOCHECK = common dso_local global i32 0, align 4
@FD = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@RAWFTP = common dso_local global i32 0, align 4
@TABEXPAND = common dso_local global i32 0, align 4
@VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"\0D%d\00", align 1
@timedout = common dso_local global i64 0, align 8
@ETIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"\0D\0Atimed out at eol\0D\0A\00", align 1
@STRIP_PAR = common dso_local global i32 0, align 4
@PROMPT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c" chars transferred in \00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c" lines transferred in \00", align 1
@fildes = common dso_local global i32* null, align 8
@term = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i8*)* @transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transmit(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %15 = load i32, i32* @tipout_pid, align 4
  %16 = load i32, i32* @SIGIOT, align 4
  %17 = call i32 @kill(i32 %15, i32 %16)
  store i64 0, i64* @stop, align 8
  %18 = load i32, i32* @SIGINT, align 4
  %19 = load i32, i32* @stopsnd, align 4
  %20 = call i32 @signal(i32 %18, i32 %19)
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* @TCSAFLUSH, align 4
  %22 = call i32 @tcsetattr(i32 0, i32 %21, i32* @defchars)
  %23 = load i32*, i32** @repdes, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @read(i32 %25, i8* bitcast (i32* @ccc to i8*), i32 1)
  %27 = load i8*, i8** %6, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %56

29:                                               ; preds = %3
  %30 = load i8*, i8** %6, align 8
  store i8* %30, i8** %7, align 8
  br label %31

31:                                               ; preds = %39, %29
  %32 = load i8*, i8** %7, align 8
  %33 = load i8, i8* %32, align 1
  %34 = icmp ne i8 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = load i8*, i8** %7, align 8
  %37 = load i8, i8* %36, align 1
  %38 = call i32 @send(i8 signext %37)
  br label %39

39:                                               ; preds = %35
  %40 = load i8*, i8** %7, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %7, align 8
  br label %31

42:                                               ; preds = %31
  %43 = load i32, i32* @ECHOCHECK, align 4
  %44 = call i32 @value(i32 %43)
  %45 = call i64 @boolean(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i32, i32* @FD, align 4
  %49 = bitcast i32* %9 to i8*
  %50 = call i32 @read(i32 %48, i8* %49, i32 1)
  br label %55

51:                                               ; preds = %42
  %52 = load i32, i32* @FD, align 4
  %53 = call i32 @tcdrain(i32 %52)
  %54 = call i32 @sleep(i32 5)
  br label %55

55:                                               ; preds = %51, %47
  br label %56

56:                                               ; preds = %55, %3
  store i32 0, i32* %11, align 4
  store i8 0, i8* %8, align 1
  %57 = call i64 @time(i32 0)
  store i64 %57, i64* %12, align 8
  br label %58

58:                                               ; preds = %56, %189
  store i32 0, i32* %10, align 4
  br label %59

59:                                               ; preds = %141, %58
  %60 = load i32*, i32** %4, align 8
  %61 = call i32 @getc(i32* %60)
  store i32 %61, i32* %9, align 4
  %62 = load i64, i64* @stop, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %190

65:                                               ; preds = %59
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @EOF, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  br label %190

70:                                               ; preds = %65
  %71 = load i32, i32* %9, align 4
  %72 = icmp eq i32 %71, 127
  br i1 %72, label %73, label %79

73:                                               ; preds = %70
  %74 = load i32, i32* @RAWFTP, align 4
  %75 = call i32 @value(i32 %74)
  %76 = call i64 @boolean(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %73
  br label %132

79:                                               ; preds = %73, %70
  %80 = load i32, i32* %9, align 4
  %81 = trunc i32 %80 to i8
  store i8 %81, i8* %8, align 1
  %82 = load i32, i32* %9, align 4
  %83 = icmp slt i32 %82, 32
  br i1 %83, label %84, label %128

84:                                               ; preds = %79
  %85 = load i32, i32* %9, align 4
  %86 = icmp eq i32 %85, 10
  br i1 %86, label %87, label %94

87:                                               ; preds = %84
  %88 = load i32, i32* @RAWFTP, align 4
  %89 = call i32 @value(i32 %88)
  %90 = call i64 @boolean(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %87
  store i32 13, i32* %9, align 4
  br label %93

93:                                               ; preds = %92, %87
  br label %127

94:                                               ; preds = %84
  %95 = load i32, i32* %9, align 4
  %96 = icmp eq i32 %95, 9
  br i1 %96, label %97, label %119

97:                                               ; preds = %94
  %98 = load i32, i32* @RAWFTP, align 4
  %99 = call i32 @value(i32 %98)
  %100 = call i64 @boolean(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %118, label %102

102:                                              ; preds = %97
  %103 = load i32, i32* @TABEXPAND, align 4
  %104 = call i32 @value(i32 %103)
  %105 = call i64 @boolean(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %102
  %108 = call i32 @send(i8 signext 32)
  br label %109

109:                                              ; preds = %114, %107
  %110 = load i32, i32* %10, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %10, align 4
  %112 = srem i32 %111, 8
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %109
  %115 = call i32 @send(i8 signext 32)
  br label %109

116:                                              ; preds = %109
  br label %132

117:                                              ; preds = %102
  br label %118

118:                                              ; preds = %117, %97
  br label %126

119:                                              ; preds = %94
  %120 = load i32, i32* @RAWFTP, align 4
  %121 = call i32 @value(i32 %120)
  %122 = call i64 @boolean(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %119
  br label %132

125:                                              ; preds = %119
  br label %126

126:                                              ; preds = %125, %118
  br label %127

127:                                              ; preds = %126, %93
  br label %128

128:                                              ; preds = %127, %79
  %129 = load i32, i32* %9, align 4
  %130 = trunc i32 %129 to i8
  %131 = call i32 @send(i8 signext %130)
  br label %132

132:                                              ; preds = %128, %124, %116, %78
  %133 = load i32, i32* %9, align 4
  %134 = icmp ne i32 %133, 13
  br i1 %134, label %135, label %141

135:                                              ; preds = %132
  %136 = load i32, i32* @RAWFTP, align 4
  %137 = call i32 @value(i32 %136)
  %138 = call i64 @boolean(i32 %137)
  %139 = icmp ne i64 %138, 0
  %140 = xor i1 %139, true
  br label %141

141:                                              ; preds = %135, %132
  %142 = phi i1 [ false, %132 ], [ %140, %135 ]
  br i1 %142, label %59, label %143

143:                                              ; preds = %141
  %144 = load i32, i32* @VERBOSE, align 4
  %145 = call i32 @value(i32 %144)
  %146 = call i64 @boolean(i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %143
  %149 = load i32, i32* %11, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %11, align 4
  %151 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %150)
  br label %152

152:                                              ; preds = %148, %143
  %153 = load i32, i32* @ECHOCHECK, align 4
  %154 = call i32 @value(i32 %153)
  %155 = call i64 @boolean(i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %189

157:                                              ; preds = %152
  store i64 0, i64* @timedout, align 8
  %158 = load i32, i32* @ETIMEOUT, align 4
  %159 = call i64 @lvalue(i32 %158)
  %160 = trunc i64 %159 to i32
  %161 = call i32 @alarm(i32 %160)
  br label %162

162:                                              ; preds = %179, %157
  %163 = load i32, i32* @FD, align 4
  %164 = bitcast i32* %9 to i8*
  %165 = call i32 @read(i32 %163, i8* %164, i32 1)
  %166 = load i64, i64* @timedout, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %171, label %168

168:                                              ; preds = %162
  %169 = load i64, i64* @stop, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %178

171:                                              ; preds = %168, %162
  %172 = load i64, i64* @timedout, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %171
  %175 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %176

176:                                              ; preds = %174, %171
  %177 = call i32 @alarm(i32 0)
  br label %190

178:                                              ; preds = %168
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %9, align 4
  %181 = load i32, i32* @STRIP_PAR, align 4
  %182 = and i32 %180, %181
  %183 = load i32, i32* @PROMPT, align 4
  %184 = call i32 @value(i32 %183)
  %185 = call i32 @character(i32 %184)
  %186 = icmp ne i32 %182, %185
  br i1 %186, label %162, label %187

187:                                              ; preds = %179
  %188 = call i32 @alarm(i32 0)
  br label %189

189:                                              ; preds = %187, %152
  br label %58

190:                                              ; preds = %176, %69, %64
  %191 = load i8, i8* %8, align 1
  %192 = sext i8 %191 to i32
  %193 = icmp ne i32 %192, 10
  br i1 %193, label %194, label %201

194:                                              ; preds = %190
  %195 = load i32, i32* @RAWFTP, align 4
  %196 = call i32 @value(i32 %195)
  %197 = call i64 @boolean(i32 %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %201, label %199

199:                                              ; preds = %194
  %200 = call i32 @send(i8 signext 13)
  br label %201

201:                                              ; preds = %199, %194, %190
  %202 = load i8*, i8** %5, align 8
  %203 = icmp ne i8* %202, null
  br i1 %203, label %204, label %218

204:                                              ; preds = %201
  %205 = load i8*, i8** %5, align 8
  store i8* %205, i8** %7, align 8
  br label %206

206:                                              ; preds = %214, %204
  %207 = load i8*, i8** %7, align 8
  %208 = load i8, i8* %207, align 1
  %209 = icmp ne i8 %208, 0
  br i1 %209, label %210, label %217

210:                                              ; preds = %206
  %211 = load i8*, i8** %7, align 8
  %212 = load i8, i8* %211, align 1
  %213 = call i32 @send(i8 signext %212)
  br label %214

214:                                              ; preds = %210
  %215 = load i8*, i8** %7, align 8
  %216 = getelementptr inbounds i8, i8* %215, i32 1
  store i8* %216, i8** %7, align 8
  br label %206

217:                                              ; preds = %206
  br label %218

218:                                              ; preds = %217, %201
  %219 = call i64 @time(i32 0)
  store i64 %219, i64* %13, align 8
  %220 = load i32*, i32** %4, align 8
  %221 = call i32 @fclose(i32* %220)
  %222 = load i32, i32* @SIGINT, align 4
  %223 = load i32, i32* %14, align 4
  %224 = call i32 @signal(i32 %222, i32 %223)
  %225 = load i32, i32* @VERBOSE, align 4
  %226 = call i32 @value(i32 %225)
  %227 = call i64 @boolean(i32 %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %245

229:                                              ; preds = %218
  %230 = load i32, i32* @RAWFTP, align 4
  %231 = call i32 @value(i32 %230)
  %232 = call i64 @boolean(i32 %231)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %239

234:                                              ; preds = %229
  %235 = load i64, i64* %13, align 8
  %236 = load i64, i64* %12, align 8
  %237 = sub nsw i64 %235, %236
  %238 = call i32 @prtime(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i64 %237)
  br label %244

239:                                              ; preds = %229
  %240 = load i64, i64* %13, align 8
  %241 = load i64, i64* %12, align 8
  %242 = sub nsw i64 %240, %241
  %243 = call i32 @prtime(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i64 %242)
  br label %244

244:                                              ; preds = %239, %234
  br label %245

245:                                              ; preds = %244, %218
  %246 = load i32*, i32** @fildes, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 1
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @write(i32 %248, i8* bitcast (i32* @ccc to i8*), i32 1)
  %250 = load i32, i32* @TCSAFLUSH, align 4
  %251 = call i32 @tcsetattr(i32 0, i32 %250, i32* @term)
  ret void
}

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @tcsetattr(i32, i32, i32*) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @send(i8 signext) #1

declare dso_local i64 @boolean(i32) #1

declare dso_local i32 @value(i32) #1

declare dso_local i32 @tcdrain(i32) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i64 @time(i32) #1

declare dso_local i32 @getc(i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @alarm(i32) #1

declare dso_local i64 @lvalue(i32) #1

declare dso_local i32 @character(i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @prtime(i8*, i64) #1

declare dso_local i32 @write(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
