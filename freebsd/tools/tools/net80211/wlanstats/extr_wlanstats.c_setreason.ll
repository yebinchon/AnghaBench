; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/wlanstats/extr_wlanstats.c_setreason.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/wlanstats/extr_wlanstats.c_setreason.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@setreason.reasons = internal global [151 x i8*] [i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [27 x i8] c"unsupported rsn ie version\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"unspecified\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"pairwise cipher invalid\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"not authed\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"not assoced\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"mic failure\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"invalid rsn ie cap\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"ie in 4-way differs\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"ie invalid\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"group key update timeout\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"group cipher invalid\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"disassoc supchan bad\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"disassoc pwrcap bad\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"cipher suite rejected\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"auth leave\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"auth expire\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"assoc toomany\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"assoc not authed\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"assoc leave\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"assoc expire\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"akmp invalid\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"802.1x auth failed\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"4-way handshake timeout\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"%s (%u)\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"%u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setreason(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @nitems(i8** getelementptr inbounds ([151 x i8*], [151 x i8*]* @setreason.reasons, i64 0, i64 0))
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %25

10:                                               ; preds = %3
  %11 = load i32, i32* %6, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [151 x i8*], [151 x i8*]* @setreason.reasons, i64 0, i64 %12
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %10
  %17 = load i8*, i8** %4, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [151 x i8*], [151 x i8*]* @setreason.reasons, i64 0, i64 %20
  %22 = load i8*, i8** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %17, i64 %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0), i8* %22, i32 %23)
  br label %30

25:                                               ; preds = %10, %3
  %26 = load i8*, i8** %4, align 8
  %27 = load i64, i64* %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %26, i64 %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %25, %16
  ret void
}

declare dso_local i32 @nitems(i8**) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
