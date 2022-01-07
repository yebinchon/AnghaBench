; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_mountroot.c_parse_dir_ask.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_mountroot.c_parse_dir_ask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"\0ALoader variables:\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"vfs.root.mountfrom\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"vfs.root.mountfrom.options\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"\0AManual root filesystem specification:\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"  <fstype>:<device> [options]\0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"      Mount <device> using filesystem <fstype>\0A\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"      and with the specified (optional) option list.\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"    eg. ufs:/dev/da0s1a\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"        zfs:zroot/ROOT/default\0A\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"        cd9660:/dev/cd0 ro\0A\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"          (which is equivalent to: \00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"mount -t cd9660 -o ro /dev/cd0 /)\0A\00", align 1
@.str.13 = private unnamed_addr constant [48 x i8] c"  ?               List valid disk boot devices\0A\00", align 1
@.str.14 = private unnamed_addr constant [57 x i8] c"  .               Yield 1 second (for background tasks)\0A\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"  <empty line>    Abort manual input\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [13 x i8] c"\0Amountroot> \00", align 1
@GETS_ECHO = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [39 x i8] c"\0AList of GEOM managed disk devices:\0A  \00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"rmask\00", align 1
@hz = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [36 x i8] c"Invalid file system specification.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**)* @parse_dir_ask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_dir_ask(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca [80 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8** %0, i8*** %2, align 8
  %6 = call i32 (...) @vfs_mountroot_wait()
  %7 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 @parse_dir_ask_printenv(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %9 = call i32 @parse_dir_ask_printenv(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %10 = call i32 @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %11 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %12 = call i32 @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  %13 = call i32 @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0))
  %14 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %15 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  %16 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  %17 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0))
  %18 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0))
  %19 = call i32 @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0))
  %20 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %21 = call i32 @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13, i64 0, i64 0))
  %22 = call i32 @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.14, i64 0, i64 0))
  %23 = call i32 @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i64 0, i64 0))
  br label %24

24:                                               ; preds = %69, %1
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %5, align 4
  %26 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0))
  %27 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %28 = load i32, i32* @GETS_ECHO, align 4
  %29 = call i32 @cngets(i8* %27, i32 80, i32 %28)
  %30 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %31 = load i8, i8* %30, align 16
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  br label %72

35:                                               ; preds = %24
  %36 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %37 = load i8, i8* %36, align 16
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 63
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 1
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i64 0, i64 0))
  %47 = call i32 (...) @g_dev_print()
  br label %69

48:                                               ; preds = %40, %35
  %49 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %50 = load i8, i8* %49, align 16
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 46
  br i1 %52, label %53, label %61

53:                                               ; preds = %48
  %54 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 1
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32, i32* @hz, align 4
  %60 = call i32 @pause(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i32 %59)
  br label %69

61:                                               ; preds = %53, %48
  %62 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  store i8* %62, i8** %4, align 8
  %63 = call i32 @parse_mount(i8** %4)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.19, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %61
  br label %69

69:                                               ; preds = %68, %58, %45
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %24, label %72

72:                                               ; preds = %69, %34
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i32 @vfs_mountroot_wait(...) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @parse_dir_ask_printenv(i8*) #1

declare dso_local i32 @cngets(i8*, i32, i32) #1

declare dso_local i32 @g_dev_print(...) #1

declare dso_local i32 @pause(i8*, i32) #1

declare dso_local i32 @parse_mount(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
