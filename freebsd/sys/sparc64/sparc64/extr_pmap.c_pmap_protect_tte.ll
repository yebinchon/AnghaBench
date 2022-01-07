; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_pmap.c_pmap_protect_tte.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_pmap.c_pmap_protect_tte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmap = type { i32 }
%struct.tte = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@TD_SW = common dso_local global i32 0, align 4
@TD_W = common dso_local global i32 0, align 4
@TD_PV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmap*, %struct.pmap*, %struct.tte*, i32)* @pmap_protect_tte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmap_protect_tte(%struct.pmap* %0, %struct.pmap* %1, %struct.tte* %2, i32 %3) #0 {
  %5 = alloca %struct.pmap*, align 8
  %6 = alloca %struct.pmap*, align 8
  %7 = alloca %struct.tte*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pmap* %0, %struct.pmap** %5, align 8
  store %struct.pmap* %1, %struct.pmap** %6, align 8
  store %struct.tte* %2, %struct.tte** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.pmap*, %struct.pmap** %5, align 8
  %12 = load i32, i32* @MA_OWNED, align 4
  %13 = call i32 @PMAP_LOCK_ASSERT(%struct.pmap* %11, i32 %12)
  %14 = load %struct.tte*, %struct.tte** %7, align 8
  %15 = getelementptr inbounds %struct.tte, %struct.tte* %14, i32 0, i32 0
  %16 = load i32, i32* @TD_SW, align 4
  %17 = load i32, i32* @TD_W, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @atomic_clear_long(i32* %15, i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @TD_PV, align 4
  %22 = load i32, i32* @TD_W, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %20, %23
  %25 = load i32, i32* @TD_PV, align 4
  %26 = load i32, i32* @TD_W, align 4
  %27 = or i32 %25, %26
  %28 = icmp eq i32 %24, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %4
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @TD_PA(i32 %30)
  %32 = call i32 @PHYS_TO_VM_PAGE(i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @vm_page_dirty(i32 %33)
  br label %35

35:                                               ; preds = %29, %4
  ret i32 1
}

declare dso_local i32 @PMAP_LOCK_ASSERT(%struct.pmap*, i32) #1

declare dso_local i32 @atomic_clear_long(i32*, i32) #1

declare dso_local i32 @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i32 @TD_PA(i32) #1

declare dso_local i32 @vm_page_dirty(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
