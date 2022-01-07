; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_hf_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_hf_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { i32 }

@BWN_SHARED = common dso_local global i32 0, align 4
@BWN_SHARED_HFLO = common dso_local global i32 0, align 4
@BWN_SHARED_HFMI = common dso_local global i32 0, align 4
@BWN_SHARED_HFHI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bwn_hf_write(%struct.bwn_mac* %0, i32 %1) #0 {
  %3 = alloca %struct.bwn_mac*, align 8
  %4 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %6 = load i32, i32* @BWN_SHARED, align 4
  %7 = load i32, i32* @BWN_SHARED_HFLO, align 4
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = and i64 %9, 65535
  %11 = trunc i64 %10 to i32
  %12 = call i32 @bwn_shm_write_2(%struct.bwn_mac* %5, i32 %6, i32 %7, i32 %11)
  %13 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %14 = load i32, i32* @BWN_SHARED, align 4
  %15 = load i32, i32* @BWN_SHARED_HFMI, align 4
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = and i64 %17, 4294901760
  %19 = lshr i64 %18, 16
  %20 = trunc i64 %19 to i32
  %21 = call i32 @bwn_shm_write_2(%struct.bwn_mac* %13, i32 %14, i32 %15, i32 %20)
  %22 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %23 = load i32, i32* @BWN_SHARED, align 4
  %24 = load i32, i32* @BWN_SHARED_HFHI, align 4
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = and i64 %26, 281470681743360
  %28 = lshr i64 %27, 32
  %29 = trunc i64 %28 to i32
  %30 = call i32 @bwn_shm_write_2(%struct.bwn_mac* %22, i32 %23, i32 %24, i32 %29)
  ret void
}

declare dso_local i32 @bwn_shm_write_2(%struct.bwn_mac*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
