; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bus.c_resource_list_purge.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bus.c_resource_list_purge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource_list = type { i32 }
%struct.resource_list_entry = type { i64, i32, i32 }

@link = common dso_local global i32 0, align 4
@M_BUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @resource_list_purge(%struct.resource_list* %0) #0 {
  %2 = alloca %struct.resource_list*, align 8
  %3 = alloca %struct.resource_list_entry*, align 8
  store %struct.resource_list* %0, %struct.resource_list** %2, align 8
  br label %4

4:                                                ; preds = %28, %1
  %5 = load %struct.resource_list*, %struct.resource_list** %2, align 8
  %6 = call %struct.resource_list_entry* @STAILQ_FIRST(%struct.resource_list* %5)
  store %struct.resource_list_entry* %6, %struct.resource_list_entry** %3, align 8
  %7 = icmp ne %struct.resource_list_entry* %6, null
  br i1 %7, label %8, label %35

8:                                                ; preds = %4
  %9 = load %struct.resource_list_entry*, %struct.resource_list_entry** %3, align 8
  %10 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %8
  %14 = load %struct.resource_list_entry*, %struct.resource_list_entry** %3, align 8
  %15 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @rman_get_device(i64 %16)
  %18 = load %struct.resource_list_entry*, %struct.resource_list_entry** %3, align 8
  %19 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.resource_list_entry*, %struct.resource_list_entry** %3, align 8
  %22 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.resource_list_entry*, %struct.resource_list_entry** %3, align 8
  %25 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @bus_release_resource(i32 %17, i32 %20, i32 %23, i64 %26)
  br label %28

28:                                               ; preds = %13, %8
  %29 = load %struct.resource_list*, %struct.resource_list** %2, align 8
  %30 = load i32, i32* @link, align 4
  %31 = call i32 @STAILQ_REMOVE_HEAD(%struct.resource_list* %29, i32 %30)
  %32 = load %struct.resource_list_entry*, %struct.resource_list_entry** %3, align 8
  %33 = load i32, i32* @M_BUS, align 4
  %34 = call i32 @free(%struct.resource_list_entry* %32, i32 %33)
  br label %4

35:                                               ; preds = %4
  ret void
}

declare dso_local %struct.resource_list_entry* @STAILQ_FIRST(%struct.resource_list*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i64) #1

declare dso_local i32 @rman_get_device(i64) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(%struct.resource_list*, i32) #1

declare dso_local i32 @free(%struct.resource_list_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
