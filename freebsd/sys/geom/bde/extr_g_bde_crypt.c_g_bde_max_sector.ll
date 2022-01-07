; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/bde/extr_g_bde_crypt.c_g_bde_max_sector.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/bde/extr_g_bde_crypt.c_g_bde_max_sector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_bde_key = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @g_bde_max_sector(%struct.g_bde_key* %0) #0 {
  %2 = alloca %struct.g_bde_key*, align 8
  %3 = alloca i32, align 4
  store %struct.g_bde_key* %0, %struct.g_bde_key** %2, align 8
  %4 = load %struct.g_bde_key*, %struct.g_bde_key** %2, align 8
  %5 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = load %struct.g_bde_key*, %struct.g_bde_key** %2, align 8
  %8 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %3, align 4
  %11 = sdiv i32 %10, %9
  store i32 %11, i32* %3, align 4
  %12 = load %struct.g_bde_key*, %struct.g_bde_key** %2, align 8
  %13 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %3, align 4
  %16 = mul nsw i32 %15, %14
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  ret i32 %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
