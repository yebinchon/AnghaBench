; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/ap/extr_ap.c_send_auth.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/ap/extr_ap.c_send_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.params = type { i8* }
%struct.ieee80211_frame = type { i32*, i32, i32 }

@IEEE80211_FC0_TYPE_MGT = common dso_local global i32 0, align 4
@IEEE80211_FC0_SUBTYPE_AUTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"sending auth\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @send_auth(%struct.params* %0, i8* %1) #0 {
  %3 = alloca %struct.params*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [4096 x i8], align 16
  %6 = alloca %struct.ieee80211_frame*, align 8
  %7 = alloca i16*, align 8
  %8 = alloca i32, align 4
  store %struct.params* %0, %struct.params** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0
  %10 = bitcast i8* %9 to %struct.ieee80211_frame*
  store %struct.ieee80211_frame* %10, %struct.ieee80211_frame** %6, align 8
  %11 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0
  %12 = call i32 @memset(i8* %11, i32 0, i32 4096)
  %13 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %6, align 8
  %14 = load %struct.params*, %struct.params** %3, align 8
  %15 = call i32 @fill_basic(%struct.ieee80211_frame* %13, %struct.params* %14)
  %16 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %6, align 8
  %17 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @memcpy(i32 %18, i8* %19, i32 6)
  %21 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %6, align 8
  %22 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.params*, %struct.params** %3, align 8
  %25 = getelementptr inbounds %struct.params, %struct.params* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @memcpy(i32 %23, i8* %26, i32 6)
  %28 = load i32, i32* @IEEE80211_FC0_TYPE_MGT, align 4
  %29 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %6, align 8
  %30 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %28
  store i32 %34, i32* %32, align 4
  %35 = load i32, i32* @IEEE80211_FC0_SUBTYPE_AUTH, align 4
  %36 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %6, align 8
  %37 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %35
  store i32 %41, i32* %39, align 4
  %42 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %6, align 8
  %43 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %42, i64 1
  %44 = bitcast %struct.ieee80211_frame* %43 to i16*
  store i16* %44, i16** %7, align 8
  %45 = call i8* @htole16(i32 0)
  %46 = ptrtoint i8* %45 to i16
  %47 = load i16*, i16** %7, align 8
  %48 = getelementptr inbounds i16, i16* %47, i32 1
  store i16* %48, i16** %7, align 8
  store i16 %46, i16* %47, align 2
  %49 = call i8* @htole16(i32 2)
  %50 = ptrtoint i8* %49 to i16
  %51 = load i16*, i16** %7, align 8
  %52 = getelementptr inbounds i16, i16* %51, i32 1
  store i16* %52, i16** %7, align 8
  store i16 %50, i16* %51, align 2
  %53 = call i8* @htole16(i32 0)
  %54 = ptrtoint i8* %53 to i16
  %55 = load i16*, i16** %7, align 8
  %56 = getelementptr inbounds i16, i16* %55, i32 1
  store i16* %56, i16** %7, align 8
  store i16 %54, i16* %55, align 2
  %57 = load i16*, i16** %7, align 8
  %58 = bitcast i16* %57 to i8*
  %59 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %6, align 8
  %60 = bitcast %struct.ieee80211_frame* %59 to i8*
  %61 = ptrtoint i8* %58 to i64
  %62 = ptrtoint i8* %60 to i64
  %63 = sub i64 %61, %62
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %8, align 4
  %65 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %66 = load %struct.params*, %struct.params** %3, align 8
  %67 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %6, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @send_frame(%struct.params* %66, %struct.ieee80211_frame* %67, i32 %68)
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @fill_basic(%struct.ieee80211_frame*, %struct.params*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i8* @htole16(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @send_frame(%struct.params*, %struct.ieee80211_frame*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
