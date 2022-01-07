; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/sdpd/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/sdpd/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32 }

@SDP_LOCAL_PATH = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"nobody\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"c:dg:hu:\00", align 1
@optarg = common dso_local global i8* null, align 8
@SDPD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Could not become daemon. %s (%d)\00", align 1
@errno = common dso_local global i32 0, align 4
@sighandler = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"Could not install signal handlers. %s (%d)\00", align 1
@SIG_IGN = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@done = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sigaction, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load i8*, i8** @SDP_LOCAL_PATH, align 8
  store i8* %13, i8** %7, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  store i32 1, i32* %10, align 4
  br label %14

14:                                               ; preds = %31, %2
  %15 = load i32, i32* %4, align 4
  %16 = load i8**, i8*** %5, align 8
  %17 = call i32 @getopt(i32 %15, i8** %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 %17, i32* %11, align 4
  %18 = icmp ne i32 %17, -1
  br i1 %18, label %19, label %32

19:                                               ; preds = %14
  %20 = load i32, i32* %11, align 4
  switch i32 %20, label %29 [
    i32 99, label %21
    i32 100, label %23
    i32 103, label %24
    i32 117, label %26
    i32 104, label %28
  ]

21:                                               ; preds = %19
  %22 = load i8*, i8** @optarg, align 8
  store i8* %22, i8** %7, align 8
  br label %31

23:                                               ; preds = %19
  store i32 0, i32* %10, align 4
  br label %31

24:                                               ; preds = %19
  %25 = load i8*, i8** @optarg, align 8
  store i8* %25, i8** %9, align 8
  br label %31

26:                                               ; preds = %19
  %27 = load i8*, i8** @optarg, align 8
  store i8* %27, i8** %8, align 8
  br label %31

28:                                               ; preds = %19
  br label %29

29:                                               ; preds = %19, %28
  %30 = call i32 (...) @usage()
  br label %31

31:                                               ; preds = %29, %26, %24, %23, %21
  br label %14

32:                                               ; preds = %14
  %33 = load i32, i32* @SDPD, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @log_open(i32 %33, i32 %37)
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %32
  %42 = call i64 @daemon(i32 0, i32 0)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load i32, i32* @errno, align 4
  %46 = call i32 @strerror(i32 %45)
  %47 = load i32, i32* @errno, align 4
  %48 = call i32 @log_crit(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %46, i32 %47)
  %49 = call i32 @exit(i32 1) #3
  unreachable

50:                                               ; preds = %41, %32
  %51 = call i32 @memset(%struct.sigaction* %12, i32 0, i32 4)
  %52 = load i32, i32* @sighandler, align 4
  %53 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %12, i32 0, i32 0
  store i32 %52, i32* %53, align 4
  %54 = load i32, i32* @SIGTERM, align 4
  %55 = call i64 @sigaction(i32 %54, %struct.sigaction* %12, i32* null)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %50
  %58 = load i32, i32* @SIGHUP, align 4
  %59 = call i64 @sigaction(i32 %58, %struct.sigaction* %12, i32* null)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* @SIGINT, align 4
  %63 = call i64 @sigaction(i32 %62, %struct.sigaction* %12, i32* null)
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %61, %57, %50
  %66 = load i32, i32* @errno, align 4
  %67 = call i32 @strerror(i32 %66)
  %68 = load i32, i32* @errno, align 4
  %69 = call i32 @log_crit(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %67, i32 %68)
  %70 = call i32 @exit(i32 1) #3
  unreachable

71:                                               ; preds = %61
  %72 = load i32, i32* @SIG_IGN, align 4
  %73 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %12, i32 0, i32 0
  store i32 %72, i32* %73, align 4
  %74 = load i32, i32* @SIGPIPE, align 4
  %75 = call i64 @sigaction(i32 %74, %struct.sigaction* %12, i32* null)
  %76 = icmp slt i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %71
  %78 = load i32, i32* @errno, align 4
  %79 = call i32 @strerror(i32 %78)
  %80 = load i32, i32* @errno, align 4
  %81 = call i32 @log_crit(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %79, i32 %80)
  %82 = call i32 @exit(i32 1) #3
  unreachable

83:                                               ; preds = %71
  %84 = load i8*, i8** %7, align 8
  %85 = call i64 @server_init(i32* %6, i8* %84)
  %86 = icmp slt i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = call i32 @exit(i32 1) #3
  unreachable

89:                                               ; preds = %83
  %90 = load i8*, i8** %8, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %95, label %92

92:                                               ; preds = %89
  %93 = load i8*, i8** %9, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %102

95:                                               ; preds = %92, %89
  %96 = load i8*, i8** %8, align 8
  %97 = load i8*, i8** %9, align 8
  %98 = call i64 @drop_root(i8* %96, i8* %97)
  %99 = icmp slt i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = call i32 @exit(i32 1) #3
  unreachable

102:                                              ; preds = %95, %92
  store i64 0, i64* @done, align 8
  br label %103

103:                                              ; preds = %113, %102
  %104 = load i64, i64* @done, align 8
  %105 = icmp ne i64 %104, 0
  %106 = xor i1 %105, true
  br i1 %106, label %107, label %114

107:                                              ; preds = %103
  %108 = call i64 @server_do(i32* %6)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load i64, i64* @done, align 8
  %112 = add nsw i64 %111, 1
  store i64 %112, i64* @done, align 8
  br label %113

113:                                              ; preds = %110, %107
  br label %103

114:                                              ; preds = %103
  %115 = call i32 @server_shutdown(i32* %6)
  %116 = call i32 (...) @log_close()
  ret i32 0
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @log_open(i32, i32) #1

declare dso_local i64 @daemon(i32, i32) #1

declare dso_local i32 @log_crit(i8*, i32, i32) #1

declare dso_local i32 @strerror(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @memset(%struct.sigaction*, i32, i32) #1

declare dso_local i64 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i64 @server_init(i32*, i8*) #1

declare dso_local i64 @drop_root(i8*, i8*) #1

declare dso_local i64 @server_do(i32*) #1

declare dso_local i32 @server_shutdown(i32*) #1

declare dso_local i32 @log_close(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
