; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_cudbg_wtp.c_read_tp_mib_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_cudbg_wtp.c_read_tp_mib_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }
%struct.cudbg_init = type { %struct.adapter* }
%struct.adapter = type { i32 }
%struct.tp_mib_data = type { i32 }

@TP_MIB_SIZE = common dso_local global i64 0, align 8
@tp_mib = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.cudbg_init*, %struct.tp_mib_data**)* @read_tp_mib_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @read_tp_mib_data(%struct.cudbg_init* %0, %struct.tp_mib_data** %1) #0 {
  %3 = alloca %struct.cudbg_init*, align 8
  %4 = alloca %struct.tp_mib_data**, align 8
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca i64, align 8
  store %struct.cudbg_init* %0, %struct.cudbg_init** %3, align 8
  store %struct.tp_mib_data** %1, %struct.tp_mib_data*** %4, align 8
  %7 = load %struct.cudbg_init*, %struct.cudbg_init** %3, align 8
  %8 = getelementptr inbounds %struct.cudbg_init, %struct.cudbg_init* %7, i32 0, i32 0
  %9 = load %struct.adapter*, %struct.adapter** %8, align 8
  store %struct.adapter* %9, %struct.adapter** %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %6, align 8
  br label %10

10:                                               ; preds = %26, %2
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* @TP_MIB_SIZE, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %10
  %15 = load %struct.adapter*, %struct.adapter** %5, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tp_mib, align 8
  %17 = load i64, i64* %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tp_mib, align 8
  %21 = load i64, i64* %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @t4_tp_mib_read(%struct.adapter* %15, i32* %19, i32 1, i64 %24, i32 1)
  br label %26

26:                                               ; preds = %14
  %27 = load i64, i64* %6, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %6, align 8
  br label %10

29:                                               ; preds = %10
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tp_mib, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 0
  %32 = bitcast %struct.TYPE_2__* %31 to %struct.tp_mib_data*
  %33 = load %struct.tp_mib_data**, %struct.tp_mib_data*** %4, align 8
  store %struct.tp_mib_data* %32, %struct.tp_mib_data** %33, align 8
  ret i64 0
}

declare dso_local i32 @t4_tp_mib_read(%struct.adapter*, i32*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
