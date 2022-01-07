; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_bhyverun.c_vmexit_mtrap.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_bhyverun.c_vmexit_mtrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.vmctx = type { i32 }
%struct.vm_exit = type { i64 }

@stats = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@VMEXIT_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmctx*, %struct.vm_exit*, i32*)* @vmexit_mtrap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmexit_mtrap(%struct.vmctx* %0, %struct.vm_exit* %1, i32* %2) #0 {
  %4 = alloca %struct.vmctx*, align 8
  %5 = alloca %struct.vm_exit*, align 8
  %6 = alloca i32*, align 8
  store %struct.vmctx* %0, %struct.vmctx** %4, align 8
  store %struct.vm_exit* %1, %struct.vm_exit** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %struct.vm_exit*, %struct.vm_exit** %5, align 8
  %8 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 0), align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 0), align 4
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @gdb_cpu_mtrap(i32 %16)
  %18 = load i32, i32* @VMEXIT_CONTINUE, align 4
  ret i32 %18
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @gdb_cpu_mtrap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
