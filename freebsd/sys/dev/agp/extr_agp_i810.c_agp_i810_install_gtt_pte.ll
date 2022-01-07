; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_i810.c_agp_i810_install_gtt_pte.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_i810.c_agp_i810_install_gtt_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@I810_PTE_VALID = common dso_local global i32 0, align 4
@AGP_DCACHE_MEMORY = common dso_local global i32 0, align 4
@I810_PTE_LOCAL = common dso_local global i32 0, align 4
@AGP_USER_CACHED_MEMORY = common dso_local global i32 0, align 4
@I830_PTE_SYSTEM_CACHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i64, i32)* @agp_i810_install_gtt_pte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @agp_i810_install_gtt_pte(i32 %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i64, i64* %7, align 8
  %11 = trunc i64 %10 to i32
  %12 = load i32, i32* @I810_PTE_VALID, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @AGP_DCACHE_MEMORY, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = load i32, i32* @I810_PTE_LOCAL, align 4
  %19 = load i32, i32* %9, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %9, align 4
  br label %30

21:                                               ; preds = %4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @AGP_USER_CACHED_MEMORY, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i32, i32* @I830_PTE_SYSTEM_CACHED, align 4
  %27 = load i32, i32* %9, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %9, align 4
  br label %29

29:                                               ; preds = %25, %21
  br label %30

30:                                               ; preds = %29, %17
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @agp_i810_write_gtt(i32 %31, i32 %32, i32 %33)
  ret void
}

declare dso_local i32 @agp_i810_write_gtt(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
