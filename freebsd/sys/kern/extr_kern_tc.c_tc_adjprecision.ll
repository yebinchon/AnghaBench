; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_tc.c_tc_adjprecision.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_tc.c_tc_adjprecision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@tc_timepercentage = common dso_local global i32 0, align 4
@tc_precexp = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@tc_tick = common dso_local global i32 0, align 4
@bt_timethreshold = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@bt_tickthreshold = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@INT_MAX = common dso_local global i32 0, align 4
@sbt_timethreshold = common dso_local global i8* null, align 8
@sbt_tickthreshold = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @tc_adjprecision to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tc_adjprecision() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @tc_timepercentage, align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %25

4:                                                ; preds = %0
  %5 = load i32, i32* @tc_timepercentage, align 4
  %6 = add nsw i32 99, %5
  %7 = load i32, i32* @tc_timepercentage, align 4
  %8 = sdiv i32 %6, %7
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %1, align 4
  %10 = load i32, i32* %1, align 4
  %11 = ashr i32 %10, 1
  %12 = add nsw i32 %9, %11
  %13 = call i32 @fls(i32 %12)
  %14 = sub nsw i32 %13, 1
  store i32 %14, i32* @tc_precexp, align 4
  %15 = load i32, i32* @hz, align 4
  %16 = load i32, i32* @tc_tick, align 4
  %17 = sdiv i32 %15, %16
  %18 = call i32 @FREQ2BT(i32 %17, %struct.TYPE_6__* @bt_timethreshold)
  %19 = load i32, i32* @hz, align 4
  %20 = call i32 @FREQ2BT(i32 %19, %struct.TYPE_6__* @bt_tickthreshold)
  %21 = load i32, i32* @tc_precexp, align 4
  %22 = call i32 @bintime_shift(%struct.TYPE_6__* @bt_timethreshold, i32 %21)
  %23 = load i32, i32* @tc_precexp, align 4
  %24 = call i32 @bintime_shift(%struct.TYPE_6__* @bt_tickthreshold, i32 %23)
  br label %27

25:                                               ; preds = %0
  store i32 31, i32* @tc_precexp, align 4
  %26 = load i32, i32* @INT_MAX, align 4
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bt_timethreshold, i32 0, i32 1), align 4
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bt_timethreshold, i32 0, i32 0), align 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.TYPE_6__* @bt_tickthreshold to i8*), i8* align 4 bitcast (%struct.TYPE_6__* @bt_timethreshold to i8*), i64 8, i1 false)
  br label %27

27:                                               ; preds = %25, %4
  %28 = load i64, i64* bitcast (%struct.TYPE_6__* @bt_timethreshold to i64*), align 4
  %29 = call i8* @bttosbt(i64 %28)
  store i8* %29, i8** @sbt_timethreshold, align 8
  %30 = load i64, i64* bitcast (%struct.TYPE_6__* @bt_tickthreshold to i64*), align 4
  %31 = call i8* @bttosbt(i64 %30)
  store i8* %31, i8** @sbt_tickthreshold, align 8
  ret void
}

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @FREQ2BT(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @bintime_shift(%struct.TYPE_6__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @bttosbt(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
