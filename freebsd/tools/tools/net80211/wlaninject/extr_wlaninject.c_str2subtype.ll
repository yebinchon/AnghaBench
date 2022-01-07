; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/wlaninject/extr_wlaninject.c_str2subtype.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/wlaninject/extr_wlaninject.c_str2subtype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"preq\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"probereq\00", align 1
@IEEE80211_FC0_SUBTYPE_PROBE_REQ = common dso_local global i32 0, align 4
@IEEE80211_FC0_SUBTYPE_SHIFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"auth\00", align 1
@IEEE80211_FC0_SUBTYPE_AUTH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"areq\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"assocreq\00", align 1
@IEEE80211_FC0_SUBTYPE_ASSOC_REQ = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@IEEE80211_FC0_SUBTYPE_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @str2subtype(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i32 @strcasecmp(i8* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load i8*, i8** %3, align 8
  %9 = call i32 @strcasecmp(i8* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %7, %1
  %12 = load i32, i32* @IEEE80211_FC0_SUBTYPE_PROBE_REQ, align 4
  %13 = load i32, i32* @IEEE80211_FC0_SUBTYPE_SHIFT, align 4
  %14 = ashr i32 %12, %13
  store i32 %14, i32* %2, align 4
  br label %50

15:                                               ; preds = %7
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @strcasecmp(i8* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i32, i32* @IEEE80211_FC0_SUBTYPE_AUTH, align 4
  %21 = load i32, i32* @IEEE80211_FC0_SUBTYPE_SHIFT, align 4
  %22 = ashr i32 %20, %21
  store i32 %22, i32* %2, align 4
  br label %50

23:                                               ; preds = %15
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 @strcasecmp(i8* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i8*, i8** %3, align 8
  %29 = call i32 @strcasecmp(i8* %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27, %23
  %32 = load i32, i32* @IEEE80211_FC0_SUBTYPE_ASSOC_REQ, align 4
  %33 = load i32, i32* @IEEE80211_FC0_SUBTYPE_SHIFT, align 4
  %34 = ashr i32 %32, %33
  store i32 %34, i32* %2, align 4
  br label %50

35:                                               ; preds = %27
  %36 = load i8*, i8** %3, align 8
  %37 = call i32 @strcasecmp(i8* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i32, i32* @IEEE80211_FC0_SUBTYPE_DATA, align 4
  %41 = load i32, i32* @IEEE80211_FC0_SUBTYPE_SHIFT, align 4
  %42 = ashr i32 %40, %41
  store i32 %42, i32* %2, align 4
  br label %50

43:                                               ; preds = %35
  br label %44

44:                                               ; preds = %43
  br label %45

45:                                               ; preds = %44
  br label %46

46:                                               ; preds = %45
  %47 = load i8*, i8** %3, align 8
  %48 = call i32 @atoi(i8* %47)
  %49 = and i32 %48, 15
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %46, %39, %31, %19, %11
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @atoi(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
