; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_mroute.c_schedule_bw_meter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_mroute.c_schedule_bw_meter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bw_meter = type { i32, i32, %struct.bw_meter*, %struct.TYPE_2__, %struct.timeval }
%struct.TYPE_2__ = type { i64, i64 }
%struct.timeval = type { i32 }

@BW_METER_LEQ = common dso_local global i32 0, align 4
@BW_METER_UPCALL_DELIVERED = common dso_local global i32 0, align 4
@V_bw_meter_timers = common dso_local global %struct.bw_meter** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bw_meter*, %struct.timeval*)* @schedule_bw_meter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @schedule_bw_meter(%struct.bw_meter* %0, %struct.timeval* %1) #0 {
  %3 = alloca %struct.bw_meter*, align 8
  %4 = alloca %struct.timeval*, align 8
  %5 = alloca i32, align 4
  store %struct.bw_meter* %0, %struct.bw_meter** %3, align 8
  store %struct.timeval* %1, %struct.timeval** %4, align 8
  %6 = call i32 (...) @MFC_LOCK_ASSERT()
  %7 = load %struct.bw_meter*, %struct.bw_meter** %3, align 8
  %8 = getelementptr inbounds %struct.bw_meter, %struct.bw_meter* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @BW_METER_LEQ, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %50

14:                                               ; preds = %2
  %15 = load %struct.bw_meter*, %struct.bw_meter** %3, align 8
  %16 = getelementptr inbounds %struct.bw_meter, %struct.bw_meter* %15, i32 0, i32 4
  %17 = load %struct.timeval*, %struct.timeval** %4, align 8
  %18 = bitcast %struct.timeval* %16 to i8*
  %19 = bitcast %struct.timeval* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 4 %19, i64 4, i1 false)
  %20 = load %struct.bw_meter*, %struct.bw_meter** %3, align 8
  %21 = getelementptr inbounds %struct.bw_meter, %struct.bw_meter* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store i64 0, i64* %22, align 8
  %23 = load %struct.bw_meter*, %struct.bw_meter** %3, align 8
  %24 = getelementptr inbounds %struct.bw_meter, %struct.bw_meter* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  %26 = load i32, i32* @BW_METER_UPCALL_DELIVERED, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.bw_meter*, %struct.bw_meter** %3, align 8
  %29 = getelementptr inbounds %struct.bw_meter, %struct.bw_meter* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load %struct.bw_meter*, %struct.bw_meter** %3, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @BW_METER_TIMEHASH(%struct.bw_meter* %32, i32 %33)
  %35 = load %struct.bw_meter**, %struct.bw_meter*** @V_bw_meter_timers, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.bw_meter*, %struct.bw_meter** %35, i64 %37
  %39 = load %struct.bw_meter*, %struct.bw_meter** %38, align 8
  %40 = load %struct.bw_meter*, %struct.bw_meter** %3, align 8
  %41 = getelementptr inbounds %struct.bw_meter, %struct.bw_meter* %40, i32 0, i32 2
  store %struct.bw_meter* %39, %struct.bw_meter** %41, align 8
  %42 = load %struct.bw_meter*, %struct.bw_meter** %3, align 8
  %43 = load %struct.bw_meter**, %struct.bw_meter*** @V_bw_meter_timers, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.bw_meter*, %struct.bw_meter** %43, i64 %45
  store %struct.bw_meter* %42, %struct.bw_meter** %46, align 8
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.bw_meter*, %struct.bw_meter** %3, align 8
  %49 = getelementptr inbounds %struct.bw_meter, %struct.bw_meter* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @MFC_LOCK_ASSERT(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @BW_METER_TIMEHASH(%struct.bw_meter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
