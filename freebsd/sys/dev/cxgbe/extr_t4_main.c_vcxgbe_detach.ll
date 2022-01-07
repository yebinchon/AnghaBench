; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_vcxgbe_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_vcxgbe_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vi_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.adapter* }
%struct.adapter = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @vcxgbe_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vcxgbe_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vi_info*, align 8
  %4 = alloca %struct.adapter*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.vi_info* @device_get_softc(i32 %5)
  store %struct.vi_info* %6, %struct.vi_info** %3, align 8
  %7 = load %struct.vi_info*, %struct.vi_info** %3, align 8
  %8 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.adapter*, %struct.adapter** %10, align 8
  store %struct.adapter* %11, %struct.adapter** %4, align 8
  %12 = load %struct.adapter*, %struct.adapter** %4, align 8
  %13 = load %struct.vi_info*, %struct.vi_info** %3, align 8
  %14 = call i32 @doom_vi(%struct.adapter* %12, %struct.vi_info* %13)
  %15 = load %struct.vi_info*, %struct.vi_info** %3, align 8
  %16 = call i32 @cxgbe_vi_detach(%struct.vi_info* %15)
  %17 = load %struct.adapter*, %struct.adapter** %4, align 8
  %18 = load %struct.adapter*, %struct.adapter** %4, align 8
  %19 = getelementptr inbounds %struct.adapter, %struct.adapter* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.adapter*, %struct.adapter** %4, align 8
  %22 = getelementptr inbounds %struct.adapter, %struct.adapter* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.vi_info*, %struct.vi_info** %3, align 8
  %25 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @t4_free_vi(%struct.adapter* %17, i32 %20, i32 %23, i32 0, i32 %26)
  %28 = load %struct.adapter*, %struct.adapter** %4, align 8
  %29 = call i32 @end_synchronized_op(%struct.adapter* %28, i32 0)
  ret i32 0
}

declare dso_local %struct.vi_info* @device_get_softc(i32) #1

declare dso_local i32 @doom_vi(%struct.adapter*, %struct.vi_info*) #1

declare dso_local i32 @cxgbe_vi_detach(%struct.vi_info*) #1

declare dso_local i32 @t4_free_vi(%struct.adapter*, i32, i32, i32, i32) #1

declare dso_local i32 @end_synchronized_op(%struct.adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
