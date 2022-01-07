; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_amd.c_agp_amd_free_gatt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_amd.c_agp_amd_free_gatt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_amd_gatt = type { i32, i64, i64 }

@AGP_PAGE_SIZE = common dso_local global i32 0, align 4
@M_AGP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.agp_amd_gatt*)* @agp_amd_free_gatt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @agp_amd_free_gatt(%struct.agp_amd_gatt* %0) #0 {
  %2 = alloca %struct.agp_amd_gatt*, align 8
  store %struct.agp_amd_gatt* %0, %struct.agp_amd_gatt** %2, align 8
  %3 = load %struct.agp_amd_gatt*, %struct.agp_amd_gatt** %2, align 8
  %4 = getelementptr inbounds %struct.agp_amd_gatt, %struct.agp_amd_gatt* %3, i32 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = trunc i64 %5 to i32
  %7 = load i32, i32* @AGP_PAGE_SIZE, align 4
  %8 = call i32 @kmem_free(i32 %6, i32 %7)
  %9 = load %struct.agp_amd_gatt*, %struct.agp_amd_gatt** %2, align 8
  %10 = getelementptr inbounds %struct.agp_amd_gatt, %struct.agp_amd_gatt* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = trunc i64 %11 to i32
  %13 = load %struct.agp_amd_gatt*, %struct.agp_amd_gatt** %2, align 8
  %14 = getelementptr inbounds %struct.agp_amd_gatt, %struct.agp_amd_gatt* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 4
  %18 = trunc i64 %17 to i32
  %19 = call i32 @kmem_free(i32 %12, i32 %18)
  %20 = load %struct.agp_amd_gatt*, %struct.agp_amd_gatt** %2, align 8
  %21 = load i32, i32* @M_AGP, align 4
  %22 = call i32 @free(%struct.agp_amd_gatt* %20, i32 %21)
  ret void
}

declare dso_local i32 @kmem_free(i32, i32) #1

declare dso_local i32 @free(%struct.agp_amd_gatt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
