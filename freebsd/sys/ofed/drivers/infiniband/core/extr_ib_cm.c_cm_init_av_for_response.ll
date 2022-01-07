; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cm.c_cm_init_av_for_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cm.c_cm_init_av_for_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ib_wc = type { i32 }
%struct.ib_grh = type { i32 }
%struct.cm_av = type { i32, i32, %struct.cm_port* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cm_port*, %struct.ib_wc*, %struct.ib_grh*, %struct.cm_av*)* @cm_init_av_for_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cm_init_av_for_response(%struct.cm_port* %0, %struct.ib_wc* %1, %struct.ib_grh* %2, %struct.cm_av* %3) #0 {
  %5 = alloca %struct.cm_port*, align 8
  %6 = alloca %struct.ib_wc*, align 8
  %7 = alloca %struct.ib_grh*, align 8
  %8 = alloca %struct.cm_av*, align 8
  store %struct.cm_port* %0, %struct.cm_port** %5, align 8
  store %struct.ib_wc* %1, %struct.ib_wc** %6, align 8
  store %struct.ib_grh* %2, %struct.ib_grh** %7, align 8
  store %struct.cm_av* %3, %struct.cm_av** %8, align 8
  %9 = load %struct.cm_port*, %struct.cm_port** %5, align 8
  %10 = load %struct.cm_av*, %struct.cm_av** %8, align 8
  %11 = getelementptr inbounds %struct.cm_av, %struct.cm_av* %10, i32 0, i32 2
  store %struct.cm_port* %9, %struct.cm_port** %11, align 8
  %12 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %13 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.cm_av*, %struct.cm_av** %8, align 8
  %16 = getelementptr inbounds %struct.cm_av, %struct.cm_av* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.cm_port*, %struct.cm_port** %5, align 8
  %18 = getelementptr inbounds %struct.cm_port, %struct.cm_port* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.cm_port*, %struct.cm_port** %5, align 8
  %23 = getelementptr inbounds %struct.cm_port, %struct.cm_port* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %26 = load %struct.ib_grh*, %struct.ib_grh** %7, align 8
  %27 = load %struct.cm_av*, %struct.cm_av** %8, align 8
  %28 = getelementptr inbounds %struct.cm_av, %struct.cm_av* %27, i32 0, i32 0
  %29 = call i32 @ib_init_ah_from_wc(i32 %21, i32 %24, %struct.ib_wc* %25, %struct.ib_grh* %26, i32* %28)
  ret i32 %29
}

declare dso_local i32 @ib_init_ah_from_wc(i32, i32, %struct.ib_wc*, %struct.ib_grh*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
