; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_map.c_vmspace_dofree.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_map.c_vmspace_dofree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmspace = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@KTR_VM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"vmspace_free: %p\00", align 1
@vmspace_zone = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmspace*)* @vmspace_dofree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmspace_dofree(%struct.vmspace* %0) #0 {
  %2 = alloca %struct.vmspace*, align 8
  store %struct.vmspace* %0, %struct.vmspace** %2, align 8
  %3 = load i32, i32* @KTR_VM, align 4
  %4 = load %struct.vmspace*, %struct.vmspace** %2, align 8
  %5 = call i32 @CTR1(i32 %3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.vmspace* %4)
  %6 = load %struct.vmspace*, %struct.vmspace** %2, align 8
  %7 = call i32 @shmexit(%struct.vmspace* %6)
  %8 = load %struct.vmspace*, %struct.vmspace** %2, align 8
  %9 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %8, i32 0, i32 0
  %10 = load %struct.vmspace*, %struct.vmspace** %2, align 8
  %11 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %10, i32 0, i32 0
  %12 = call i32 @vm_map_min(%struct.TYPE_4__* %11)
  %13 = load %struct.vmspace*, %struct.vmspace** %2, align 8
  %14 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %13, i32 0, i32 0
  %15 = call i32 @vm_map_max(%struct.TYPE_4__* %14)
  %16 = call i32 @vm_map_remove(%struct.TYPE_4__* %9, i32 %12, i32 %15)
  %17 = load %struct.vmspace*, %struct.vmspace** %2, align 8
  %18 = call i32 @vmspace_pmap(%struct.vmspace* %17)
  %19 = call i32 @pmap_release(i32 %18)
  %20 = load %struct.vmspace*, %struct.vmspace** %2, align 8
  %21 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i32* null, i32** %22, align 8
  %23 = load i32, i32* @vmspace_zone, align 4
  %24 = load %struct.vmspace*, %struct.vmspace** %2, align 8
  %25 = call i32 @uma_zfree(i32 %23, %struct.vmspace* %24)
  ret void
}

declare dso_local i32 @CTR1(i32, i8*, %struct.vmspace*) #1

declare dso_local i32 @shmexit(%struct.vmspace*) #1

declare dso_local i32 @vm_map_remove(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @vm_map_min(%struct.TYPE_4__*) #1

declare dso_local i32 @vm_map_max(%struct.TYPE_4__*) #1

declare dso_local i32 @pmap_release(i32) #1

declare dso_local i32 @vmspace_pmap(%struct.vmspace*) #1

declare dso_local i32 @uma_zfree(i32, %struct.vmspace*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
