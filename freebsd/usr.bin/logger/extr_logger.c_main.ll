; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/logger/extr_logger.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/logger/extr_logger.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socks = type { i32 }

@MAXHOSTNAMELEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"syslog\00", align 1
@LOG_USER = common dso_local global i32 0, align 4
@LOG_NOTICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"TZ\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"46Af:H:h:iP:p:S:st:\00", align 1
@PF_INET = common dso_local global i32 0, align 4
@family = common dso_local global i32 0, align 4
@send_to_all = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stdin = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@_IONBF = common dso_local global i32 0, align 4
@LOG_PID = common dso_local global i32 0, align 4
@LOG_PERROR = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"-h option is missing.\00", align 1
@stdout = common dso_local global i32 0, align 4
@PF_INET6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.socks*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca [1024 x i8], align 16
  %15 = alloca i8*, align 8
  %16 = alloca [26 x i8], align 16
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %25 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %18, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %19, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %17, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %20, align 8
  store i8* null, i8** %21, align 8
  store %struct.socks* null, %struct.socks** %6, align 8
  %29 = load i32, i32* @LOG_USER, align 4
  %30 = load i32, i32* @LOG_NOTICE, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %11, align 4
  store i32 0, i32* %10, align 4
  %32 = call i32 @unsetenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %83, %2
  %34 = load i32, i32* %4, align 4
  %35 = load i8**, i8*** %5, align 8
  %36 = call i32 @getopt(i32 %34, i8** %35, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  store i32 %36, i32* %9, align 4
  %37 = icmp ne i32 %36, -1
  br i1 %37, label %38, label %84

38:                                               ; preds = %33
  %39 = load i32, i32* %9, align 4
  %40 = trunc i32 %39 to i8
  %41 = sext i8 %40 to i32
  switch i32 %41, label %81 [
    i32 52, label %42
    i32 65, label %44
    i32 102, label %47
    i32 72, label %59
    i32 104, label %61
    i32 105, label %63
    i32 80, label %67
    i32 112, label %69
    i32 115, label %72
    i32 83, label %76
    i32 116, label %78
    i32 63, label %80
  ]

42:                                               ; preds = %38
  %43 = load i32, i32* @PF_INET, align 4
  store i32 %43, i32* @family, align 4
  br label %83

44:                                               ; preds = %38
  %45 = load i32, i32* @send_to_all, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* @send_to_all, align 4
  br label %83

47:                                               ; preds = %38
  %48 = load i8*, i8** @optarg, align 8
  %49 = load i32, i32* @stdin, align 4
  %50 = call i32* @freopen(i8* %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 %49)
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i8*, i8** @optarg, align 8
  %54 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %53)
  br label %55

55:                                               ; preds = %52, %47
  %56 = load i32, i32* @stdin, align 4
  %57 = load i32, i32* @_IONBF, align 4
  %58 = call i32 @setvbuf(i32 %56, i32 0, i32 %57, i32 0)
  br label %83

59:                                               ; preds = %38
  %60 = load i8*, i8** @optarg, align 8
  store i8* %60, i8** %17, align 8
  br label %83

61:                                               ; preds = %38
  %62 = load i8*, i8** @optarg, align 8
  store i8* %62, i8** %13, align 8
  br label %83

63:                                               ; preds = %38
  %64 = load i32, i32* @LOG_PID, align 4
  %65 = load i32, i32* %10, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %10, align 4
  br label %83

67:                                               ; preds = %38
  %68 = load i8*, i8** @optarg, align 8
  store i8* %68, i8** %20, align 8
  br label %83

69:                                               ; preds = %38
  %70 = load i8*, i8** @optarg, align 8
  %71 = call i32 @pencode(i8* %70)
  store i32 %71, i32* %11, align 4
  br label %83

72:                                               ; preds = %38
  %73 = load i32, i32* @LOG_PERROR, align 4
  %74 = load i32, i32* %10, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %10, align 4
  br label %83

76:                                               ; preds = %38
  %77 = load i8*, i8** @optarg, align 8
  store i8* %77, i8** %21, align 8
  br label %83

78:                                               ; preds = %38
  %79 = load i8*, i8** @optarg, align 8
  store i8* %79, i8** %12, align 8
  br label %83

80:                                               ; preds = %38
  br label %81

81:                                               ; preds = %38, %80
  %82 = call i32 (...) @usage()
  br label %83

83:                                               ; preds = %81, %78, %76, %72, %69, %67, %63, %61, %59, %55, %44, %42
  br label %33

84:                                               ; preds = %33
  %85 = load i64, i64* @optind, align 8
  %86 = load i32, i32* %4, align 4
  %87 = sext i32 %86 to i64
  %88 = sub nsw i64 %87, %85
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %4, align 4
  %90 = load i64, i64* @optind, align 8
  %91 = load i8**, i8*** %5, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i64 %90
  store i8** %92, i8*** %5, align 8
  %93 = load i8*, i8** %13, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %105

95:                                               ; preds = %84
  %96 = load i8*, i8** %21, align 8
  %97 = load i8*, i8** %13, align 8
  %98 = load i8*, i8** %20, align 8
  %99 = call i64 @socksetup(i8* %96, i8* %97, i8* %98, %struct.socks** %6)
  store i64 %99, i64* %7, align 8
  %100 = load i64, i64* %7, align 8
  %101 = icmp sle i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %95
  %103 = call i32 @errx(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  br label %104

104:                                              ; preds = %102, %95
  br label %111

105:                                              ; preds = %84
  %106 = load i8*, i8** %21, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %110

108:                                              ; preds = %105
  %109 = call i32 @errx(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  br label %110

110:                                              ; preds = %108, %105
  store i64 0, i64* %7, align 8
  br label %111

111:                                              ; preds = %110, %104
  %112 = load i8*, i8** %12, align 8
  %113 = icmp eq i8* %112, null
  br i1 %113, label %114, label %116

114:                                              ; preds = %111
  %115 = call i8* (...) @getlogin()
  store i8* %115, i8** %12, align 8
  br label %116

116:                                              ; preds = %114, %111
  %117 = load i8*, i8** %13, align 8
  %118 = icmp eq i8* %117, null
  br i1 %118, label %119, label %123

119:                                              ; preds = %116
  %120 = load i8*, i8** %12, align 8
  %121 = load i32, i32* %10, align 4
  %122 = call i32 @openlog(i8* %120, i32 %121, i32 0)
  br label %123

123:                                              ; preds = %119, %116
  %124 = load i32, i32* @stdout, align 4
  %125 = call i32 @fclose(i32 %124)
  %126 = call i32 @time(i32* %8)
  %127 = getelementptr inbounds [26 x i8], [26 x i8]* %16, i64 0, i64 0
  %128 = call i32 @ctime_r(i32* %8, i8* %127)
  %129 = getelementptr inbounds [26 x i8], [26 x i8]* %16, i64 0, i64 19
  store i8 0, i8* %129, align 1
  %130 = getelementptr inbounds [26 x i8], [26 x i8]* %16, i64 0, i64 0
  %131 = getelementptr inbounds i8, i8* %130, i64 4
  store i8* %131, i8** %15, align 8
  %132 = load i8*, i8** %17, align 8
  %133 = icmp eq i8* %132, null
  br i1 %133, label %134, label %139

134:                                              ; preds = %123
  store i8* %28, i8** %17, align 8
  %135 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %136 = call i32 @gethostname(i8* %28, i32 %135)
  %137 = load i8*, i8** %17, align 8
  %138 = call i8* @strchrnul(i8* %137, i8 signext 46)
  store i8 0, i8* %138, align 1
  br label %139

139:                                              ; preds = %134, %123
  %140 = load i32, i32* %4, align 4
  %141 = icmp sgt i32 %140, 0
  br i1 %141, label %142, label %221

142:                                              ; preds = %139
  %143 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  store i8* %143, i8** %22, align 8
  %144 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  %145 = getelementptr inbounds i8, i8* %144, i64 1024
  %146 = getelementptr inbounds i8, i8* %145, i64 -2
  store i8* %146, i8** %23, align 8
  br label %147

147:                                              ; preds = %206, %142
  %148 = load i8**, i8*** %5, align 8
  %149 = load i8*, i8** %148, align 8
  %150 = icmp ne i8* %149, null
  br i1 %150, label %151, label %207

151:                                              ; preds = %147
  %152 = load i8**, i8*** %5, align 8
  %153 = load i8*, i8** %152, align 8
  %154 = call i64 @strlen(i8* %153)
  store i64 %154, i64* %24, align 8
  %155 = load i8*, i8** %22, align 8
  %156 = load i64, i64* %24, align 8
  %157 = getelementptr inbounds i8, i8* %155, i64 %156
  %158 = load i8*, i8** %23, align 8
  %159 = icmp ugt i8* %157, %158
  br i1 %159, label %160, label %174

160:                                              ; preds = %151
  %161 = load i8*, i8** %22, align 8
  %162 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  %163 = icmp ugt i8* %161, %162
  br i1 %163, label %164, label %174

164:                                              ; preds = %160
  %165 = load i32, i32* %11, align 4
  %166 = load i8*, i8** %15, align 8
  %167 = load i8*, i8** %17, align 8
  %168 = load i8*, i8** %12, align 8
  %169 = load %struct.socks*, %struct.socks** %6, align 8
  %170 = load i64, i64* %7, align 8
  %171 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  %172 = call i32 @logmessage(i32 %165, i8* %166, i8* %167, i8* %168, %struct.socks* %169, i64 %170, i8* %171)
  %173 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  store i8* %173, i8** %22, align 8
  br label %174

174:                                              ; preds = %164, %160, %151
  %175 = load i64, i64* %24, align 8
  %176 = icmp ugt i64 %175, 1023
  br i1 %176, label %177, label %188

177:                                              ; preds = %174
  %178 = load i32, i32* %11, align 4
  %179 = load i8*, i8** %15, align 8
  %180 = load i8*, i8** %17, align 8
  %181 = load i8*, i8** %12, align 8
  %182 = load %struct.socks*, %struct.socks** %6, align 8
  %183 = load i64, i64* %7, align 8
  %184 = load i8**, i8*** %5, align 8
  %185 = getelementptr inbounds i8*, i8** %184, i32 1
  store i8** %185, i8*** %5, align 8
  %186 = load i8*, i8** %184, align 8
  %187 = call i32 @logmessage(i32 %178, i8* %179, i8* %180, i8* %181, %struct.socks* %182, i64 %183, i8* %186)
  br label %206

188:                                              ; preds = %174
  %189 = load i8*, i8** %22, align 8
  %190 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  %191 = icmp ne i8* %189, %190
  br i1 %191, label %192, label %195

192:                                              ; preds = %188
  %193 = load i8*, i8** %22, align 8
  %194 = getelementptr inbounds i8, i8* %193, i32 1
  store i8* %194, i8** %22, align 8
  store i8 32, i8* %193, align 1
  br label %195

195:                                              ; preds = %192, %188
  %196 = load i8**, i8*** %5, align 8
  %197 = getelementptr inbounds i8*, i8** %196, i32 1
  store i8** %197, i8*** %5, align 8
  %198 = load i8*, i8** %196, align 8
  %199 = ptrtoint i8* %198 to i32
  %200 = load i8*, i8** %22, align 8
  %201 = load i64, i64* %24, align 8
  %202 = call i32 @bcopy(i32 %199, i8* %200, i64 %201)
  %203 = load i64, i64* %24, align 8
  %204 = load i8*, i8** %22, align 8
  %205 = getelementptr inbounds i8, i8* %204, i64 %203
  store i8* %205, i8** %22, align 8
  store i8 0, i8* %205, align 1
  br label %206

206:                                              ; preds = %195, %177
  br label %147

207:                                              ; preds = %147
  %208 = load i8*, i8** %22, align 8
  %209 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  %210 = icmp ne i8* %208, %209
  br i1 %210, label %211, label %220

211:                                              ; preds = %207
  %212 = load i32, i32* %11, align 4
  %213 = load i8*, i8** %15, align 8
  %214 = load i8*, i8** %17, align 8
  %215 = load i8*, i8** %12, align 8
  %216 = load %struct.socks*, %struct.socks** %6, align 8
  %217 = load i64, i64* %7, align 8
  %218 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  %219 = call i32 @logmessage(i32 %212, i8* %213, i8* %214, i8* %215, %struct.socks* %216, i64 %217, i8* %218)
  br label %220

220:                                              ; preds = %211, %207
  br label %237

221:                                              ; preds = %139
  br label %222

222:                                              ; preds = %227, %221
  %223 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  %224 = load i32, i32* @stdin, align 4
  %225 = call i32* @fgets(i8* %223, i32 1024, i32 %224)
  %226 = icmp ne i32* %225, null
  br i1 %226, label %227, label %236

227:                                              ; preds = %222
  %228 = load i32, i32* %11, align 4
  %229 = load i8*, i8** %15, align 8
  %230 = load i8*, i8** %17, align 8
  %231 = load i8*, i8** %12, align 8
  %232 = load %struct.socks*, %struct.socks** %6, align 8
  %233 = load i64, i64* %7, align 8
  %234 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  %235 = call i32 @logmessage(i32 %228, i8* %229, i8* %230, i8* %231, %struct.socks* %232, i64 %233, i8* %234)
  br label %222

236:                                              ; preds = %222
  br label %237

237:                                              ; preds = %236, %220
  %238 = call i32 @exit(i32 0) #4
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @unsetenv(i8*) #2

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i32* @freopen(i8*, i8*, i32) #2

declare dso_local i32 @err(i32, i8*, i8*) #2

declare dso_local i32 @setvbuf(i32, i32, i32, i32) #2

declare dso_local i32 @pencode(i8*) #2

declare dso_local i32 @usage(...) #2

declare dso_local i64 @socksetup(i8*, i8*, i8*, %struct.socks**) #2

declare dso_local i32 @errx(i32, i8*) #2

declare dso_local i8* @getlogin(...) #2

declare dso_local i32 @openlog(i8*, i32, i32) #2

declare dso_local i32 @fclose(i32) #2

declare dso_local i32 @time(i32*) #2

declare dso_local i32 @ctime_r(i32*, i8*) #2

declare dso_local i32 @gethostname(i8*, i32) #2

declare dso_local i8* @strchrnul(i8*, i8 signext) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @logmessage(i32, i8*, i8*, i8*, %struct.socks*, i64, i8*) #2

declare dso_local i32 @bcopy(i32, i8*, i64) #2

declare dso_local i32* @fgets(i8*, i32, i32) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
