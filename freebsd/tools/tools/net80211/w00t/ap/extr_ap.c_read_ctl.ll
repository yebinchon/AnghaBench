; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/ap/extr_ap.c_read_ctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/ap/extr_ap.c_read_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.params = type { i32 }
%struct.ieee80211_frame = type { i32* }

@IEEE80211_FC0_SUBTYPE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"wtf %d\0A\00", align 1
@IEEE80211_FC0_SUBTYPE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @read_ctl(%struct.params* %0, %struct.ieee80211_frame* %1, i32 %2) #0 {
  %4 = alloca %struct.params*, align 8
  %5 = alloca %struct.ieee80211_frame*, align 8
  %6 = alloca i32, align 4
  store %struct.params* %0, %struct.params** %4, align 8
  store %struct.ieee80211_frame* %1, %struct.ieee80211_frame** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %8 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @IEEE80211_FC0_SUBTYPE_MASK, align 4
  %13 = and i32 %11, %12
  switch i32 %13, label %25 [
    i32 128, label %14
    i32 130, label %19
    i32 129, label %24
  ]

14:                                               ; preds = %3
  %15 = load %struct.params*, %struct.params** %4, align 8
  %16 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @read_rts(%struct.params* %15, %struct.ieee80211_frame* %16, i32 %17)
  br label %37

19:                                               ; preds = %3
  %20 = load %struct.params*, %struct.params** %4, align 8
  %21 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @read_ack(%struct.params* %20, %struct.ieee80211_frame* %21, i32 %22)
  br label %37

24:                                               ; preds = %3
  br label %37

25:                                               ; preds = %3
  %26 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %27 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @IEEE80211_FC0_SUBTYPE_MASK, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* @IEEE80211_FC0_SUBTYPE_SHIFT, align 4
  %34 = ashr i32 %32, %33
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = call i32 (...) @abort() #3
  unreachable

37:                                               ; preds = %24, %19, %14
  ret void
}

declare dso_local i32 @read_rts(%struct.params*, %struct.ieee80211_frame*, i32) #1

declare dso_local i32 @read_ack(%struct.params*, %struct.ieee80211_frame*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
