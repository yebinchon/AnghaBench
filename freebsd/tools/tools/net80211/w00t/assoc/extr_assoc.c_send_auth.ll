; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/assoc/extr_assoc.c_send_auth.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/assoc/extr_assoc.c_send_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.params = type { i32 }
%struct.ieee80211_frame = type { i32* }

@IEEE80211_FC0_TYPE_MGT = common dso_local global i32 0, align 4
@IEEE80211_FC0_SUBTYPE_AUTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @send_auth(%struct.params* %0) #0 {
  %2 = alloca %struct.params*, align 8
  %3 = alloca [2048 x i8], align 16
  %4 = alloca %struct.ieee80211_frame*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.params* %0, %struct.params** %2, align 8
  %7 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0
  %8 = call i32 @memset(i8* %7, i32 0, i32 2048)
  %9 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0
  %10 = bitcast i8* %9 to %struct.ieee80211_frame*
  store %struct.ieee80211_frame* %10, %struct.ieee80211_frame** %4, align 8
  %11 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %4, align 8
  %12 = load %struct.params*, %struct.params** %2, align 8
  %13 = call i32 @fill_basic(%struct.ieee80211_frame* %11, %struct.params* %12)
  %14 = load i32, i32* @IEEE80211_FC0_TYPE_MGT, align 4
  %15 = load i32, i32* @IEEE80211_FC0_SUBTYPE_AUTH, align 4
  %16 = or i32 %14, %15
  %17 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %4, align 8
  %18 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %16
  store i32 %22, i32* %20, align 4
  %23 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %4, align 8
  %24 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %23, i64 1
  %25 = bitcast %struct.ieee80211_frame* %24 to i8*
  store i8* %25, i8** %5, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %5, align 8
  store i8 0, i8* %26, align 1
  %28 = load i8*, i8** %5, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %5, align 8
  store i8 0, i8* %28, align 1
  %30 = load i8*, i8** %5, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %5, align 8
  store i8 1, i8* %30, align 1
  %32 = load i8*, i8** %5, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %5, align 8
  store i8 0, i8* %32, align 1
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %5, align 8
  store i8 0, i8* %34, align 1
  %36 = load i8*, i8** %5, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %5, align 8
  store i8 0, i8* %36, align 1
  %38 = load i8*, i8** %5, align 8
  %39 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %4, align 8
  %40 = bitcast %struct.ieee80211_frame* %39 to i8*
  %41 = ptrtoint i8* %38 to i64
  %42 = ptrtoint i8* %40 to i64
  %43 = sub i64 %41, %42
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %6, align 4
  %45 = load %struct.params*, %struct.params** %2, align 8
  %46 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @send_frame(%struct.params* %45, i8* %46, i32 %47)
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @fill_basic(%struct.ieee80211_frame*, %struct.params*) #1

declare dso_local i32 @send_frame(%struct.params*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
