; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_if.c_pfi_attach_ifnet.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_if.c_pfi_attach_ifnet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.pfi_kif*, i32 }
%struct.pfi_kif = type { %struct.ifnet* }

@V_pfi_update = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*, %struct.pfi_kif*)* @pfi_attach_ifnet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pfi_attach_ifnet(%struct.ifnet* %0, %struct.pfi_kif* %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.pfi_kif*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store %struct.pfi_kif* %1, %struct.pfi_kif** %4, align 8
  %5 = call i32 (...) @PF_RULES_WASSERT()
  %6 = load i32, i32* @V_pfi_update, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* @V_pfi_update, align 4
  %8 = load %struct.pfi_kif*, %struct.pfi_kif** %4, align 8
  %9 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %10 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.pfi_kif* @pfi_kif_attach(%struct.pfi_kif* %8, i32 %11)
  store %struct.pfi_kif* %12, %struct.pfi_kif** %4, align 8
  %13 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %14 = call i32 @if_ref(%struct.ifnet* %13)
  %15 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %16 = load %struct.pfi_kif*, %struct.pfi_kif** %4, align 8
  %17 = getelementptr inbounds %struct.pfi_kif, %struct.pfi_kif* %16, i32 0, i32 0
  store %struct.ifnet* %15, %struct.ifnet** %17, align 8
  %18 = load %struct.pfi_kif*, %struct.pfi_kif** %4, align 8
  %19 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %20 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %19, i32 0, i32 0
  store %struct.pfi_kif* %18, %struct.pfi_kif** %20, align 8
  %21 = load %struct.pfi_kif*, %struct.pfi_kif** %4, align 8
  %22 = call i32 @pfi_kif_update(%struct.pfi_kif* %21)
  ret void
}

declare dso_local i32 @PF_RULES_WASSERT(...) #1

declare dso_local %struct.pfi_kif* @pfi_kif_attach(%struct.pfi_kif*, i32) #1

declare dso_local i32 @if_ref(%struct.ifnet*) #1

declare dso_local i32 @pfi_kif_update(%struct.pfi_kif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
