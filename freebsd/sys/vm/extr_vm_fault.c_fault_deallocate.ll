; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_fault.c_fault_deallocate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_fault.c_fault_deallocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.faultstate = type { i64, i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.faultstate*)* @fault_deallocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fault_deallocate(%struct.faultstate* %0) #0 {
  %2 = alloca %struct.faultstate*, align 8
  store %struct.faultstate* %0, %struct.faultstate** %2, align 8
  %3 = load %struct.faultstate*, %struct.faultstate** %2, align 8
  %4 = getelementptr inbounds %struct.faultstate, %struct.faultstate* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = call i32 @vm_object_pip_wakeup(i64 %5)
  %7 = load %struct.faultstate*, %struct.faultstate** %2, align 8
  %8 = getelementptr inbounds %struct.faultstate, %struct.faultstate* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.faultstate*, %struct.faultstate** %2, align 8
  %11 = getelementptr inbounds %struct.faultstate, %struct.faultstate* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %9, %12
  br i1 %13, label %14, label %33

14:                                               ; preds = %1
  %15 = load %struct.faultstate*, %struct.faultstate** %2, align 8
  %16 = getelementptr inbounds %struct.faultstate, %struct.faultstate* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @VM_OBJECT_WLOCK(i64 %17)
  %19 = load %struct.faultstate*, %struct.faultstate** %2, align 8
  %20 = getelementptr inbounds %struct.faultstate, %struct.faultstate* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @vm_page_free(i32* %21)
  %23 = load %struct.faultstate*, %struct.faultstate** %2, align 8
  %24 = getelementptr inbounds %struct.faultstate, %struct.faultstate* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @vm_object_pip_wakeup(i64 %25)
  %27 = load %struct.faultstate*, %struct.faultstate** %2, align 8
  %28 = getelementptr inbounds %struct.faultstate, %struct.faultstate* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @VM_OBJECT_WUNLOCK(i64 %29)
  %31 = load %struct.faultstate*, %struct.faultstate** %2, align 8
  %32 = getelementptr inbounds %struct.faultstate, %struct.faultstate* %31, i32 0, i32 2
  store i32* null, i32** %32, align 8
  br label %33

33:                                               ; preds = %14, %1
  %34 = load %struct.faultstate*, %struct.faultstate** %2, align 8
  %35 = getelementptr inbounds %struct.faultstate, %struct.faultstate* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @vm_object_deallocate(i64 %36)
  %38 = load %struct.faultstate*, %struct.faultstate** %2, align 8
  %39 = call i32 @unlock_map(%struct.faultstate* %38)
  %40 = load %struct.faultstate*, %struct.faultstate** %2, align 8
  %41 = call i32 @unlock_vp(%struct.faultstate* %40)
  ret void
}

declare dso_local i32 @vm_object_pip_wakeup(i64) #1

declare dso_local i32 @VM_OBJECT_WLOCK(i64) #1

declare dso_local i32 @vm_page_free(i32*) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(i64) #1

declare dso_local i32 @vm_object_deallocate(i64) #1

declare dso_local i32 @unlock_map(%struct.faultstate*) #1

declare dso_local i32 @unlock_vp(%struct.faultstate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
