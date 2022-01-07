; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_init_qm_get_num_pqs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_init_qm_get_num_pqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }

@PQ_FLAGS_RLS = common dso_local global i32 0, align 4
@PQ_FLAGS_MCOS = common dso_local global i32 0, align 4
@PQ_FLAGS_LB = common dso_local global i32 0, align 4
@PQ_FLAGS_OOO = common dso_local global i32 0, align 4
@PQ_FLAGS_ACK = common dso_local global i32 0, align 4
@PQ_FLAGS_OFLD = common dso_local global i32 0, align 4
@PQ_FLAGS_LLT = common dso_local global i32 0, align 4
@PQ_FLAGS_VFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_init_qm_get_num_pqs(%struct.ecore_hwfn* %0) #0 {
  %2 = alloca %struct.ecore_hwfn*, align 8
  %3 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %2, align 8
  %4 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %5 = call i32 @ecore_get_pq_flags(%struct.ecore_hwfn* %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* @PQ_FLAGS_RLS, align 4
  %7 = load i32, i32* %3, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %14 = call i32 @ecore_init_qm_get_num_pf_rls(%struct.ecore_hwfn* %13)
  %15 = mul nsw i32 %12, %14
  %16 = load i32, i32* @PQ_FLAGS_MCOS, align 4
  %17 = load i32, i32* %3, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %24 = call i32 @ecore_init_qm_get_num_tcs(%struct.ecore_hwfn* %23)
  %25 = mul nsw i32 %22, %24
  %26 = add nsw i32 %15, %25
  %27 = load i32, i32* @PQ_FLAGS_LB, align 4
  %28 = load i32, i32* %3, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = add nsw i32 %26, %33
  %35 = load i32, i32* @PQ_FLAGS_OOO, align 4
  %36 = load i32, i32* %3, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = add nsw i32 %34, %41
  %43 = load i32, i32* @PQ_FLAGS_ACK, align 4
  %44 = load i32, i32* %3, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = add nsw i32 %42, %49
  %51 = load i32, i32* @PQ_FLAGS_OFLD, align 4
  %52 = load i32, i32* %3, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = add nsw i32 %50, %57
  %59 = load i32, i32* @PQ_FLAGS_LLT, align 4
  %60 = load i32, i32* %3, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = add nsw i32 %58, %65
  %67 = load i32, i32* @PQ_FLAGS_VFS, align 4
  %68 = load i32, i32* %3, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %75 = call i32 @ecore_init_qm_get_num_vfs(%struct.ecore_hwfn* %74)
  %76 = mul nsw i32 %73, %75
  %77 = add nsw i32 %66, %76
  ret i32 %77
}

declare dso_local i32 @ecore_get_pq_flags(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_init_qm_get_num_pf_rls(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_init_qm_get_num_tcs(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_init_qm_get_num_vfs(%struct.ecore_hwfn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
