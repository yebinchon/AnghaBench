; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs.c_mvs_rearm_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs.c_mvs_rearm_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvs_channel = type { i32, %struct.mvs_slot*, i32 }
%struct.mvs_slot = type { i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@MVS_MAX_SLOTS = common dso_local global i32 0, align 4
@MVS_SLOT_RUNNING = common dso_local global i64 0, align 8
@SBT_1MS = common dso_local global i32 0, align 4
@mvs_timeout = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @mvs_rearm_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvs_rearm_timeout(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mvs_channel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mvs_slot*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.mvs_channel* @device_get_softc(i32 %6)
  store %struct.mvs_channel* %7, %struct.mvs_channel** %3, align 8
  %8 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %9 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %8, i32 0, i32 2
  %10 = load i32, i32* @MA_OWNED, align 4
  %11 = call i32 @mtx_assert(i32* %9, i32 %10)
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %54, %1
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @MVS_MAX_SLOTS, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %57

16:                                               ; preds = %12
  %17 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %18 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %17, i32 0, i32 1
  %19 = load %struct.mvs_slot*, %struct.mvs_slot** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.mvs_slot, %struct.mvs_slot* %19, i64 %21
  store %struct.mvs_slot* %22, %struct.mvs_slot** %5, align 8
  %23 = load %struct.mvs_slot*, %struct.mvs_slot** %5, align 8
  %24 = getelementptr inbounds %struct.mvs_slot, %struct.mvs_slot* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @MVS_SLOT_RUNNING, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %16
  br label %54

29:                                               ; preds = %16
  %30 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %31 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = shl i32 1, %33
  %35 = and i32 %32, %34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %54

38:                                               ; preds = %29
  %39 = load %struct.mvs_slot*, %struct.mvs_slot** %5, align 8
  %40 = getelementptr inbounds %struct.mvs_slot, %struct.mvs_slot* %39, i32 0, i32 2
  %41 = load i32, i32* @SBT_1MS, align 4
  %42 = load %struct.mvs_slot*, %struct.mvs_slot** %5, align 8
  %43 = getelementptr inbounds %struct.mvs_slot, %struct.mvs_slot* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = mul nsw i32 %41, %47
  %49 = sdiv i32 %48, 2
  %50 = load i64, i64* @mvs_timeout, align 8
  %51 = inttoptr i64 %50 to i32*
  %52 = load %struct.mvs_slot*, %struct.mvs_slot** %5, align 8
  %53 = call i32 @callout_reset_sbt(i32* %40, i32 %49, i32 0, i32* %51, %struct.mvs_slot* %52, i32 0)
  br label %54

54:                                               ; preds = %38, %37, %28
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %4, align 4
  br label %12

57:                                               ; preds = %12
  ret void
}

declare dso_local %struct.mvs_channel* @device_get_softc(i32) #1

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @callout_reset_sbt(i32*, i32, i32, i32*, %struct.mvs_slot*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
