; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data_bcm.c_bhnd_nvram_bcm_hdrvar_index.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data_bcm.c_bhnd_nvram_bcm_hdrvar_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_nvram_bcm = type { %struct.bhnd_nvram_bcm_hvar* }
%struct.bhnd_nvram_bcm_hvar = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"%p is not a valid hdrvar reference\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.bhnd_nvram_bcm*, %struct.bhnd_nvram_bcm_hvar*)* @bhnd_nvram_bcm_hdrvar_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bhnd_nvram_bcm_hdrvar_index(%struct.bhnd_nvram_bcm* %0, %struct.bhnd_nvram_bcm_hvar* %1) #0 {
  %3 = alloca %struct.bhnd_nvram_bcm*, align 8
  %4 = alloca %struct.bhnd_nvram_bcm_hvar*, align 8
  store %struct.bhnd_nvram_bcm* %0, %struct.bhnd_nvram_bcm** %3, align 8
  store %struct.bhnd_nvram_bcm_hvar* %1, %struct.bhnd_nvram_bcm_hvar** %4, align 8
  %5 = load %struct.bhnd_nvram_bcm*, %struct.bhnd_nvram_bcm** %3, align 8
  %6 = load %struct.bhnd_nvram_bcm_hvar*, %struct.bhnd_nvram_bcm_hvar** %4, align 8
  %7 = bitcast %struct.bhnd_nvram_bcm_hvar* %6 to i8*
  %8 = call i32* @bhnd_nvram_bcm_to_hdrvar(%struct.bhnd_nvram_bcm* %5, i8* %7)
  %9 = icmp ne i32* %8, null
  %10 = zext i1 %9 to i32
  %11 = load %struct.bhnd_nvram_bcm_hvar*, %struct.bhnd_nvram_bcm_hvar** %4, align 8
  %12 = bitcast %struct.bhnd_nvram_bcm_hvar* %11 to i8*
  %13 = call i32 @BHND_NV_ASSERT(i32 %10, i8* %12)
  %14 = load %struct.bhnd_nvram_bcm_hvar*, %struct.bhnd_nvram_bcm_hvar** %4, align 8
  %15 = load %struct.bhnd_nvram_bcm*, %struct.bhnd_nvram_bcm** %3, align 8
  %16 = getelementptr inbounds %struct.bhnd_nvram_bcm, %struct.bhnd_nvram_bcm* %15, i32 0, i32 0
  %17 = load %struct.bhnd_nvram_bcm_hvar*, %struct.bhnd_nvram_bcm_hvar** %16, align 8
  %18 = getelementptr inbounds %struct.bhnd_nvram_bcm_hvar, %struct.bhnd_nvram_bcm_hvar* %17, i64 0
  %19 = ptrtoint %struct.bhnd_nvram_bcm_hvar* %14 to i64
  %20 = ptrtoint %struct.bhnd_nvram_bcm_hvar* %18 to i64
  %21 = sub i64 %19, %20
  %22 = sdiv exact i64 %21, 4
  ret i64 %22
}

declare dso_local i32 @BHND_NV_ASSERT(i32, i8*) #1

declare dso_local i32* @bhnd_nvram_bcm_to_hdrvar(%struct.bhnd_nvram_bcm*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
