; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_cmsg/extr_unix_cmsg.c_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_cmsg/extr_unix_cmsg.c_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, %struct.TYPE_9__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32*, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i8*, i32* }
%struct.sigaction = type { i32, i64, i32 }

@.str = private unnamed_addr constant [7 x i8] c"SERVER\00", align 1
@uc_cfg = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@SIG_IGN = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"init: sigaction\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"init: malloc\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"init: getgroups\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@work_dir = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"init: snprintf\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"init: not enough space for socket pathname\00", align 1
@PF_LOCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.sigaction, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @uc_cfg, i32 0, i32 0), align 8
  %5 = load i32, i32* @SIG_IGN, align 4
  %6 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i32 0, i32 2
  store i32 %5, i32* %6, align 8
  %7 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i32 0, i32 1
  store i64 0, i64* %7, align 8
  %8 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i32 0, i32 0
  %9 = call i32 @sigemptyset(i32* %8)
  %10 = load i32, i32* @SIGPIPE, align 4
  %11 = call i64 @sigaction(i32 %10, %struct.sigaction* %2, %struct.sigaction* null)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %0
  %14 = call i32 @uc_logmsg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %96

15:                                               ; preds = %0
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @uc_cfg, i32 0, i32 3, i32 0), align 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @uc_cfg, i32 0, i32 3, i32 2), align 8
  store i8* null, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @uc_cfg, i32 0, i32 3, i32 1), align 8
  br label %48

19:                                               ; preds = %15
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @uc_cfg, i32 0, i32 3, i32 0), align 8
  %21 = call i8* @malloc(i32 %20)
  store i8* %21, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @uc_cfg, i32 0, i32 3, i32 1), align 8
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @uc_cfg, i32 0, i32 3, i32 0), align 8
  %23 = call i8* @malloc(i32 %22)
  %24 = bitcast i8* %23 to i32*
  store i32* %24, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @uc_cfg, i32 0, i32 3, i32 2), align 8
  %25 = load i8*, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @uc_cfg, i32 0, i32 3, i32 1), align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %19
  %28 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @uc_cfg, i32 0, i32 3, i32 2), align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %27, %19
  %31 = call i32 @uc_logmsg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %96

32:                                               ; preds = %27
  store i64 0, i64* %3, align 8
  br label %33

33:                                               ; preds = %44, %32
  %34 = load i64, i64* %3, align 8
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @uc_cfg, i32 0, i32 3, i32 0), align 8
  %36 = sext i32 %35 to i64
  %37 = icmp ult i64 %34, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %33
  %39 = load i64, i64* %3, align 8
  %40 = trunc i64 %39 to i8
  %41 = load i8*, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @uc_cfg, i32 0, i32 3, i32 1), align 8
  %42 = load i64, i64* %3, align 8
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  store i8 %40, i8* %43, align 1
  br label %44

44:                                               ; preds = %38
  %45 = load i64, i64* %3, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %3, align 8
  br label %33

47:                                               ; preds = %33
  br label %48

48:                                               ; preds = %47, %18
  %49 = call i32 (...) @getuid()
  store i32 %49, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @uc_cfg, i32 0, i32 2, i32 5), align 4
  %50 = call i32 (...) @geteuid()
  store i32 %50, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @uc_cfg, i32 0, i32 2, i32 4), align 8
  %51 = call i32 (...) @getgid()
  store i32 %51, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @uc_cfg, i32 0, i32 2, i32 3), align 4
  %52 = call i32 (...) @getegid()
  store i32 %52, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @uc_cfg, i32 0, i32 2, i32 2), align 8
  %53 = call i64 @getgroups(i32 0, i32* null)
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @uc_cfg, i32 0, i32 2, i32 0), align 8
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @uc_cfg, i32 0, i32 2, i32 0), align 8
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %48
  %58 = call i32 @uc_logmsg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %96

59:                                               ; preds = %48
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @uc_cfg, i32 0, i32 2, i32 0), align 8
  %61 = sext i32 %60 to i64
  %62 = mul i64 %61, 4
  %63 = trunc i64 %62 to i32
  %64 = call i8* @malloc(i32 %63)
  %65 = bitcast i8* %64 to i32*
  store i32* %65, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @uc_cfg, i32 0, i32 2, i32 1), align 8
  %66 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @uc_cfg, i32 0, i32 2, i32 1), align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %59
  %69 = call i32 @uc_logmsg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %96

70:                                               ; preds = %59
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @uc_cfg, i32 0, i32 2, i32 0), align 8
  %72 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @uc_cfg, i32 0, i32 2, i32 1), align 8
  %73 = call i64 @getgroups(i32 %71, i32* %72)
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = call i32 @uc_logmsg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %96

77:                                               ; preds = %70
  %78 = call i32 @memset(%struct.TYPE_9__* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @uc_cfg, i32 0, i32 1), i32 0, i32 12)
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @uc_cfg, i32 0, i32 1, i32 2), align 8
  %80 = load i8*, i8** @work_dir, align 8
  %81 = load i8*, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @uc_cfg, i32 0, i32 0), align 8
  %82 = call i32 @snprintf(i32 %79, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %80, i8* %81)
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* %4, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %77
  %86 = call i32 @uc_logmsg(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %96

87:                                               ; preds = %77
  %88 = load i32, i32* %4, align 4
  %89 = sext i32 %88 to i64
  %90 = icmp uge i64 %89, 4
  br i1 %90, label %91, label %93

91:                                               ; preds = %87
  %92 = call i32 @uc_logmsgx(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %96

93:                                               ; preds = %87
  %94 = load i32, i32* @PF_LOCAL, align 4
  store i32 %94, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @uc_cfg, i32 0, i32 1, i32 1), align 4
  %95 = call i32 @SUN_LEN(%struct.TYPE_9__* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @uc_cfg, i32 0, i32 1))
  store i32 %95, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @uc_cfg, i32 0, i32 1, i32 0), align 8
  store i32 0, i32* %1, align 4
  br label %96

96:                                               ; preds = %93, %91, %85, %75, %68, %57, %30, %13
  %97 = load i32, i32* %1, align 4
  ret i32 %97
}

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i64 @sigaction(i32, %struct.sigaction*, %struct.sigaction*) #1

declare dso_local i32 @uc_logmsg(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @getuid(...) #1

declare dso_local i32 @geteuid(...) #1

declare dso_local i32 @getgid(...) #1

declare dso_local i32 @getegid(...) #1

declare dso_local i64 @getgroups(i32, i32*) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i8*) #1

declare dso_local i32 @uc_logmsgx(i8*) #1

declare dso_local i32 @SUN_LEN(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
