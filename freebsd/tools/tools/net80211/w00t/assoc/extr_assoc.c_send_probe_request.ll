; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/assoc/extr_assoc.c_send_probe_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/assoc/extr_assoc.c_send_probe_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.params = type { i32 }
%struct.ieee80211_frame = type { i32*, i8*, i8* }

@IEEE80211_FC0_TYPE_MGT = common dso_local global i32 0, align 4
@IEEE80211_FC0_SUBTYPE_PROBE_REQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @send_probe_request(%struct.params* %0) #0 {
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
  %15 = load i32, i32* @IEEE80211_FC0_SUBTYPE_PROBE_REQ, align 4
  %16 = or i32 %14, %15
  %17 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %4, align 8
  %18 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %16
  store i32 %22, i32* %20, align 4
  %23 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %4, align 8
  %24 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @memset(i8* %25, i32 255, i32 6)
  %27 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %4, align 8
  %28 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %27, i32 0, i32 2
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @memset(i8* %29, i32 255, i32 6)
  %31 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %4, align 8
  %32 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %31, i64 1
  %33 = bitcast %struct.ieee80211_frame* %32 to i8*
  store i8* %33, i8** %5, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %5, align 8
  store i8 0, i8* %34, align 1
  %36 = load %struct.params*, %struct.params** %2, align 8
  %37 = getelementptr inbounds %struct.params, %struct.params* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @strlen(i32 %38)
  %40 = trunc i32 %39 to i8
  %41 = load i8*, i8** %5, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %5, align 8
  store i8 %40, i8* %41, align 1
  %43 = load i8*, i8** %5, align 8
  %44 = load %struct.params*, %struct.params** %2, align 8
  %45 = getelementptr inbounds %struct.params, %struct.params* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @strcpy(i8* %43, i32 %46)
  %48 = load %struct.params*, %struct.params** %2, align 8
  %49 = getelementptr inbounds %struct.params, %struct.params* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @strlen(i32 %50)
  %52 = load i8*, i8** %5, align 8
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  store i8* %54, i8** %5, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %5, align 8
  store i8 1, i8* %55, align 1
  %57 = load i8*, i8** %5, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %5, align 8
  store i8 4, i8* %57, align 1
  %59 = load i8*, i8** %5, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %5, align 8
  store i8 -126, i8* %59, align 1
  %61 = load i8*, i8** %5, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %5, align 8
  store i8 -124, i8* %61, align 1
  %63 = load i8*, i8** %5, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %5, align 8
  store i8 11, i8* %63, align 1
  %65 = load i8*, i8** %5, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %5, align 8
  store i8 22, i8* %65, align 1
  %67 = load i8*, i8** %5, align 8
  %68 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %4, align 8
  %69 = bitcast %struct.ieee80211_frame* %68 to i8*
  %70 = ptrtoint i8* %67 to i64
  %71 = ptrtoint i8* %69 to i64
  %72 = sub i64 %70, %71
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %6, align 4
  %74 = load %struct.params*, %struct.params** %2, align 8
  %75 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @send_frame(%struct.params* %74, i8* %75, i32 %76)
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @fill_basic(%struct.ieee80211_frame*, %struct.params*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @send_frame(%struct.params*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
