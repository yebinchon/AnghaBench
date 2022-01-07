; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/wesside/wesside/extr_wesside.c_send_auth.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/wesside/wesside/extr_wesside.c_send_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_frame = type { i32* }

@IEEE80211_FC0_TYPE_MGT = common dso_local global i32 0, align 4
@IEEE80211_FC0_SUBTYPE_AUTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @send_auth(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [128 x i8], align 16
  %4 = alloca %struct.ieee80211_frame*, align 8
  %5 = alloca i16*, align 8
  store i32 %0, i32* %2, align 4
  %6 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %7 = bitcast i8* %6 to %struct.ieee80211_frame*
  store %struct.ieee80211_frame* %7, %struct.ieee80211_frame** %4, align 8
  %8 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %9 = call i32 @memset(i8* %8, i32 0, i32 128)
  %10 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %4, align 8
  %11 = call i32 @fill_basic(%struct.ieee80211_frame* %10)
  %12 = load i32, i32* @IEEE80211_FC0_TYPE_MGT, align 4
  %13 = load i32, i32* @IEEE80211_FC0_SUBTYPE_AUTH, align 4
  %14 = or i32 %12, %13
  %15 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %4, align 8
  %16 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %14
  store i32 %20, i32* %18, align 4
  %21 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %4, align 8
  %22 = bitcast %struct.ieee80211_frame* %21 to i8*
  %23 = getelementptr inbounds i8, i8* %22, i64 8
  %24 = bitcast i8* %23 to i16*
  store i16* %24, i16** %5, align 8
  %25 = load i16*, i16** %5, align 8
  %26 = getelementptr inbounds i16, i16* %25, i32 1
  store i16* %26, i16** %5, align 8
  %27 = load i16*, i16** %5, align 8
  store i16 1, i16* %27, align 2
  %28 = load i32, i32* %2, align 4
  %29 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %30 = call i32 @send_frame(i32 %28, i8* %29, i32 14)
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @fill_basic(%struct.ieee80211_frame*) #1

declare dso_local i32 @send_frame(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
