; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sge.c_add_fl_to_sfl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sge.c_add_fl_to_sfl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32, i32 }
%struct.sge_fl = type { i32 }

@FL_DOOMED = common dso_local global i32 0, align 4
@FL_STARVING = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@refill_sfl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, %struct.sge_fl*)* @add_fl_to_sfl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_fl_to_sfl(%struct.adapter* %0, %struct.sge_fl* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.sge_fl*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.sge_fl* %1, %struct.sge_fl** %4, align 8
  %5 = load %struct.adapter*, %struct.adapter** %3, align 8
  %6 = getelementptr inbounds %struct.adapter, %struct.adapter* %5, i32 0, i32 0
  %7 = call i32 @mtx_lock(i32* %6)
  %8 = load %struct.sge_fl*, %struct.sge_fl** %4, align 8
  %9 = call i32 @FL_LOCK(%struct.sge_fl* %8)
  %10 = load %struct.sge_fl*, %struct.sge_fl** %4, align 8
  %11 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @FL_DOOMED, align 4
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %34

16:                                               ; preds = %2
  %17 = load i32, i32* @FL_STARVING, align 4
  %18 = load %struct.sge_fl*, %struct.sge_fl** %4, align 8
  %19 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load %struct.adapter*, %struct.adapter** %3, align 8
  %23 = getelementptr inbounds %struct.adapter, %struct.adapter* %22, i32 0, i32 2
  %24 = load %struct.sge_fl*, %struct.sge_fl** %4, align 8
  %25 = load i32, i32* @link, align 4
  %26 = call i32 @TAILQ_INSERT_TAIL(i32* %23, %struct.sge_fl* %24, i32 %25)
  %27 = load %struct.adapter*, %struct.adapter** %3, align 8
  %28 = getelementptr inbounds %struct.adapter, %struct.adapter* %27, i32 0, i32 1
  %29 = load i32, i32* @hz, align 4
  %30 = sdiv i32 %29, 5
  %31 = load i32, i32* @refill_sfl, align 4
  %32 = load %struct.adapter*, %struct.adapter** %3, align 8
  %33 = call i32 @callout_reset(i32* %28, i32 %30, i32 %31, %struct.adapter* %32)
  br label %34

34:                                               ; preds = %16, %2
  %35 = load %struct.sge_fl*, %struct.sge_fl** %4, align 8
  %36 = call i32 @FL_UNLOCK(%struct.sge_fl* %35)
  %37 = load %struct.adapter*, %struct.adapter** %3, align 8
  %38 = getelementptr inbounds %struct.adapter, %struct.adapter* %37, i32 0, i32 0
  %39 = call i32 @mtx_unlock(i32* %38)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @FL_LOCK(%struct.sge_fl*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.sge_fl*, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.adapter*) #1

declare dso_local i32 @FL_UNLOCK(%struct.sge_fl*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
