; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_sys.c_wlan_config_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_sys.c_wlan_config_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlan_iface = type { i64, i32 }
%struct.ifreq = type { i32, i32, i32 }

@sock = common dso_local global i32 0, align 4
@SIOCGIFFLAGS = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"set %s status: ioctl(SIOCGIFFLAGS) failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@wlanIfaceState_up = common dso_local global i64 0, align 8
@wlanIfaceState_down = common dso_local global i64 0, align 8
@SIOCSIFFLAGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"set %s %s: ioctl(SIOCSIFFLAGS) failed: %s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"up\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"down\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlan_config_state(%struct.wlan_iface* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wlan_iface*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ifreq, align 4
  store %struct.wlan_iface* %0, %struct.wlan_iface** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = call i32 @memset(%struct.ifreq* %7, i32 0, i32 12)
  %9 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %7, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %12 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @strcpy(i32 %10, i32 %13)
  %15 = load i32, i32* @sock, align 4
  %16 = load i32, i32* @SIOCGIFFLAGS, align 4
  %17 = ptrtoint %struct.ifreq* %7 to i32
  %18 = call i64 @ioctl(i32 %15, i32 %16, i32 %17)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %2
  %21 = load i32, i32* @LOG_ERR, align 4
  %22 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %23 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @errno, align 4
  %26 = call i32 @strerror(i32 %25)
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i8*
  %29 = call i32 (i32, i8*, i32, i8*, ...) @syslog(i32 %21, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %24, i8* %28)
  store i32 -1, i32* %3, align 4
  br label %98

30:                                               ; preds = %2
  %31 = load i64, i64* %5, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %7, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @IFF_UP, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load i64, i64* @wlanIfaceState_up, align 8
  %41 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %42 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  br label %47

43:                                               ; preds = %33
  %44 = load i64, i64* @wlanIfaceState_down, align 8
  %45 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %46 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  br label %47

47:                                               ; preds = %43, %39
  store i32 0, i32* %3, align 4
  br label %98

48:                                               ; preds = %30
  %49 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %7, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, 65535
  %52 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %7, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = shl i32 %53, 16
  %55 = or i32 %51, %54
  store i32 %55, i32* %6, align 4
  %56 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %57 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @wlanIfaceState_up, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %48
  %62 = load i32, i32* @IFF_UP, align 4
  %63 = load i32, i32* %6, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %6, align 4
  br label %70

65:                                               ; preds = %48
  %66 = load i32, i32* @IFF_UP, align 4
  %67 = xor i32 %66, -1
  %68 = load i32, i32* %6, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %65, %61
  %71 = load i32, i32* %6, align 4
  %72 = and i32 %71, 65535
  %73 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %7, i32 0, i32 0
  store i32 %72, i32* %73, align 4
  %74 = load i32, i32* %6, align 4
  %75 = ashr i32 %74, 16
  %76 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %7, i32 0, i32 1
  store i32 %75, i32* %76, align 4
  %77 = load i32, i32* @sock, align 4
  %78 = load i32, i32* @SIOCSIFFLAGS, align 4
  %79 = ptrtoint %struct.ifreq* %7 to i32
  %80 = call i64 @ioctl(i32 %77, i32 %78, i32 %79)
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %82, label %97

82:                                               ; preds = %70
  %83 = load i32, i32* @LOG_ERR, align 4
  %84 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %85 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %88 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @wlanIfaceState_up, align 8
  %91 = icmp eq i64 %89, %90
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %94 = load i32, i32* @errno, align 4
  %95 = call i32 @strerror(i32 %94)
  %96 = call i32 (i32, i8*, i32, i8*, ...) @syslog(i32 %83, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %86, i8* %93, i32 %95)
  store i32 -1, i32* %3, align 4
  br label %98

97:                                               ; preds = %70
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %97, %82, %47, %20
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @memset(%struct.ifreq*, i32, i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i64 @ioctl(i32, i32, i32) #1

declare dso_local i32 @syslog(i32, i8*, i32, i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
