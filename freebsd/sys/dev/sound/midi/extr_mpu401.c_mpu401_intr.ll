; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/midi/extr_mpu401.c_mpu401_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/midi/extr_mpu401.c_mpu401_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpu401 = type { i32, i32, i64, i32 }

@MPU_INPUTBUSY = common dso_local global i32 0, align 4
@MPU_OUTPUTBUSY = common dso_local global i32 0, align 4
@M_TXEN = common dso_local global i32 0, align 4
@mpu401_timeout = common dso_local global i32 0, align 4
@MPU_INTR_BUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpu401*)* @mpu401_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpu401_intr(%struct.mpu401* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mpu401*, align 8
  %4 = alloca [16 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mpu401* %0, %struct.mpu401** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.mpu401*, %struct.mpu401** %3, align 8
  %8 = call i32 @STATUS(%struct.mpu401* %7)
  store i32 %8, i32* %6, align 4
  br label %9

9:                                                ; preds = %19, %1
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @MPU_INPUTBUSY, align 4
  %12 = and i32 %10, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 16
  br label %17

17:                                               ; preds = %14, %9
  %18 = phi i1 [ false, %9 ], [ %16, %14 ]
  br i1 %18, label %19, label %29

19:                                               ; preds = %17
  %20 = load %struct.mpu401*, %struct.mpu401** %3, align 8
  %21 = call i32 @READ(%struct.mpu401* %20)
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 %23
  store i32 %21, i32* %24, align 4
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %5, align 4
  %27 = load %struct.mpu401*, %struct.mpu401** %3, align 8
  %28 = call i32 @STATUS(%struct.mpu401* %27)
  store i32 %28, i32* %6, align 4
  br label %9

29:                                               ; preds = %17
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load %struct.mpu401*, %struct.mpu401** %3, align 8
  %34 = getelementptr inbounds %struct.mpu401, %struct.mpu401* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 0
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @midi_in(i32 %35, i32* %36, i32 %37)
  br label %39

39:                                               ; preds = %32, %29
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %63, %39
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @MPU_OUTPUTBUSY, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* %5, align 4
  %47 = icmp slt i32 %46, 16
  br label %48

48:                                               ; preds = %45, %40
  %49 = phi i1 [ false, %40 ], [ %47, %45 ]
  br i1 %49, label %50, label %68

50:                                               ; preds = %48
  %51 = load %struct.mpu401*, %struct.mpu401** %3, align 8
  %52 = getelementptr inbounds %struct.mpu401, %struct.mpu401* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 0
  %55 = call i64 @midi_out(i32 %53, i32* %54, i32 1)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %50
  %58 = load %struct.mpu401*, %struct.mpu401** %3, align 8
  %59 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 0
  %60 = load i32, i32* %59, align 16
  %61 = call i32 @WRITE(%struct.mpu401* %58, i32 %60)
  br label %63

62:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  br label %95

63:                                               ; preds = %57
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %5, align 4
  %66 = load %struct.mpu401*, %struct.mpu401** %3, align 8
  %67 = call i32 @STATUS(%struct.mpu401* %66)
  store i32 %67, i32* %6, align 4
  br label %40

68:                                               ; preds = %48
  %69 = load %struct.mpu401*, %struct.mpu401** %3, align 8
  %70 = getelementptr inbounds %struct.mpu401, %struct.mpu401* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @M_TXEN, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %68
  %76 = load %struct.mpu401*, %struct.mpu401** %3, align 8
  %77 = getelementptr inbounds %struct.mpu401, %struct.mpu401* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = load %struct.mpu401*, %struct.mpu401** %3, align 8
  %82 = getelementptr inbounds %struct.mpu401, %struct.mpu401* %81, i32 0, i32 1
  %83 = load i32, i32* @mpu401_timeout, align 4
  %84 = load %struct.mpu401*, %struct.mpu401** %3, align 8
  %85 = call i32 @callout_reset(i32* %82, i32 1, i32 %83, %struct.mpu401* %84)
  br label %86

86:                                               ; preds = %80, %75, %68
  %87 = load %struct.mpu401*, %struct.mpu401** %3, align 8
  %88 = getelementptr inbounds %struct.mpu401, %struct.mpu401* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @M_TXEN, align 4
  %91 = and i32 %89, %90
  %92 = load i32, i32* @M_TXEN, align 4
  %93 = icmp eq i32 %91, %92
  %94 = zext i1 %93 to i32
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %86, %62
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i32 @STATUS(%struct.mpu401*) #1

declare dso_local i32 @READ(%struct.mpu401*) #1

declare dso_local i32 @midi_in(i32, i32*, i32) #1

declare dso_local i64 @midi_out(i32, i32*, i32) #1

declare dso_local i32 @WRITE(%struct.mpu401*, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.mpu401*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
