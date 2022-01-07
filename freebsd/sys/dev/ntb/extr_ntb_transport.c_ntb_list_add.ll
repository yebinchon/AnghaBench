; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/extr_ntb_transport.c_ntb_list_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/extr_ntb_transport.c_ntb_list_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtx = type { i32 }
%struct.ntb_queue_entry = type { i32 }
%struct.ntb_queue_list = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtx*, %struct.ntb_queue_entry*, %struct.ntb_queue_list*)* @ntb_list_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ntb_list_add(%struct.mtx* %0, %struct.ntb_queue_entry* %1, %struct.ntb_queue_list* %2) #0 {
  %4 = alloca %struct.mtx*, align 8
  %5 = alloca %struct.ntb_queue_entry*, align 8
  %6 = alloca %struct.ntb_queue_list*, align 8
  store %struct.mtx* %0, %struct.mtx** %4, align 8
  store %struct.ntb_queue_entry* %1, %struct.ntb_queue_entry** %5, align 8
  store %struct.ntb_queue_list* %2, %struct.ntb_queue_list** %6, align 8
  %7 = load %struct.mtx*, %struct.mtx** %4, align 8
  %8 = call i32 @mtx_lock_spin(%struct.mtx* %7)
  %9 = load %struct.ntb_queue_list*, %struct.ntb_queue_list** %6, align 8
  %10 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %5, align 8
  %11 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %5, align 8
  %12 = call i32 @STAILQ_INSERT_TAIL(%struct.ntb_queue_list* %9, %struct.ntb_queue_entry* %10, %struct.ntb_queue_entry* %11)
  %13 = load %struct.mtx*, %struct.mtx** %4, align 8
  %14 = call i32 @mtx_unlock_spin(%struct.mtx* %13)
  ret void
}

declare dso_local i32 @mtx_lock_spin(%struct.mtx*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(%struct.ntb_queue_list*, %struct.ntb_queue_entry*, %struct.ntb_queue_entry*) #1

declare dso_local i32 @mtx_unlock_spin(%struct.mtx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
