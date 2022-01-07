; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/wlanwds/extr_wlanwds.c_iswdsvap.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/wlanwds/extr_wlanwds.c_iswdsvap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifmediareq = type { i32, i32 }

@SIOCGIFMEDIA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"%s: cannot get media\00", align 1
@IFM_IEEE80211_WDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @iswdsvap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iswdsvap(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ifmediareq, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = call i32 @memset(%struct.ifmediareq* %5, i32 0, i32 8)
  %7 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %5, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @strncpy(i32 %8, i8* %9, i32 4)
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @SIOCGIFMEDIA, align 4
  %13 = ptrtoint %struct.ifmediareq* %5 to i32
  %14 = call i64 @ioctl(i32 %11, i32 %12, i32 %13)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @err(i32 -1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %17)
  br label %19

19:                                               ; preds = %16, %2
  %20 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %5, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @IFM_IEEE80211_WDS, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i32
  ret i32 %25
}

declare dso_local i32 @memset(%struct.ifmediareq*, i32, i32) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i64 @ioctl(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
