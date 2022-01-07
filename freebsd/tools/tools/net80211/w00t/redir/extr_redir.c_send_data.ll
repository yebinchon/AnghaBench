; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/redir/extr_redir.c_send_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/redir/extr_redir.c_send_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.params = type { i8*, i8*, i8*, i32, i64, i32, i32, i64, %struct.queue* }
%struct.queue = type { i32, i64 }
%struct.ieee80211_frame = type { i32*, i8*, i8*, i8*, i64, i32* }

@IEEE80211_FC0_TYPE_DATA = common dso_local global i32 0, align 4
@IEEE80211_FC0_SUBTYPE_DATA = common dso_local global i32 0, align 4
@IEEE80211_FC1_DIR_TODS = common dso_local global i32 0, align 4
@IEEE80211_FC1_PROTECTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @send_data(%struct.params* %0) #0 {
  %2 = alloca %struct.params*, align 8
  %3 = alloca %struct.ieee80211_frame*, align 8
  %4 = alloca i16*, align 8
  %5 = alloca %struct.queue*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.params* %0, %struct.params** %2, align 8
  %9 = load %struct.params*, %struct.params** %2, align 8
  %10 = getelementptr inbounds %struct.params, %struct.params* %9, i32 0, i32 8
  %11 = load %struct.queue*, %struct.queue** %10, align 8
  store %struct.queue* %11, %struct.queue** %5, align 8
  %12 = load %struct.queue*, %struct.queue** %5, align 8
  %13 = call i32 @assert(%struct.queue* %12)
  %14 = load %struct.params*, %struct.params** %2, align 8
  %15 = getelementptr inbounds %struct.params, %struct.params* %14, i32 0, i32 7
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @memset(i64 %16, i32 0, i32 8)
  %18 = load %struct.params*, %struct.params** %2, align 8
  %19 = getelementptr inbounds %struct.params, %struct.params* %18, i32 0, i32 7
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.ieee80211_frame*
  store %struct.ieee80211_frame* %21, %struct.ieee80211_frame** %3, align 8
  %22 = load i32, i32* @IEEE80211_FC0_TYPE_DATA, align 4
  %23 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %3, align 8
  %24 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %23, i32 0, i32 5
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %22
  store i32 %28, i32* %26, align 4
  %29 = load i32, i32* @IEEE80211_FC0_SUBTYPE_DATA, align 4
  %30 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %3, align 8
  %31 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %30, i32 0, i32 5
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %29
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* @IEEE80211_FC1_DIR_TODS, align 4
  %37 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %3, align 8
  %38 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %37, i32 0, i32 5
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %36
  store i32 %42, i32* %40, align 4
  %43 = load i32, i32* @IEEE80211_FC1_PROTECTED, align 4
  %44 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %3, align 8
  %45 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %44, i32 0, i32 5
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %43
  store i32 %49, i32* %47, align 4
  %50 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %3, align 8
  %51 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  store i32 105, i32* %53, align 4
  %54 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %3, align 8
  %55 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = load %struct.params*, %struct.params** %2, align 8
  %58 = getelementptr inbounds %struct.params, %struct.params* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @memcpy(i8* %56, i8* %59, i32 6)
  %61 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %3, align 8
  %62 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %61, i32 0, i32 2
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.params*, %struct.params** %2, align 8
  %65 = getelementptr inbounds %struct.params, %struct.params* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @memcpy(i8* %63, i8* %66, i32 6)
  %68 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %3, align 8
  %69 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %68, i32 0, i32 3
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.params*, %struct.params** %2, align 8
  %72 = getelementptr inbounds %struct.params, %struct.params* %71, i32 0, i32 2
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @memcpy(i8* %70, i8* %73, i32 6)
  %75 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %3, align 8
  %76 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %75, i32 0, i32 4
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to i16*
  store i16* %78, i16** %4, align 8
  %79 = load %struct.params*, %struct.params** %2, align 8
  %80 = getelementptr inbounds %struct.params, %struct.params* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.params*, %struct.params** %2, align 8
  %83 = getelementptr inbounds %struct.params, %struct.params* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 8
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 8
  %86 = call signext i16 @seqfn(i32 %81, i32 %84)
  %87 = load i16*, i16** %4, align 8
  store i16 %86, i16* %87, align 2
  %88 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %3, align 8
  %89 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %88, i64 1
  %90 = bitcast %struct.ieee80211_frame* %89 to i8*
  store i8* %90, i8** %6, align 8
  %91 = load %struct.queue*, %struct.queue** %5, align 8
  %92 = getelementptr inbounds %struct.queue, %struct.queue* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %93, 1
  %95 = inttoptr i64 %94 to i8*
  store i8* %95, i8** %7, align 8
  %96 = load %struct.queue*, %struct.queue** %5, align 8
  %97 = getelementptr inbounds %struct.queue, %struct.queue* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = sext i32 %98 to i64
  %100 = sub i64 %99, 48
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %8, align 4
  %102 = load i8*, i8** %6, align 8
  %103 = load i8*, i8** %7, align 8
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @memcpy(i8* %102, i8* %103, i32 %104)
  %106 = load i32, i32* %8, align 4
  %107 = sext i32 %106 to i64
  %108 = add i64 48, %107
  %109 = trunc i64 %108 to i32
  %110 = load %struct.params*, %struct.params** %2, align 8
  %111 = getelementptr inbounds %struct.params, %struct.params* %110, i32 0, i32 3
  store i32 %109, i32* %111, align 8
  %112 = load %struct.params*, %struct.params** %2, align 8
  %113 = getelementptr inbounds %struct.params, %struct.params* %112, i32 0, i32 4
  store i64 0, i64* %113, align 8
  %114 = load %struct.params*, %struct.params** %2, align 8
  %115 = call i32 @send_packet(%struct.params* %114)
  ret void
}

declare dso_local i32 @assert(%struct.queue*) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local signext i16 @seqfn(i32, i32) #1

declare dso_local i32 @send_packet(%struct.params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
