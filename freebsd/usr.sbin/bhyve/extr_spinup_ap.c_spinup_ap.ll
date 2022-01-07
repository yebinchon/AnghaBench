; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_spinup_ap.c_spinup_ap.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_spinup_ap.c_spinup_ap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }

@guest_ncpus = common dso_local global i32 0, align 4
@VM_CAP_UNRESTRICTED_GUEST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spinup_ap(%struct.vmctx* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.vmctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vmctx* %0, %struct.vmctx** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @guest_ncpus, align 4
  %16 = icmp slt i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @vcpu_reset(%struct.vmctx* %19, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp eq i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @fbsdrun_set_capabilities(%struct.vmctx* %26, i32 %27)
  %29 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @VM_CAP_UNRESTRICTED_GUEST, align 4
  %32 = call i32 @vm_set_capability(%struct.vmctx* %29, i32 %30, i32 %31, i32 1)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp eq i32 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @spinup_ap_realmode(%struct.vmctx* %37, i32 %38, i32* %8)
  %40 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @fbsdrun_addcpu(%struct.vmctx* %40, i32 %41, i32 %42, i32 %43)
  %45 = load i32, i32* %7, align 4
  ret i32 %45
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vcpu_reset(%struct.vmctx*, i32) #1

declare dso_local i32 @fbsdrun_set_capabilities(%struct.vmctx*, i32) #1

declare dso_local i32 @vm_set_capability(%struct.vmctx*, i32, i32, i32) #1

declare dso_local i32 @spinup_ap_realmode(%struct.vmctx*, i32, i32*) #1

declare dso_local i32 @fbsdrun_addcpu(%struct.vmctx*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
