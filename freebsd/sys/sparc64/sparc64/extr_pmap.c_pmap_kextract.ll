; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_pmap.c_pmap_kextract.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_pmap.c_pmap_kextract.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tte = type { i32 }

@VM_MIN_DIRECT_ADDRESS = common dso_local global i32 0, align 4
@TD_V = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmap_kextract(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.tte*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @VM_MIN_DIRECT_ADDRESS, align 4
  %7 = icmp sge i32 %5, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @TLB_DIRECT_TO_PHYS(i32 %9)
  store i32 %10, i32* %2, align 4
  br label %29

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = call %struct.tte* @tsb_kvtotte(i32 %12)
  store %struct.tte* %13, %struct.tte** %4, align 8
  %14 = load %struct.tte*, %struct.tte** %4, align 8
  %15 = getelementptr inbounds %struct.tte, %struct.tte* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @TD_V, align 4
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %29

21:                                               ; preds = %11
  %22 = load %struct.tte*, %struct.tte** %4, align 8
  %23 = call i32 @TTE_GET_PA(%struct.tte* %22)
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.tte*, %struct.tte** %4, align 8
  %26 = call i32 @TTE_GET_PAGE_MASK(%struct.tte* %25)
  %27 = and i32 %24, %26
  %28 = or i32 %23, %27
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %21, %20, %8
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @TLB_DIRECT_TO_PHYS(i32) #1

declare dso_local %struct.tte* @tsb_kvtotte(i32) #1

declare dso_local i32 @TTE_GET_PA(%struct.tte*) #1

declare dso_local i32 @TTE_GET_PAGE_MASK(%struct.tte*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
