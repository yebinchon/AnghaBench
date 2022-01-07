; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/hcseriald/extr_hcseriald.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/hcseriald/extr_hcseriald.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32 }

@FILENAME_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"df:n:s:h\00", align 1
@optarg = common dso_local global i8* null, align 8
@hcseriald = common dso_local global i8* null, align 8
@LOG_PID = common dso_local global i32 0, align 4
@LOG_NDELAY = common dso_local global i32 0, align 4
@LOG_USER = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Could not daemon(0, 0). %s (%d)\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"/var/run/%s.%s.pid\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Could not fopen(%s). %s (%d)\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@sighandler = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [38 x i8] c"Could not sigaction(SIGTERM). %s (%d)\00", align 1
@SIGHUP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [37 x i8] c"Could not sigaction(SIGHUP). %s (%d)\00", align 1
@SIGINT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [37 x i8] c"Could not sigaction(SIGINT). %s (%d)\00", align 1
@done = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.sigaction, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i32 115200, i32* %8, align 4
  store i32 1, i32* %10, align 4
  %15 = load i32, i32* @FILENAME_MAX, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %11, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %12, align 8
  store i32* null, i32** %13, align 8
  br label %19

19:                                               ; preds = %48, %2
  %20 = load i32, i32* %4, align 4
  %21 = load i8**, i8*** %5, align 8
  %22 = call i32 @getopt(i32 %20, i8** %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %22, i32* %9, align 4
  %23 = icmp ne i32 %22, -1
  br i1 %23, label %24, label %49

24:                                               ; preds = %19
  %25 = load i32, i32* %9, align 4
  switch i32 %25, label %43 [
    i32 100, label %26
    i32 102, label %27
    i32 110, label %29
    i32 115, label %31
    i32 104, label %42
  ]

26:                                               ; preds = %24
  store i32 0, i32* %10, align 4
  br label %48

27:                                               ; preds = %24
  %28 = load i8*, i8** @optarg, align 8
  store i8* %28, i8** %6, align 8
  br label %48

29:                                               ; preds = %24
  %30 = load i8*, i8** @optarg, align 8
  store i8* %30, i8** %7, align 8
  br label %48

31:                                               ; preds = %24
  %32 = load i8*, i8** @optarg, align 8
  %33 = call i32 @atoi(i8* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load i8**, i8*** %5, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @usage(i8* %39)
  br label %41

41:                                               ; preds = %36, %31
  br label %48

42:                                               ; preds = %24
  br label %43

43:                                               ; preds = %24, %42
  %44 = load i8**, i8*** %5, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @usage(i8* %46)
  br label %48

48:                                               ; preds = %43, %41, %29, %27, %26
  br label %19

49:                                               ; preds = %19
  %50 = load i8*, i8** %6, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = load i8*, i8** %7, align 8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %52, %49
  %56 = load i8**, i8*** %5, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @usage(i8* %58)
  br label %60

60:                                               ; preds = %55, %52
  %61 = load i8*, i8** @hcseriald, align 8
  %62 = load i32, i32* @LOG_PID, align 4
  %63 = load i32, i32* @LOG_NDELAY, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @LOG_USER, align 4
  %66 = call i32 @openlog(i8* %61, i32 %64, i32 %65)
  %67 = load i8*, i8** %6, align 8
  %68 = load i32, i32* %8, align 4
  %69 = load i8*, i8** %7, align 8
  %70 = call i32 @open_device(i8* %67, i32 %68, i8* %69)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %60
  %74 = call i64 @daemon(i32 0, i32 0)
  %75 = icmp slt i64 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %73
  %77 = load i32, i32* @LOG_ERR, align 4
  %78 = load i32, i32* @errno, align 4
  %79 = call i32 @strerror(i32 %78)
  %80 = sext i32 %79 to i64
  %81 = inttoptr i64 %80 to i8*
  %82 = load i32, i32* @errno, align 4
  %83 = call i32 (i32, i8*, i8*, i32, ...) @syslog(i32 %77, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %81, i32 %82)
  %84 = call i32 @exit(i32 1) #4
  unreachable

85:                                               ; preds = %73, %60
  %86 = trunc i64 %16 to i32
  %87 = load i8*, i8** @hcseriald, align 8
  %88 = load i8*, i8** %7, align 8
  %89 = call i32 @snprintf(i8* %18, i32 %86, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %87, i8* %88)
  %90 = call i32* @fopen(i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %90, i32** %13, align 8
  %91 = load i32*, i32** %13, align 8
  %92 = icmp eq i32* %91, null
  br i1 %92, label %93, label %100

93:                                               ; preds = %85
  %94 = load i32, i32* @LOG_ERR, align 4
  %95 = load i32, i32* @errno, align 4
  %96 = call i32 @strerror(i32 %95)
  %97 = load i32, i32* @errno, align 4
  %98 = call i32 (i32, i8*, i8*, i32, ...) @syslog(i32 %94, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %18, i32 %96, i32 %97)
  %99 = call i32 @exit(i32 1) #4
  unreachable

100:                                              ; preds = %85
  %101 = load i32*, i32** %13, align 8
  %102 = call i32 (...) @getpid()
  %103 = call i32 @fprintf(i32* %101, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %102)
  %104 = load i32*, i32** %13, align 8
  %105 = call i32 @fclose(i32* %104)
  %106 = call i32 @memset(%struct.sigaction* %14, i32 0, i32 4)
  %107 = load i32, i32* @sighandler, align 4
  %108 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %14, i32 0, i32 0
  store i32 %107, i32* %108, align 4
  %109 = load i32, i32* @SIGTERM, align 4
  %110 = call i64 @sigaction(i32 %109, %struct.sigaction* %14, i32* null)
  %111 = icmp slt i64 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %100
  %113 = load i32, i32* @LOG_ERR, align 4
  %114 = load i32, i32* @errno, align 4
  %115 = call i32 @strerror(i32 %114)
  %116 = sext i32 %115 to i64
  %117 = inttoptr i64 %116 to i8*
  %118 = load i32, i32* @errno, align 4
  %119 = call i32 (i32, i8*, i8*, i32, ...) @syslog(i32 %113, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i8* %117, i32 %118)
  %120 = call i32 @exit(i32 1) #4
  unreachable

121:                                              ; preds = %100
  %122 = load i32, i32* @SIGHUP, align 4
  %123 = call i64 @sigaction(i32 %122, %struct.sigaction* %14, i32* null)
  %124 = icmp slt i64 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %121
  %126 = load i32, i32* @LOG_ERR, align 4
  %127 = load i32, i32* @errno, align 4
  %128 = call i32 @strerror(i32 %127)
  %129 = sext i32 %128 to i64
  %130 = inttoptr i64 %129 to i8*
  %131 = load i32, i32* @errno, align 4
  %132 = call i32 (i32, i8*, i8*, i32, ...) @syslog(i32 %126, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i8* %130, i32 %131)
  %133 = call i32 @exit(i32 1) #4
  unreachable

134:                                              ; preds = %121
  %135 = load i32, i32* @SIGINT, align 4
  %136 = call i64 @sigaction(i32 %135, %struct.sigaction* %14, i32* null)
  %137 = icmp slt i64 %136, 0
  br i1 %137, label %138, label %147

138:                                              ; preds = %134
  %139 = load i32, i32* @LOG_ERR, align 4
  %140 = load i32, i32* @errno, align 4
  %141 = call i32 @strerror(i32 %140)
  %142 = sext i32 %141 to i64
  %143 = inttoptr i64 %142 to i8*
  %144 = load i32, i32* @errno, align 4
  %145 = call i32 (i32, i8*, i8*, i32, ...) @syslog(i32 %139, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i8* %143, i32 %144)
  %146 = call i32 @exit(i32 1) #4
  unreachable

147:                                              ; preds = %134
  br label %148

148:                                              ; preds = %152, %147
  %149 = load i32, i32* @done, align 4
  %150 = icmp ne i32 %149, 0
  %151 = xor i1 %150, true
  br i1 %151, label %152, label %154

152:                                              ; preds = %148
  %153 = call i32 @select(i32 0, i32* null, i32* null, i32* null, i32* null)
  br label %148

154:                                              ; preds = %148
  %155 = call i32 @unlink(i8* %18)
  %156 = load i32, i32* %9, align 4
  %157 = call i32 @close(i32 %156)
  %158 = call i32 (...) @closelog()
  store i32 0, i32* %3, align 4
  %159 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %159)
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local i32 @usage(i8*) #2

declare dso_local i32 @openlog(i8*, i32, i32) #2

declare dso_local i32 @open_device(i8*, i32, i8*) #2

declare dso_local i64 @daemon(i32, i32) #2

declare dso_local i32 @syslog(i32, i8*, i8*, i32, ...) #2

declare dso_local i32 @strerror(i32) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @fprintf(i32*, i8*, i32) #2

declare dso_local i32 @getpid(...) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @memset(%struct.sigaction*, i32, i32) #2

declare dso_local i64 @sigaction(i32, %struct.sigaction*, i32*) #2

declare dso_local i32 @select(i32, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @unlink(i8*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @closelog(...) #2

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
