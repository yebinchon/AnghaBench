; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/apmd/extr_apmd.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/apmd/extr_apmd.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOG_NDELAY = common dso_local global i32 0, align 4
@LOG_PID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"df:sv\00", align 1
@debug_level = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@apmd_configfile = common dso_local global i32 0, align 4
@soft_power_state_change = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"unknown option `%c'\00", align 1
@LOG_PERROR = common dso_local global i32 0, align 4
@LOG_DAEMON = common dso_local global i32 0, align 4
@LOG_NOTICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@signal_fd = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"pipe\00", align 1
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"fcntl\00", align 1
@APM_NORM_DEVICEFILE = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@apmnorm_fd = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"cannot open device file `%s'\00", align 1
@F_SETFD = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [51 x i8] c"cannot set close-on-exec flag for device file '%s'\00", align 1
@APM_CTL_DEVICEFILE = common dso_local global i32 0, align 4
@apmctl_fd = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@NICE_INCR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 1, i32* %7, align 4
  %10 = load i32, i32* @LOG_NDELAY, align 4
  %11 = load i32, i32* @LOG_PID, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* %9, align 4
  br label %13

13:                                               ; preds = %30, %2
  %14 = load i32, i32* %4, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = call i32 @getopt(i32 %14, i8** %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %16, i32* %6, align 4
  %17 = icmp ne i32 %16, -1
  br i1 %17, label %18, label %31

18:                                               ; preds = %13
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %27 [
    i32 100, label %20
    i32 102, label %23
    i32 115, label %25
    i32 118, label %26
  ]

20:                                               ; preds = %18
  store i32 0, i32* %7, align 4
  %21 = load i32, i32* @debug_level, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* @debug_level, align 4
  br label %30

23:                                               ; preds = %18
  %24 = load i32, i32* @optarg, align 4
  store i32 %24, i32* @apmd_configfile, align 4
  br label %30

25:                                               ; preds = %18
  store i32 1, i32* @soft_power_state_change, align 4
  br label %30

26:                                               ; preds = %18
  store i32 1, i32* @verbose, align 4
  br label %30

27:                                               ; preds = %18
  %28 = load i32, i32* %6, align 4
  %29 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %27, %26, %25, %23, %20
  br label %13

31:                                               ; preds = %13
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = call i32 @daemon(i32 0, i32 0)
  br label %36

36:                                               ; preds = %34, %31
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* @LOG_PERROR, align 4
  %41 = load i32, i32* %9, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %39, %36
  %44 = load i8**, i8*** %5, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i8* @strrchr(i8* %46, i8 signext 47)
  store i8* %47, i8** %8, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load i8*, i8** %8, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  br label %57

53:                                               ; preds = %43
  %54 = load i8**, i8*** %5, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 0
  %56 = load i8*, i8** %55, align 8
  br label %57

57:                                               ; preds = %53, %50
  %58 = phi i8* [ %52, %50 ], [ %56, %53 ]
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @LOG_DAEMON, align 4
  %61 = call i32 @openlog(i8* %58, i32 %59, i32 %60)
  %62 = load i32, i32* @LOG_NOTICE, align 4
  %63 = call i32 @syslog(i32 %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %64 = load i32*, i32** @signal_fd, align 8
  %65 = call i64 @pipe(i32* %64)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %57
  %68 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %69

69:                                               ; preds = %67, %57
  %70 = load i32*, i32** @signal_fd, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @F_SETFL, align 4
  %74 = load i32, i32* @O_NONBLOCK, align 4
  %75 = call i32 @fcntl(i32 %72, i32 %73, i32 %74)
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %69
  %78 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %69
  %80 = load i32, i32* @APM_NORM_DEVICEFILE, align 4
  %81 = load i32, i32* @O_RDWR, align 4
  %82 = call i32 @open(i32 %80, i32 %81)
  store i32 %82, i32* @apmnorm_fd, align 4
  %83 = icmp eq i32 %82, -1
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load i32, i32* @APM_NORM_DEVICEFILE, align 4
  %86 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %85)
  br label %87

87:                                               ; preds = %84, %79
  %88 = load i32, i32* @apmnorm_fd, align 4
  %89 = load i32, i32* @F_SETFD, align 4
  %90 = call i32 @fcntl(i32 %88, i32 %89, i32 1)
  %91 = icmp eq i32 %90, -1
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load i32, i32* @APM_NORM_DEVICEFILE, align 4
  %94 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %92, %87
  %96 = load i32, i32* @APM_CTL_DEVICEFILE, align 4
  %97 = load i32, i32* @O_RDWR, align 4
  %98 = call i32 @open(i32 %96, i32 %97)
  store i32 %98, i32* @apmctl_fd, align 4
  %99 = icmp eq i32 %98, -1
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load i32, i32* @APM_CTL_DEVICEFILE, align 4
  %102 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %101)
  br label %103

103:                                              ; preds = %100, %95
  %104 = load i32, i32* @apmctl_fd, align 4
  %105 = load i32, i32* @F_SETFD, align 4
  %106 = call i32 @fcntl(i32 %104, i32 %105, i32 1)
  %107 = icmp eq i32 %106, -1
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load i32, i32* @APM_CTL_DEVICEFILE, align 4
  %110 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0), i32 %109)
  br label %111

111:                                              ; preds = %108, %103
  %112 = call i32 (...) @restart()
  %113 = call i32 (...) @write_pid()
  %114 = call i32 (...) @event_loop()
  %115 = load i32, i32* @EXIT_SUCCESS, align 4
  %116 = call i32 @exit(i32 %115) #3
  unreachable
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @daemon(i32, i32) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @openlog(i8*, i32, i32) #1

declare dso_local i32 @syslog(i32, i8*) #1

declare dso_local i64 @pipe(i32*) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i32 @open(i32, i32) #1

declare dso_local i32 @restart(...) #1

declare dso_local i32 @write_pid(...) #1

declare dso_local i32 @event_loop(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
