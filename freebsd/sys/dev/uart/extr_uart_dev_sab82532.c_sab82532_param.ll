; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_sab82532.c_sab82532_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_sab82532.c_sab82532_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_bas = type { i32 }

@SAB_DAFO_CHL_CS8 = common dso_local global i32 0, align 4
@SAB_DAFO_CHL_CS7 = common dso_local global i32 0, align 4
@SAB_DAFO_CHL_CS6 = common dso_local global i32 0, align 4
@SAB_DAFO_CHL_CS5 = common dso_local global i32 0, align 4
@SAB_DAFO_STOP = common dso_local global i32 0, align 4
@SAB_DAFO_PAR_EVEN = common dso_local global i32 0, align 4
@SAB_DAFO_PAR_MARK = common dso_local global i32 0, align 4
@SAB_DAFO_PAR_NONE = common dso_local global i32 0, align 4
@SAB_DAFO_PAR_ODD = common dso_local global i32 0, align 4
@SAB_DAFO_PAR_SPACE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SAB_BGR = common dso_local global i32 0, align 4
@SAB_TCR = common dso_local global i32 0, align 4
@SAB_CCR2 = common dso_local global i32 0, align 4
@SAB_CCR2_BR9 = common dso_local global i32 0, align 4
@SAB_CCR2_BR8 = common dso_local global i32 0, align 4
@SAB_DAFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_bas*, i32, i32, i32, i32)* @sab82532_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sab82532_param(%struct.uart_bas* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.uart_bas*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.uart_bas* %0, %struct.uart_bas** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp sge i32 %15, 8
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = load i32, i32* @SAB_DAFO_CHL_CS8, align 4
  store i32 %18, i32* %14, align 4
  br label %33

19:                                               ; preds = %5
  %20 = load i32, i32* %9, align 4
  %21 = icmp eq i32 %20, 7
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, i32* @SAB_DAFO_CHL_CS7, align 4
  store i32 %23, i32* %14, align 4
  br label %32

24:                                               ; preds = %19
  %25 = load i32, i32* %9, align 4
  %26 = icmp eq i32 %25, 6
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* @SAB_DAFO_CHL_CS6, align 4
  store i32 %28, i32* %14, align 4
  br label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @SAB_DAFO_CHL_CS5, align 4
  store i32 %30, i32* %14, align 4
  br label %31

31:                                               ; preds = %29, %27
  br label %32

32:                                               ; preds = %31, %22
  br label %33

33:                                               ; preds = %32, %17
  %34 = load i32, i32* %10, align 4
  %35 = icmp sgt i32 %34, 1
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i32, i32* @SAB_DAFO_STOP, align 4
  %38 = load i32, i32* %14, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %14, align 4
  br label %40

40:                                               ; preds = %36, %33
  %41 = load i32, i32* %11, align 4
  switch i32 %41, label %62 [
    i32 132, label %42
    i32 131, label %46
    i32 130, label %50
    i32 129, label %54
    i32 128, label %58
  ]

42:                                               ; preds = %40
  %43 = load i32, i32* @SAB_DAFO_PAR_EVEN, align 4
  %44 = load i32, i32* %14, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %14, align 4
  br label %64

46:                                               ; preds = %40
  %47 = load i32, i32* @SAB_DAFO_PAR_MARK, align 4
  %48 = load i32, i32* %14, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %14, align 4
  br label %64

50:                                               ; preds = %40
  %51 = load i32, i32* @SAB_DAFO_PAR_NONE, align 4
  %52 = load i32, i32* %14, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %14, align 4
  br label %64

54:                                               ; preds = %40
  %55 = load i32, i32* @SAB_DAFO_PAR_ODD, align 4
  %56 = load i32, i32* %14, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %14, align 4
  br label %64

58:                                               ; preds = %40
  %59 = load i32, i32* @SAB_DAFO_PAR_SPACE, align 4
  %60 = load i32, i32* %14, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %14, align 4
  br label %64

62:                                               ; preds = %40
  %63 = load i32, i32* @EINVAL, align 4
  store i32 %63, i32* %6, align 4
  br label %122

64:                                               ; preds = %58, %54, %50, %46, %42
  %65 = load i32, i32* %8, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %115

67:                                               ; preds = %64
  %68 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %69 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @sab82532_divisor(i32 %70, i32 %71)
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %67
  %76 = load i32, i32* @EINVAL, align 4
  store i32 %76, i32* %6, align 4
  br label %122

77:                                               ; preds = %67
  %78 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %79 = load i32, i32* @SAB_BGR, align 4
  %80 = load i32, i32* %12, align 4
  %81 = and i32 %80, 255
  %82 = call i32 @uart_setreg(%struct.uart_bas* %78, i32 %79, i32 %81)
  %83 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %84 = call i32 @uart_barrier(%struct.uart_bas* %83)
  %85 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %86 = load i32, i32* @SAB_TCR, align 4
  %87 = load i32, i32* %12, align 4
  %88 = and i32 %87, 255
  %89 = call i32 @uart_setreg(%struct.uart_bas* %85, i32 %86, i32 %88)
  %90 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %91 = call i32 @uart_barrier(%struct.uart_bas* %90)
  %92 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %93 = load i32, i32* @SAB_CCR2, align 4
  %94 = call i32 @uart_getreg(%struct.uart_bas* %92, i32 %93)
  store i32 %94, i32* %13, align 4
  %95 = load i32, i32* @SAB_CCR2_BR9, align 4
  %96 = load i32, i32* @SAB_CCR2_BR8, align 4
  %97 = or i32 %95, %96
  %98 = xor i32 %97, -1
  %99 = load i32, i32* %13, align 4
  %100 = and i32 %99, %98
  store i32 %100, i32* %13, align 4
  %101 = load i32, i32* %12, align 4
  %102 = ashr i32 %101, 2
  %103 = load i32, i32* @SAB_CCR2_BR9, align 4
  %104 = load i32, i32* @SAB_CCR2_BR8, align 4
  %105 = or i32 %103, %104
  %106 = and i32 %102, %105
  %107 = load i32, i32* %13, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %13, align 4
  %109 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %110 = load i32, i32* @SAB_CCR2, align 4
  %111 = load i32, i32* %13, align 4
  %112 = call i32 @uart_setreg(%struct.uart_bas* %109, i32 %110, i32 %111)
  %113 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %114 = call i32 @uart_barrier(%struct.uart_bas* %113)
  br label %115

115:                                              ; preds = %77, %64
  %116 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %117 = load i32, i32* @SAB_DAFO, align 4
  %118 = load i32, i32* %14, align 4
  %119 = call i32 @uart_setreg(%struct.uart_bas* %116, i32 %117, i32 %118)
  %120 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %121 = call i32 @uart_barrier(%struct.uart_bas* %120)
  store i32 0, i32* %6, align 4
  br label %122

122:                                              ; preds = %115, %75, %62
  %123 = load i32, i32* %6, align 4
  ret i32 %123
}

declare dso_local i32 @sab82532_divisor(i32, i32) #1

declare dso_local i32 @uart_setreg(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @uart_barrier(%struct.uart_bas*) #1

declare dso_local i32 @uart_getreg(%struct.uart_bas*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
