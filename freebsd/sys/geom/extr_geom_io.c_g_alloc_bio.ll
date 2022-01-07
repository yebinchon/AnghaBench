; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_io.c_g_alloc_bio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_io.c_g_alloc_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32 }

@biozone = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@KTR_COMPILE = common dso_local global i32 0, align 4
@KTR_GEOM = common dso_local global i32 0, align 4
@ktr_mask = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bio* @g_alloc_bio() #0 {
  %1 = alloca %struct.bio*, align 8
  %2 = load i32, i32* @biozone, align 4
  %3 = load i32, i32* @M_WAITOK, align 4
  %4 = load i32, i32* @M_ZERO, align 4
  %5 = or i32 %3, %4
  %6 = call %struct.bio* @uma_zalloc(i32 %2, i32 %5)
  store %struct.bio* %6, %struct.bio** %1, align 8
  %7 = load %struct.bio*, %struct.bio** %1, align 8
  ret %struct.bio* %7
}

declare dso_local %struct.bio* @uma_zalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
