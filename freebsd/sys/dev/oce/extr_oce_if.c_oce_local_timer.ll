; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_if.c_oce_local_timer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_if.c_oce_local_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32* }

@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @oce_local_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oce_local_timer(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %6, %struct.TYPE_11__** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %8 = call i32 @oce_detect_hw_error(%struct.TYPE_11__* %7)
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %10 = call i32 @oce_refresh_nic_stats(%struct.TYPE_11__* %9)
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %12 = call i32 @oce_refresh_queue_stats(%struct.TYPE_11__* %11)
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %14 = call i32 @oce_mac_addr_set(%struct.TYPE_11__* %13)
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %31, %1
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %15
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @oce_tx_restart(%struct.TYPE_11__* %22, i32 %29)
  br label %31

31:                                               ; preds = %21
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %15

34:                                               ; preds = %15
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %36 = call i64 @IS_BE(%struct.TYPE_11__* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %40 = call i64 @IS_SH(%struct.TYPE_11__* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38, %34
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %44 = call i32 @oce_eqd_set_periodic(%struct.TYPE_11__* %43)
  br label %45

45:                                               ; preds = %42, %38
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 1
  %48 = load i32, i32* @hz, align 4
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %50 = call i32 @callout_reset(i32* %47, i32 %48, void (i8*)* @oce_local_timer, %struct.TYPE_11__* %49)
  ret void
}

declare dso_local i32 @oce_detect_hw_error(%struct.TYPE_11__*) #1

declare dso_local i32 @oce_refresh_nic_stats(%struct.TYPE_11__*) #1

declare dso_local i32 @oce_refresh_queue_stats(%struct.TYPE_11__*) #1

declare dso_local i32 @oce_mac_addr_set(%struct.TYPE_11__*) #1

declare dso_local i32 @oce_tx_restart(%struct.TYPE_11__*, i32) #1

declare dso_local i64 @IS_BE(%struct.TYPE_11__*) #1

declare dso_local i64 @IS_SH(%struct.TYPE_11__*) #1

declare dso_local i32 @oce_eqd_set_periodic(%struct.TYPE_11__*) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
