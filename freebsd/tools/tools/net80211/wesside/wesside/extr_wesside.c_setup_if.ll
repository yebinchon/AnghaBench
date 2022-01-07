; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/wesside/wesside/extr_wesside.c_setup_if.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/wesside/wesside/extr_wesside.c_setup_if.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, %struct.ifreq }
%struct.ifreq = type { i32, i32, i32, i32, i32 }
%struct.ifmediareq = type { i32 }

@IFNAMSIZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Interface name too long...\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Setting up %s... \00", align 1
@stdout = common dso_local global i32 0, align 4
@mymac = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"socket()\00", align 1
@chaninfo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@IEEE80211_IOC_CHANNEL = common dso_local global i32 0, align 4
@SIOCGIFFLAGS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"ioctl(SIOCGIFFLAGS)\00", align 1
@IFF_UP = common dso_local global i32 0, align 4
@IFF_PPROMISC = common dso_local global i32 0, align 4
@SIOCSIFFLAGS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"ioctl(SIOCSIFFLAGS)\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"done\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setup_if(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifreq, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ifmediareq, align 4
  %7 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = call i64 @strlen(i8* %8)
  %10 = load i64, i64* @IFNAMSIZ, align 8
  %11 = icmp sge i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = call i32 (i8*, ...) @time_print(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @exit(i32 1) #3
  unreachable

15:                                               ; preds = %1
  %16 = load i8*, i8** %2, align 8
  %17 = call i32 (i8*, ...) @time_print(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %16)
  %18 = load i32, i32* @stdout, align 4
  %19 = call i32 @fflush(i32 %18)
  %20 = load i32, i32* @mymac, align 4
  %21 = load i8*, i8** %2, align 8
  %22 = call i32 @set_if_mac(i32 %20, i8* %21)
  %23 = load i32, i32* @PF_INET, align 4
  %24 = load i32, i32* @SOCK_DGRAM, align 4
  %25 = call i32 @socket(i32 %23, i32 %24, i32 0)
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %31

28:                                               ; preds = %15
  %29 = call i32 @perror(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %30 = call i32 @exit(i32 1) #3
  unreachable

31:                                               ; preds = %15
  %32 = call i32 @memset(%struct.ifreq* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @chaninfo, i32 0, i32 2), i32 0, i32 20)
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @chaninfo, i32 0, i32 2, i32 4), align 8
  %34 = load i8*, i8** %2, align 8
  %35 = call i32 @strcpy(i32 %33, i8* %34)
  %36 = load i32, i32* @IEEE80211_IOC_CHANNEL, align 4
  store i32 %36, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @chaninfo, i32 0, i32 2, i32 3), align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @chaninfo, i32 0, i32 1), align 8
  %37 = load i32, i32* %3, align 4
  store i32 %37, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @chaninfo, i32 0, i32 0), align 8
  %38 = call i32 @set_chan(i32 1)
  %39 = call i32 @memset(%struct.ifreq* %4, i32 0, i32 20)
  %40 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %4, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i8*, i8** %2, align 8
  %43 = call i32 @strcpy(i32 %41, i8* %42)
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @SIOCGIFFLAGS, align 4
  %46 = call i32 @ioctl(i32 %44, i32 %45, %struct.ifreq* %4)
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %51

48:                                               ; preds = %31
  %49 = call i32 @perror(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %50 = call i32 @exit(i32 1) #3
  unreachable

51:                                               ; preds = %31
  %52 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %4, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, 65535
  %55 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %4, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 %56, 16
  %58 = or i32 %54, %57
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* @IFF_UP, align 4
  %60 = load i32, i32* @IFF_PPROMISC, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* %5, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %5, align 4
  %64 = call i32 @memset(%struct.ifreq* %4, i32 0, i32 20)
  %65 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %4, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load i8*, i8** %2, align 8
  %68 = call i32 @strcpy(i32 %66, i8* %67)
  %69 = load i32, i32* %5, align 4
  %70 = and i32 %69, 65535
  %71 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %4, i32 0, i32 0
  store i32 %70, i32* %71, align 4
  %72 = load i32, i32* %5, align 4
  %73 = lshr i32 %72, 16
  %74 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %4, i32 0, i32 1
  store i32 %73, i32* %74, align 4
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* @SIOCSIFFLAGS, align 4
  %77 = call i32 @ioctl(i32 %75, i32 %76, %struct.ifreq* %4)
  %78 = icmp eq i32 %77, -1
  br i1 %78, label %79, label %82

79:                                               ; preds = %51
  %80 = call i32 @perror(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %81 = call i32 @exit(i32 1) #3
  unreachable

82:                                               ; preds = %51
  %83 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @time_print(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @set_if_mac(i32, i8*) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @memset(%struct.ifreq*, i32, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @set_chan(i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.ifreq*) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
