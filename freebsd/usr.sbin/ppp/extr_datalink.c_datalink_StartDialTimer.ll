; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_datalink.c_datalink_StartDialTimer.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_datalink.c_datalink_StartDialTimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.datalink = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i8*, %struct.datalink*, i32 }

@DIAL_TIMEOUT = common dso_local global i32 0, align 4
@SECTICKS = common dso_local global i32 0, align 4
@datalink_OpenTimeout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"dial\00", align 1
@DATALINK_OPENING = common dso_local global i64 0, align 8
@LogPHASE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"%s: Enter pause (%d) for redialing.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.datalink*, i32)* @datalink_StartDialTimer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @datalink_StartDialTimer(%struct.datalink* %0, i32 %1) #0 {
  %3 = alloca %struct.datalink*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.datalink* %0, %struct.datalink** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.datalink*, %struct.datalink** %3, align 8
  %8 = getelementptr inbounds %struct.datalink, %struct.datalink* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = call i32 @timer_Stop(%struct.TYPE_5__* %9)
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = call i32 (...) @random()
  %15 = load i32, i32* @DIAL_TIMEOUT, align 4
  %16 = srem i32 %14, %15
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %13, %2
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @SECTICKS, align 4
  %24 = mul nsw i32 %22, %23
  br label %26

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %25, %21
  %27 = phi i32 [ %24, %21 ], [ 1, %25 ]
  %28 = load %struct.datalink*, %struct.datalink** %3, align 8
  %29 = getelementptr inbounds %struct.datalink, %struct.datalink* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store i32 %27, i32* %31, align 8
  %32 = load i32, i32* @datalink_OpenTimeout, align 4
  %33 = load %struct.datalink*, %struct.datalink** %3, align 8
  %34 = getelementptr inbounds %struct.datalink, %struct.datalink* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 3
  store i32 %32, i32* %36, align 8
  %37 = load %struct.datalink*, %struct.datalink** %3, align 8
  %38 = getelementptr inbounds %struct.datalink, %struct.datalink* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %40, align 8
  %41 = load %struct.datalink*, %struct.datalink** %3, align 8
  %42 = load %struct.datalink*, %struct.datalink** %3, align 8
  %43 = getelementptr inbounds %struct.datalink, %struct.datalink* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 2
  store %struct.datalink* %41, %struct.datalink** %45, align 8
  %46 = load %struct.datalink*, %struct.datalink** %3, align 8
  %47 = getelementptr inbounds %struct.datalink, %struct.datalink* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = call i32 @timer_Start(%struct.TYPE_5__* %48)
  %50 = load %struct.datalink*, %struct.datalink** %3, align 8
  %51 = getelementptr inbounds %struct.datalink, %struct.datalink* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @DATALINK_OPENING, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %26
  %56 = load i32, i32* @LogPHASE, align 4
  %57 = load %struct.datalink*, %struct.datalink** %3, align 8
  %58 = getelementptr inbounds %struct.datalink, %struct.datalink* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @log_Printf(i32 %56, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %55, %26
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32 @timer_Stop(%struct.TYPE_5__*) #1

declare dso_local i32 @random(...) #1

declare dso_local i32 @timer_Start(%struct.TYPE_5__*) #1

declare dso_local i32 @log_Printf(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
