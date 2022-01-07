; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_check_blocks_with_parity3.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_check_blocks_with_parity3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"MCP ROM\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"MCP UMP RX\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"MCP UMP TX\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"MCP SCPAD\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*, i32, i32, i32*, i32)* @bxe_check_blocks_with_parity3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_check_blocks_with_parity3(%struct.bxe_softc* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.bxe_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %12, align 4
  br label %13

13:                                               ; preds = %75, %5
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %78

16:                                               ; preds = %13
  %17 = load i32, i32* %12, align 4
  %18 = shl i32 1, %17
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %11, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %74

23:                                               ; preds = %16
  %24 = load i32, i32* %11, align 4
  switch i32 %24, label %69 [
    i32 131, label %25
    i32 129, label %36
    i32 128, label %47
    i32 130, label %58
  ]

25:                                               ; preds = %23
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %8, align 4
  %32 = call i32 @bxe_print_next_block(%struct.bxe_softc* %29, i32 %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %28, %25
  %34 = load i32, i32* @TRUE, align 4
  %35 = load i32*, i32** %9, align 8
  store i32 %34, i32* %35, align 4
  br label %69

36:                                               ; preds = %23
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %8, align 4
  %43 = call i32 @bxe_print_next_block(%struct.bxe_softc* %40, i32 %41, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %39, %36
  %45 = load i32, i32* @TRUE, align 4
  %46 = load i32*, i32** %9, align 8
  store i32 %45, i32* %46, align 4
  br label %69

47:                                               ; preds = %23
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  %54 = call i32 @bxe_print_next_block(%struct.bxe_softc* %51, i32 %52, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %55

55:                                               ; preds = %50, %47
  %56 = load i32, i32* @TRUE, align 4
  %57 = load i32*, i32** %9, align 8
  store i32 %56, i32* %57, align 4
  br label %69

58:                                               ; preds = %23
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %8, align 4
  %65 = call i32 @bxe_print_next_block(%struct.bxe_softc* %62, i32 %63, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %66

66:                                               ; preds = %61, %58
  %67 = load i32, i32* @TRUE, align 4
  %68 = load i32*, i32** %9, align 8
  store i32 %67, i32* %68, align 4
  br label %69

69:                                               ; preds = %23, %66, %55, %44, %33
  %70 = load i32, i32* %11, align 4
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %7, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %7, align 4
  br label %74

74:                                               ; preds = %69, %16
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %12, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %12, align 4
  br label %13

78:                                               ; preds = %13
  %79 = load i32, i32* %8, align 4
  ret i32 %79
}

declare dso_local i32 @bxe_print_next_block(%struct.bxe_softc*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
