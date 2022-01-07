; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_set_spio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_set_spio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }

@MISC_SPIO_SPIO4 = common dso_local global i32 0, align 4
@MISC_SPIO_SPIO5 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Invalid SPIO 0x%x mode 0x%x\0A\00", align 1
@HW_LOCK_RESOURCE_SPIO = common dso_local global i32 0, align 4
@MISC_REG_SPIO = common dso_local global i32 0, align 4
@MISC_SPIO_FLOAT = common dso_local global i32 0, align 4
@DBG_LOAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Set SPIO 0x%x -> output low\0A\00", align 1
@MISC_SPIO_FLOAT_POS = common dso_local global i32 0, align 4
@MISC_SPIO_CLR_POS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Set SPIO 0x%x -> output high\0A\00", align 1
@MISC_SPIO_SET_POS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Set SPIO 0x%x -> input\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*, i32, i32)* @bxe_set_spio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_set_spio(%struct.bxe_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bxe_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @MISC_SPIO_SPIO4, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @MISC_SPIO_SPIO5, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @BLOGE(%struct.bxe_softc* %17, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19)
  store i32 -1, i32* %4, align 4
  br label %82

21:                                               ; preds = %12, %3
  %22 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %23 = load i32, i32* @HW_LOCK_RESOURCE_SPIO, align 4
  %24 = call i32 @bxe_acquire_hw_lock(%struct.bxe_softc* %22, i32 %23)
  %25 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %26 = load i32, i32* @MISC_REG_SPIO, align 4
  %27 = call i32 @REG_RD(%struct.bxe_softc* %25, i32 %26)
  %28 = load i32, i32* @MISC_SPIO_FLOAT, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %7, align 4
  switch i32 %30, label %73 [
    i32 128, label %31
    i32 129, label %47
    i32 130, label %63
  ]

31:                                               ; preds = %21
  %32 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %33 = load i32, i32* @DBG_LOAD, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @BLOGD(%struct.bxe_softc* %32, i32 %33, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @MISC_SPIO_FLOAT_POS, align 4
  %38 = shl i32 %36, %37
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %8, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @MISC_SPIO_CLR_POS, align 4
  %44 = shl i32 %42, %43
  %45 = load i32, i32* %8, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %8, align 4
  br label %74

47:                                               ; preds = %21
  %48 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %49 = load i32, i32* @DBG_LOAD, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @BLOGD(%struct.bxe_softc* %48, i32 %49, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @MISC_SPIO_FLOAT_POS, align 4
  %54 = shl i32 %52, %53
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %8, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @MISC_SPIO_SET_POS, align 4
  %60 = shl i32 %58, %59
  %61 = load i32, i32* %8, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %8, align 4
  br label %74

63:                                               ; preds = %21
  %64 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %65 = load i32, i32* @DBG_LOAD, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @BLOGD(%struct.bxe_softc* %64, i32 %65, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @MISC_SPIO_FLOAT_POS, align 4
  %70 = shl i32 %68, %69
  %71 = load i32, i32* %8, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %8, align 4
  br label %74

73:                                               ; preds = %21
  br label %74

74:                                               ; preds = %73, %63, %47, %31
  %75 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %76 = load i32, i32* @MISC_REG_SPIO, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @REG_WR(%struct.bxe_softc* %75, i32 %76, i32 %77)
  %79 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %80 = load i32, i32* @HW_LOCK_RESOURCE_SPIO, align 4
  %81 = call i32 @bxe_release_hw_lock(%struct.bxe_softc* %79, i32 %80)
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %74, %16
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @BLOGE(%struct.bxe_softc*, i8*, i32, i32) #1

declare dso_local i32 @bxe_acquire_hw_lock(%struct.bxe_softc*, i32) #1

declare dso_local i32 @REG_RD(%struct.bxe_softc*, i32) #1

declare dso_local i32 @BLOGD(%struct.bxe_softc*, i32, i8*, i32) #1

declare dso_local i32 @REG_WR(%struct.bxe_softc*, i32, i32) #1

declare dso_local i32 @bxe_release_hw_lock(%struct.bxe_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
