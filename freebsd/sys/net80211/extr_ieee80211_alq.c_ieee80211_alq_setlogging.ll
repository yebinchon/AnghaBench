; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_alq.c_ieee80211_alq_setlogging.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_alq.c_ieee80211_alq_setlogging.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@ieee80211_alq = common dso_local global i32* null, align 8
@ieee80211_alq_logfile = common dso_local global i8* null, align 8
@curthread = common dso_local global %struct.TYPE_2__* null, align 8
@ALQ_DEFAULT_CMODE = common dso_local global i32 0, align 4
@ieee80211_alq_qsize = common dso_local global i32 0, align 4
@ieee80211_alq_lost = common dso_local global i64 0, align 8
@ieee80211_alq_logged = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"net80211: logging to %s enabled; struct size %d bytes\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"net80211: logging disabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ieee80211_alq_setlogging to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_alq_setlogging(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %22

6:                                                ; preds = %1
  %7 = load i32*, i32** @ieee80211_alq, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = load i32*, i32** @ieee80211_alq, align 8
  %11 = call i32 @alq_close(i32* %10)
  br label %12

12:                                               ; preds = %9, %6
  %13 = load i8*, i8** @ieee80211_alq_logfile, align 8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curthread, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @ALQ_DEFAULT_CMODE, align 4
  %18 = load i32, i32* @ieee80211_alq_qsize, align 4
  %19 = call i32 @alq_open(i32** @ieee80211_alq, i8* %13, i32 %16, i32 %17, i32 %18, i32 0)
  store i32 %19, i32* %3, align 4
  store i64 0, i64* @ieee80211_alq_lost, align 8
  store i64 0, i64* @ieee80211_alq_logged, align 8
  %20 = load i8*, i8** @ieee80211_alq_logfile, align 8
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i8* %20, i32 4)
  br label %30

22:                                               ; preds = %1
  %23 = load i32*, i32** @ieee80211_alq, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32*, i32** @ieee80211_alq, align 8
  %27 = call i32 @alq_close(i32* %26)
  br label %28

28:                                               ; preds = %25, %22
  store i32* null, i32** @ieee80211_alq, align 8
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %28, %12
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @alq_close(i32*) #1

declare dso_local i32 @alq_open(i32**, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
