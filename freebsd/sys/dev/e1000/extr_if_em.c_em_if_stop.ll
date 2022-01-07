; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_if_em.c_em_if_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_if_em.c_em_if_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [18 x i8] c"em_if_stop: begin\00", align 1
@e1000_82544 = common dso_local global i64 0, align 8
@E1000_WUFC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @em_if_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @em_if_stop(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.adapter* @iflib_get_softc(i32 %4)
  store %struct.adapter* %5, %struct.adapter** %3, align 8
  %6 = call i32 @INIT_DEBUGOUT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.adapter*, %struct.adapter** %3, align 8
  %8 = getelementptr inbounds %struct.adapter, %struct.adapter* %7, i32 0, i32 0
  %9 = call i32 @e1000_reset_hw(%struct.TYPE_7__* %8)
  %10 = load %struct.adapter*, %struct.adapter** %3, align 8
  %11 = getelementptr inbounds %struct.adapter, %struct.adapter* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @e1000_82544, align 8
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.adapter*, %struct.adapter** %3, align 8
  %19 = getelementptr inbounds %struct.adapter, %struct.adapter* %18, i32 0, i32 0
  %20 = load i32, i32* @E1000_WUFC, align 4
  %21 = call i32 @E1000_WRITE_REG(%struct.TYPE_7__* %19, i32 %20, i32 0)
  br label %22

22:                                               ; preds = %17, %1
  %23 = load %struct.adapter*, %struct.adapter** %3, align 8
  %24 = getelementptr inbounds %struct.adapter, %struct.adapter* %23, i32 0, i32 0
  %25 = call i32 @e1000_led_off(%struct.TYPE_7__* %24)
  %26 = load %struct.adapter*, %struct.adapter** %3, align 8
  %27 = getelementptr inbounds %struct.adapter, %struct.adapter* %26, i32 0, i32 0
  %28 = call i32 @e1000_cleanup_led(%struct.TYPE_7__* %27)
  ret void
}

declare dso_local %struct.adapter* @iflib_get_softc(i32) #1

declare dso_local i32 @INIT_DEBUGOUT(i8*) #1

declare dso_local i32 @e1000_reset_hw(%struct.TYPE_7__*) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @e1000_led_off(%struct.TYPE_7__*) #1

declare dso_local i32 @e1000_cleanup_led(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
