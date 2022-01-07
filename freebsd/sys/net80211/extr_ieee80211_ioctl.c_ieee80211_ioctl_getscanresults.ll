; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ioctl.c_ieee80211_ioctl_getscanresults.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ioctl.c_ieee80211_ioctl_getscanresults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i32 }
%struct.ieee80211req = type { i32, i32 }
%struct.scanreq = type { i32, i8* }

@EFAULT = common dso_local global i32 0, align 4
@get_scan_space = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@IEEE80211_M_NOWAIT = common dso_local global i32 0, align 4
@IEEE80211_M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@get_scan_result = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211vap*, %struct.ieee80211req*)* @ieee80211_ioctl_getscanresults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_ioctl_getscanresults(%struct.ieee80211vap* %0, %struct.ieee80211req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca %struct.ieee80211req*, align 8
  %6 = alloca %struct.scanreq, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %4, align 8
  store %struct.ieee80211req* %1, %struct.ieee80211req** %5, align 8
  %10 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %11 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = icmp ult i64 %13, 16
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @EFAULT, align 4
  store i32 %16, i32* %3, align 4
  br label %78

17:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  %18 = getelementptr inbounds %struct.scanreq, %struct.scanreq* %6, i32 0, i32 0
  store i32 0, i32* %18, align 8
  %19 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %20 = load i32, i32* @get_scan_space, align 4
  %21 = call i32 @ieee80211_scan_iterate(%struct.ieee80211vap* %19, i32 %20, %struct.scanreq* %6)
  %22 = getelementptr inbounds %struct.scanreq, %struct.scanreq* %6, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %25 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp sgt i32 %23, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %17
  %29 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %30 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.scanreq, %struct.scanreq* %6, i32 0, i32 0
  store i32 %31, i32* %32, align 8
  br label %33

33:                                               ; preds = %28, %17
  %34 = getelementptr inbounds %struct.scanreq, %struct.scanreq* %6, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %73

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.scanreq, %struct.scanreq* %6, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @M_TEMP, align 4
  %42 = load i32, i32* @IEEE80211_M_NOWAIT, align 4
  %43 = load i32, i32* @IEEE80211_M_ZERO, align 4
  %44 = or i32 %42, %43
  %45 = call i8* @IEEE80211_MALLOC(i32 %40, i32 %41, i32 %44)
  store i8* %45, i8** %9, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %37
  %49 = load i32, i32* @ENOMEM, align 4
  store i32 %49, i32* %3, align 4
  br label %78

50:                                               ; preds = %37
  %51 = load i8*, i8** %9, align 8
  %52 = getelementptr inbounds %struct.scanreq, %struct.scanreq* %6, i32 0, i32 1
  store i8* %51, i8** %52, align 8
  %53 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %54 = load i32, i32* @get_scan_result, align 4
  %55 = call i32 @ieee80211_scan_iterate(%struct.ieee80211vap* %53, i32 %54, %struct.scanreq* %6)
  %56 = load i32, i32* %8, align 4
  %57 = getelementptr inbounds %struct.scanreq, %struct.scanreq* %6, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sub nsw i32 %56, %58
  %60 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %61 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load i8*, i8** %9, align 8
  %63 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %64 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %67 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @copyout(i8* %62, i32 %65, i32 %68)
  store i32 %69, i32* %7, align 4
  %70 = load i8*, i8** %9, align 8
  %71 = load i32, i32* @M_TEMP, align 4
  %72 = call i32 @IEEE80211_FREE(i8* %70, i32 %71)
  br label %76

73:                                               ; preds = %33
  %74 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %75 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %74, i32 0, i32 0
  store i32 0, i32* %75, align 4
  br label %76

76:                                               ; preds = %73, %50
  %77 = load i32, i32* %7, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %76, %48, %15
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @ieee80211_scan_iterate(%struct.ieee80211vap*, i32, %struct.scanreq*) #1

declare dso_local i8* @IEEE80211_MALLOC(i32, i32, i32) #1

declare dso_local i32 @copyout(i8*, i32, i32) #1

declare dso_local i32 @IEEE80211_FREE(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
