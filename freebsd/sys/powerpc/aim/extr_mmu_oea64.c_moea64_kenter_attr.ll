; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea64.c_moea64_kenter_attr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea64.c_moea64_kenter_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvo_entry = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@VM_PROT_READ = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@VM_PROT_EXECUTE = common dso_local global i32 0, align 4
@ADDR_POFF = common dso_local global i32 0, align 4
@PVO_WIRED = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"moea64_kenter: failed to enter va %#zx pa %#jx: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @moea64_kenter_attr(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pvo_entry*, align 8
  %11 = alloca %struct.pvo_entry*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  br label %12

12:                                               ; preds = %19, %4
  %13 = call %struct.pvo_entry* @alloc_pvo_entry(i32 0)
  store %struct.pvo_entry* %13, %struct.pvo_entry** %10, align 8
  %14 = load %struct.pvo_entry*, %struct.pvo_entry** %10, align 8
  %15 = icmp eq %struct.pvo_entry* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = call i32 @vm_wait(i32* null)
  br label %18

18:                                               ; preds = %16, %12
  br label %19

19:                                               ; preds = %18
  %20 = load %struct.pvo_entry*, %struct.pvo_entry** %10, align 8
  %21 = icmp eq %struct.pvo_entry* %20, null
  br i1 %21, label %12, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* @VM_PROT_READ, align 4
  %24 = load i32, i32* @VM_PROT_WRITE, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @VM_PROT_EXECUTE, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.pvo_entry*, %struct.pvo_entry** %10, align 8
  %29 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @ADDR_POFF, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @moea64_calc_wimg(i32 %35, i32 %36)
  %38 = or i32 %34, %37
  %39 = load %struct.pvo_entry*, %struct.pvo_entry** %10, align 8
  %40 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 4
  %42 = load i32, i32* @PVO_WIRED, align 4
  %43 = load %struct.pvo_entry*, %struct.pvo_entry** %10, align 8
  %44 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load i32, i32* @kernel_pmap, align 4
  %48 = call i32 @PMAP_LOCK(i32 %47)
  %49 = load i32, i32* @kernel_pmap, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call %struct.pvo_entry* @moea64_pvo_find_va(i32 %49, i32 %50)
  store %struct.pvo_entry* %51, %struct.pvo_entry** %11, align 8
  %52 = load %struct.pvo_entry*, %struct.pvo_entry** %11, align 8
  %53 = icmp ne %struct.pvo_entry* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %22
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.pvo_entry*, %struct.pvo_entry** %11, align 8
  %57 = call i32 @moea64_pvo_remove_from_pmap(i32 %55, %struct.pvo_entry* %56)
  br label %58

58:                                               ; preds = %54, %22
  %59 = load %struct.pvo_entry*, %struct.pvo_entry** %10, align 8
  %60 = load i32, i32* @kernel_pmap, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @init_pvo_entry(%struct.pvo_entry* %59, i32 %60, i32 %61)
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.pvo_entry*, %struct.pvo_entry** %10, align 8
  %65 = call i32 @moea64_pvo_enter(i32 %63, %struct.pvo_entry* %64, i32* null, i32* null)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* @kernel_pmap, align 4
  %67 = call i32 @PMAP_UNLOCK(i32 %66)
  %68 = load %struct.pvo_entry*, %struct.pvo_entry** %11, align 8
  %69 = icmp ne %struct.pvo_entry* %68, null
  br i1 %69, label %70, label %76

70:                                               ; preds = %58
  %71 = load i32, i32* %5, align 4
  %72 = load %struct.pvo_entry*, %struct.pvo_entry** %11, align 8
  %73 = call i32 @moea64_pvo_remove_from_page(i32 %71, %struct.pvo_entry* %72)
  %74 = load %struct.pvo_entry*, %struct.pvo_entry** %11, align 8
  %75 = call i32 @free_pvo_entry(%struct.pvo_entry* %74)
  br label %76

76:                                               ; preds = %70, %58
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %76
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @ENOENT, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %79
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @panic(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %84, i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %83, %79, %76
  ret void
}

declare dso_local %struct.pvo_entry* @alloc_pvo_entry(i32) #1

declare dso_local i32 @vm_wait(i32*) #1

declare dso_local i32 @moea64_calc_wimg(i32, i32) #1

declare dso_local i32 @PMAP_LOCK(i32) #1

declare dso_local %struct.pvo_entry* @moea64_pvo_find_va(i32, i32) #1

declare dso_local i32 @moea64_pvo_remove_from_pmap(i32, %struct.pvo_entry*) #1

declare dso_local i32 @init_pvo_entry(%struct.pvo_entry*, i32, i32) #1

declare dso_local i32 @moea64_pvo_enter(i32, %struct.pvo_entry*, i32*, i32*) #1

declare dso_local i32 @PMAP_UNLOCK(i32) #1

declare dso_local i32 @moea64_pvo_remove_from_page(i32, %struct.pvo_entry*) #1

declare dso_local i32 @free_pvo_entry(%struct.pvo_entry*) #1

declare dso_local i32 @panic(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
