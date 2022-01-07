; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/portsnap/phttpget/extr_phttpget.c_readenv.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/portsnap/phttpget/extr_phttpget.c_readenv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [11 x i8] c"HTTP_PROXY\00", align 1
@env_HTTP_PROXY = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"http_proxy\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"http://\00", align 1
@proxyport = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"3128\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"HTTP_PROXY_AUTH\00", align 1
@env_HTTP_PROXY_AUTH = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"basic:\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"asprintf\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@proxyauth = common dso_local global i32* null, align 8
@.str.10 = private unnamed_addr constant [32 x i8] c"Proxy-Authorization: Basic %s\0D\0A\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"HTTP_USER_AGENT\00", align 1
@env_HTTP_USER_AGENT = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [13 x i8] c"phttpget/0.1\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"HTTP_TIMEOUT\00", align 1
@env_HTTP_TIMEOUT = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [44 x i8] c"HTTP_TIMEOUT (%s) is not a positive integer\00", align 1
@timo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @readenv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @readenv() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* null, i8** %4, align 8
  store i8* null, i8** %5, align 8
  %7 = call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %8 = bitcast i8* %7 to i32*
  store i32* %8, i32** @env_HTTP_PROXY, align 8
  %9 = load i32*, i32** @env_HTTP_PROXY, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %0
  %12 = call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** @env_HTTP_PROXY, align 8
  br label %14

14:                                               ; preds = %11, %0
  %15 = load i32*, i32** @env_HTTP_PROXY, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %42

17:                                               ; preds = %14
  %18 = load i32*, i32** @env_HTTP_PROXY, align 8
  %19 = call i64 @strncmp(i32* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 7)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32*, i32** @env_HTTP_PROXY, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 7
  store i32* %23, i32** @env_HTTP_PROXY, align 8
  br label %24

24:                                               ; preds = %21, %17
  %25 = load i32*, i32** @env_HTTP_PROXY, align 8
  %26 = call i8* @strchr(i32* %25, i8 signext 47)
  store i8* %26, i8** %3, align 8
  %27 = load i8*, i8** %3, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i8*, i8** %3, align 8
  store i8 0, i8* %30, align 1
  br label %31

31:                                               ; preds = %29, %24
  %32 = load i32*, i32** @env_HTTP_PROXY, align 8
  %33 = call i8* @strchr(i32* %32, i8 signext 58)
  store i8* %33, i8** %3, align 8
  %34 = load i8*, i8** %3, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i8*, i8** %3, align 8
  store i8 0, i8* %37, align 1
  %38 = load i8*, i8** %3, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  store i8* %39, i8** @proxyport, align 8
  br label %41

40:                                               ; preds = %31
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** @proxyport, align 8
  br label %41

41:                                               ; preds = %40, %36
  br label %42

42:                                               ; preds = %41, %14
  %43 = call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  store i8* %43, i8** @env_HTTP_PROXY_AUTH, align 8
  %44 = load i32*, i32** @env_HTTP_PROXY, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %58

46:                                               ; preds = %42
  %47 = load i8*, i8** @env_HTTP_PROXY_AUTH, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %58

49:                                               ; preds = %46
  %50 = load i8*, i8** @env_HTTP_PROXY_AUTH, align 8
  %51 = call i64 @strncasecmp(i8* %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 6)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = call i8* @strsep(i8** @env_HTTP_PROXY_AUTH, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %55 = call i8* @strsep(i8** @env_HTTP_PROXY_AUTH, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %56 = call i8* @strsep(i8** @env_HTTP_PROXY_AUTH, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i8* %56, i8** %4, align 8
  %57 = load i8*, i8** @env_HTTP_PROXY_AUTH, align 8
  store i8* %57, i8** %5, align 8
  br label %58

58:                                               ; preds = %53, %49, %46, %42
  %59 = load i8*, i8** %4, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %91

61:                                               ; preds = %58
  %62 = load i8*, i8** %5, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %91

64:                                               ; preds = %61
  %65 = load i8*, i8** %4, align 8
  %66 = load i8*, i8** %5, align 8
  %67 = call i32 (i8**, i8*, i8*, ...) @asprintf(i8** %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* %65, i8* %66)
  %68 = load i8*, i8** %1, align 8
  %69 = icmp eq i8* %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %64
  %73 = load i8*, i8** %1, align 8
  %74 = call i8* @b64enc(i8* %73)
  store i8* %74, i8** %2, align 8
  %75 = load i8*, i8** %2, align 8
  %76 = icmp eq i8* %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %72
  %80 = load i8*, i8** %2, align 8
  %81 = call i32 (i8**, i8*, i8*, ...) @asprintf(i8** bitcast (i32** @proxyauth to i8**), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i8* %80)
  %82 = load i32*, i32** @proxyauth, align 8
  %83 = icmp eq i32* %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %79
  %87 = load i8*, i8** %1, align 8
  %88 = call i32 @free(i8* %87)
  %89 = load i8*, i8** %2, align 8
  %90 = call i32 @free(i8* %89)
  br label %92

91:                                               ; preds = %61, %58
  store i32* null, i32** @proxyauth, align 8
  br label %92

92:                                               ; preds = %91, %86
  %93 = call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0))
  store i8* %93, i8** @env_HTTP_USER_AGENT, align 8
  %94 = load i8*, i8** @env_HTTP_USER_AGENT, align 8
  %95 = icmp eq i8* %94, null
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i8** @env_HTTP_USER_AGENT, align 8
  br label %97

97:                                               ; preds = %96, %92
  %98 = call i8* @getenv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0))
  store i8* %98, i8** @env_HTTP_TIMEOUT, align 8
  %99 = load i8*, i8** @env_HTTP_TIMEOUT, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %122

101:                                              ; preds = %97
  %102 = load i8*, i8** @env_HTTP_TIMEOUT, align 8
  %103 = call i64 @strtol(i8* %102, i8** %3, i32 10)
  store i64 %103, i64* %6, align 8
  %104 = load i8*, i8** @env_HTTP_TIMEOUT, align 8
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %116, label %108

108:                                              ; preds = %101
  %109 = load i8*, i8** %3, align 8
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %108
  %114 = load i64, i64* %6, align 8
  %115 = icmp slt i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %113, %108, %101
  %117 = load i8*, i8** @env_HTTP_TIMEOUT, align 8
  %118 = call i32 @warnx(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.14, i64 0, i64 0), i8* %117)
  br label %121

119:                                              ; preds = %113
  %120 = load i64, i64* %6, align 8
  store i64 %120, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @timo, i32 0, i32 0), align 8
  br label %121

121:                                              ; preds = %119, %116
  br label %122

122:                                              ; preds = %121, %97
  ret void
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @strncmp(i32*, i8*, i32) #1

declare dso_local i8* @strchr(i32*, i8 signext) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*, ...) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i8* @b64enc(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @warnx(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
