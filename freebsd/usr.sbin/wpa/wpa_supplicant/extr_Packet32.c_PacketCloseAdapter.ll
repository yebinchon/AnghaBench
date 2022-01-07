; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/wpa/wpa_supplicant/extr_Packet32.c_PacketCloseAdapter.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/wpa/wpa_supplicant/extr_Packet32.c_PacketCloseAdapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32, i32 }
%struct.ifreq = type { i32, i32 }
%struct.ieee80211req = type { i32, i32, i32 }

@IEEE80211_IOC_ROAMING = common dso_local global i32 0, align 4
@SIOCS80211 = common dso_local global i32 0, align 4
@SIOCGIFFLAGS = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@SIOCSIFFLAGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PacketCloseAdapter(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.ifreq, align 4
  %5 = alloca %struct.ieee80211req, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %62

9:                                                ; preds = %1
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.adapter*
  store %struct.adapter* %11, %struct.adapter** %3, align 8
  %12 = bitcast %struct.ieee80211req* %5 to i8*
  %13 = call i32 @bzero(i8* %12, i32 12)
  %14 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %5, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.adapter*, %struct.adapter** %3, align 8
  %17 = getelementptr inbounds %struct.adapter, %struct.adapter* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @strncpy(i32 %15, i32 %18, i32 4)
  %20 = load i32, i32* @IEEE80211_IOC_ROAMING, align 4
  %21 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %5, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = load %struct.adapter*, %struct.adapter** %3, align 8
  %23 = getelementptr inbounds %struct.adapter, %struct.adapter* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %5, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = load %struct.adapter*, %struct.adapter** %3, align 8
  %27 = getelementptr inbounds %struct.adapter, %struct.adapter* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @SIOCS80211, align 4
  %30 = call i32 @ioctl(i32 %28, i32 %29, %struct.ieee80211req* %5)
  %31 = bitcast %struct.ifreq* %4 to i8*
  %32 = call i32 @bzero(i8* %31, i32 8)
  %33 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %4, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.adapter*, %struct.adapter** %3, align 8
  %36 = getelementptr inbounds %struct.adapter, %struct.adapter* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @strncpy(i32 %34, i32 %37, i32 4)
  %39 = load %struct.adapter*, %struct.adapter** %3, align 8
  %40 = getelementptr inbounds %struct.adapter, %struct.adapter* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @SIOCGIFFLAGS, align 4
  %43 = bitcast %struct.ifreq* %4 to %struct.ieee80211req*
  %44 = call i32 @ioctl(i32 %41, i32 %42, %struct.ieee80211req* %43)
  %45 = load i32, i32* @IFF_UP, align 4
  %46 = xor i32 %45, -1
  %47 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %4, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, %46
  store i32 %49, i32* %47, align 4
  %50 = load %struct.adapter*, %struct.adapter** %3, align 8
  %51 = getelementptr inbounds %struct.adapter, %struct.adapter* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @SIOCSIFFLAGS, align 4
  %54 = bitcast %struct.ifreq* %4 to %struct.ieee80211req*
  %55 = call i32 @ioctl(i32 %52, i32 %53, %struct.ieee80211req* %54)
  %56 = load %struct.adapter*, %struct.adapter** %3, align 8
  %57 = getelementptr inbounds %struct.adapter, %struct.adapter* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @close(i32 %58)
  %60 = load %struct.adapter*, %struct.adapter** %3, align 8
  %61 = call i32 @free(%struct.adapter* %60)
  br label %62

62:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.ieee80211req*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @free(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
