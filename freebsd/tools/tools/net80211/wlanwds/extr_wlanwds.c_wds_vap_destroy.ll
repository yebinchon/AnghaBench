; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/wlanwds/extr_wlanwds.c_wds_vap_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/wlanwds/extr_wlanwds.c_wds_vap_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211req = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"socket(SOCK_DRAGM): %m\00", align 1
@IFNAMSIZ = common dso_local global i32 0, align 4
@SIOCIFDESTROY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"ioctl(SIOCIFDESTROY): %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @wds_vap_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wds_vap_destroy(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ieee80211req, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i32, i32* @AF_INET, align 4
  %8 = load i32, i32* @SOCK_DGRAM, align 4
  %9 = call i32 @socket(i32 %7, i32 %8, i32 0)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @LOG_ERR, align 4
  %14 = call i32 @syslog(i32 %13, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %34

15:                                               ; preds = %1
  %16 = call i32 @memset(%struct.ieee80211req* %4, i32 0, i32 4)
  %17 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %4, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i8*, i8** %3, align 8
  %20 = load i32, i32* @IFNAMSIZ, align 4
  %21 = call i32 @strncpy(i32 %18, i8* %19, i32 %20)
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @SIOCIFDESTROY, align 4
  %24 = call i64 @ioctl(i32 %22, i32 %23, %struct.ieee80211req* %4)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %15
  %27 = load i32, i32* @LOG_ERR, align 4
  %28 = call i32 @syslog(i32 %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %30

29:                                               ; preds = %15
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %29, %26
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @close(i32 %31)
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %30, %12
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @syslog(i32, i8*) #1

declare dso_local i32 @memset(%struct.ieee80211req*, i32, i32) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.ieee80211req*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
