; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea64.c_moea64_pte_from_pvo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea64.c_moea64_pte_from_pvo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvo_entry = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.lpte = type { i32, i32 }

@ADDR_API_SHFT64 = common dso_local global i32 0, align 4
@ADDR_PIDX_SHFT = common dso_local global i32 0, align 4
@LPTE_AVPN_MASK = common dso_local global i32 0, align 4
@LPTE_VALID = common dso_local global i32 0, align 4
@PVO_LARGE = common dso_local global i32 0, align 4
@LPTE_BIG = common dso_local global i32 0, align 4
@PVO_WIRED = common dso_local global i32 0, align 4
@LPTE_WIRED = common dso_local global i32 0, align 4
@PVO_HID = common dso_local global i32 0, align 4
@LPTE_HID = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@LPTE_BW = common dso_local global i32 0, align 4
@LPTE_BR = common dso_local global i32 0, align 4
@VM_PROT_EXECUTE = common dso_local global i32 0, align 4
@LPTE_NOEXEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @moea64_pte_from_pvo(%struct.pvo_entry* %0, %struct.lpte* %1) #0 {
  %3 = alloca %struct.pvo_entry*, align 8
  %4 = alloca %struct.lpte*, align 8
  store %struct.pvo_entry* %0, %struct.pvo_entry** %3, align 8
  store %struct.lpte* %1, %struct.lpte** %4, align 8
  %5 = load %struct.pvo_entry*, %struct.pvo_entry** %3, align 8
  %6 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @ADDR_API_SHFT64, align 4
  %9 = load i32, i32* @ADDR_PIDX_SHFT, align 4
  %10 = sub nsw i32 %8, %9
  %11 = ashr i32 %7, %10
  %12 = load i32, i32* @LPTE_AVPN_MASK, align 4
  %13 = and i32 %11, %12
  %14 = load %struct.lpte*, %struct.lpte** %4, align 8
  %15 = getelementptr inbounds %struct.lpte, %struct.lpte* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @LPTE_VALID, align 4
  %17 = load %struct.lpte*, %struct.lpte** %4, align 8
  %18 = getelementptr inbounds %struct.lpte, %struct.lpte* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load %struct.pvo_entry*, %struct.pvo_entry** %3, align 8
  %22 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @PVO_LARGE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %2
  %28 = load i32, i32* @LPTE_BIG, align 4
  %29 = load %struct.lpte*, %struct.lpte** %4, align 8
  %30 = getelementptr inbounds %struct.lpte, %struct.lpte* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %27, %2
  %34 = load %struct.pvo_entry*, %struct.pvo_entry** %3, align 8
  %35 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @PVO_WIRED, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %33
  %41 = load i32, i32* @LPTE_WIRED, align 4
  %42 = load %struct.lpte*, %struct.lpte** %4, align 8
  %43 = getelementptr inbounds %struct.lpte, %struct.lpte* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %40, %33
  %47 = load %struct.pvo_entry*, %struct.pvo_entry** %3, align 8
  %48 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @PVO_HID, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %46
  %54 = load i32, i32* @LPTE_HID, align 4
  %55 = load %struct.lpte*, %struct.lpte** %4, align 8
  %56 = getelementptr inbounds %struct.lpte, %struct.lpte* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %53, %46
  %60 = load %struct.pvo_entry*, %struct.pvo_entry** %3, align 8
  %61 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.lpte*, %struct.lpte** %4, align 8
  %65 = getelementptr inbounds %struct.lpte, %struct.lpte* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.pvo_entry*, %struct.pvo_entry** %3, align 8
  %67 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @VM_PROT_WRITE, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %59
  %74 = load i32, i32* @LPTE_BW, align 4
  %75 = load %struct.lpte*, %struct.lpte** %4, align 8
  %76 = getelementptr inbounds %struct.lpte, %struct.lpte* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 4
  br label %85

79:                                               ; preds = %59
  %80 = load i32, i32* @LPTE_BR, align 4
  %81 = load %struct.lpte*, %struct.lpte** %4, align 8
  %82 = getelementptr inbounds %struct.lpte, %struct.lpte* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %79, %73
  %86 = load %struct.pvo_entry*, %struct.pvo_entry** %3, align 8
  %87 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @VM_PROT_EXECUTE, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %99, label %93

93:                                               ; preds = %85
  %94 = load i32, i32* @LPTE_NOEXEC, align 4
  %95 = load %struct.lpte*, %struct.lpte** %4, align 8
  %96 = getelementptr inbounds %struct.lpte, %struct.lpte* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 4
  br label %99

99:                                               ; preds = %93, %85
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
