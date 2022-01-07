; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/ap/extr_ap.c_fill_beacon.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/ap/extr_ap.c_fill_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.params = type { i32, i32 }
%struct.ieee80211_frame = type { i32 }

@IEEE80211_CAPINFO_ESS = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fill_beacon(%struct.params* %0, %struct.ieee80211_frame* %1) #0 {
  %3 = alloca %struct.params*, align 8
  %4 = alloca %struct.ieee80211_frame*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.params* %0, %struct.params** %3, align 8
  store %struct.ieee80211_frame* %1, %struct.ieee80211_frame** %4, align 8
  %7 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %4, align 8
  %8 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %7, i64 1
  %9 = bitcast %struct.ieee80211_frame* %8 to i8*
  store i8* %9, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 8
  store i8* %11, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 2
  store i8* %13, i8** %6, align 8
  %14 = load i8, i8* @IEEE80211_CAPINFO_ESS, align 1
  %15 = sext i8 %14 to i32
  %16 = load i8*, i8** %6, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = or i32 %18, %15
  %20 = trunc i32 %19 to i8
  store i8 %20, i8* %16, align 1
  %21 = load i8*, i8** %6, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 2
  store i8* %22, i8** %6, align 8
  %23 = load %struct.params*, %struct.params** %3, align 8
  %24 = getelementptr inbounds %struct.params, %struct.params* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @strlen(i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i8*, i8** %6, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %6, align 8
  store i8 0, i8* %27, align 1
  %29 = load i32, i32* %5, align 4
  %30 = trunc i32 %29 to i8
  %31 = load i8*, i8** %6, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %6, align 8
  store i8 %30, i8* %31, align 1
  %33 = load i8*, i8** %6, align 8
  %34 = load %struct.params*, %struct.params** %3, align 8
  %35 = getelementptr inbounds %struct.params, %struct.params* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @memcpy(i8* %33, i32 %36, i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = load i8*, i8** %6, align 8
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  store i8* %42, i8** %6, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %6, align 8
  store i8 1, i8* %43, align 1
  %45 = load i8*, i8** %6, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %6, align 8
  store i8 4, i8* %45, align 1
  %47 = load i8*, i8** %6, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %6, align 8
  store i8 -126, i8* %47, align 1
  %49 = load i8*, i8** %6, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %6, align 8
  store i8 -124, i8* %49, align 1
  %51 = load i8*, i8** %6, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %6, align 8
  store i8 11, i8* %51, align 1
  %53 = load i8*, i8** %6, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %6, align 8
  store i8 22, i8* %53, align 1
  %55 = load i8*, i8** %6, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %6, align 8
  store i8 3, i8* %55, align 1
  %57 = load i8*, i8** %6, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %6, align 8
  store i8 1, i8* %57, align 1
  %59 = load %struct.params*, %struct.params** %3, align 8
  %60 = getelementptr inbounds %struct.params, %struct.params* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = trunc i32 %61 to i8
  %63 = load i8*, i8** %6, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %6, align 8
  store i8 %62, i8* %63, align 1
  %65 = load i8*, i8** %6, align 8
  %66 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %4, align 8
  %67 = bitcast %struct.ieee80211_frame* %66 to i8*
  %68 = ptrtoint i8* %65 to i64
  %69 = ptrtoint i8* %67 to i64
  %70 = sub i64 %68, %69
  %71 = trunc i64 %70 to i32
  ret i32 %71
}

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
