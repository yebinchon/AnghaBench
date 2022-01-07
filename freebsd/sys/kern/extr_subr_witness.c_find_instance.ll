; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_witness.c_find_instance.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_witness.c_find_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lock_instance = type { %struct.lock_object* }
%struct.lock_list_entry = type { i32, %struct.lock_instance*, %struct.lock_list_entry* }
%struct.lock_object = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lock_instance* (%struct.lock_list_entry*, %struct.lock_object*)* @find_instance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lock_instance* @find_instance(%struct.lock_list_entry* %0, %struct.lock_object* %1) #0 {
  %3 = alloca %struct.lock_instance*, align 8
  %4 = alloca %struct.lock_list_entry*, align 8
  %5 = alloca %struct.lock_object*, align 8
  %6 = alloca %struct.lock_list_entry*, align 8
  %7 = alloca %struct.lock_instance*, align 8
  %8 = alloca i32, align 4
  store %struct.lock_list_entry* %0, %struct.lock_list_entry** %4, align 8
  store %struct.lock_object* %1, %struct.lock_object** %5, align 8
  %9 = load %struct.lock_list_entry*, %struct.lock_list_entry** %4, align 8
  store %struct.lock_list_entry* %9, %struct.lock_list_entry** %6, align 8
  br label %10

10:                                               ; preds = %40, %2
  %11 = load %struct.lock_list_entry*, %struct.lock_list_entry** %6, align 8
  %12 = icmp ne %struct.lock_list_entry* %11, null
  br i1 %12, label %13, label %44

13:                                               ; preds = %10
  %14 = load %struct.lock_list_entry*, %struct.lock_list_entry** %6, align 8
  %15 = getelementptr inbounds %struct.lock_list_entry, %struct.lock_list_entry* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sub nsw i32 %16, 1
  store i32 %17, i32* %8, align 4
  br label %18

18:                                               ; preds = %36, %13
  %19 = load i32, i32* %8, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %18
  %22 = load %struct.lock_list_entry*, %struct.lock_list_entry** %6, align 8
  %23 = getelementptr inbounds %struct.lock_list_entry, %struct.lock_list_entry* %22, i32 0, i32 1
  %24 = load %struct.lock_instance*, %struct.lock_instance** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.lock_instance, %struct.lock_instance* %24, i64 %26
  store %struct.lock_instance* %27, %struct.lock_instance** %7, align 8
  %28 = load %struct.lock_instance*, %struct.lock_instance** %7, align 8
  %29 = getelementptr inbounds %struct.lock_instance, %struct.lock_instance* %28, i32 0, i32 0
  %30 = load %struct.lock_object*, %struct.lock_object** %29, align 8
  %31 = load %struct.lock_object*, %struct.lock_object** %5, align 8
  %32 = icmp eq %struct.lock_object* %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %21
  %34 = load %struct.lock_instance*, %struct.lock_instance** %7, align 8
  store %struct.lock_instance* %34, %struct.lock_instance** %3, align 8
  br label %45

35:                                               ; preds = %21
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %8, align 4
  br label %18

39:                                               ; preds = %18
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.lock_list_entry*, %struct.lock_list_entry** %6, align 8
  %42 = getelementptr inbounds %struct.lock_list_entry, %struct.lock_list_entry* %41, i32 0, i32 2
  %43 = load %struct.lock_list_entry*, %struct.lock_list_entry** %42, align 8
  store %struct.lock_list_entry* %43, %struct.lock_list_entry** %6, align 8
  br label %10

44:                                               ; preds = %10
  store %struct.lock_instance* null, %struct.lock_instance** %3, align 8
  br label %45

45:                                               ; preds = %44, %33
  %46 = load %struct.lock_instance*, %struct.lock_instance** %3, align 8
  ret %struct.lock_instance* %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
