; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_fw_matches_chip.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_fw_matches_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.fw_hdr = type { i64 }

@FW_HDR_CHIP_T4 = common dso_local global i64 0, align 8
@FW_HDR_CHIP_T5 = common dso_local global i64 0, align 8
@FW_HDR_CHIP_T6 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"FW image (%d) is not suitable for this adapter (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, %struct.fw_hdr*)* @t4_fw_matches_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t4_fw_matches_chip(%struct.adapter* %0, %struct.fw_hdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.fw_hdr*, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store %struct.fw_hdr* %1, %struct.fw_hdr** %5, align 8
  %6 = load %struct.adapter*, %struct.adapter** %4, align 8
  %7 = call i64 @is_t4(%struct.adapter* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load %struct.fw_hdr*, %struct.fw_hdr** %5, align 8
  %11 = getelementptr inbounds %struct.fw_hdr, %struct.fw_hdr* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @FW_HDR_CHIP_T4, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %35, label %15

15:                                               ; preds = %9, %2
  %16 = load %struct.adapter*, %struct.adapter** %4, align 8
  %17 = call i64 @is_t5(%struct.adapter* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = load %struct.fw_hdr*, %struct.fw_hdr** %5, align 8
  %21 = getelementptr inbounds %struct.fw_hdr, %struct.fw_hdr* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @FW_HDR_CHIP_T5, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %35, label %25

25:                                               ; preds = %19, %15
  %26 = load %struct.adapter*, %struct.adapter** %4, align 8
  %27 = call i64 @is_t6(%struct.adapter* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = load %struct.fw_hdr*, %struct.fw_hdr** %5, align 8
  %31 = getelementptr inbounds %struct.fw_hdr, %struct.fw_hdr* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @FW_HDR_CHIP_T6, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29, %19, %9
  store i32 1, i32* %3, align 4
  br label %44

36:                                               ; preds = %29, %25
  %37 = load %struct.adapter*, %struct.adapter** %4, align 8
  %38 = load %struct.fw_hdr*, %struct.fw_hdr** %5, align 8
  %39 = getelementptr inbounds %struct.fw_hdr, %struct.fw_hdr* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.adapter*, %struct.adapter** %4, align 8
  %42 = call i32 @chip_id(%struct.adapter* %41)
  %43 = call i32 @CH_ERR(%struct.adapter* %37, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i64 %40, i32 %42)
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %36, %35
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i64 @is_t4(%struct.adapter*) #1

declare dso_local i64 @is_t5(%struct.adapter*) #1

declare dso_local i64 @is_t6(%struct.adapter*) #1

declare dso_local i32 @CH_ERR(%struct.adapter*, i8*, i64, i32) #1

declare dso_local i32 @chip_id(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
