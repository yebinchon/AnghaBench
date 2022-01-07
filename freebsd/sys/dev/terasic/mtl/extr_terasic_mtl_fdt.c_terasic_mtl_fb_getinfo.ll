; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/terasic/mtl/extr_terasic_mtl_fdt.c_terasic_mtl_fb_getinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/terasic/mtl/extr_terasic_mtl_fdt.c_terasic_mtl_fb_getinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }
%struct.terasic_mtl_softc = type { %struct.fb_info }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fb_info* (i32)* @terasic_mtl_fb_getinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fb_info* @terasic_mtl_fb_getinfo(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.terasic_mtl_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.terasic_mtl_softc* @device_get_softc(i32 %4)
  store %struct.terasic_mtl_softc* %5, %struct.terasic_mtl_softc** %3, align 8
  %6 = load %struct.terasic_mtl_softc*, %struct.terasic_mtl_softc** %3, align 8
  %7 = getelementptr inbounds %struct.terasic_mtl_softc, %struct.terasic_mtl_softc* %6, i32 0, i32 0
  ret %struct.fb_info* %7
}

declare dso_local %struct.terasic_mtl_softc* @device_get_softc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
