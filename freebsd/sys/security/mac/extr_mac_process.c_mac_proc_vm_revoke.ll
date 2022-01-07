; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_process.c_mac_proc_vm_revoke.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_process.c_mac_proc_vm_revoke.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ucred = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mac_proc_vm_revoke(%struct.thread* %0) #0 {
  %2 = alloca %struct.thread*, align 8
  %3 = alloca %struct.ucred*, align 8
  store %struct.thread* %0, %struct.thread** %2, align 8
  %4 = load %struct.thread*, %struct.thread** %2, align 8
  %5 = getelementptr inbounds %struct.thread, %struct.thread* %4, i32 0, i32 0
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %7 = call i32 @PROC_LOCK(%struct.TYPE_5__* %6)
  %8 = load %struct.thread*, %struct.thread** %2, align 8
  %9 = getelementptr inbounds %struct.thread, %struct.thread* %8, i32 0, i32 0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.ucred* @crhold(i32 %12)
  store %struct.ucred* %13, %struct.ucred** %3, align 8
  %14 = load %struct.thread*, %struct.thread** %2, align 8
  %15 = getelementptr inbounds %struct.thread, %struct.thread* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = call i32 @PROC_UNLOCK(%struct.TYPE_5__* %16)
  %18 = load %struct.thread*, %struct.thread** %2, align 8
  %19 = load %struct.ucred*, %struct.ucred** %3, align 8
  %20 = load %struct.thread*, %struct.thread** %2, align 8
  %21 = getelementptr inbounds %struct.thread, %struct.thread* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = call i32 @mac_proc_vm_revoke_recurse(%struct.thread* %18, %struct.ucred* %19, i32* %25)
  %27 = load %struct.ucred*, %struct.ucred** %3, align 8
  %28 = call i32 @crfree(%struct.ucred* %27)
  ret void
}

declare dso_local i32 @PROC_LOCK(%struct.TYPE_5__*) #1

declare dso_local %struct.ucred* @crhold(i32) #1

declare dso_local i32 @PROC_UNLOCK(%struct.TYPE_5__*) #1

declare dso_local i32 @mac_proc_vm_revoke_recurse(%struct.thread*, %struct.ucred*, i32*) #1

declare dso_local i32 @crfree(%struct.ucred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
