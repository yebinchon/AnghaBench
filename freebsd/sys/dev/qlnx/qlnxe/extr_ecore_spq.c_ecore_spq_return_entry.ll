; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_spq.c_ecore_spq_return_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_spq.c_ecore_spq_return_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ecore_spq_entry = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ecore_spq_return_entry(%struct.ecore_hwfn* %0, %struct.ecore_spq_entry* %1) #0 {
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca %struct.ecore_spq_entry*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  store %struct.ecore_spq_entry* %1, %struct.ecore_spq_entry** %4, align 8
  %5 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %6 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = call i32 @OSAL_SPIN_LOCK(i32* %8)
  %10 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %11 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %4, align 8
  %12 = call i32 @__ecore_spq_return_entry(%struct.ecore_hwfn* %10, %struct.ecore_spq_entry* %11)
  %13 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %14 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @OSAL_SPIN_UNLOCK(i32* %16)
  ret void
}

declare dso_local i32 @OSAL_SPIN_LOCK(i32*) #1

declare dso_local i32 @__ecore_spq_return_entry(%struct.ecore_hwfn*, %struct.ecore_spq_entry*) #1

declare dso_local i32 @OSAL_SPIN_UNLOCK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
