; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_pmap.c_pmap_copy_tte.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_pmap.c_pmap_copy_tte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tte = type { i32 }

@TD_FAKE = common dso_local global i32 0, align 4
@TD_PV = common dso_local global i32 0, align 4
@TD_REF = common dso_local global i32 0, align 4
@TD_SW = common dso_local global i32 0, align 4
@TD_CV = common dso_local global i32 0, align 4
@TD_W = common dso_local global i32 0, align 4
@TS_8K = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.tte*, i32)* @pmap_copy_tte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmap_copy_tte(i32 %0, i32 %1, %struct.tte* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tte*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.tte* %2, %struct.tte** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.tte*, %struct.tte** %8, align 8
  %13 = getelementptr inbounds %struct.tte, %struct.tte* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @TD_FAKE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %49

19:                                               ; preds = %4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32* @tsb_tte_lookup(i32 %20, i32 %21)
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %48

24:                                               ; preds = %19
  %25 = load %struct.tte*, %struct.tte** %8, align 8
  %26 = getelementptr inbounds %struct.tte, %struct.tte* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @TD_PV, align 4
  %29 = load i32, i32* @TD_REF, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @TD_SW, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @TD_CV, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @TD_W, align 4
  %36 = or i32 %34, %35
  %37 = xor i32 %36, -1
  %38 = and i32 %27, %37
  store i32 %38, i32* %11, align 4
  %39 = load %struct.tte*, %struct.tte** %8, align 8
  %40 = call i32 @TTE_GET_PA(%struct.tte* %39)
  %41 = call i32 @PHYS_TO_VM_PAGE(i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @TS_8K, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @tsb_tte_enter(i32 %42, i32 %43, i32 %44, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %24, %19
  store i32 1, i32* %5, align 4
  br label %49

49:                                               ; preds = %48, %18
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32* @tsb_tte_lookup(i32, i32) #1

declare dso_local i32 @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i32 @TTE_GET_PA(%struct.tte*) #1

declare dso_local i32 @tsb_tte_enter(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
