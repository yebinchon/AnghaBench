; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_pmap.c_pmap_extract_and_hold.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_pmap.c_pmap_extract_and_hold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tte = type { i32 }

@kernel_pmap = common dso_local global i64 0, align 8
@VM_MIN_DIRECT_ADDRESS = common dso_local global i32 0, align 4
@TD_V = common dso_local global i32 0, align 4
@TD_SW = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @pmap_extract_and_hold(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tte*, align 8
  %8 = alloca i32*, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32* null, i32** %8, align 8
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @PMAP_LOCK(i64 %9)
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @kernel_pmap, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %39

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @VM_MIN_DIRECT_ADDRESS, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %14
  store %struct.tte* null, %struct.tte** %7, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @TLB_DIRECT_TO_PHYS(i32 %19)
  %21 = call i32* @PHYS_TO_VM_PAGE(i32 %20)
  store i32* %21, i32** %8, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = call i32 @vm_page_wire_mapped(i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  store i32* null, i32** %8, align 8
  br label %26

26:                                               ; preds = %25, %18
  br label %38

27:                                               ; preds = %14
  %28 = load i32, i32* %5, align 4
  %29 = call %struct.tte* @tsb_kvtotte(i32 %28)
  store %struct.tte* %29, %struct.tte** %7, align 8
  %30 = load %struct.tte*, %struct.tte** %7, align 8
  %31 = getelementptr inbounds %struct.tte, %struct.tte* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @TD_V, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  store %struct.tte* null, %struct.tte** %7, align 8
  br label %37

37:                                               ; preds = %36, %27
  br label %38

38:                                               ; preds = %37, %26
  br label %43

39:                                               ; preds = %3
  %40 = load i64, i64* %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call %struct.tte* @tsb_tte_lookup(i64 %40, i32 %41)
  store %struct.tte* %42, %struct.tte** %7, align 8
  br label %43

43:                                               ; preds = %39, %38
  %44 = load %struct.tte*, %struct.tte** %7, align 8
  %45 = icmp ne %struct.tte* %44, null
  br i1 %45, label %46, label %67

46:                                               ; preds = %43
  %47 = load %struct.tte*, %struct.tte** %7, align 8
  %48 = getelementptr inbounds %struct.tte, %struct.tte* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @TD_SW, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %46
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @VM_PROT_WRITE, align 4
  %56 = and i32 %54, %55
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %53, %46
  %59 = load %struct.tte*, %struct.tte** %7, align 8
  %60 = call i32 @TTE_GET_PA(%struct.tte* %59)
  %61 = call i32* @PHYS_TO_VM_PAGE(i32 %60)
  store i32* %61, i32** %8, align 8
  %62 = load i32*, i32** %8, align 8
  %63 = call i32 @vm_page_wire_mapped(i32* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %58
  store i32* null, i32** %8, align 8
  br label %66

66:                                               ; preds = %65, %58
  br label %67

67:                                               ; preds = %66, %53, %43
  %68 = load i64, i64* %4, align 8
  %69 = call i32 @PMAP_UNLOCK(i64 %68)
  %70 = load i32*, i32** %8, align 8
  ret i32* %70
}

declare dso_local i32 @PMAP_LOCK(i64) #1

declare dso_local i32* @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i32 @TLB_DIRECT_TO_PHYS(i32) #1

declare dso_local i32 @vm_page_wire_mapped(i32*) #1

declare dso_local %struct.tte* @tsb_kvtotte(i32) #1

declare dso_local %struct.tte* @tsb_tte_lookup(i64, i32) #1

declare dso_local i32 @TTE_GET_PA(%struct.tte*) #1

declare dso_local i32 @PMAP_UNLOCK(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
