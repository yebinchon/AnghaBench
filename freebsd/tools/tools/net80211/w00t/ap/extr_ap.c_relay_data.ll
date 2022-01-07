; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/ap/extr_ap.c_relay_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/ap/extr_ap.c_relay_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.params = type { i8*, i32 }
%struct.ieee80211_frame = type { i8*, i8*, i8*, i8*, i8* }

@IEEE80211_FC1_DIR_TODS = common dso_local global i32 0, align 4
@IEEE80211_FC1_RETRY = common dso_local global i32 0, align 4
@IEEE80211_FC1_DIR_FROMDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @relay_data(%struct.params* %0, %struct.ieee80211_frame* %1, i32 %2) #0 {
  %4 = alloca %struct.params*, align 8
  %5 = alloca %struct.ieee80211_frame*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [2 x i8], align 1
  %8 = alloca [2 x i8], align 1
  %9 = alloca i16*, align 8
  store %struct.params* %0, %struct.params** %4, align 8
  store %struct.ieee80211_frame* %1, %struct.ieee80211_frame** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  %11 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @memcpy(i8* %10, i8* %13, i32 2)
  %15 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %16 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %17 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @memcpy(i8* %15, i8* %18, i32 2)
  %20 = load i32, i32* @IEEE80211_FC1_DIR_TODS, align 4
  %21 = load i32, i32* @IEEE80211_FC1_RETRY, align 4
  %22 = or i32 %20, %21
  %23 = xor i32 %22, -1
  %24 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %25 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = and i32 %29, %23
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %27, align 1
  %32 = load i32, i32* @IEEE80211_FC1_DIR_FROMDS, align 4
  %33 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %34 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = or i32 %38, %32
  %40 = trunc i32 %39 to i8
  store i8 %40, i8* %36, align 1
  %41 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %42 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %41, i32 0, i32 2
  %43 = load i8*, i8** %42, align 8
  %44 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %45 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %44, i32 0, i32 3
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @memcpy(i8* %43, i8* %46, i32 8)
  %48 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %49 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %48, i32 0, i32 3
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %52 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %51, i32 0, i32 4
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @memcpy(i8* %50, i8* %53, i32 8)
  %55 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %56 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %55, i32 0, i32 4
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.params*, %struct.params** %4, align 8
  %59 = getelementptr inbounds %struct.params, %struct.params* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @memcpy(i8* %57, i8* %60, i32 8)
  %62 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %63 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = bitcast i8* %64 to i16*
  store i16* %65, i16** %9, align 8
  %66 = load %struct.params*, %struct.params** %4, align 8
  %67 = getelementptr inbounds %struct.params, %struct.params* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call zeroext i16 @seqfn(i32 %68, i32 0)
  %70 = load i16*, i16** %9, align 8
  store i16 %69, i16* %70, align 2
  %71 = load %struct.params*, %struct.params** %4, align 8
  %72 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @send_frame(%struct.params* %71, %struct.ieee80211_frame* %72, i32 %73)
  %75 = load %struct.params*, %struct.params** %4, align 8
  %76 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @enque(%struct.params* %75, %struct.ieee80211_frame* %76, i32 %77)
  %79 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %80 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  %83 = call i32 @memcpy(i8* %81, i8* %82, i32 2)
  %84 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %85 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %84, i32 0, i32 4
  %86 = load i8*, i8** %85, align 8
  %87 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %88 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %87, i32 0, i32 3
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @memcpy(i8* %86, i8* %89, i32 8)
  %91 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %92 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %91, i32 0, i32 3
  %93 = load i8*, i8** %92, align 8
  %94 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %95 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %94, i32 0, i32 2
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @memcpy(i8* %93, i8* %96, i32 8)
  %98 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %99 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %98, i32 0, i32 2
  %100 = load i8*, i8** %99, align 8
  %101 = load %struct.params*, %struct.params** %4, align 8
  %102 = getelementptr inbounds %struct.params, %struct.params* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @memcpy(i8* %100, i8* %103, i32 8)
  %105 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %106 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %105, i32 0, i32 1
  %107 = load i8*, i8** %106, align 8
  %108 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %109 = call i32 @memcpy(i8* %107, i8* %108, i32 2)
  ret void
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local zeroext i16 @seqfn(i32, i32) #1

declare dso_local i32 @send_frame(%struct.params*, %struct.ieee80211_frame*, i32) #1

declare dso_local i32 @enque(%struct.params*, %struct.ieee80211_frame*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
