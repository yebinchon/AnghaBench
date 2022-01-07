; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci_queue_pair.c_queue_pair_list_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci_queue_pair.c_queue_pair_list_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue_pair_list = type { i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"VMCI QP List lock\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.queue_pair_list*)* @queue_pair_list_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @queue_pair_list_init(%struct.queue_pair_list* %0) #0 {
  %2 = alloca %struct.queue_pair_list*, align 8
  %3 = alloca i32, align 4
  store %struct.queue_pair_list* %0, %struct.queue_pair_list** %2, align 8
  %4 = load %struct.queue_pair_list*, %struct.queue_pair_list** %2, align 8
  %5 = getelementptr inbounds %struct.queue_pair_list, %struct.queue_pair_list* %4, i32 0, i32 2
  %6 = call i32 @vmci_list_init(i32* %5)
  %7 = load %struct.queue_pair_list*, %struct.queue_pair_list** %2, align 8
  %8 = getelementptr inbounds %struct.queue_pair_list, %struct.queue_pair_list* %7, i32 0, i32 1
  %9 = call i32 @atomic_store_int(i32* %8, i32 0)
  %10 = load %struct.queue_pair_list*, %struct.queue_pair_list** %2, align 8
  %11 = getelementptr inbounds %struct.queue_pair_list, %struct.queue_pair_list* %10, i32 0, i32 0
  %12 = call i32 @vmci_mutex_init(i32* %11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  ret i32 %13
}

declare dso_local i32 @vmci_list_init(i32*) #1

declare dso_local i32 @atomic_store_int(i32*, i32) #1

declare dso_local i32 @vmci_mutex_init(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
