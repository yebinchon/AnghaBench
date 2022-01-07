; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/stumbler/extr_stumbler.c_setup_if.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/stumbler/extr_stumbler.c_setup_if.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.ifreq }
%struct.ifreq = type { i32, i32, i32, i32, i32 }

@chaninfo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@IEEE80211_IOC_CHANNEL = common dso_local global i32 0, align 4
@ioctl_s = common dso_local global i32 0, align 4
@SIOCGIFFLAGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"ioctl(SIOCGIFFLAGS)\00", align 1
@IFF_UP = common dso_local global i32 0, align 4
@IFF_PPROMISC = common dso_local global i32 0, align 4
@SIOCSIFFLAGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"ioctl(SIOCSIFFLAGS)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setup_if(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ifreq, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = call i32 @memset(%struct.ifreq* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @chaninfo, i32 0, i32 0), i32 0, i32 20)
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @chaninfo, i32 0, i32 0, i32 4), align 4
  %7 = load i8*, i8** %2, align 8
  %8 = call i32 @strcpy(i32 %6, i8* %7)
  %9 = load i32, i32* @IEEE80211_IOC_CHANNEL, align 4
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @chaninfo, i32 0, i32 0, i32 3), align 4
  %10 = call i32 @set_chan(i32 1)
  %11 = call i32 @memset(%struct.ifreq* %3, i32 0, i32 20)
  %12 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %3, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load i8*, i8** %2, align 8
  %15 = call i32 @strcpy(i32 %13, i8* %14)
  %16 = load i32, i32* @ioctl_s, align 4
  %17 = load i32, i32* @SIOCGIFFLAGS, align 4
  %18 = call i32 @ioctl(i32 %16, i32 %17, %struct.ifreq* %3)
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = call i32 @die(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %1
  %23 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %3, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 65535
  %26 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %3, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = shl i32 %27, 16
  %29 = or i32 %25, %28
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* @IFF_UP, align 4
  %31 = load i32, i32* @IFF_PPROMISC, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* %4, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %4, align 4
  %35 = call i32 @memset(%struct.ifreq* %3, i32 0, i32 20)
  %36 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %3, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i8*, i8** %2, align 8
  %39 = call i32 @strcpy(i32 %37, i8* %38)
  %40 = load i32, i32* %4, align 4
  %41 = and i32 %40, 65535
  %42 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %3, i32 0, i32 0
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* %4, align 4
  %44 = lshr i32 %43, 16
  %45 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %3, i32 0, i32 1
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* @ioctl_s, align 4
  %47 = load i32, i32* @SIOCSIFFLAGS, align 4
  %48 = call i32 @ioctl(i32 %46, i32 %47, %struct.ifreq* %3)
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %52

50:                                               ; preds = %22
  %51 = call i32 @die(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %22
  ret void
}

declare dso_local i32 @memset(%struct.ifreq*, i32, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @set_chan(i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.ifreq*) #1

declare dso_local i32 @die(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
