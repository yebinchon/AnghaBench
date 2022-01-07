; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_map.c_vmspace_acquire_ref.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_map.c_vmspace_acquire_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmspace = type { i32 }
%struct.proc = type { %struct.vmspace* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vmspace* @vmspace_acquire_ref(%struct.proc* %0) #0 {
  %2 = alloca %struct.vmspace*, align 8
  %3 = alloca %struct.proc*, align 8
  %4 = alloca %struct.vmspace*, align 8
  %5 = alloca i32, align 4
  store %struct.proc* %0, %struct.proc** %3, align 8
  %6 = load %struct.proc*, %struct.proc** %3, align 8
  %7 = call i32 @PROC_VMSPACE_LOCK(%struct.proc* %6)
  %8 = load %struct.proc*, %struct.proc** %3, align 8
  %9 = getelementptr inbounds %struct.proc, %struct.proc* %8, i32 0, i32 0
  %10 = load %struct.vmspace*, %struct.vmspace** %9, align 8
  store %struct.vmspace* %10, %struct.vmspace** %4, align 8
  %11 = load %struct.vmspace*, %struct.vmspace** %4, align 8
  %12 = icmp eq %struct.vmspace* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.proc*, %struct.proc** %3, align 8
  %15 = call i32 @PROC_VMSPACE_UNLOCK(%struct.proc* %14)
  store %struct.vmspace* null, %struct.vmspace** %2, align 8
  br label %50

16:                                               ; preds = %1
  %17 = load %struct.vmspace*, %struct.vmspace** %4, align 8
  %18 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %27, %16
  %21 = load i32, i32* %5, align 4
  %22 = icmp sle i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load %struct.proc*, %struct.proc** %3, align 8
  %25 = call i32 @PROC_VMSPACE_UNLOCK(%struct.proc* %24)
  store %struct.vmspace* null, %struct.vmspace** %2, align 8
  br label %50

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %26
  %28 = load %struct.vmspace*, %struct.vmspace** %4, align 8
  %29 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %28, i32 0, i32 0
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  %32 = call i32 @atomic_fcmpset_int(i32* %29, i32* %5, i32 %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  br i1 %34, label %20, label %35

35:                                               ; preds = %27
  %36 = load %struct.vmspace*, %struct.vmspace** %4, align 8
  %37 = load %struct.proc*, %struct.proc** %3, align 8
  %38 = getelementptr inbounds %struct.proc, %struct.proc* %37, i32 0, i32 0
  %39 = load %struct.vmspace*, %struct.vmspace** %38, align 8
  %40 = icmp ne %struct.vmspace* %36, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load %struct.proc*, %struct.proc** %3, align 8
  %43 = call i32 @PROC_VMSPACE_UNLOCK(%struct.proc* %42)
  %44 = load %struct.vmspace*, %struct.vmspace** %4, align 8
  %45 = call i32 @vmspace_free(%struct.vmspace* %44)
  store %struct.vmspace* null, %struct.vmspace** %2, align 8
  br label %50

46:                                               ; preds = %35
  %47 = load %struct.proc*, %struct.proc** %3, align 8
  %48 = call i32 @PROC_VMSPACE_UNLOCK(%struct.proc* %47)
  %49 = load %struct.vmspace*, %struct.vmspace** %4, align 8
  store %struct.vmspace* %49, %struct.vmspace** %2, align 8
  br label %50

50:                                               ; preds = %46, %41, %23, %13
  %51 = load %struct.vmspace*, %struct.vmspace** %2, align 8
  ret %struct.vmspace* %51
}

declare dso_local i32 @PROC_VMSPACE_LOCK(%struct.proc*) #1

declare dso_local i32 @PROC_VMSPACE_UNLOCK(%struct.proc*) #1

declare dso_local i32 @atomic_fcmpset_int(i32*, i32*, i32) #1

declare dso_local i32 @vmspace_free(%struct.vmspace*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
