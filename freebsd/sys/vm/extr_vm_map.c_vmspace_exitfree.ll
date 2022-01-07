; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_map.c_vmspace_exitfree.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_map.c_vmspace_exitfree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmspace = type { i32 }
%struct.proc = type { %struct.vmspace* }

@vmspace0 = common dso_local global %struct.vmspace zeroinitializer, align 4
@.str = private unnamed_addr constant [32 x i8] c"vmspace_exitfree: wrong vmspace\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmspace_exitfree(%struct.proc* %0) #0 {
  %2 = alloca %struct.proc*, align 8
  %3 = alloca %struct.vmspace*, align 8
  store %struct.proc* %0, %struct.proc** %2, align 8
  %4 = load %struct.proc*, %struct.proc** %2, align 8
  %5 = call i32 @PROC_VMSPACE_LOCK(%struct.proc* %4)
  %6 = load %struct.proc*, %struct.proc** %2, align 8
  %7 = getelementptr inbounds %struct.proc, %struct.proc* %6, i32 0, i32 0
  %8 = load %struct.vmspace*, %struct.vmspace** %7, align 8
  store %struct.vmspace* %8, %struct.vmspace** %3, align 8
  %9 = load %struct.proc*, %struct.proc** %2, align 8
  %10 = getelementptr inbounds %struct.proc, %struct.proc* %9, i32 0, i32 0
  store %struct.vmspace* null, %struct.vmspace** %10, align 8
  %11 = load %struct.proc*, %struct.proc** %2, align 8
  %12 = call i32 @PROC_VMSPACE_UNLOCK(%struct.proc* %11)
  %13 = load %struct.vmspace*, %struct.vmspace** %3, align 8
  %14 = icmp eq %struct.vmspace* %13, @vmspace0
  %15 = zext i1 %14 to i32
  %16 = call i32 @KASSERT(i32 %15, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.vmspace*, %struct.vmspace** %3, align 8
  %18 = call i32 @vmspace_free(%struct.vmspace* %17)
  ret void
}

declare dso_local i32 @PROC_VMSPACE_LOCK(%struct.proc*) #1

declare dso_local i32 @PROC_VMSPACE_UNLOCK(%struct.proc*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @vmspace_free(%struct.vmspace*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
