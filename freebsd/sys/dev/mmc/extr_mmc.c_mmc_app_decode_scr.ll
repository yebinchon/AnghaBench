; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmc.c_mmc_app_decode_scr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmc.c_mmc_app_decode_scr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_scr = type { i8*, i8* }

@.str = private unnamed_addr constant [39 x i8] c"Unrecognised SCR structure version %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.mmc_scr*)* @mmc_app_decode_scr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_app_decode_scr(i32* %0, %struct.mmc_scr* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.mmc_scr*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.mmc_scr* %1, %struct.mmc_scr** %4, align 8
  %6 = load %struct.mmc_scr*, %struct.mmc_scr** %4, align 8
  %7 = call i32 @memset(%struct.mmc_scr* %6, i32 0, i32 16)
  %8 = load i32*, i32** %3, align 8
  %9 = call i8* @mmc_get_bits(i32* %8, i32 64, i32 60, i32 4)
  %10 = ptrtoint i8* %9 to i32
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %25

16:                                               ; preds = %2
  %17 = load i32*, i32** %3, align 8
  %18 = call i8* @mmc_get_bits(i32* %17, i32 64, i32 56, i32 4)
  %19 = load %struct.mmc_scr*, %struct.mmc_scr** %4, align 8
  %20 = getelementptr inbounds %struct.mmc_scr, %struct.mmc_scr* %19, i32 0, i32 1
  store i8* %18, i8** %20, align 8
  %21 = load i32*, i32** %3, align 8
  %22 = call i8* @mmc_get_bits(i32* %21, i32 64, i32 48, i32 4)
  %23 = load %struct.mmc_scr*, %struct.mmc_scr** %4, align 8
  %24 = getelementptr inbounds %struct.mmc_scr, %struct.mmc_scr* %23, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  br label %25

25:                                               ; preds = %16, %13
  ret void
}

declare dso_local i32 @memset(%struct.mmc_scr*, i32, i32) #1

declare dso_local i8* @mmc_get_bits(i32*, i32, i32, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
