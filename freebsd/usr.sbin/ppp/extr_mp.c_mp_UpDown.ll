; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_mp.c_mp_UpDown.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_mp.c_mp_UpDown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp = type { %struct.TYPE_16__*, %struct.TYPE_15__, %struct.TYPE_13__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@LogDEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"%d%% saturation - bring a link up ?\0A\00", align 1
@AUTO_UP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"%d%% saturation - bring a link down ?\0A\00", align 1
@AUTO_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @mp_UpDown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mp_UpDown(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mp*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.mp*
  store %struct.mp* %6, %struct.mp** %3, align 8
  %7 = load %struct.mp*, %struct.mp** %3, align 8
  %8 = getelementptr inbounds %struct.mp, %struct.mp* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.mp*, %struct.mp** %3, align 8
  %15 = getelementptr inbounds %struct.mp, %struct.mp* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @MAX(i32 %13, i32 %20)
  %22 = mul nsw i32 %21, 800
  %23 = load %struct.mp*, %struct.mp** %3, align 8
  %24 = getelementptr inbounds %struct.mp, %struct.mp* %23, i32 0, i32 0
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sdiv i32 %22, %27
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.mp*, %struct.mp** %3, align 8
  %31 = getelementptr inbounds %struct.mp, %struct.mp* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp sge i32 %29, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %1
  %37 = load i32, i32* @LogDEBUG, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @log_Printf(i32 %37, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load %struct.mp*, %struct.mp** %3, align 8
  %41 = getelementptr inbounds %struct.mp, %struct.mp* %40, i32 0, i32 0
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @AUTO_UP, align 4
  %45 = call i32 @bundle_AutoAdjust(%struct.TYPE_16__* %42, i32 %43, i32 %44)
  br label %65

46:                                               ; preds = %1
  %47 = load i32, i32* %4, align 4
  %48 = load %struct.mp*, %struct.mp** %3, align 8
  %49 = getelementptr inbounds %struct.mp, %struct.mp* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp sle i32 %47, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %46
  %55 = load i32, i32* @LogDEBUG, align 4
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @log_Printf(i32 %55, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load %struct.mp*, %struct.mp** %3, align 8
  %59 = getelementptr inbounds %struct.mp, %struct.mp* %58, i32 0, i32 0
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %59, align 8
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @AUTO_DOWN, align 4
  %63 = call i32 @bundle_AutoAdjust(%struct.TYPE_16__* %60, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %54, %46
  br label %65

65:                                               ; preds = %64, %36
  ret void
}

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @log_Printf(i32, i8*, i32) #1

declare dso_local i32 @bundle_AutoAdjust(%struct.TYPE_16__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
