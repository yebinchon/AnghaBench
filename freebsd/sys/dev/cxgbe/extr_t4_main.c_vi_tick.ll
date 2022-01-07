; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_vi_tick.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_vi_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vi_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.adapter* }
%struct.adapter = type { i32 }

@hz = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vi_tick(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.vi_info*, align 8
  %4 = alloca %struct.adapter*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.vi_info*
  store %struct.vi_info* %6, %struct.vi_info** %3, align 8
  %7 = load %struct.vi_info*, %struct.vi_info** %3, align 8
  %8 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.adapter*, %struct.adapter** %10, align 8
  store %struct.adapter* %11, %struct.adapter** %4, align 8
  %12 = load %struct.adapter*, %struct.adapter** %4, align 8
  %13 = load %struct.vi_info*, %struct.vi_info** %3, align 8
  %14 = call i32 @vi_refresh_stats(%struct.adapter* %12, %struct.vi_info* %13)
  %15 = load %struct.vi_info*, %struct.vi_info** %3, align 8
  %16 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %15, i32 0, i32 0
  %17 = load i32, i32* @hz, align 4
  %18 = call i32 @callout_schedule(i32* %16, i32 %17)
  ret void
}

declare dso_local i32 @vi_refresh_stats(%struct.adapter*, %struct.vi_info*) #1

declare dso_local i32 @callout_schedule(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
