; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmc.c_mmc_wait_for_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmc.c_mmc_wait_for_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_softc = type { i32 }
%struct.mmc_command = type { i32, i32, i32, i32*, i32* }

@MMC_RSP_136 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_softc*, i32, i32, i32, i32*, i32)* @mmc_wait_for_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_wait_for_command(%struct.mmc_softc* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mmc_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.mmc_command, align 8
  %15 = alloca i32, align 4
  store %struct.mmc_softc* %0, %struct.mmc_softc** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = call i32 @memset(%struct.mmc_command* %14, i32 0, i32 32)
  %17 = load i32, i32* %9, align 4
  %18 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %14, i32 0, i32 0
  store i32 %17, i32* %18, align 8
  %19 = load i32, i32* %10, align 4
  %20 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %14, i32 0, i32 1
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* %11, align 4
  %22 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %14, i32 0, i32 2
  store i32 %21, i32* %22, align 8
  %23 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %14, i32 0, i32 4
  store i32* null, i32** %23, align 8
  %24 = load %struct.mmc_softc*, %struct.mmc_softc** %8, align 8
  %25 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.mmc_softc*, %struct.mmc_softc** %8, align 8
  %28 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %13, align 4
  %31 = call i32 @mmc_wait_for_cmd(i32 %26, i32 %29, %struct.mmc_command* %14, i32 %30)
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* %15, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %6
  %35 = load i32, i32* %15, align 4
  store i32 %35, i32* %7, align 4
  br label %57

36:                                               ; preds = %6
  %37 = load i32*, i32** %12, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %56

39:                                               ; preds = %36
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @MMC_RSP_136, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load i32*, i32** %12, align 8
  %46 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %14, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @memcpy(i32* %45, i32* %47, i32 16)
  br label %55

49:                                               ; preds = %39
  %50 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %14, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %12, align 8
  store i32 %53, i32* %54, align 4
  br label %55

55:                                               ; preds = %49, %44
  br label %56

56:                                               ; preds = %55, %36
  store i32 0, i32* %7, align 4
  br label %57

57:                                               ; preds = %56, %34
  %58 = load i32, i32* %7, align 4
  ret i32 %58
}

declare dso_local i32 @memset(%struct.mmc_command*, i32, i32) #1

declare dso_local i32 @mmc_wait_for_cmd(i32, i32, %struct.mmc_command*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
