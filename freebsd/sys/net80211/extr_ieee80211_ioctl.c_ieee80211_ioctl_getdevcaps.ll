; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ioctl.c_ieee80211_ioctl_getdevcaps.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ioctl.c_ieee80211_ioctl_getdevcaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { i32 (%struct.ieee80211com*, i32, i32*, i32)*, i32, i32, i32, i32 }
%struct.ieee80211req = type { i32, i32 }
%struct.ieee80211_devcaps_req = type { %struct.ieee80211req_chaninfo, i32, i32, i32, i32 }
%struct.ieee80211req_chaninfo = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@IEEE80211_M_NOWAIT = common dso_local global i32 0, align 4
@IEEE80211_M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"nchans %d maxchans %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211com*, %struct.ieee80211req*)* @ieee80211_ioctl_getdevcaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_ioctl_getdevcaps(%struct.ieee80211com* %0, %struct.ieee80211req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211com*, align 8
  %5 = alloca %struct.ieee80211req*, align 8
  %6 = alloca %struct.ieee80211_devcaps_req*, align 8
  %7 = alloca %struct.ieee80211req_chaninfo*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ieee80211com* %0, %struct.ieee80211com** %4, align 8
  store %struct.ieee80211req* %1, %struct.ieee80211req** %5, align 8
  %10 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %11 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = sub i64 %13, 24
  %15 = udiv i64 %14, 4
  %16 = add i64 1, %15
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 1
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %3, align 4
  br label %104

22:                                               ; preds = %2
  %23 = load i32, i32* %8, align 4
  %24 = icmp sgt i32 %23, 2048
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 2048, i32* %8, align 4
  br label %26

26:                                               ; preds = %25, %22
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @IEEE80211_DEVCAPS_SIZE(i32 %27)
  %29 = load i32, i32* @M_TEMP, align 4
  %30 = load i32, i32* @IEEE80211_M_NOWAIT, align 4
  %31 = load i32, i32* @IEEE80211_M_ZERO, align 4
  %32 = or i32 %30, %31
  %33 = call i64 @IEEE80211_MALLOC(i32 %28, i32 %29, i32 %32)
  %34 = inttoptr i64 %33 to %struct.ieee80211_devcaps_req*
  store %struct.ieee80211_devcaps_req* %34, %struct.ieee80211_devcaps_req** %6, align 8
  %35 = load %struct.ieee80211_devcaps_req*, %struct.ieee80211_devcaps_req** %6, align 8
  %36 = icmp eq %struct.ieee80211_devcaps_req* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %26
  %38 = load i32, i32* @ENOMEM, align 4
  store i32 %38, i32* %3, align 4
  br label %104

39:                                               ; preds = %26
  %40 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %41 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ieee80211_devcaps_req*, %struct.ieee80211_devcaps_req** %6, align 8
  %44 = getelementptr inbounds %struct.ieee80211_devcaps_req, %struct.ieee80211_devcaps_req* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 4
  %45 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %46 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.ieee80211_devcaps_req*, %struct.ieee80211_devcaps_req** %6, align 8
  %49 = getelementptr inbounds %struct.ieee80211_devcaps_req, %struct.ieee80211_devcaps_req* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  %50 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %51 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ieee80211_devcaps_req*, %struct.ieee80211_devcaps_req** %6, align 8
  %54 = getelementptr inbounds %struct.ieee80211_devcaps_req, %struct.ieee80211_devcaps_req* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %56 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.ieee80211_devcaps_req*, %struct.ieee80211_devcaps_req** %6, align 8
  %59 = getelementptr inbounds %struct.ieee80211_devcaps_req, %struct.ieee80211_devcaps_req* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.ieee80211_devcaps_req*, %struct.ieee80211_devcaps_req** %6, align 8
  %61 = getelementptr inbounds %struct.ieee80211_devcaps_req, %struct.ieee80211_devcaps_req* %60, i32 0, i32 0
  store %struct.ieee80211req_chaninfo* %61, %struct.ieee80211req_chaninfo** %7, align 8
  %62 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %63 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %62, i32 0, i32 0
  %64 = load i32 (%struct.ieee80211com*, i32, i32*, i32)*, i32 (%struct.ieee80211com*, i32, i32*, i32)** %63, align 8
  %65 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.ieee80211req_chaninfo*, %struct.ieee80211req_chaninfo** %7, align 8
  %68 = getelementptr inbounds %struct.ieee80211req_chaninfo, %struct.ieee80211req_chaninfo* %67, i32 0, i32 0
  %69 = load %struct.ieee80211req_chaninfo*, %struct.ieee80211req_chaninfo** %7, align 8
  %70 = getelementptr inbounds %struct.ieee80211req_chaninfo, %struct.ieee80211req_chaninfo* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 %64(%struct.ieee80211com* %65, i32 %66, i32* %68, i32 %71)
  %73 = load %struct.ieee80211req_chaninfo*, %struct.ieee80211req_chaninfo** %7, align 8
  %74 = getelementptr inbounds %struct.ieee80211req_chaninfo, %struct.ieee80211req_chaninfo* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp sle i32 %75, %76
  %78 = zext i1 %77 to i32
  %79 = load %struct.ieee80211req_chaninfo*, %struct.ieee80211req_chaninfo** %7, align 8
  %80 = getelementptr inbounds %struct.ieee80211req_chaninfo, %struct.ieee80211req_chaninfo* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = inttoptr i64 %83 to i8*
  %85 = call i32 @KASSERT(i32 %78, i8* %84)
  %86 = load %struct.ieee80211req_chaninfo*, %struct.ieee80211req_chaninfo** %7, align 8
  %87 = getelementptr inbounds %struct.ieee80211req_chaninfo, %struct.ieee80211req_chaninfo* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.ieee80211req_chaninfo*, %struct.ieee80211req_chaninfo** %7, align 8
  %90 = getelementptr inbounds %struct.ieee80211req_chaninfo, %struct.ieee80211req_chaninfo* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @ieee80211_sort_channels(i32 %88, i32 %91)
  %93 = load %struct.ieee80211_devcaps_req*, %struct.ieee80211_devcaps_req** %6, align 8
  %94 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %95 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.ieee80211_devcaps_req*, %struct.ieee80211_devcaps_req** %6, align 8
  %98 = call i32 @IEEE80211_DEVCAPS_SPACE(%struct.ieee80211_devcaps_req* %97)
  %99 = call i32 @copyout(%struct.ieee80211_devcaps_req* %93, i32 %96, i32 %98)
  store i32 %99, i32* %9, align 4
  %100 = load %struct.ieee80211_devcaps_req*, %struct.ieee80211_devcaps_req** %6, align 8
  %101 = load i32, i32* @M_TEMP, align 4
  %102 = call i32 @IEEE80211_FREE(%struct.ieee80211_devcaps_req* %100, i32 %101)
  %103 = load i32, i32* %9, align 4
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %39, %37, %20
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i64 @IEEE80211_MALLOC(i32, i32, i32) #1

declare dso_local i32 @IEEE80211_DEVCAPS_SIZE(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @ieee80211_sort_channels(i32, i32) #1

declare dso_local i32 @copyout(%struct.ieee80211_devcaps_req*, i32, i32) #1

declare dso_local i32 @IEEE80211_DEVCAPS_SPACE(%struct.ieee80211_devcaps_req*) #1

declare dso_local i32 @IEEE80211_FREE(%struct.ieee80211_devcaps_req*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
