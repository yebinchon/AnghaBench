; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_update_on_link_change.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_update_on_link_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_admin_aenq_entry = type { i32 }
%struct.ena_adapter = type { i32, i32 }
%struct.ena_admin_aenq_link_change_desc = type { i32 }

@ENA_ADMIN_AENQ_LINK_CHANGE_DESC_LINK_STATUS_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"link is UP\0A\00", align 1
@ENA_FLAG_LINK_UP = common dso_local global i32 0, align 4
@ENA_FLAG_ONGOING_RESET = common dso_local global i32 0, align 4
@LINK_STATE_UP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"link is DOWN\0A\00", align 1
@LINK_STATE_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ena_admin_aenq_entry*)* @ena_update_on_link_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ena_update_on_link_change(i8* %0, %struct.ena_admin_aenq_entry* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ena_admin_aenq_entry*, align 8
  %5 = alloca %struct.ena_adapter*, align 8
  %6 = alloca %struct.ena_admin_aenq_link_change_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.ena_admin_aenq_entry* %1, %struct.ena_admin_aenq_entry** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.ena_adapter*
  store %struct.ena_adapter* %10, %struct.ena_adapter** %5, align 8
  %11 = load %struct.ena_admin_aenq_entry*, %struct.ena_admin_aenq_entry** %4, align 8
  %12 = bitcast %struct.ena_admin_aenq_entry* %11 to %struct.ena_admin_aenq_link_change_desc*
  store %struct.ena_admin_aenq_link_change_desc* %12, %struct.ena_admin_aenq_link_change_desc** %6, align 8
  %13 = load %struct.ena_adapter*, %struct.ena_adapter** %5, align 8
  %14 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  %16 = load %struct.ena_admin_aenq_link_change_desc*, %struct.ena_admin_aenq_link_change_desc** %6, align 8
  %17 = getelementptr inbounds %struct.ena_admin_aenq_link_change_desc, %struct.ena_admin_aenq_link_change_desc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @ENA_ADMIN_AENQ_LINK_CHANGE_DESC_LINK_STATUS_MASK, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %2
  %24 = load %struct.ena_adapter*, %struct.ena_adapter** %5, align 8
  %25 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @device_printf(i32 %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ENA_FLAG_LINK_UP, align 4
  %29 = load %struct.ena_adapter*, %struct.ena_adapter** %5, align 8
  %30 = call i32 @ENA_FLAG_SET_ATOMIC(i32 %28, %struct.ena_adapter* %29)
  %31 = load i32, i32* @ENA_FLAG_ONGOING_RESET, align 4
  %32 = load %struct.ena_adapter*, %struct.ena_adapter** %5, align 8
  %33 = call i32 @ENA_FLAG_ISSET(i32 %31, %struct.ena_adapter* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %23
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @LINK_STATE_UP, align 4
  %38 = call i32 @if_link_state_change(i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %35, %23
  br label %51

40:                                               ; preds = %2
  %41 = load %struct.ena_adapter*, %struct.ena_adapter** %5, align 8
  %42 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @device_printf(i32 %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @LINK_STATE_DOWN, align 4
  %47 = call i32 @if_link_state_change(i32 %45, i32 %46)
  %48 = load i32, i32* @ENA_FLAG_LINK_UP, align 4
  %49 = load %struct.ena_adapter*, %struct.ena_adapter** %5, align 8
  %50 = call i32 @ENA_FLAG_CLEAR_ATOMIC(i32 %48, %struct.ena_adapter* %49)
  br label %51

51:                                               ; preds = %40, %39
  ret void
}

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @ENA_FLAG_SET_ATOMIC(i32, %struct.ena_adapter*) #1

declare dso_local i32 @ENA_FLAG_ISSET(i32, %struct.ena_adapter*) #1

declare dso_local i32 @if_link_state_change(i32, i32) #1

declare dso_local i32 @ENA_FLAG_CLEAR_ATOMIC(i32, %struct.ena_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
