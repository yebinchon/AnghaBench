; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/wlantxtime/extr_wlantxtime.c_mode2table.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/wlantxtime/extr_wlantxtime.c_mode2table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_rate_table = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"half\00", align 1
@ieee80211_half_table = common dso_local global %struct.ieee80211_rate_table zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"quarter\00", align 1
@ieee80211_quarter_table = common dso_local global %struct.ieee80211_rate_table zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"hta\00", align 1
@ieee80211_11a_table = common dso_local global %struct.ieee80211_rate_table zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"htg\00", align 1
@ieee80211_11g_table = common dso_local global %struct.ieee80211_rate_table zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"108g\00", align 1
@ieee80211_turbog_table = common dso_local global %struct.ieee80211_rate_table zeroinitializer, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"sturbo\00", align 1
@ieee80211_turboa_table = common dso_local global %struct.ieee80211_rate_table zeroinitializer, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"turbo\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"11a\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"11g\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"11b\00", align 1
@ieee80211_11b_table = common dso_local global %struct.ieee80211_rate_table zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ieee80211_rate_table* (i8*)* @mode2table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ieee80211_rate_table* @mode2table(i8* %0) #0 {
  %2 = alloca %struct.ieee80211_rate_table*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i64 @strcasecmp(i8* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store %struct.ieee80211_rate_table* @ieee80211_half_table, %struct.ieee80211_rate_table** %2, align 8
  br label %54

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = call i64 @strcasecmp(i8* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store %struct.ieee80211_rate_table* @ieee80211_quarter_table, %struct.ieee80211_rate_table** %2, align 8
  br label %54

13:                                               ; preds = %8
  %14 = load i8*, i8** %3, align 8
  %15 = call i64 @strcasecmp(i8* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store %struct.ieee80211_rate_table* @ieee80211_11a_table, %struct.ieee80211_rate_table** %2, align 8
  br label %54

18:                                               ; preds = %13
  %19 = load i8*, i8** %3, align 8
  %20 = call i64 @strcasecmp(i8* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store %struct.ieee80211_rate_table* @ieee80211_11g_table, %struct.ieee80211_rate_table** %2, align 8
  br label %54

23:                                               ; preds = %18
  %24 = load i8*, i8** %3, align 8
  %25 = call i64 @strcasecmp(i8* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store %struct.ieee80211_rate_table* @ieee80211_turbog_table, %struct.ieee80211_rate_table** %2, align 8
  br label %54

28:                                               ; preds = %23
  %29 = load i8*, i8** %3, align 8
  %30 = call i64 @strcasecmp(i8* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store %struct.ieee80211_rate_table* @ieee80211_turboa_table, %struct.ieee80211_rate_table** %2, align 8
  br label %54

33:                                               ; preds = %28
  %34 = load i8*, i8** %3, align 8
  %35 = call i64 @strcasecmp(i8* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store %struct.ieee80211_rate_table* @ieee80211_turboa_table, %struct.ieee80211_rate_table** %2, align 8
  br label %54

38:                                               ; preds = %33
  %39 = load i8*, i8** %3, align 8
  %40 = call i64 @strcasecmp(i8* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store %struct.ieee80211_rate_table* @ieee80211_11a_table, %struct.ieee80211_rate_table** %2, align 8
  br label %54

43:                                               ; preds = %38
  %44 = load i8*, i8** %3, align 8
  %45 = call i64 @strcasecmp(i8* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store %struct.ieee80211_rate_table* @ieee80211_11g_table, %struct.ieee80211_rate_table** %2, align 8
  br label %54

48:                                               ; preds = %43
  %49 = load i8*, i8** %3, align 8
  %50 = call i64 @strcasecmp(i8* %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store %struct.ieee80211_rate_table* @ieee80211_11b_table, %struct.ieee80211_rate_table** %2, align 8
  br label %54

53:                                               ; preds = %48
  store %struct.ieee80211_rate_table* null, %struct.ieee80211_rate_table** %2, align 8
  br label %54

54:                                               ; preds = %53, %52, %47, %42, %37, %32, %27, %22, %17, %12, %7
  %55 = load %struct.ieee80211_rate_table*, %struct.ieee80211_rate_table** %2, align 8
  ret %struct.ieee80211_rate_table* %55
}

declare dso_local i64 @strcasecmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
