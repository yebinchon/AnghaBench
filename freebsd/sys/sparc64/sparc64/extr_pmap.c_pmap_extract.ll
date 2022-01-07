; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_pmap.c_pmap_extract.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_pmap.c_pmap_extract.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tte = type { i32 }

@kernel_pmap = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmap_extract(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tte*, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @kernel_pmap, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @pmap_kextract(i32 %12)
  store i32 %13, i32* %3, align 4
  br label %35

14:                                               ; preds = %2
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @PMAP_LOCK(i64 %15)
  %17 = load i64, i64* %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call %struct.tte* @tsb_tte_lookup(i64 %17, i32 %18)
  store %struct.tte* %19, %struct.tte** %6, align 8
  %20 = load %struct.tte*, %struct.tte** %6, align 8
  %21 = icmp eq %struct.tte* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  store i32 0, i32* %7, align 4
  br label %31

23:                                               ; preds = %14
  %24 = load %struct.tte*, %struct.tte** %6, align 8
  %25 = call i32 @TTE_GET_PA(%struct.tte* %24)
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.tte*, %struct.tte** %6, align 8
  %28 = call i32 @TTE_GET_PAGE_MASK(%struct.tte* %27)
  %29 = and i32 %26, %28
  %30 = or i32 %25, %29
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %23, %22
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @PMAP_UNLOCK(i64 %32)
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %31, %11
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @pmap_kextract(i32) #1

declare dso_local i32 @PMAP_LOCK(i64) #1

declare dso_local %struct.tte* @tsb_tte_lookup(i64, i32) #1

declare dso_local i32 @TTE_GET_PA(%struct.tte*) #1

declare dso_local i32 @TTE_GET_PAGE_MASK(%struct.tte*) #1

declare dso_local i32 @PMAP_UNLOCK(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
