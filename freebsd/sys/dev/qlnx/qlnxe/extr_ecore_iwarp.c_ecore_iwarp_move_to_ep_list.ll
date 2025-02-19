; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_iwarp.c_ecore_iwarp_move_to_ep_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_iwarp.c_ecore_iwarp_move_to_ep_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ecore_iwarp_ep = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, i32*, %struct.ecore_iwarp_ep*)* @ecore_iwarp_move_to_ep_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_iwarp_move_to_ep_list(%struct.ecore_hwfn* %0, i32* %1, %struct.ecore_iwarp_ep* %2) #0 {
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ecore_iwarp_ep*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.ecore_iwarp_ep* %2, %struct.ecore_iwarp_ep** %6, align 8
  %7 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %6, align 8
  %8 = getelementptr inbounds %struct.ecore_iwarp_ep, %struct.ecore_iwarp_ep* %7, i32 0, i32 1
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = call i32 @OSAL_SPIN_LOCK(i32* %10)
  %12 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %6, align 8
  %13 = getelementptr inbounds %struct.ecore_iwarp_ep, %struct.ecore_iwarp_ep* %12, i32 0, i32 0
  %14 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %6, align 8
  %15 = getelementptr inbounds %struct.ecore_iwarp_ep, %struct.ecore_iwarp_ep* %14, i32 0, i32 1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = call i32 @OSAL_LIST_REMOVE_ENTRY(i32* %13, i32* %17)
  %19 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %6, align 8
  %20 = getelementptr inbounds %struct.ecore_iwarp_ep, %struct.ecore_iwarp_ep* %19, i32 0, i32 1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = call i32 @OSAL_SPIN_UNLOCK(i32* %22)
  %24 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %25 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = call i32 @OSAL_SPIN_LOCK(i32* %28)
  %30 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %6, align 8
  %31 = getelementptr inbounds %struct.ecore_iwarp_ep, %struct.ecore_iwarp_ep* %30, i32 0, i32 0
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @OSAL_LIST_PUSH_TAIL(i32* %31, i32* %32)
  %34 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %35 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = call i32 @OSAL_SPIN_UNLOCK(i32* %38)
  ret void
}

declare dso_local i32 @OSAL_SPIN_LOCK(i32*) #1

declare dso_local i32 @OSAL_LIST_REMOVE_ENTRY(i32*, i32*) #1

declare dso_local i32 @OSAL_SPIN_UNLOCK(i32*) #1

declare dso_local i32 @OSAL_LIST_PUSH_TAIL(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
