; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bus.c_resource_list_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bus.c_resource_list_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource_list = type { i32 }
%struct.resource_list_entry = type { i64 }

@.str = private unnamed_addr constant [43 x i8] c"resource_list_free: resource entry is busy\00", align 1
@link = common dso_local global i32 0, align 4
@M_BUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @resource_list_free(%struct.resource_list* %0) #0 {
  %2 = alloca %struct.resource_list*, align 8
  %3 = alloca %struct.resource_list_entry*, align 8
  store %struct.resource_list* %0, %struct.resource_list** %2, align 8
  br label %4

4:                                                ; preds = %15, %1
  %5 = load %struct.resource_list*, %struct.resource_list** %2, align 8
  %6 = call %struct.resource_list_entry* @STAILQ_FIRST(%struct.resource_list* %5)
  store %struct.resource_list_entry* %6, %struct.resource_list_entry** %3, align 8
  %7 = icmp ne %struct.resource_list_entry* %6, null
  br i1 %7, label %8, label %22

8:                                                ; preds = %4
  %9 = load %struct.resource_list_entry*, %struct.resource_list_entry** %3, align 8
  %10 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = call i32 @panic(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %8
  %16 = load %struct.resource_list*, %struct.resource_list** %2, align 8
  %17 = load i32, i32* @link, align 4
  %18 = call i32 @STAILQ_REMOVE_HEAD(%struct.resource_list* %16, i32 %17)
  %19 = load %struct.resource_list_entry*, %struct.resource_list_entry** %3, align 8
  %20 = load i32, i32* @M_BUS, align 4
  %21 = call i32 @free(%struct.resource_list_entry* %19, i32 %20)
  br label %4

22:                                               ; preds = %4
  ret void
}

declare dso_local %struct.resource_list_entry* @STAILQ_FIRST(%struct.resource_list*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(%struct.resource_list*, i32) #1

declare dso_local i32 @free(%struct.resource_list_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
