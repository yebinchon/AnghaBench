; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_hdspe.c_hdspe_map_dmabuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_hdspe.c_hdspe_map_dmabuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32, i32 }

@HDSPE_MAX_SLOTS = common dso_local global i32 0, align 4
@HDSPE_PAGE_ADDR_BUF_OUT = common dso_local global i64 0, align 8
@HDSPE_PAGE_ADDR_BUF_IN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sc_info*)* @hdspe_map_dmabuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdspe_map_dmabuf(%struct.sc_info* %0) #0 {
  %2 = alloca %struct.sc_info*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.sc_info* %0, %struct.sc_info** %2, align 8
  %6 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %7 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @vtophys(i32 %8)
  store i64 %9, i64* %3, align 8
  %10 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %11 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @vtophys(i32 %12)
  store i64 %13, i64* %4, align 8
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %44, %1
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @HDSPE_MAX_SLOTS, align 4
  %17 = mul nsw i32 %16, 16
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %47

19:                                               ; preds = %14
  %20 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %21 = load i64, i64* @HDSPE_PAGE_ADDR_BUF_OUT, align 8
  %22 = load i32, i32* %5, align 4
  %23 = mul nsw i32 4, %22
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %21, %24
  %26 = load i64, i64* %3, align 8
  %27 = load i32, i32* %5, align 4
  %28 = mul nsw i32 %27, 4096
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %26, %29
  %31 = call i32 @hdspe_write_4(%struct.sc_info* %20, i64 %25, i64 %30)
  %32 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %33 = load i64, i64* @HDSPE_PAGE_ADDR_BUF_IN, align 8
  %34 = load i32, i32* %5, align 4
  %35 = mul nsw i32 4, %34
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %33, %36
  %38 = load i64, i64* %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = mul nsw i32 %39, 4096
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %38, %41
  %43 = call i32 @hdspe_write_4(%struct.sc_info* %32, i64 %37, i64 %42)
  br label %44

44:                                               ; preds = %19
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %14

47:                                               ; preds = %14
  ret void
}

declare dso_local i64 @vtophys(i32) #1

declare dso_local i32 @hdspe_write_4(%struct.sc_info*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
