; ModuleID = '/home/carl/AnghaBench/freebsd/sys/nfs/extr_bootp_subr.c_allocifctx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/nfs/extr_bootp_subr.c_allocifctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bootpc_globalcontext = type { i32, i32 }
%struct.bootpc_ifcontext = type { i32, i32 }

@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@IF_DHCP_UNRESOLVED = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4
@IF_BOOTP_UNRESOLVED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bootpc_globalcontext*)* @allocifctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @allocifctx(%struct.bootpc_globalcontext* %0) #0 {
  %2 = alloca %struct.bootpc_globalcontext*, align 8
  %3 = alloca %struct.bootpc_ifcontext*, align 8
  store %struct.bootpc_globalcontext* %0, %struct.bootpc_globalcontext** %2, align 8
  %4 = load i32, i32* @M_TEMP, align 4
  %5 = load i32, i32* @M_WAITOK, align 4
  %6 = load i32, i32* @M_ZERO, align 4
  %7 = or i32 %5, %6
  %8 = call %struct.bootpc_ifcontext* @malloc(i32 8, i32 %4, i32 %7)
  store %struct.bootpc_ifcontext* %8, %struct.bootpc_ifcontext** %3, align 8
  %9 = load %struct.bootpc_globalcontext*, %struct.bootpc_globalcontext** %2, align 8
  %10 = getelementptr inbounds %struct.bootpc_globalcontext, %struct.bootpc_globalcontext* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.bootpc_ifcontext*, %struct.bootpc_ifcontext** %3, align 8
  %13 = getelementptr inbounds %struct.bootpc_ifcontext, %struct.bootpc_ifcontext* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @IF_DHCP_UNRESOLVED, align 4
  %15 = load %struct.bootpc_ifcontext*, %struct.bootpc_ifcontext** %3, align 8
  %16 = getelementptr inbounds %struct.bootpc_ifcontext, %struct.bootpc_ifcontext* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.bootpc_globalcontext*, %struct.bootpc_globalcontext** %2, align 8
  %18 = getelementptr inbounds %struct.bootpc_globalcontext, %struct.bootpc_globalcontext* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 256
  store i32 %20, i32* %18, align 4
  %21 = load %struct.bootpc_globalcontext*, %struct.bootpc_globalcontext** %2, align 8
  %22 = getelementptr inbounds %struct.bootpc_globalcontext, %struct.bootpc_globalcontext* %21, i32 0, i32 1
  %23 = load %struct.bootpc_ifcontext*, %struct.bootpc_ifcontext** %3, align 8
  %24 = load i32, i32* @next, align 4
  %25 = call i32 @STAILQ_INSERT_TAIL(i32* %22, %struct.bootpc_ifcontext* %23, i32 %24)
  ret void
}

declare dso_local %struct.bootpc_ifcontext* @malloc(i32, i32, i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.bootpc_ifcontext*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
