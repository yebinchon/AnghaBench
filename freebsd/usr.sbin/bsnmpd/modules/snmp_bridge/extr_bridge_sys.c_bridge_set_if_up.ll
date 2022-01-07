; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_sys.c_bridge_set_if_up.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_sys.c_bridge_set_if_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifreq = type { i32, i32, i32 }

@sock = common dso_local global i32 0, align 4
@SIOCGIFFLAGS = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"set bridge up: ioctl(SIOCGIFFLAGS) failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@SIOCSIFFLAGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"set bridge up: ioctl(SIOCSIFFLAGS) failed: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bridge_set_if_up(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ifreq, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = call i32 @bzero(%struct.ifreq* %7, i32 12)
  %9 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %7, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @strlcpy(i32 %10, i8* %11, i32 4)
  %13 = load i32, i32* @sock, align 4
  %14 = load i32, i32* @SIOCGIFFLAGS, align 4
  %15 = ptrtoint %struct.ifreq* %7 to i32
  %16 = call i64 @ioctl(i32 %13, i32 %14, i32 %15)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load i32, i32* @LOG_ERR, align 4
  %20 = load i32, i32* @errno, align 4
  %21 = call i32 @strerror(i32 %20)
  %22 = call i32 @syslog(i32 %19, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %21)
  store i32 -1, i32* %3, align 4
  br label %60

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %7, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 65535
  %27 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %7, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 %28, 16
  %30 = or i32 %26, %29
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %37

33:                                               ; preds = %23
  %34 = load i32, i32* @IFF_UP, align 4
  %35 = load i32, i32* %6, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %6, align 4
  br label %42

37:                                               ; preds = %23
  %38 = load i32, i32* @IFF_UP, align 4
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %6, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %37, %33
  %43 = load i32, i32* %6, align 4
  %44 = and i32 %43, 65535
  %45 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %7, i32 0, i32 0
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* %6, align 4
  %47 = ashr i32 %46, 16
  %48 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %7, i32 0, i32 1
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* @sock, align 4
  %50 = load i32, i32* @SIOCSIFFLAGS, align 4
  %51 = ptrtoint %struct.ifreq* %7 to i32
  %52 = call i64 @ioctl(i32 %49, i32 %50, i32 %51)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %42
  %55 = load i32, i32* @LOG_ERR, align 4
  %56 = load i32, i32* @errno, align 4
  %57 = call i32 @strerror(i32 %56)
  %58 = call i32 @syslog(i32 %55, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  store i32 -1, i32* %3, align 4
  br label %60

59:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %54, %18
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @bzero(%struct.ifreq*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i64 @ioctl(i32, i32, i32) #1

declare dso_local i32 @syslog(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
