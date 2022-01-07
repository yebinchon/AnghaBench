; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ioctl.c_ieee80211_ioctl_setchanlist.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ioctl.c_ieee80211_ioctl_setchanlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.ieee80211vap = type { %struct.ieee80211com* }
%struct.ieee80211com = type { i32, i32, %struct.TYPE_2__*, %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32 }
%struct.ieee80211req = type { i32, i32 }

@IEEE80211_CHAN_BYTES = common dso_local global i64 0, align 8
@M_TEMP = common dso_local global i32 0, align 4
@IEEE80211_M_NOWAIT = common dso_local global i32 0, align 4
@IEEE80211_M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NBBY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IEEE80211_CHAN_ANYC = common dso_local global %struct.TYPE_2__* null, align 8
@ENETRESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211vap*, %struct.ieee80211req*)* @ieee80211_ioctl_setchanlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_ioctl_setchanlist(%struct.ieee80211vap* %0, %struct.ieee80211req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca %struct.ieee80211req*, align 8
  %6 = alloca %struct.ieee80211com*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ieee80211_channel*, align 8
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %4, align 8
  store %struct.ieee80211req* %1, %struct.ieee80211req** %5, align 8
  %14 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %15 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %14, i32 0, i32 0
  %16 = load %struct.ieee80211com*, %struct.ieee80211com** %15, align 8
  store %struct.ieee80211com* %16, %struct.ieee80211com** %6, align 8
  %17 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %18 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = icmp ugt i64 %20, 4
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %24 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %23, i32 0, i32 0
  store i32 4, i32* %24, align 4
  br label %25

25:                                               ; preds = %22, %2
  %26 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %27 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* @IEEE80211_CHAN_BYTES, align 8
  %31 = add nsw i64 %29, %30
  %32 = load i32, i32* @M_TEMP, align 4
  %33 = load i32, i32* @IEEE80211_M_NOWAIT, align 4
  %34 = load i32, i32* @IEEE80211_M_ZERO, align 4
  %35 = or i32 %33, %34
  %36 = call i32* @IEEE80211_MALLOC(i64 %31, i32 %32, i32 %35)
  store i32* %36, i32** %8, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %25
  %40 = load i32, i32* @ENOMEM, align 4
  store i32 %40, i32* %3, align 4
  br label %146

41:                                               ; preds = %25
  %42 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %43 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %8, align 8
  %46 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %47 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @copyin(i32 %44, i32* %45, i32 %48)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %41
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* @M_TEMP, align 4
  %55 = call i32 @IEEE80211_FREE(i32* %53, i32 %54)
  %56 = load i32, i32* %12, align 4
  store i32 %56, i32* %3, align 4
  br label %146

57:                                               ; preds = %41
  store i32 0, i32* %10, align 4
  %58 = load i32*, i32** %8, align 8
  %59 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %60 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %58, i64 %62
  store i32* %63, i32** %7, align 8
  %64 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %65 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @NBBY, align 4
  %68 = mul nsw i32 %66, %67
  store i32 %68, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %69

69:                                               ; preds = %103, %57
  %70 = load i32, i32* %9, align 4
  %71 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %72 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %106

75:                                               ; preds = %69
  %76 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %77 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %76, i32 0, i32 3
  %78 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %78, i64 %80
  store %struct.ieee80211_channel* %81, %struct.ieee80211_channel** %13, align 8
  %82 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %13, align 8
  %83 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %11, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %102

87:                                               ; preds = %75
  %88 = load i32*, i32** %8, align 8
  %89 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %13, align 8
  %90 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @isset(i32* %88, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %87
  %95 = load i32*, i32** %7, align 8
  %96 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %13, align 8
  %97 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @setbit(i32* %95, i32 %98)
  %100 = load i32, i32* %10, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %10, align 4
  br label %102

102:                                              ; preds = %94, %87, %75
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %9, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %9, align 4
  br label %69

106:                                              ; preds = %69
  %107 = load i32, i32* %10, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %106
  %110 = load i32*, i32** %8, align 8
  %111 = load i32, i32* @M_TEMP, align 4
  %112 = call i32 @IEEE80211_FREE(i32* %110, i32 %111)
  %113 = load i32, i32* @EINVAL, align 4
  store i32 %113, i32* %3, align 4
  br label %146

114:                                              ; preds = %106
  %115 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %116 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %115, i32 0, i32 2
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** @IEEE80211_CHAN_ANYC, align 8
  %119 = icmp ne %struct.TYPE_2__* %117, %118
  br i1 %119, label %120, label %133

120:                                              ; preds = %114
  %121 = load i32*, i32** %7, align 8
  %122 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %123 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %122, i32 0, i32 2
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i64 @isclr(i32* %121, i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %120
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** @IEEE80211_CHAN_ANYC, align 8
  %131 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %132 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %131, i32 0, i32 2
  store %struct.TYPE_2__* %130, %struct.TYPE_2__** %132, align 8
  br label %133

133:                                              ; preds = %129, %120, %114
  %134 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %135 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32*, i32** %7, align 8
  %138 = load i64, i64* @IEEE80211_CHAN_BYTES, align 8
  %139 = call i32 @memcpy(i32 %136, i32* %137, i64 %138)
  %140 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %141 = call i32 @ieee80211_scan_flush(%struct.ieee80211vap* %140)
  %142 = load i32*, i32** %8, align 8
  %143 = load i32, i32* @M_TEMP, align 4
  %144 = call i32 @IEEE80211_FREE(i32* %142, i32 %143)
  %145 = load i32, i32* @ENETRESET, align 4
  store i32 %145, i32* %3, align 4
  br label %146

146:                                              ; preds = %133, %109, %52, %39
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local i32* @IEEE80211_MALLOC(i64, i32, i32) #1

declare dso_local i32 @copyin(i32, i32*, i32) #1

declare dso_local i32 @IEEE80211_FREE(i32*, i32) #1

declare dso_local i64 @isset(i32*, i32) #1

declare dso_local i32 @setbit(i32*, i32) #1

declare dso_local i64 @isclr(i32*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i64) #1

declare dso_local i32 @ieee80211_scan_flush(%struct.ieee80211vap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
