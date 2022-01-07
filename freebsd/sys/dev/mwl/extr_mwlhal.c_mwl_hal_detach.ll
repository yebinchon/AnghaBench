; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_mwlhal.c_mwl_hal_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_mwlhal.c_mwl_hal_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwl_hal = type { i32 }
%struct.mwl_hal_priv = type { i32, i32, i32, i32 }

@M_DEVBUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mwl_hal_detach(%struct.mwl_hal* %0) #0 {
  %2 = alloca %struct.mwl_hal*, align 8
  %3 = alloca %struct.mwl_hal_priv*, align 8
  store %struct.mwl_hal* %0, %struct.mwl_hal** %2, align 8
  %4 = load %struct.mwl_hal*, %struct.mwl_hal** %2, align 8
  %5 = call %struct.mwl_hal_priv* @MWLPRIV(%struct.mwl_hal* %4)
  store %struct.mwl_hal_priv* %5, %struct.mwl_hal_priv** %3, align 8
  %6 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %3, align 8
  %7 = getelementptr inbounds %struct.mwl_hal_priv, %struct.mwl_hal_priv* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %3, align 8
  %10 = getelementptr inbounds %struct.mwl_hal_priv, %struct.mwl_hal_priv* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %3, align 8
  %13 = getelementptr inbounds %struct.mwl_hal_priv, %struct.mwl_hal_priv* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @bus_dmamem_free(i32 %8, i32 %11, i32 %14)
  %16 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %3, align 8
  %17 = getelementptr inbounds %struct.mwl_hal_priv, %struct.mwl_hal_priv* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @bus_dma_tag_destroy(i32 %18)
  %20 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %3, align 8
  %21 = getelementptr inbounds %struct.mwl_hal_priv, %struct.mwl_hal_priv* %20, i32 0, i32 0
  %22 = call i32 @mtx_destroy(i32* %21)
  %23 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %3, align 8
  %24 = load i32, i32* @M_DEVBUF, align 4
  %25 = call i32 @free(%struct.mwl_hal_priv* %23, i32 %24)
  ret void
}

declare dso_local %struct.mwl_hal_priv* @MWLPRIV(%struct.mwl_hal*) #1

declare dso_local i32 @bus_dmamem_free(i32, i32, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @free(%struct.mwl_hal_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
