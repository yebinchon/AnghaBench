; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/wlaninject/extr_wlaninject.c_str2type.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/wlaninject/extr_wlaninject.c_str2type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"mgt\00", align 1
@IEEE80211_FC0_TYPE_MGT = common dso_local global i32 0, align 4
@IEEE80211_FC0_TYPE_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"ctl\00", align 1
@IEEE80211_FC0_TYPE_CTL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@IEEE80211_FC0_TYPE_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @str2type(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i32 @strcasecmp(i8* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i32, i32* @IEEE80211_FC0_TYPE_MGT, align 4
  %9 = load i32, i32* @IEEE80211_FC0_TYPE_SHIFT, align 4
  %10 = ashr i32 %8, %9
  store i32 %10, i32* %2, align 4
  br label %33

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @strcasecmp(i8* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load i32, i32* @IEEE80211_FC0_TYPE_CTL, align 4
  %17 = load i32, i32* @IEEE80211_FC0_TYPE_SHIFT, align 4
  %18 = ashr i32 %16, %17
  store i32 %18, i32* %2, align 4
  br label %33

19:                                               ; preds = %11
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @strcasecmp(i8* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32, i32* @IEEE80211_FC0_TYPE_DATA, align 4
  %25 = load i32, i32* @IEEE80211_FC0_TYPE_SHIFT, align 4
  %26 = ashr i32 %24, %25
  store i32 %26, i32* %2, align 4
  br label %33

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %27
  br label %29

29:                                               ; preds = %28
  %30 = load i8*, i8** %3, align 8
  %31 = call i32 @atoi(i8* %30)
  %32 = and i32 %31, 3
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %29, %23, %15, %7
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @atoi(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
