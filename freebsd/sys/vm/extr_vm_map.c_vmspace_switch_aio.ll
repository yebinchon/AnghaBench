; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_map.c_vmspace_switch_aio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_map.c_vmspace_switch_aio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.vmspace* }
%struct.vmspace = type { i64 }

@.str = private unnamed_addr constant [39 x i8] c"vmspace_switch_aio: newvm unreferenced\00", align 1
@curproc = common dso_local global %struct.TYPE_2__* null, align 8
@curthread = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmspace_switch_aio(%struct.vmspace* %0) #0 {
  %2 = alloca %struct.vmspace*, align 8
  %3 = alloca %struct.vmspace*, align 8
  store %struct.vmspace* %0, %struct.vmspace** %2, align 8
  %4 = load %struct.vmspace*, %struct.vmspace** %2, align 8
  %5 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp sgt i64 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @KASSERT(i32 %8, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curproc, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.vmspace*, %struct.vmspace** %11, align 8
  store %struct.vmspace* %12, %struct.vmspace** %3, align 8
  %13 = load %struct.vmspace*, %struct.vmspace** %3, align 8
  %14 = load %struct.vmspace*, %struct.vmspace** %2, align 8
  %15 = icmp eq %struct.vmspace* %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %28

17:                                               ; preds = %1
  %18 = load %struct.vmspace*, %struct.vmspace** %2, align 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curproc, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store %struct.vmspace* %18, %struct.vmspace** %20, align 8
  %21 = load %struct.vmspace*, %struct.vmspace** %2, align 8
  %22 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %21, i32 0, i32 0
  %23 = call i32 @atomic_add_int(i64* %22, i32 1)
  %24 = load i32, i32* @curthread, align 4
  %25 = call i32 @pmap_activate(i32 %24)
  %26 = load %struct.vmspace*, %struct.vmspace** %3, align 8
  %27 = call i32 @vmspace_free(%struct.vmspace* %26)
  br label %28

28:                                               ; preds = %17, %16
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @atomic_add_int(i64*, i32) #1

declare dso_local i32 @pmap_activate(i32) #1

declare dso_local i32 @vmspace_free(%struct.vmspace*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
