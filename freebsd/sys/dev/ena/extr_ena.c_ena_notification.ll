; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_notification.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_notification.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_admin_aenq_entry = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.ena_adapter = type { i32 }
%struct.ena_admin_ena_hw_hints = type { i32 }

@ENA_ADMIN_NOTIFICATION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Invalid group(%x) expected %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Invalid aenq notification link state %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ena_admin_aenq_entry*)* @ena_notification to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ena_notification(i8* %0, %struct.ena_admin_aenq_entry* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ena_admin_aenq_entry*, align 8
  %5 = alloca %struct.ena_adapter*, align 8
  %6 = alloca %struct.ena_admin_ena_hw_hints*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.ena_admin_aenq_entry* %1, %struct.ena_admin_aenq_entry** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.ena_adapter*
  store %struct.ena_adapter* %8, %struct.ena_adapter** %5, align 8
  %9 = load %struct.ena_admin_aenq_entry*, %struct.ena_admin_aenq_entry** %4, align 8
  %10 = getelementptr inbounds %struct.ena_admin_aenq_entry, %struct.ena_admin_aenq_entry* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @ENA_ADMIN_NOTIFICATION, align 8
  %14 = icmp ne i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = load %struct.ena_admin_aenq_entry*, %struct.ena_admin_aenq_entry** %4, align 8
  %17 = getelementptr inbounds %struct.ena_admin_aenq_entry, %struct.ena_admin_aenq_entry* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ENA_ADMIN_NOTIFICATION, align 8
  %21 = call i32 @ENA_WARN(i32 %15, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %19, i64 %20)
  %22 = load %struct.ena_admin_aenq_entry*, %struct.ena_admin_aenq_entry** %4, align 8
  %23 = getelementptr inbounds %struct.ena_admin_aenq_entry, %struct.ena_admin_aenq_entry* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %33 [
    i32 128, label %26
  ]

26:                                               ; preds = %2
  %27 = load %struct.ena_admin_aenq_entry*, %struct.ena_admin_aenq_entry** %4, align 8
  %28 = getelementptr inbounds %struct.ena_admin_aenq_entry, %struct.ena_admin_aenq_entry* %27, i32 0, i32 1
  %29 = bitcast i32* %28 to %struct.ena_admin_ena_hw_hints*
  store %struct.ena_admin_ena_hw_hints* %29, %struct.ena_admin_ena_hw_hints** %6, align 8
  %30 = load %struct.ena_adapter*, %struct.ena_adapter** %5, align 8
  %31 = load %struct.ena_admin_ena_hw_hints*, %struct.ena_admin_ena_hw_hints** %6, align 8
  %32 = call i32 @ena_update_hints(%struct.ena_adapter* %30, %struct.ena_admin_ena_hw_hints* %31)
  br label %42

33:                                               ; preds = %2
  %34 = load %struct.ena_adapter*, %struct.ena_adapter** %5, align 8
  %35 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ena_admin_aenq_entry*, %struct.ena_admin_aenq_entry** %4, align 8
  %38 = getelementptr inbounds %struct.ena_admin_aenq_entry, %struct.ena_admin_aenq_entry* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @device_printf(i32 %36, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %33, %26
  ret void
}

declare dso_local i32 @ENA_WARN(i32, i8*, i64, i64) #1

declare dso_local i32 @ena_update_hints(%struct.ena_adapter*, %struct.ena_admin_ena_hw_hints*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
