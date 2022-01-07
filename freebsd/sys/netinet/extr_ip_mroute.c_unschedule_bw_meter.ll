; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_mroute.c_unschedule_bw_meter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_mroute.c_unschedule_bw_meter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bw_meter = type { i32, i32, %struct.bw_meter* }

@BW_METER_LEQ = common dso_local global i32 0, align 4
@BW_METER_BUCKETS = common dso_local global i32 0, align 4
@V_bw_meter_timers = common dso_local global %struct.bw_meter** null, align 8
@.str = private unnamed_addr constant [46 x i8] c"unschedule_bw_meter: bw_meter entry not found\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bw_meter*)* @unschedule_bw_meter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unschedule_bw_meter(%struct.bw_meter* %0) #0 {
  %2 = alloca %struct.bw_meter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.bw_meter*, align 8
  %5 = alloca %struct.bw_meter*, align 8
  store %struct.bw_meter* %0, %struct.bw_meter** %2, align 8
  %6 = call i32 (...) @MFC_LOCK_ASSERT()
  %7 = load %struct.bw_meter*, %struct.bw_meter** %2, align 8
  %8 = getelementptr inbounds %struct.bw_meter, %struct.bw_meter* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @BW_METER_LEQ, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %70

14:                                               ; preds = %1
  %15 = load %struct.bw_meter*, %struct.bw_meter** %2, align 8
  %16 = getelementptr inbounds %struct.bw_meter, %struct.bw_meter* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @BW_METER_BUCKETS, align 4
  %20 = icmp sge i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %70

22:                                               ; preds = %14
  store %struct.bw_meter* null, %struct.bw_meter** %4, align 8
  %23 = load %struct.bw_meter**, %struct.bw_meter*** @V_bw_meter_timers, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.bw_meter*, %struct.bw_meter** %23, i64 %25
  %27 = load %struct.bw_meter*, %struct.bw_meter** %26, align 8
  store %struct.bw_meter* %27, %struct.bw_meter** %5, align 8
  br label %28

28:                                               ; preds = %37, %22
  %29 = load %struct.bw_meter*, %struct.bw_meter** %5, align 8
  %30 = icmp ne %struct.bw_meter* %29, null
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = load %struct.bw_meter*, %struct.bw_meter** %5, align 8
  %33 = load %struct.bw_meter*, %struct.bw_meter** %2, align 8
  %34 = icmp eq %struct.bw_meter* %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %42

36:                                               ; preds = %31
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.bw_meter*, %struct.bw_meter** %5, align 8
  store %struct.bw_meter* %38, %struct.bw_meter** %4, align 8
  %39 = load %struct.bw_meter*, %struct.bw_meter** %5, align 8
  %40 = getelementptr inbounds %struct.bw_meter, %struct.bw_meter* %39, i32 0, i32 2
  %41 = load %struct.bw_meter*, %struct.bw_meter** %40, align 8
  store %struct.bw_meter* %41, %struct.bw_meter** %5, align 8
  br label %28

42:                                               ; preds = %35, %28
  %43 = load %struct.bw_meter*, %struct.bw_meter** %5, align 8
  %44 = icmp eq %struct.bw_meter* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = call i32 @panic(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %42
  %48 = load %struct.bw_meter*, %struct.bw_meter** %4, align 8
  %49 = icmp ne %struct.bw_meter* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load %struct.bw_meter*, %struct.bw_meter** %2, align 8
  %52 = getelementptr inbounds %struct.bw_meter, %struct.bw_meter* %51, i32 0, i32 2
  %53 = load %struct.bw_meter*, %struct.bw_meter** %52, align 8
  %54 = load %struct.bw_meter*, %struct.bw_meter** %4, align 8
  %55 = getelementptr inbounds %struct.bw_meter, %struct.bw_meter* %54, i32 0, i32 2
  store %struct.bw_meter* %53, %struct.bw_meter** %55, align 8
  br label %64

56:                                               ; preds = %47
  %57 = load %struct.bw_meter*, %struct.bw_meter** %2, align 8
  %58 = getelementptr inbounds %struct.bw_meter, %struct.bw_meter* %57, i32 0, i32 2
  %59 = load %struct.bw_meter*, %struct.bw_meter** %58, align 8
  %60 = load %struct.bw_meter**, %struct.bw_meter*** @V_bw_meter_timers, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.bw_meter*, %struct.bw_meter** %60, i64 %62
  store %struct.bw_meter* %59, %struct.bw_meter** %63, align 8
  br label %64

64:                                               ; preds = %56, %50
  %65 = load %struct.bw_meter*, %struct.bw_meter** %2, align 8
  %66 = getelementptr inbounds %struct.bw_meter, %struct.bw_meter* %65, i32 0, i32 2
  store %struct.bw_meter* null, %struct.bw_meter** %66, align 8
  %67 = load i32, i32* @BW_METER_BUCKETS, align 4
  %68 = load %struct.bw_meter*, %struct.bw_meter** %2, align 8
  %69 = getelementptr inbounds %struct.bw_meter, %struct.bw_meter* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %64, %21, %13
  ret void
}

declare dso_local i32 @MFC_LOCK_ASSERT(...) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
