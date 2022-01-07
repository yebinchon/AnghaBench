; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/ap/extr_ap.c_read_mgt.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/ap/extr_ap.c_read_mgt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.params = type { i32 }
%struct.ieee80211_frame = type { i32* }

@IEEE80211_FC0_SUBTYPE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"wtf %d\0A\00", align 1
@IEEE80211_FC0_SUBTYPE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @read_mgt(%struct.params* %0, %struct.ieee80211_frame* %1, i32 %2) #0 {
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
  switch i32 %13, label %31 [
    i32 129, label %14
    i32 128, label %19
    i32 131, label %20
    i32 133, label %25
    i32 132, label %30
    i32 130, label %30
  ]

14:                                               ; preds = %3
  %15 = load %struct.params*, %struct.params** %4, align 8
  %16 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @read_preq(%struct.params* %15, %struct.ieee80211_frame* %16, i32 %17)
  br label %43

19:                                               ; preds = %3
  br label %43

20:                                               ; preds = %3
  %21 = load %struct.params*, %struct.params** %4, align 8
  %22 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @read_auth(%struct.params* %21, %struct.ieee80211_frame* %22, i32 %23)
  br label %43

25:                                               ; preds = %3
  %26 = load %struct.params*, %struct.params** %4, align 8
  %27 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @read_assoc(%struct.params* %26, %struct.ieee80211_frame* %27, i32 %28)
  br label %43

30:                                               ; preds = %3, %3
  br label %43

31:                                               ; preds = %3
  %32 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %33 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @IEEE80211_FC0_SUBTYPE_MASK, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* @IEEE80211_FC0_SUBTYPE_SHIFT, align 4
  %40 = ashr i32 %38, %39
  %41 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = call i32 (...) @abort() #3
  unreachable

43:                                               ; preds = %30, %25, %20, %19, %14
  ret void
}

declare dso_local i32 @read_preq(%struct.params*, %struct.ieee80211_frame*, i32) #1

declare dso_local i32 @read_auth(%struct.params*, %struct.ieee80211_frame*, i32) #1

declare dso_local i32 @read_assoc(%struct.params*, %struct.ieee80211_frame*, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

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
