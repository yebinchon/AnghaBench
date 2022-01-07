; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/assoc/extr_assoc.c_get_assoc.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/assoc/extr_assoc.c_get_assoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.params = type { i32, i32, i32, i32 }
%struct.ieee80211_frame = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"sniff()\00", align 1
@IEEE80211_FC0_TYPE_MGT = common dso_local global i32 0, align 4
@IEEE80211_FC0_SUBTYPE_ASSOC_RESP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Assoc failed code %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Association ID=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_assoc(%struct.params* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.params*, align 8
  %4 = alloca [4096 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_frame*, align 8
  %7 = alloca i16*, align 8
  store %struct.params* %0, %struct.params** %3, align 8
  %8 = load %struct.params*, %struct.params** %3, align 8
  %9 = getelementptr inbounds %struct.params, %struct.params* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr inbounds [4096 x i8], [4096 x i8]* %4, i64 0, i64 0
  %12 = call i32 @sniff(i32 %10, i8* %11, i32 4096)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = call i32 @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %1
  %18 = getelementptr inbounds [4096 x i8], [4096 x i8]* %4, i64 0, i64 0
  %19 = call %struct.ieee80211_frame* @get_wifi(i8* %18, i32* %5)
  store %struct.ieee80211_frame* %19, %struct.ieee80211_frame** %6, align 8
  %20 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %6, align 8
  %21 = icmp ne %struct.ieee80211_frame* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %80

23:                                               ; preds = %17
  %24 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %6, align 8
  %25 = load %struct.params*, %struct.params** %3, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @generic_process(%struct.ieee80211_frame* %24, %struct.params* %25, i32 %26)
  %28 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %6, align 8
  %29 = load %struct.params*, %struct.params** %3, align 8
  %30 = getelementptr inbounds %struct.params, %struct.params* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @for_me(%struct.ieee80211_frame* %28, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %80

35:                                               ; preds = %23
  %36 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %6, align 8
  %37 = load %struct.params*, %struct.params** %3, align 8
  %38 = getelementptr inbounds %struct.params, %struct.params* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @from_ap(%struct.ieee80211_frame* %36, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %80

43:                                               ; preds = %35
  %44 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %6, align 8
  %45 = load i32, i32* @IEEE80211_FC0_TYPE_MGT, align 4
  %46 = load i32, i32* @IEEE80211_FC0_SUBTYPE_ASSOC_RESP, align 4
  %47 = call i32 @frame_type(%struct.ieee80211_frame* %44, i32 %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %80

50:                                               ; preds = %43
  %51 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %6, align 8
  %52 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %51, i64 1
  %53 = bitcast %struct.ieee80211_frame* %52 to i16*
  store i16* %53, i16** %7, align 8
  %54 = load i16*, i16** %7, align 8
  %55 = getelementptr inbounds i16, i16* %54, i32 1
  store i16* %55, i16** %7, align 8
  %56 = load i16*, i16** %7, align 8
  %57 = getelementptr inbounds i16, i16* %56, i32 1
  store i16* %57, i16** %7, align 8
  %58 = load i16, i16* %56, align 2
  %59 = call i8* @le16toh(i16 zeroext %58)
  %60 = ptrtoint i8* %59 to i32
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %50
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  store i32 0, i32* %2, align 4
  br label %80

66:                                               ; preds = %50
  %67 = load i16*, i16** %7, align 8
  %68 = load i16, i16* %67, align 2
  %69 = zext i16 %68 to i32
  %70 = and i32 %69, -49153
  %71 = trunc i32 %70 to i16
  %72 = call i8* @le16toh(i16 zeroext %71)
  %73 = ptrtoint i8* %72 to i32
  %74 = load %struct.params*, %struct.params** %3, align 8
  %75 = getelementptr inbounds %struct.params, %struct.params* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  %76 = load %struct.params*, %struct.params** %3, align 8
  %77 = getelementptr inbounds %struct.params, %struct.params* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  store i32 1, i32* %2, align 4
  br label %80

80:                                               ; preds = %66, %63, %49, %42, %34, %22
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @sniff(i32, i8*, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local %struct.ieee80211_frame* @get_wifi(i8*, i32*) #1

declare dso_local i32 @generic_process(%struct.ieee80211_frame*, %struct.params*, i32) #1

declare dso_local i32 @for_me(%struct.ieee80211_frame*, i32) #1

declare dso_local i32 @from_ap(%struct.ieee80211_frame*, i32) #1

declare dso_local i32 @frame_type(%struct.ieee80211_frame*, i32, i32) #1

declare dso_local i8* @le16toh(i16 zeroext) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
