; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/extr_if_rtwn_efuse.c_rtwn_efuse_read_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/extr_if_rtwn_efuse.c_rtwn_efuse_read_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@RTWN_DEBUG_ROM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"rom[0x%03X] == 0x%02X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtwn_softc*, i32*, i32, i32)* @rtwn_efuse_read_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtwn_efuse_read_data(%struct.rtwn_softc* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtwn_softc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %12, align 4
  br label %14

14:                                               ; preds = %75, %4
  %15 = load i32, i32* %12, align 4
  %16 = icmp slt i32 %15, 4
  br i1 %16, label %17, label %78

17:                                               ; preds = %14
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %12, align 4
  %20 = shl i32 1, %19
  %21 = and i32 %18, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %75

24:                                               ; preds = %17
  %25 = load i32, i32* %8, align 4
  %26 = mul nsw i32 %25, 8
  %27 = load i32, i32* %12, align 4
  %28 = mul nsw i32 %27, 2
  %29 = add nsw i32 %26, %28
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = add nsw i32 %30, 1
  %32 = load %struct.rtwn_softc*, %struct.rtwn_softc** %6, align 8
  %33 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp sge i32 %31, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %24
  %37 = load i32, i32* @EFAULT, align 4
  store i32 %37, i32* %5, align 4
  br label %79

38:                                               ; preds = %24
  %39 = load %struct.rtwn_softc*, %struct.rtwn_softc** %6, align 8
  %40 = call i32 @rtwn_efuse_read_next(%struct.rtwn_softc* %39, i32* %10)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* %13, align 4
  store i32 %44, i32* %5, align 4
  br label %79

45:                                               ; preds = %38
  %46 = load %struct.rtwn_softc*, %struct.rtwn_softc** %6, align 8
  %47 = load i32, i32* @RTWN_DEBUG_ROM, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @RTWN_DPRINTF(%struct.rtwn_softc* %46, i32 %47, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %49)
  %51 = load i32, i32* %10, align 4
  %52 = load i32*, i32** %7, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %51, i32* %55, align 4
  %56 = load %struct.rtwn_softc*, %struct.rtwn_softc** %6, align 8
  %57 = call i32 @rtwn_efuse_read_next(%struct.rtwn_softc* %56, i32* %10)
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %45
  %61 = load i32, i32* %13, align 4
  store i32 %61, i32* %5, align 4
  br label %79

62:                                               ; preds = %45
  %63 = load %struct.rtwn_softc*, %struct.rtwn_softc** %6, align 8
  %64 = load i32, i32* @RTWN_DEBUG_ROM, align 4
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, 1
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @RTWN_DPRINTF(%struct.rtwn_softc* %63, i32 %64, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %67)
  %69 = load i32, i32* %10, align 4
  %70 = load i32*, i32** %7, align 8
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  store i32 %69, i32* %74, align 4
  br label %75

75:                                               ; preds = %62, %23
  %76 = load i32, i32* %12, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %12, align 4
  br label %14

78:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %78, %60, %43, %36
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i32 @rtwn_efuse_read_next(%struct.rtwn_softc*, i32*) #1

declare dso_local i32 @RTWN_DPRINTF(%struct.rtwn_softc*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
