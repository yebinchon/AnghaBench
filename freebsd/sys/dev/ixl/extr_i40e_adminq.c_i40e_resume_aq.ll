; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_adminq.c_i40e_resume_aq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_adminq.c_i40e_resume_aq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_hw*)* @i40e_resume_aq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_resume_aq(%struct.i40e_hw* %0) #0 {
  %2 = alloca %struct.i40e_hw*, align 8
  store %struct.i40e_hw* %0, %struct.i40e_hw** %2, align 8
  %3 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %4 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  store i64 0, i64* %6, align 8
  %7 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %8 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i64 0, i64* %10, align 8
  %11 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %12 = call i32 @i40e_config_asq_regs(%struct.i40e_hw* %11)
  %13 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %14 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %18 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  %21 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %22 = call i32 @i40e_config_arq_regs(%struct.i40e_hw* %21)
  ret void
}

declare dso_local i32 @i40e_config_asq_regs(%struct.i40e_hw*) #1

declare dso_local i32 @i40e_config_arq_regs(%struct.i40e_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
