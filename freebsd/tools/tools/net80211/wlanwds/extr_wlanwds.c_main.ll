; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/wlanwds/extr_wlanwds.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/wlanwds/extr_wlanwds.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt_msghdr = type { i32 }

@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"efjP:s:tv\00", align 1
@LOG_PERROR = common dso_local global i32 0, align 4
@discover_on_join = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@script = common dso_local global i8* null, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"%s: no ifnet's specified to monitor\0A\00", align 1
@ifnets = common dso_local global i8** null, align 8
@nifnets = common dso_local global i32 0, align 4
@PF_ROUTE = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i32 0, align 4
@EX_OSERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"daemon\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"wlanwds\00", align 1
@LOG_PID = common dso_local global i32 0, align 4
@LOG_CONS = common dso_local global i32 0, align 4
@LOG_DAEMON = common dso_local global i32 0, align 4

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
  %11 = alloca i32, align 4
  %12 = alloca [2048 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i32 1, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %18 = load i32, i32* @LOG_INFO, align 4
  %19 = call i32 @LOG_UPTO(i32 %18)
  store i32 %19, i32* %10, align 4
  br label %20

20:                                               ; preds = %44, %2
  %21 = load i32, i32* %4, align 4
  %22 = load i8**, i8*** %5, align 8
  %23 = call i32 @getopt(i32 %21, i8** %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %23, i32* %9, align 4
  %24 = icmp ne i32 %23, -1
  br i1 %24, label %25, label %45

25:                                               ; preds = %20
  %26 = load i32, i32* %9, align 4
  switch i32 %26, label %44 [
    i32 101, label %27
    i32 102, label %29
    i32 106, label %30
    i32 80, label %31
    i32 115, label %33
    i32 116, label %35
    i32 118, label %38
    i32 63, label %41
  ]

27:                                               ; preds = %25
  %28 = load i32, i32* @LOG_PERROR, align 4
  store i32 %28, i32* %13, align 4
  br label %44

29:                                               ; preds = %25
  store i32 0, i32* %11, align 4
  br label %44

30:                                               ; preds = %25
  store i32 1, i32* @discover_on_join, align 4
  br label %44

31:                                               ; preds = %25
  %32 = load i8*, i8** @optarg, align 8
  store i8* %32, i8** %7, align 8
  br label %44

33:                                               ; preds = %25
  %34 = load i8*, i8** @optarg, align 8
  store i8* %34, i8** @script, align 8
  br label %44

35:                                               ; preds = %25
  %36 = load i32, i32* @LOG_ERR, align 4
  %37 = call i32 @LOG_UPTO(i32 %36)
  store i32 %37, i32* %10, align 4
  br label %44

38:                                               ; preds = %25
  %39 = load i32, i32* @LOG_DEBUG, align 4
  %40 = call i32 @LOG_UPTO(i32 %39)
  store i32 %40, i32* %10, align 4
  br label %44

41:                                               ; preds = %25
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @usage(i8* %42)
  br label %44

44:                                               ; preds = %41, %25, %38, %35, %33, %31, %30, %29, %27
  br label %20

45:                                               ; preds = %20
  %46 = load i64, i64* @optind, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = sub nsw i64 %48, %46
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %4, align 4
  %51 = load i64, i64* @optind, align 8
  %52 = load i8**, i8*** %5, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 %51
  store i8** %53, i8*** %5, align 8
  %54 = load i32, i32* %4, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %45
  %57 = load i32, i32* @stderr, align 4
  %58 = load i8*, i8** %6, align 8
  %59 = call i32 @fprintf(i32 %57, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %58)
  %60 = load i8*, i8** %6, align 8
  %61 = call i32 @usage(i8* %60)
  br label %62

62:                                               ; preds = %56, %45
  %63 = load i8**, i8*** %5, align 8
  store i8** %63, i8*** @ifnets, align 8
  %64 = load i32, i32* %4, align 4
  store i32 %64, i32* @nifnets, align 4
  %65 = load i32, i32* @PF_ROUTE, align 4
  %66 = load i32, i32* @SOCK_RAW, align 4
  %67 = call i32 @socket(i32 %65, i32 %66, i32 0)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %62
  %71 = load i32, i32* @EX_OSERR, align 4
  %72 = call i32 @err(i32 %71, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %73

73:                                               ; preds = %70, %62
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @scanforvaps(i32 %74)
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = call i64 @daemon(i32 0, i32 0)
  %80 = icmp slt i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i32, i32* @EX_OSERR, align 4
  %83 = call i32 @err(i32 %82, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %84

84:                                               ; preds = %81, %78, %73
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* @LOG_PID, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @LOG_CONS, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @LOG_DAEMON, align 4
  %91 = call i32 @openlog(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %89, i32 %90)
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @setlogmask(i32 %92)
  br label %94

94:                                               ; preds = %94, %84
  %95 = load i32, i32* %8, align 4
  %96 = getelementptr inbounds [2048 x i8], [2048 x i8]* %12, i64 0, i64 0
  %97 = call i32 @read(i32 %95, i8* %96, i32 2048)
  store i32 %97, i32* %14, align 4
  %98 = getelementptr inbounds [2048 x i8], [2048 x i8]* %12, i64 0, i64 0
  %99 = bitcast i8* %98 to %struct.rt_msghdr*
  %100 = load i32, i32* %14, align 4
  %101 = call i32 @handle_rtmsg(%struct.rt_msghdr* %99, i32 %100)
  br label %94
}

declare dso_local i32 @LOG_UPTO(i32) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @scanforvaps(i32) #1

declare dso_local i64 @daemon(i32, i32) #1

declare dso_local i32 @openlog(i8*, i32, i32) #1

declare dso_local i32 @setlogmask(i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @handle_rtmsg(%struct.rt_msghdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
