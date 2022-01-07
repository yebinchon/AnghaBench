; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_prot.c_sys_issetugid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_prot.c_sys_issetugid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32*, %struct.proc* }
%struct.proc = type { i32 }
%struct.issetugid_args = type { i32 }

@P_SUGID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_issetugid(%struct.thread* %0, %struct.issetugid_args* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.issetugid_args*, align 8
  %5 = alloca %struct.proc*, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.issetugid_args* %1, %struct.issetugid_args** %4, align 8
  %6 = load %struct.thread*, %struct.thread** %3, align 8
  %7 = getelementptr inbounds %struct.thread, %struct.thread* %6, i32 0, i32 1
  %8 = load %struct.proc*, %struct.proc** %7, align 8
  store %struct.proc* %8, %struct.proc** %5, align 8
  %9 = load %struct.proc*, %struct.proc** %5, align 8
  %10 = getelementptr inbounds %struct.proc, %struct.proc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @P_SUGID, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 1, i32 0
  %17 = load %struct.thread*, %struct.thread** %3, align 8
  %18 = getelementptr inbounds %struct.thread, %struct.thread* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 %16, i32* %20, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
