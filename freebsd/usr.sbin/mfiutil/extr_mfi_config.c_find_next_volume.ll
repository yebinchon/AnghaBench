; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_config.c_find_next_volume.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_config.c_find_next_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_id_state = type { i64, i32, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.config_id_state*)* @find_next_volume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @find_next_volume(%struct.config_id_state* %0) #0 {
  %2 = alloca %struct.config_id_state*, align 8
  %3 = alloca i32, align 4
  store %struct.config_id_state* %0, %struct.config_id_state** %2, align 8
  %4 = load %struct.config_id_state*, %struct.config_id_state** %2, align 8
  %5 = getelementptr inbounds %struct.config_id_state, %struct.config_id_state* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add nsw i64 %6, 1
  store i64 %7, i64* %5, align 8
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %32, %1
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.config_id_state*, %struct.config_id_state** %2, align 8
  %11 = getelementptr inbounds %struct.config_id_state, %struct.config_id_state* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %35

14:                                               ; preds = %8
  %15 = load %struct.config_id_state*, %struct.config_id_state** %2, align 8
  %16 = getelementptr inbounds %struct.config_id_state, %struct.config_id_state* %15, i32 0, i32 2
  %17 = load i64*, i64** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %17, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.config_id_state*, %struct.config_id_state** %2, align 8
  %23 = getelementptr inbounds %struct.config_id_state, %struct.config_id_state* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %14
  %27 = load %struct.config_id_state*, %struct.config_id_state** %2, align 8
  %28 = getelementptr inbounds %struct.config_id_state, %struct.config_id_state* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* %28, align 8
  br label %31

31:                                               ; preds = %26, %14
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %8

35:                                               ; preds = %8
  %36 = load %struct.config_id_state*, %struct.config_id_state** %2, align 8
  %37 = getelementptr inbounds %struct.config_id_state, %struct.config_id_state* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  ret i64 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
