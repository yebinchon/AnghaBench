; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_fw_upgrade.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_fw_upgrade.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.fw_hdr = type { i32 }

@FW_HDR_MAGIC_BOOTSTRAP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_fw_upgrade(%struct.adapter* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.fw_hdr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i32*, i32** %9, align 8
  %16 = bitcast i32* %15 to %struct.fw_hdr*
  store %struct.fw_hdr* %16, %struct.fw_hdr** %12, align 8
  %17 = load %struct.fw_hdr*, %struct.fw_hdr** %12, align 8
  %18 = getelementptr inbounds %struct.fw_hdr, %struct.fw_hdr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @be32_to_cpu(i32 %19)
  %21 = load i64, i64* @FW_HDR_MAGIC_BOOTSTRAP, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %13, align 4
  %24 = load %struct.adapter*, %struct.adapter** %7, align 8
  %25 = load %struct.fw_hdr*, %struct.fw_hdr** %12, align 8
  %26 = call i32 @t4_fw_matches_chip(%struct.adapter* %24, %struct.fw_hdr* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %5
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %63

31:                                               ; preds = %5
  %32 = load i32, i32* %13, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %47, label %34

34:                                               ; preds = %31
  %35 = load %struct.adapter*, %struct.adapter** %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @t4_fw_halt(%struct.adapter* %35, i32 %36, i32 %37)
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %14, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %34
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %14, align 4
  store i32 %45, i32* %6, align 4
  br label %63

46:                                               ; preds = %41, %34
  br label %47

47:                                               ; preds = %46, %31
  %48 = load %struct.adapter*, %struct.adapter** %7, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @t4_load_fw(%struct.adapter* %48, i32* %49, i32 %50)
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %14, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %47
  %55 = load i32, i32* %13, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54, %47
  %58 = load i32, i32* %14, align 4
  store i32 %58, i32* %6, align 4
  br label %63

59:                                               ; preds = %54
  %60 = load %struct.adapter*, %struct.adapter** %7, align 8
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @t4_fw_restart(%struct.adapter* %60, i32 %61)
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %59, %57, %44, %28
  %64 = load i32, i32* %6, align 4
  ret i32 %64
}

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @t4_fw_matches_chip(%struct.adapter*, %struct.fw_hdr*) #1

declare dso_local i32 @t4_fw_halt(%struct.adapter*, i32, i32) #1

declare dso_local i32 @t4_load_fw(%struct.adapter*, i32*, i32) #1

declare dso_local i32 @t4_fw_restart(%struct.adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
