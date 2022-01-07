; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/autofs/extr_autounmountd.c_main_autounmountd.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/autofs/extr_autounmountd.c_main_autounmountd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kevent = type { i32 }
%struct.pidfh = type { i32 }

@AUTOUNMOUNTD_PIDFILE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"dr:t:v\00", align 1
@optarg = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"retry time must be greater than zero\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"expiration time must be greater than zero\00", align 1
@errno = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"daemon already running, pid: %jd.\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"cannot open or create pidfile \22%s\22\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"cannot daemonize\00", align 1
@automounted = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"kqueue\00", align 1
@EVFILT_FS = common dso_local global i32 0, align 4
@EV_ADD = common dso_local global i32 0, align 4
@EV_CLEAR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"kevent\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"no filesystems to expire\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"some filesystems expire in %ld  seconds\00", align 1
@.str.10 = private unnamed_addr constant [68 x i8] c"some expired filesystems remain mounted, will retry in %ld  seconds\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main_autounmountd(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.kevent, align 4
  %6 = alloca %struct.pidfh*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %18 = load i8*, i8** @AUTOUNMOUNTD_PIDFILE, align 8
  store i8* %18, i8** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 600, i32* %13, align 4
  store i32 600, i32* %14, align 4
  store i32 0, i32* %17, align 4
  br label %19

19:                                               ; preds = %41, %2
  %20 = load i32, i32* %3, align 4
  %21 = load i8**, i8*** %4, align 8
  %22 = call i32 @getopt(i32 %20, i8** %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %22, i32* %9, align 4
  %23 = icmp ne i32 %22, -1
  br i1 %23, label %24, label %42

24:                                               ; preds = %19
  %25 = load i32, i32* %9, align 4
  switch i32 %25, label %39 [
    i32 100, label %26
    i32 114, label %29
    i32 116, label %32
    i32 118, label %35
    i32 63, label %38
  ]

26:                                               ; preds = %24
  store i32 1, i32* %17, align 4
  %27 = load i32, i32* %10, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %10, align 4
  br label %41

29:                                               ; preds = %24
  %30 = load i32, i32* @optarg, align 4
  %31 = call i32 @atoi(i32 %30)
  store i32 %31, i32* %14, align 4
  br label %41

32:                                               ; preds = %24
  %33 = load i32, i32* @optarg, align 4
  %34 = call i32 @atoi(i32 %33)
  store i32 %34, i32* %13, align 4
  br label %41

35:                                               ; preds = %24
  %36 = load i32, i32* %10, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %10, align 4
  br label %41

38:                                               ; preds = %24
  br label %39

39:                                               ; preds = %24, %38
  %40 = call i32 (...) @usage_autounmountd()
  br label %41

41:                                               ; preds = %39, %35, %32, %29, %26
  br label %19

42:                                               ; preds = %19
  %43 = load i64, i64* @optind, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = sub nsw i64 %45, %43
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* %3, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = call i32 (...) @usage_autounmountd()
  br label %52

52:                                               ; preds = %50, %42
  %53 = load i32, i32* %14, align 4
  %54 = icmp sle i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = call i32 (i32, i8*, ...) @log_errx(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %52
  %58 = load i32, i32* %13, align 4
  %59 = icmp sle i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = call i32 (i32, i8*, ...) @log_errx(i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %57
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @log_init(i32 %63)
  %65 = load i8*, i8** %8, align 8
  %66 = call %struct.pidfh* @pidfile_open(i8* %65, i32 384, i64* %7)
  store %struct.pidfh* %66, %struct.pidfh** %6, align 8
  %67 = load %struct.pidfh*, %struct.pidfh** %6, align 8
  %68 = icmp eq %struct.pidfh* %67, null
  br i1 %68, label %69, label %80

69:                                               ; preds = %62
  %70 = load i64, i64* @errno, align 8
  %71 = load i64, i64* @EEXIST, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = load i64, i64* %7, align 8
  %75 = trunc i64 %74 to i32
  %76 = call i32 (i32, i8*, ...) @log_errx(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %73, %69
  %78 = load i8*, i8** %8, align 8
  %79 = call i32 (i32, i8*, ...) @log_err(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* %78)
  br label %80

80:                                               ; preds = %77, %62
  %81 = load i32, i32* %17, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %80
  %84 = call i32 @daemon(i32 0, i32 0)
  %85 = icmp eq i32 %84, -1
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = call i32 @log_warn(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %88 = load %struct.pidfh*, %struct.pidfh** %6, align 8
  %89 = call i32 @pidfile_remove(%struct.pidfh* %88)
  %90 = call i32 @exit(i32 1) #3
  unreachable

91:                                               ; preds = %83
  br label %92

92:                                               ; preds = %91, %80
  %93 = load %struct.pidfh*, %struct.pidfh** %6, align 8
  %94 = call i32 @pidfile_write(%struct.pidfh* %93)
  %95 = call i32 @TAILQ_INIT(i32* @automounted)
  %96 = call i32 (...) @kqueue()
  store i32 %96, i32* %12, align 4
  %97 = load i32, i32* %12, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %92
  %100 = call i32 (i32, i8*, ...) @log_err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  br label %101

101:                                              ; preds = %99, %92
  %102 = load i32, i32* @EVFILT_FS, align 4
  %103 = load i32, i32* @EV_ADD, align 4
  %104 = load i32, i32* @EV_CLEAR, align 4
  %105 = or i32 %103, %104
  %106 = call i32 @EV_SET(%struct.kevent* %5, i32 0, i32 %102, i32 %105, i32 0, i32 0, i32* null)
  %107 = load i32, i32* %12, align 4
  %108 = call i32 @kevent(i32 %107, %struct.kevent* %5, i32 1, i32* null, i32 0, i32* null)
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* %11, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %101
  %112 = call i32 (i32, i8*, ...) @log_err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  br label %113

113:                                              ; preds = %111, %101
  br label %114

114:                                              ; preds = %140, %113
  %115 = call i32 (...) @refresh_automounted()
  %116 = load i32, i32* %13, align 4
  %117 = call i32 @expire_automounted(i32 %116)
  store i32 %117, i32* %15, align 4
  %118 = load i32, i32* %15, align 4
  %119 = icmp eq i32 %118, -1
  br i1 %119, label %120, label %123

120:                                              ; preds = %114
  %121 = load i32, i32* %15, align 4
  store i32 %121, i32* %16, align 4
  %122 = call i32 (i8*, ...) @log_debugx(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  br label %140

123:                                              ; preds = %114
  %124 = load i32, i32* %15, align 4
  %125 = load i32, i32* %13, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %134

127:                                              ; preds = %123
  %128 = load i32, i32* %13, align 4
  %129 = load i32, i32* %15, align 4
  %130 = call i32 @difftime(i32 %128, i32 %129)
  store i32 %130, i32* %16, align 4
  %131 = load i32, i32* %16, align 4
  %132 = sext i32 %131 to i64
  %133 = call i32 (i8*, ...) @log_debugx(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0), i64 %132)
  br label %139

134:                                              ; preds = %123
  %135 = load i32, i32* %14, align 4
  store i32 %135, i32* %16, align 4
  %136 = load i32, i32* %16, align 4
  %137 = sext i32 %136 to i64
  %138 = call i32 (i8*, ...) @log_debugx(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.10, i64 0, i64 0), i64 %137)
  br label %139

139:                                              ; preds = %134, %127
  br label %140

140:                                              ; preds = %139, %120
  %141 = load i32, i32* %12, align 4
  %142 = load i32, i32* %16, align 4
  %143 = call i32 @do_wait(i32 %141, i32 %142)
  br label %114
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @usage_autounmountd(...) #1

declare dso_local i32 @log_errx(i32, i8*, ...) #1

declare dso_local i32 @log_init(i32) #1

declare dso_local %struct.pidfh* @pidfile_open(i8*, i32, i64*) #1

declare dso_local i32 @log_err(i32, i8*, ...) #1

declare dso_local i32 @daemon(i32, i32) #1

declare dso_local i32 @log_warn(i8*) #1

declare dso_local i32 @pidfile_remove(%struct.pidfh*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @pidfile_write(%struct.pidfh*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @kqueue(...) #1

declare dso_local i32 @EV_SET(%struct.kevent*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @kevent(i32, %struct.kevent*, i32, i32*, i32, i32*) #1

declare dso_local i32 @refresh_automounted(...) #1

declare dso_local i32 @expire_automounted(i32) #1

declare dso_local i32 @log_debugx(i8*, ...) #1

declare dso_local i32 @difftime(i32, i32) #1

declare dso_local i32 @do_wait(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
