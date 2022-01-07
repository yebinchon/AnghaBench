; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_mp.c_mp_CheckAutoloadTimer.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_mp.c_mp_CheckAutoloadTimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp = type { %struct.TYPE_11__, i32, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_9__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }

@mp_UpDown = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"MP throughput\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_CheckAutoloadTimer(%struct.mp* %0) #0 {
  %2 = alloca %struct.mp*, align 8
  store %struct.mp* %0, %struct.mp** %2, align 8
  %3 = load %struct.mp*, %struct.mp** %2, align 8
  %4 = getelementptr inbounds %struct.mp, %struct.mp* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.mp*, %struct.mp** %2, align 8
  %10 = getelementptr inbounds %struct.mp, %struct.mp* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %8, %13
  br i1 %14, label %15, label %38

15:                                               ; preds = %1
  %16 = load %struct.mp*, %struct.mp** %2, align 8
  %17 = getelementptr inbounds %struct.mp, %struct.mp* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = call i32 @throughput_destroy(%struct.TYPE_13__* %19)
  %21 = load %struct.mp*, %struct.mp** %2, align 8
  %22 = getelementptr inbounds %struct.mp, %struct.mp* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load %struct.mp*, %struct.mp** %2, align 8
  %26 = getelementptr inbounds %struct.mp, %struct.mp* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @throughput_init(%struct.TYPE_13__* %24, i64 %29)
  %31 = load %struct.mp*, %struct.mp** %2, align 8
  %32 = getelementptr inbounds %struct.mp, %struct.mp* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32, i32* @mp_UpDown, align 4
  %36 = load %struct.mp*, %struct.mp** %2, align 8
  %37 = call i32 @throughput_callback(%struct.TYPE_13__* %34, i32 %35, %struct.mp* %36)
  br label %38

38:                                               ; preds = %15, %1
  %39 = load %struct.mp*, %struct.mp** %2, align 8
  %40 = getelementptr inbounds %struct.mp, %struct.mp* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @bundle_WantAutoloadTimer(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load %struct.mp*, %struct.mp** %2, align 8
  %46 = getelementptr inbounds %struct.mp, %struct.mp* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = call i32 @throughput_start(%struct.TYPE_13__* %48, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 1)
  br label %53

50:                                               ; preds = %38
  %51 = load %struct.mp*, %struct.mp** %2, align 8
  %52 = call i32 @mp_StopAutoloadTimer(%struct.mp* %51)
  br label %53

53:                                               ; preds = %50, %44
  ret void
}

declare dso_local i32 @throughput_destroy(%struct.TYPE_13__*) #1

declare dso_local i32 @throughput_init(%struct.TYPE_13__*, i64) #1

declare dso_local i32 @throughput_callback(%struct.TYPE_13__*, i32, %struct.mp*) #1

declare dso_local i64 @bundle_WantAutoloadTimer(i32) #1

declare dso_local i32 @throughput_start(%struct.TYPE_13__*, i8*, i32) #1

declare dso_local i32 @mp_StopAutoloadTimer(%struct.mp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
