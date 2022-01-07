; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sge.c_free_rxq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sge.c_free_rxq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vi_info = type { i32 }
%struct.sge_rxq = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vi_info*, %struct.sge_rxq*)* @free_rxq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @free_rxq(%struct.vi_info* %0, %struct.sge_rxq* %1) #0 {
  %3 = alloca %struct.vi_info*, align 8
  %4 = alloca %struct.sge_rxq*, align 8
  %5 = alloca i32, align 4
  store %struct.vi_info* %0, %struct.vi_info** %3, align 8
  store %struct.sge_rxq* %1, %struct.sge_rxq** %4, align 8
  %6 = load %struct.vi_info*, %struct.vi_info** %3, align 8
  %7 = load %struct.sge_rxq*, %struct.sge_rxq** %4, align 8
  %8 = getelementptr inbounds %struct.sge_rxq, %struct.sge_rxq* %7, i32 0, i32 1
  %9 = load %struct.sge_rxq*, %struct.sge_rxq** %4, align 8
  %10 = getelementptr inbounds %struct.sge_rxq, %struct.sge_rxq* %9, i32 0, i32 0
  %11 = call i32 @free_iq_fl(%struct.vi_info* %6, i32* %8, i32* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.sge_rxq*, %struct.sge_rxq** %4, align 8
  %16 = call i32 @bzero(%struct.sge_rxq* %15, i32 16)
  br label %17

17:                                               ; preds = %14, %2
  %18 = load i32, i32* %5, align 4
  ret i32 %18
}

declare dso_local i32 @free_iq_fl(%struct.vi_info*, i32*, i32*) #1

declare dso_local i32 @bzero(%struct.sge_rxq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
