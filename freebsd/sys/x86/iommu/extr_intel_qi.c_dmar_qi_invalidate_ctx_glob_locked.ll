; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_qi.c_dmar_qi_invalidate_ctx_glob_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_qi.c_dmar_qi_invalidate_ctx_glob_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_unit = type { i32 }
%struct.dmar_qi_genseq = type { i32 }

@DMAR_IQ_DESCR_CTX_INV = common dso_local global i32 0, align 4
@DMAR_IQ_DESCR_CTX_GLOB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dmar_qi_invalidate_ctx_glob_locked(%struct.dmar_unit* %0) #0 {
  %2 = alloca %struct.dmar_unit*, align 8
  %3 = alloca %struct.dmar_qi_genseq, align 4
  store %struct.dmar_unit* %0, %struct.dmar_unit** %2, align 8
  %4 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %5 = call i32 @DMAR_ASSERT_LOCKED(%struct.dmar_unit* %4)
  %6 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %7 = call i32 @dmar_qi_ensure(%struct.dmar_unit* %6, i32 2)
  %8 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %9 = load i32, i32* @DMAR_IQ_DESCR_CTX_INV, align 4
  %10 = load i32, i32* @DMAR_IQ_DESCR_CTX_GLOB, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @dmar_qi_emit(%struct.dmar_unit* %8, i32 %11, i32 0)
  %13 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %14 = call i32 @dmar_qi_emit_wait_seq(%struct.dmar_unit* %13, %struct.dmar_qi_genseq* %3, i32 1)
  %15 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %16 = call i32 @dmar_qi_advance_tail(%struct.dmar_unit* %15)
  %17 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %18 = call i32 @dmar_qi_wait_for_seq(%struct.dmar_unit* %17, %struct.dmar_qi_genseq* %3, i32 0)
  ret void
}

declare dso_local i32 @DMAR_ASSERT_LOCKED(%struct.dmar_unit*) #1

declare dso_local i32 @dmar_qi_ensure(%struct.dmar_unit*, i32) #1

declare dso_local i32 @dmar_qi_emit(%struct.dmar_unit*, i32, i32) #1

declare dso_local i32 @dmar_qi_emit_wait_seq(%struct.dmar_unit*, %struct.dmar_qi_genseq*, i32) #1

declare dso_local i32 @dmar_qi_advance_tail(%struct.dmar_unit*) #1

declare dso_local i32 @dmar_qi_wait_for_seq(%struct.dmar_unit*, %struct.dmar_qi_genseq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
