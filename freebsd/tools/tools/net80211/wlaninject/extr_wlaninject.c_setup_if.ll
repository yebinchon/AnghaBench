; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/wlaninject/extr_wlaninject.c_setup_if.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/wlaninject/extr_wlaninject.c_setup_if.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifreq = type { i32, i32, i32, i32, i32, i32 }
%struct.ifmediareq = type { i32 }
%struct.ieee80211req = type { i32, i32, i32, i32, i32, i32 }

@PF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"socket()\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@IEEE80211_IOC_CHANNEL = common dso_local global i32 0, align 4
@SIOCS80211 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"ioctl(SIOCS80211)\00", align 1
@SIOCGIFFLAGS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"ioctl(SIOCGIFFLAGS)\00", align 1
@IFF_UP = common dso_local global i32 0, align 4
@IFF_PPROMISC = common dso_local global i32 0, align 4
@SIOCSIFFLAGS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"ioctl(SIOCSIFFLAGS)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setup_if(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ifreq, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ifmediareq, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ieee80211req, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* @PF_INET, align 4
  %12 = load i32, i32* @SOCK_DGRAM, align 4
  %13 = call i32 @socket(i32 %11, i32 %12, i32 0)
  store i32 %13, i32* %5, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %2
  %18 = bitcast %struct.ieee80211req* %10 to %struct.ifreq*
  %19 = call i32 @memset(%struct.ifreq* %18, i32 0, i32 24)
  %20 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %10, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @snprintf(i32 %21, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  %24 = load i32, i32* @IEEE80211_IOC_CHANNEL, align 4
  %25 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %10, i32 0, i32 4
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %4, align 4
  %27 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %10, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @SIOCS80211, align 4
  %30 = bitcast %struct.ieee80211req* %10 to %struct.ifreq*
  %31 = call i32 @ioctl(i32 %28, i32 %29, %struct.ifreq* %30)
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %35

33:                                               ; preds = %17
  %34 = call i32 @err(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %17
  %36 = call i32 @memset(%struct.ifreq* %6, i32 0, i32 24)
  %37 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %6, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load i8*, i8** %3, align 8
  %40 = call i32 @snprintf(i32 %38, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %39)
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @SIOCGIFFLAGS, align 4
  %43 = call i32 @ioctl(i32 %41, i32 %42, %struct.ifreq* %6)
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %47

45:                                               ; preds = %35
  %46 = call i32 @err(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %35
  %48 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %6, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 65535
  %51 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %6, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 %52, 16
  %54 = or i32 %50, %53
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* @IFF_UP, align 4
  %56 = load i32, i32* @IFF_PPROMISC, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* %7, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = and i32 %60, 65535
  %62 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %6, i32 0, i32 1
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* %7, align 4
  %64 = lshr i32 %63, 16
  %65 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %6, i32 0, i32 2
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @SIOCSIFFLAGS, align 4
  %68 = call i32 @ioctl(i32 %66, i32 %67, %struct.ifreq* %6)
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %72

70:                                               ; preds = %47
  %71 = call i32 @err(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %47
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @close(i32 %73)
  ret void
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @memset(%struct.ifreq*, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @ioctl(i32, i32, %struct.ifreq*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
