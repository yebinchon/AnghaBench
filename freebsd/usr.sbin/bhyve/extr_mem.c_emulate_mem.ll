; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_mem.c_emulate_mem.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_mem.c_emulate_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }
%struct.vie = type { i32 }
%struct.vm_guest_paging = type { i32 }
%struct.emulate_mem_args = type { %struct.vm_guest_paging*, %struct.vie* }

@emulate_mem_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @emulate_mem(%struct.vmctx* %0, i32 %1, i32 %2, %struct.vie* %3, %struct.vm_guest_paging* %4) #0 {
  %6 = alloca %struct.vmctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vie*, align 8
  %10 = alloca %struct.vm_guest_paging*, align 8
  %11 = alloca %struct.emulate_mem_args, align 8
  store %struct.vmctx* %0, %struct.vmctx** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.vie* %3, %struct.vie** %9, align 8
  store %struct.vm_guest_paging* %4, %struct.vm_guest_paging** %10, align 8
  %12 = load %struct.vie*, %struct.vie** %9, align 8
  %13 = getelementptr inbounds %struct.emulate_mem_args, %struct.emulate_mem_args* %11, i32 0, i32 1
  store %struct.vie* %12, %struct.vie** %13, align 8
  %14 = load %struct.vm_guest_paging*, %struct.vm_guest_paging** %10, align 8
  %15 = getelementptr inbounds %struct.emulate_mem_args, %struct.emulate_mem_args* %11, i32 0, i32 0
  store %struct.vm_guest_paging* %14, %struct.vm_guest_paging** %15, align 8
  %16 = load %struct.vmctx*, %struct.vmctx** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @emulate_mem_cb, align 4
  %20 = call i32 @access_memory(%struct.vmctx* %16, i32 %17, i32 %18, i32 %19, %struct.emulate_mem_args* %11)
  ret i32 %20
}

declare dso_local i32 @access_memory(%struct.vmctx*, i32, i32, i32, %struct.emulate_mem_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
