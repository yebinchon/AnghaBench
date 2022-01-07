; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/simple_httpd/extr_simple_httpd.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/simple_httpd/extr_simple_httpd.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@homedir = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"/httphome\00", align 1
@logfile = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"jhttp.log\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"/var/log/jhttpd.log\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"d:f:g:l:p:vDh\00", align 1
@optarg = common dso_local global i8* null, align 8
@daemonize = common dso_local global i64 0, align 8
@verbose = common dso_local global i32 0, align 4
@fetch_mode = common dso_local global i8* null, align 8
@http_port = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [74 x i8] c"usage: simple_httpd [[-d directory][-g grpid][-l logfile][-p port][-vD]]\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"chdir\00", align 1
@W_OK = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [30 x i8] c"Server started with options \0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"port: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"html home: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"logfile: %s\0A\00", align 1
@WNOHANG = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [9 x i8] c"pid: %d\0A\00", align 1
@http_sock = common dso_local global i32 0, align 4
@con_sock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 65534, i32* %8, align 4
  %10 = load i8*, i8** @homedir, align 8
  %11 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @strcpy(i8* %10, i8* %11)
  %13 = call i64 (...) @geteuid()
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i8*, i8** @homedir, align 8
  %17 = call i32 @strcpy(i8* %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %21

18:                                               ; preds = %2
  %19 = load i8*, i8** @homedir, align 8
  %20 = call i32 @strcat(i8* %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %21

21:                                               ; preds = %18, %15
  %22 = call i64 (...) @geteuid()
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = load i8*, i8** @logfile, align 8
  %26 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %27 = call i32 @strcpy(i8* %25, i8* %26)
  %28 = load i8*, i8** @logfile, align 8
  %29 = call i32 @strcat(i8* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i8*, i8** @logfile, align 8
  %31 = call i32 @strcat(i8* %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %35

32:                                               ; preds = %21
  %33 = load i8*, i8** @logfile, align 8
  %34 = call i32 @strcpy(i8* %33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %24
  br label %36

36:                                               ; preds = %65, %35
  %37 = load i32, i32* %4, align 4
  %38 = load i8**, i8*** %5, align 8
  %39 = call i32 @getopt(i32 %37, i8** %38, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  store i32 %39, i32* %6, align 4
  %40 = icmp ne i32 %39, -1
  br i1 %40, label %41, label %66

41:                                               ; preds = %36
  %42 = load i32, i32* %6, align 4
  switch i32 %42, label %62 [
    i32 100, label %43
    i32 102, label %47
    i32 103, label %49
    i32 108, label %52
    i32 112, label %56
    i32 118, label %59
    i32 68, label %60
    i32 63, label %61
    i32 104, label %61
  ]

43:                                               ; preds = %41
  %44 = load i8*, i8** @homedir, align 8
  %45 = load i8*, i8** @optarg, align 8
  %46 = call i32 @strcpy(i8* %44, i8* %45)
  br label %65

47:                                               ; preds = %41
  store i64 0, i64* @daemonize, align 8
  store i32 1, i32* @verbose, align 4
  %48 = load i8*, i8** @optarg, align 8
  store i8* %48, i8** @fetch_mode, align 8
  br label %65

49:                                               ; preds = %41
  %50 = load i8*, i8** @optarg, align 8
  %51 = call i32 @atoi(i8* %50)
  store i32 %51, i32* %8, align 4
  br label %65

52:                                               ; preds = %41
  %53 = load i8*, i8** @logfile, align 8
  %54 = load i8*, i8** @optarg, align 8
  %55 = call i32 @strcpy(i8* %53, i8* %54)
  br label %65

56:                                               ; preds = %41
  %57 = load i8*, i8** @optarg, align 8
  %58 = call i32 @atoi(i8* %57)
  store i32 %58, i32* @http_port, align 4
  br label %65

59:                                               ; preds = %41
  store i32 1, i32* @verbose, align 4
  br label %65

60:                                               ; preds = %41
  store i64 0, i64* @daemonize, align 8
  br label %65

61:                                               ; preds = %41, %41
  br label %62

62:                                               ; preds = %41, %61
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.6, i64 0, i64 0))
  %64 = call i32 @exit(i32 1) #3
  unreachable

65:                                               ; preds = %60, %59, %56, %52, %49, %47, %43
  br label %36

66:                                               ; preds = %36
  %67 = load i32, i32* @http_port, align 4
  %68 = icmp eq i32 %67, 80
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = call i64 (...) @geteuid()
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  store i32 1080, i32* @http_port, align 4
  br label %73

73:                                               ; preds = %72, %69, %66
  %74 = load i8*, i8** @fetch_mode, align 8
  %75 = icmp eq i8* %74, null
  br i1 %75, label %76, label %86

76:                                               ; preds = %73
  %77 = load i8*, i8** @homedir, align 8
  %78 = call i64 @chdir(i8* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %76
  %81 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %82 = load i8*, i8** @homedir, align 8
  %83 = call i32 @puts(i8* %82)
  %84 = call i32 @exit(i32 1) #3
  unreachable

85:                                               ; preds = %76
  br label %86

86:                                               ; preds = %85, %73
  %87 = load i8*, i8** @logfile, align 8
  %88 = load i32, i32* @W_OK, align 4
  %89 = call i64 @access(i8* %87, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %86
  %92 = load i64, i64* @daemonize, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %91
  %95 = load i8*, i8** @logfile, align 8
  %96 = load i32, i32* @O_WRONLY, align 4
  %97 = call i32 @open(i8* %95, i32 %96)
  store i32 %97, i32* %7, align 4
  %98 = load i8*, i8** @logfile, align 8
  %99 = call i32 @chmod(i8* %98, i32 384)
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @close(i32 %100)
  br label %102

102:                                              ; preds = %94, %91, %86
  %103 = call i32 (...) @init_servconnection()
  %104 = load i32, i32* @verbose, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %122

106:                                              ; preds = %102
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  %108 = load i32, i32* @http_port, align 4
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 %108)
  %110 = load i8*, i8** @fetch_mode, align 8
  %111 = icmp eq i8* %110, null
  br i1 %111, label %112, label %115

112:                                              ; preds = %106
  %113 = load i8*, i8** @homedir, align 8
  %114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i8* %113)
  br label %115

115:                                              ; preds = %112, %106
  %116 = load i64, i64* @daemonize, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load i8*, i8** @logfile, align 8
  %120 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i8* %119)
  br label %121

121:                                              ; preds = %118, %115
  br label %122

122:                                              ; preds = %121, %102
  %123 = load i64, i64* @daemonize, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %141

125:                                              ; preds = %122
  %126 = call i32 (...) @fork()
  store i32 %126, i32* %9, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %138

128:                                              ; preds = %125
  %129 = load i32, i32* @WNOHANG, align 4
  %130 = call i32 @wait3(i32 0, i32 %129, i32 0)
  %131 = load i32, i32* @verbose, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %128
  %134 = load i32, i32* %9, align 4
  %135 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i32 %134)
  br label %136

136:                                              ; preds = %133, %128
  %137 = call i32 @exit(i32 0) #3
  unreachable

138:                                              ; preds = %125
  %139 = load i32, i32* @WNOHANG, align 4
  %140 = call i32 @wait3(i32 0, i32 %139, i32 0)
  br label %141

141:                                              ; preds = %138, %122
  %142 = load i8*, i8** @fetch_mode, align 8
  %143 = icmp eq i8* %142, null
  br i1 %143, label %144, label %147

144:                                              ; preds = %141
  %145 = load i32, i32* %8, align 4
  %146 = call i32 @setpgrp(i32 0, i32 %145)
  br label %147

147:                                              ; preds = %144, %141
  %148 = load i32, i32* @http_sock, align 4
  %149 = call i64 @listen(i32 %148, i32 15)
  %150 = icmp slt i64 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %147
  %152 = call i32 @exit(i32 1) #3
  unreachable

153:                                              ; preds = %147
  br label %154

154:                                              ; preds = %158, %153
  %155 = call i32 (...) @wait_connection()
  %156 = call i32 (...) @fork()
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %154
  %159 = load i32, i32* @WNOHANG, align 4
  %160 = call i32 @wait3(i32 0, i32 %159, i32 0)
  %161 = load i32, i32* @con_sock, align 4
  %162 = call i32 @close(i32 %161)
  br label %154

163:                                              ; preds = %154
  %164 = call i32 (...) @http_request()
  %165 = load i32, i32* @WNOHANG, align 4
  %166 = call i32 @wait3(i32 0, i32 %165, i32 0)
  %167 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @geteuid(...) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @chdir(i8*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i64 @access(i8*, i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @chmod(i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @init_servconnection(...) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @wait3(i32, i32, i32) #1

declare dso_local i32 @setpgrp(i32, i32) #1

declare dso_local i64 @listen(i32, i32) #1

declare dso_local i32 @wait_connection(...) #1

declare dso_local i32 @http_request(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
