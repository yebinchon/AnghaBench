; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/stumbler/extr_stumbler.c_get_packet_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/stumbler/extr_stumbler.c_get_packet_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_frame = type { i32*, i64* }
%struct.node_info = type { i32, i32, i32, i64*, i32 }

@chaninfo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@IEEE80211_FC0_TYPE_MASK = common dso_local global i32 0, align 4
@IEEE80211_FC0_TYPE_CTL = common dso_local global i32 0, align 4
@IEEE80211_FC0_SUBTYPE_MASK = common dso_local global i32 0, align 4
@IEEE80211_FC0_TYPE_MGT = common dso_local global i32 0, align 4
@IEEE80211_FC0_SUBTYPE_BEACON = common dso_local global i32 0, align 4
@IEEE80211_FC0_TYPE_DATA = common dso_local global i32 0, align 4
@IEEE80211_FC0_SUBTYPE_DATA = common dso_local global i32 0, align 4
@IEEE80211_FC1_PROTECTED = common dso_local global i32 0, align 4
@CRYPT_WEP = common dso_local global i32 0, align 4
@IEEE80211_FC1_DIR_FROMDS = common dso_local global i32 0, align 4
@CRYPT_WPA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_packet_info(%struct.ieee80211_frame* %0, i8* %1, i32 %2, %struct.node_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_frame*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.node_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.ieee80211_frame* %0, %struct.ieee80211_frame** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.node_info* %3, %struct.node_info** %9, align 8
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @chaninfo, i32 0, i32 0), align 4
  %14 = load %struct.node_info*, %struct.node_info** %9, align 8
  %15 = getelementptr inbounds %struct.node_info, %struct.node_info* %14, i32 0, i32 4
  store i32 %13, i32* %15, align 8
  %16 = load %struct.node_info*, %struct.node_info** %9, align 8
  %17 = getelementptr inbounds %struct.node_info, %struct.node_info* %16, i32 0, i32 0
  store i32 -1, i32* %17, align 8
  %18 = load %struct.node_info*, %struct.node_info** %9, align 8
  %19 = getelementptr inbounds %struct.node_info, %struct.node_info* %18, i32 0, i32 3
  %20 = load i64*, i64** %19, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  store i64 0, i64* %21, align 8
  %22 = load %struct.node_info*, %struct.node_info** %9, align 8
  %23 = getelementptr inbounds %struct.node_info, %struct.node_info* %22, i32 0, i32 1
  store i32 -1, i32* %23, align 4
  %24 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %6, align 8
  %25 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @IEEE80211_FC0_TYPE_MASK, align 4
  %30 = and i32 %28, %29
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @IEEE80211_FC0_TYPE_CTL, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %113

35:                                               ; preds = %4
  %36 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %6, align 8
  %37 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @IEEE80211_FC0_SUBTYPE_MASK, align 4
  %42 = and i32 %40, %41
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @IEEE80211_FC0_TYPE_MGT, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %57

46:                                               ; preds = %35
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* @IEEE80211_FC0_SUBTYPE_BEACON, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %46
  %51 = load i8*, i8** %7, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.node_info*, %struct.node_info** %9, align 8
  %54 = call i32 @get_beacon_info(i8* %51, i32 %52, %struct.node_info* %53)
  %55 = load %struct.node_info*, %struct.node_info** %9, align 8
  %56 = getelementptr inbounds %struct.node_info, %struct.node_info* %55, i32 0, i32 1
  store i32 1, i32* %56, align 4
  br label %105

57:                                               ; preds = %46, %35
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @IEEE80211_FC0_TYPE_DATA, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %104

61:                                               ; preds = %57
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @IEEE80211_FC0_SUBTYPE_DATA, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %104

65:                                               ; preds = %61
  %66 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %6, align 8
  %67 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @IEEE80211_FC1_PROTECTED, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %88

74:                                               ; preds = %65
  %75 = load i32, i32* @CRYPT_WEP, align 4
  %76 = load %struct.node_info*, %struct.node_info** %9, align 8
  %77 = getelementptr inbounds %struct.node_info, %struct.node_info* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load i8*, i8** %7, align 8
  store i8* %78, i8** %12, align 8
  %79 = load i8*, i8** %12, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 3
  store i8* %80, i8** %12, align 8
  %81 = load i8*, i8** %12, align 8
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = and i32 %83, 2
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %74
  br label %87

87:                                               ; preds = %86, %74
  br label %88

88:                                               ; preds = %87, %65
  %89 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %6, align 8
  %90 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @IEEE80211_FC1_DIR_FROMDS, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %88
  %98 = load %struct.node_info*, %struct.node_info** %9, align 8
  %99 = getelementptr inbounds %struct.node_info, %struct.node_info* %98, i32 0, i32 1
  store i32 1, i32* %99, align 4
  br label %103

100:                                              ; preds = %88
  %101 = load %struct.node_info*, %struct.node_info** %9, align 8
  %102 = getelementptr inbounds %struct.node_info, %struct.node_info* %101, i32 0, i32 1
  store i32 0, i32* %102, align 4
  br label %103

103:                                              ; preds = %100, %97
  br label %104

104:                                              ; preds = %103, %61, %57
  br label %105

105:                                              ; preds = %104, %50
  %106 = load %struct.node_info*, %struct.node_info** %9, align 8
  %107 = getelementptr inbounds %struct.node_info, %struct.node_info* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %6, align 8
  %110 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %109, i32 0, i32 1
  %111 = load i64*, i64** %110, align 8
  %112 = call i32 @memcpy(i32 %108, i64* %111, i32 6)
  store i32 1, i32* %5, align 4
  br label %113

113:                                              ; preds = %105, %34
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local i32 @get_beacon_info(i8*, i32, %struct.node_info*) #1

declare dso_local i32 @memcpy(i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
