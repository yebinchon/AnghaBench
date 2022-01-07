; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mailwrapper/extr_mailwrapper.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mailwrapper/extr_mailwrapper.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arglist = type { i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"mailwrapper\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"%s/etc/mail/mailer.conf\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"LOCALBASE\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"/usr/local\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@_PATH_MAILERCONF = common dso_local global i8* null, align 8
@LOG_PID = common dso_local global i32 0, align 4
@LOG_MAIL = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"cannot open %s, using %s as default MTA\00", align 1
@_PATH_DEFAULTMTA = common dso_local global i8* null, align 8
@EX_OSERR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"cannot exec %s\00", align 1
@EX_CONFIG = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"no mapping in %s\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"cannot parse line %lu\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"parse error in %s at line %lu\00", align 1
@WS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.arglist, align 4
  store i32 0, i32* %4, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8** %2, i8*** %7, align 8
  %22 = load i32, i32* @MAXPATHLEN, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %15, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %16, align 8
  store i64 0, i64* %19, align 8
  %26 = call i8* (...) @getprogname()
  store i8* %26, i8** %14, align 8
  %27 = call i32 @setprogname(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %28 = call i32 @initarg(%struct.arglist* %21)
  %29 = load i8**, i8*** %6, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @addarg(%struct.arglist* %21, i8* %31)
  %33 = load i32, i32* @MAXPATHLEN, align 4
  %34 = call i8* @getenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %3
  %37 = call i8* @getenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %39

38:                                               ; preds = %3
  br label %39

39:                                               ; preds = %38, %36
  %40 = phi i8* [ %37, %36 ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), %38 ]
  %41 = call i32 @snprintf(i8* %25, i32 %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  store i8* %25, i8** %17, align 8
  %42 = call i32* @fopen(i8* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32* %42, i32** %8, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i8*, i8** @_PATH_MAILERCONF, align 8
  store i8* %45, i8** %17, align 8
  br label %46

46:                                               ; preds = %44, %39
  %47 = load i32*, i32** %8, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %72

49:                                               ; preds = %46
  %50 = load i8*, i8** %17, align 8
  %51 = call i32* @fopen(i8* %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32* %51, i32** %8, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %72

53:                                               ; preds = %49
  %54 = call i32 @addarg(%struct.arglist* %21, i8* null)
  %55 = call i8* (...) @getprogname()
  %56 = load i32, i32* @LOG_PID, align 4
  %57 = load i32, i32* @LOG_MAIL, align 4
  %58 = call i32 @openlog(i8* %55, i32 %56, i32 %57)
  %59 = load i32, i32* @LOG_INFO, align 4
  %60 = load i8*, i8** %17, align 8
  %61 = load i8*, i8** @_PATH_DEFAULTMTA, align 8
  %62 = call i32 @syslog(i32 %59, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i8* %60, i8* %61)
  %63 = call i32 (...) @closelog()
  %64 = load i8*, i8** @_PATH_DEFAULTMTA, align 8
  %65 = getelementptr inbounds %struct.arglist, %struct.arglist* %21, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i8**, i8*** %7, align 8
  %68 = call i32 @execve(i8* %64, i32 %66, i8** %67)
  %69 = load i32, i32* @EX_OSERR, align 4
  %70 = load i8*, i8** @_PATH_DEFAULTMTA, align 8
  %71 = call i32 @err(i32 %69, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8* %70)
  br label %72

72:                                               ; preds = %53, %49, %46
  br label %73

73:                                               ; preds = %142, %102, %72
  %74 = load i32*, i32** %8, align 8
  %75 = call i8* @fparseln(i32* %74, i64* %18, i64* %19, i32* null, i32 0)
  store i8* %75, i8** %9, align 8
  %76 = icmp eq i8* %75, null
  br i1 %76, label %77, label %90

77:                                               ; preds = %73
  %78 = load i32*, i32** %8, align 8
  %79 = call i64 @feof(i32* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load i32, i32* @EX_CONFIG, align 4
  %83 = load i8*, i8** %17, align 8
  %84 = call i32 (i32, i8*, i8*, ...) @errx(i32 %82, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i8* %83)
  br label %85

85:                                               ; preds = %81, %77
  %86 = load i32, i32* @EX_CONFIG, align 4
  %87 = load i64, i64* %19, align 8
  %88 = inttoptr i64 %87 to i8*
  %89 = call i32 @err(i32 %86, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i8* %88)
  br label %90

90:                                               ; preds = %85, %73
  %91 = load i8*, i8** %9, align 8
  store i8* %91, i8** %10, align 8
  %92 = load i8*, i8** %10, align 8
  %93 = call i32 @strspn(i8* %92, i32 ptrtoint ([4 x i8]* @.str.9 to i32))
  %94 = load i8*, i8** %10, align 8
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i8, i8* %94, i64 %95
  store i8* %96, i8** %10, align 8
  %97 = load i8*, i8** %10, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 0
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %90
  %103 = load i8*, i8** %9, align 8
  %104 = call i32 @free(i8* %103)
  br label %73

105:                                              ; preds = %90
  %106 = call i8* @strsep(i8** %10, i32 ptrtoint ([4 x i8]* @.str.9 to i32))
  store i8* %106, i8** %11, align 8
  %107 = icmp eq i8* %106, null
  br i1 %107, label %111, label %108

108:                                              ; preds = %105
  %109 = load i8*, i8** %10, align 8
  %110 = icmp eq i8* %109, null
  br i1 %110, label %111, label %112

111:                                              ; preds = %108, %105
  br label %172

112:                                              ; preds = %108
  %113 = load i8*, i8** %10, align 8
  %114 = call i32 @strspn(i8* %113, i32 ptrtoint ([4 x i8]* @.str.9 to i32))
  %115 = load i8*, i8** %10, align 8
  %116 = sext i32 %114 to i64
  %117 = getelementptr inbounds i8, i8* %115, i64 %116
  store i8* %117, i8** %10, align 8
  %118 = call i8* @strsep(i8** %10, i32 ptrtoint ([4 x i8]* @.str.9 to i32))
  store i8* %118, i8** %12, align 8
  %119 = icmp eq i8* %118, null
  br i1 %119, label %120, label %121

120:                                              ; preds = %112
  br label %172

121:                                              ; preds = %112
  %122 = load i8*, i8** %11, align 8
  %123 = load i8*, i8** %14, align 8
  %124 = call i64 @strcmp(i8* %122, i8* %123)
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %142

126:                                              ; preds = %121
  %127 = call i8* @strsep(i8** %10, i32 ptrtoint ([4 x i8]* @.str.9 to i32))
  store i8* %127, i8** %13, align 8
  br label %128

128:                                              ; preds = %139, %126
  %129 = load i8*, i8** %13, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %131, label %141

131:                                              ; preds = %128
  %132 = load i8*, i8** %13, align 8
  %133 = load i8, i8* %132, align 1
  %134 = icmp ne i8 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %131
  %136 = load i8*, i8** %13, align 8
  %137 = call i32 @addarg(%struct.arglist* %21, i8* %136)
  br label %138

138:                                              ; preds = %135, %131
  br label %139

139:                                              ; preds = %138
  %140 = call i8* @strsep(i8** %10, i32 ptrtoint ([4 x i8]* @.str.9 to i32))
  store i8* %140, i8** %13, align 8
  br label %128

141:                                              ; preds = %128
  br label %145

142:                                              ; preds = %121
  %143 = load i8*, i8** %9, align 8
  %144 = call i32 @free(i8* %143)
  br label %73

145:                                              ; preds = %141
  %146 = load i32*, i32** %8, align 8
  %147 = call i32 @fclose(i32* %146)
  store i32 1, i32* %20, align 4
  br label %148

148:                                              ; preds = %159, %145
  %149 = load i32, i32* %20, align 4
  %150 = load i32, i32* %5, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %162

152:                                              ; preds = %148
  %153 = load i8**, i8*** %6, align 8
  %154 = load i32, i32* %20, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8*, i8** %153, i64 %155
  %157 = load i8*, i8** %156, align 8
  %158 = call i32 @addarg(%struct.arglist* %21, i8* %157)
  br label %159

159:                                              ; preds = %152
  %160 = load i32, i32* %20, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %20, align 4
  br label %148

162:                                              ; preds = %148
  %163 = call i32 @addarg(%struct.arglist* %21, i8* null)
  %164 = load i8*, i8** %12, align 8
  %165 = getelementptr inbounds %struct.arglist, %struct.arglist* %21, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load i8**, i8*** %7, align 8
  %168 = call i32 @execve(i8* %164, i32 %166, i8** %167)
  %169 = load i32, i32* @EX_OSERR, align 4
  %170 = load i8*, i8** %12, align 8
  %171 = call i32 @err(i32 %169, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8* %170)
  br label %172

172:                                              ; preds = %162, %120, %111
  %173 = load i32, i32* @EX_CONFIG, align 4
  %174 = load i8*, i8** %17, align 8
  %175 = load i64, i64* %19, align 8
  %176 = inttoptr i64 %175 to i8*
  %177 = call i32 (i32, i8*, i8*, ...) @errx(i32 %173, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i8* %174, i8* %176)
  %178 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %178)
  %179 = load i32, i32* %4, align 4
  ret i32 %179
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @getprogname(...) #2

declare dso_local i32 @setprogname(i8*) #2

declare dso_local i32 @initarg(%struct.arglist*) #2

declare dso_local i32 @addarg(%struct.arglist*, i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i8* @getenv(i8*) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @openlog(i8*, i32, i32) #2

declare dso_local i32 @syslog(i32, i8*, i8*, i8*) #2

declare dso_local i32 @closelog(...) #2

declare dso_local i32 @execve(i8*, i32, i8**) #2

declare dso_local i32 @err(i32, i8*, i8*) #2

declare dso_local i8* @fparseln(i32*, i64*, i64*, i32*, i32) #2

declare dso_local i64 @feof(i32*) #2

declare dso_local i32 @errx(i32, i8*, i8*, ...) #2

declare dso_local i32 @strspn(i8*, i32) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i8* @strsep(i8**, i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
