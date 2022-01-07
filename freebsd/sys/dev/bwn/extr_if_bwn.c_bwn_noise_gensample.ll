; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_noise_gensample.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_noise_gensample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { i32 }

@BWN_SHARED = common dso_local global i32 0, align 4
@BWN_MACCMD = common dso_local global i32 0, align 4
@BWN_MACCMD_BGNOISE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*)* @bwn_noise_gensample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_noise_gensample(%struct.bwn_mac* %0) #0 {
  %2 = alloca %struct.bwn_mac*, align 8
  %3 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %2, align 8
  store i32 2139062143, i32* %3, align 4
  %4 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %5 = load i32, i32* @BWN_SHARED, align 4
  %6 = load i32, i32* %3, align 4
  %7 = and i32 %6, 65535
  %8 = call i32 @bwn_shm_write_2(%struct.bwn_mac* %4, i32 %5, i32 136, i32 %7)
  %9 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %10 = load i32, i32* @BWN_SHARED, align 4
  %11 = load i32, i32* %3, align 4
  %12 = and i32 %11, -65536
  %13 = lshr i32 %12, 16
  %14 = call i32 @bwn_shm_write_2(%struct.bwn_mac* %9, i32 %10, i32 138, i32 %13)
  %15 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %16 = load i32, i32* @BWN_MACCMD, align 4
  %17 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %18 = load i32, i32* @BWN_MACCMD, align 4
  %19 = call i32 @BWN_READ_4(%struct.bwn_mac* %17, i32 %18)
  %20 = load i32, i32* @BWN_MACCMD_BGNOISE, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @BWN_WRITE_4(%struct.bwn_mac* %15, i32 %16, i32 %21)
  ret void
}

declare dso_local i32 @bwn_shm_write_2(%struct.bwn_mac*, i32, i32, i32) #1

declare dso_local i32 @BWN_WRITE_4(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @BWN_READ_4(%struct.bwn_mac*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
