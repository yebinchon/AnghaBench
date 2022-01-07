; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmc.c_mmc_app_decode_sd_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmc.c_mmc_app_decode_sd_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_sd_status = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.mmc_sd_status*)* @mmc_app_decode_sd_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_app_decode_sd_status(i32* %0, %struct.mmc_sd_status* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.mmc_sd_status*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.mmc_sd_status* %1, %struct.mmc_sd_status** %4, align 8
  %5 = load %struct.mmc_sd_status*, %struct.mmc_sd_status** %4, align 8
  %6 = call i32 @memset(%struct.mmc_sd_status* %5, i32 0, i32 80)
  %7 = load i32*, i32** %3, align 8
  %8 = call i8* @mmc_get_bits(i32* %7, i32 512, i32 510, i32 2)
  %9 = load %struct.mmc_sd_status*, %struct.mmc_sd_status** %4, align 8
  %10 = getelementptr inbounds %struct.mmc_sd_status, %struct.mmc_sd_status* %9, i32 0, i32 9
  store i8* %8, i8** %10, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i8* @mmc_get_bits(i32* %11, i32 512, i32 509, i32 1)
  %13 = load %struct.mmc_sd_status*, %struct.mmc_sd_status** %4, align 8
  %14 = getelementptr inbounds %struct.mmc_sd_status, %struct.mmc_sd_status* %13, i32 0, i32 8
  store i8* %12, i8** %14, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = call i8* @mmc_get_bits(i32* %15, i32 512, i32 480, i32 16)
  %17 = load %struct.mmc_sd_status*, %struct.mmc_sd_status** %4, align 8
  %18 = getelementptr inbounds %struct.mmc_sd_status, %struct.mmc_sd_status* %17, i32 0, i32 7
  store i8* %16, i8** %18, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = call i8* @mmc_get_bits(i32* %19, i32 512, i32 448, i32 12)
  %21 = load %struct.mmc_sd_status*, %struct.mmc_sd_status** %4, align 8
  %22 = getelementptr inbounds %struct.mmc_sd_status, %struct.mmc_sd_status* %21, i32 0, i32 6
  store i8* %20, i8** %22, align 8
  %23 = load i32*, i32** %3, align 8
  %24 = call i8* @mmc_get_bits(i32* %23, i32 512, i32 440, i32 8)
  %25 = load %struct.mmc_sd_status*, %struct.mmc_sd_status** %4, align 8
  %26 = getelementptr inbounds %struct.mmc_sd_status, %struct.mmc_sd_status* %25, i32 0, i32 5
  store i8* %24, i8** %26, align 8
  %27 = load i32*, i32** %3, align 8
  %28 = call i8* @mmc_get_bits(i32* %27, i32 512, i32 432, i32 8)
  %29 = load %struct.mmc_sd_status*, %struct.mmc_sd_status** %4, align 8
  %30 = getelementptr inbounds %struct.mmc_sd_status, %struct.mmc_sd_status* %29, i32 0, i32 4
  store i8* %28, i8** %30, align 8
  %31 = load i32*, i32** %3, align 8
  %32 = call i8* @mmc_get_bits(i32* %31, i32 512, i32 428, i32 4)
  %33 = load %struct.mmc_sd_status*, %struct.mmc_sd_status** %4, align 8
  %34 = getelementptr inbounds %struct.mmc_sd_status, %struct.mmc_sd_status* %33, i32 0, i32 3
  store i8* %32, i8** %34, align 8
  %35 = load i32*, i32** %3, align 8
  %36 = call i8* @mmc_get_bits(i32* %35, i32 512, i32 408, i32 16)
  %37 = load %struct.mmc_sd_status*, %struct.mmc_sd_status** %4, align 8
  %38 = getelementptr inbounds %struct.mmc_sd_status, %struct.mmc_sd_status* %37, i32 0, i32 2
  store i8* %36, i8** %38, align 8
  %39 = load i32*, i32** %3, align 8
  %40 = call i8* @mmc_get_bits(i32* %39, i32 512, i32 402, i32 6)
  %41 = load %struct.mmc_sd_status*, %struct.mmc_sd_status** %4, align 8
  %42 = getelementptr inbounds %struct.mmc_sd_status, %struct.mmc_sd_status* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  %43 = load i32*, i32** %3, align 8
  %44 = call i8* @mmc_get_bits(i32* %43, i32 512, i32 400, i32 2)
  %45 = load %struct.mmc_sd_status*, %struct.mmc_sd_status** %4, align 8
  %46 = getelementptr inbounds %struct.mmc_sd_status, %struct.mmc_sd_status* %45, i32 0, i32 0
  store i8* %44, i8** %46, align 8
  ret void
}

declare dso_local i32 @memset(%struct.mmc_sd_status*, i32, i32) #1

declare dso_local i8* @mmc_get_bits(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
