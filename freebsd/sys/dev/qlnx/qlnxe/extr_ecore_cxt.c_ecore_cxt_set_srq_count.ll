; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_cxt.c_ecore_cxt_set_srq_count.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_cxt.c_ecore_cxt_set_srq_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.ecore_cxt_mngr* }
%struct.ecore_cxt_mngr = type { i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, i8*, i8*)* @ecore_cxt_set_srq_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_cxt_set_srq_count(%struct.ecore_hwfn* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ecore_cxt_mngr*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %9 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %8, i32 0, i32 0
  %10 = load %struct.ecore_cxt_mngr*, %struct.ecore_cxt_mngr** %9, align 8
  store %struct.ecore_cxt_mngr* %10, %struct.ecore_cxt_mngr** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load %struct.ecore_cxt_mngr*, %struct.ecore_cxt_mngr** %7, align 8
  %13 = getelementptr inbounds %struct.ecore_cxt_mngr, %struct.ecore_cxt_mngr* %12, i32 0, i32 1
  store i8* %11, i8** %13, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load %struct.ecore_cxt_mngr*, %struct.ecore_cxt_mngr** %7, align 8
  %16 = getelementptr inbounds %struct.ecore_cxt_mngr, %struct.ecore_cxt_mngr* %15, i32 0, i32 0
  store i8* %14, i8** %16, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
