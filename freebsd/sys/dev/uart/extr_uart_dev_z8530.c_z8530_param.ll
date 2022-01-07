; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_z8530.c_z8530_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_z8530.c_z8530_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_bas = type { i32 }

@RPC_RXE = common dso_local global i32 0, align 4
@MPM_CM16 = common dso_local global i32 0, align 4
@TPC_TXE = common dso_local global i32 0, align 4
@TPC_DTR = common dso_local global i32 0, align 4
@TPC_RTS = common dso_local global i32 0, align 4
@RPC_RB8 = common dso_local global i32 0, align 4
@TPC_TB8 = common dso_local global i32 0, align 4
@RPC_RB7 = common dso_local global i32 0, align 4
@TPC_TB7 = common dso_local global i32 0, align 4
@RPC_RB6 = common dso_local global i32 0, align 4
@TPC_TB6 = common dso_local global i32 0, align 4
@RPC_RB5 = common dso_local global i32 0, align 4
@TPC_TB5 = common dso_local global i32 0, align 4
@MPM_SB2 = common dso_local global i32 0, align 4
@MPM_SB1 = common dso_local global i32 0, align 4
@MPM_PE = common dso_local global i32 0, align 4
@MPM_EVEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@WR_MCB2 = common dso_local global i32 0, align 4
@UART_PCLK = common dso_local global i32 0, align 4
@WR_TCL = common dso_local global i32 0, align 4
@WR_TCH = common dso_local global i32 0, align 4
@WR_RPC = common dso_local global i32 0, align 4
@WR_MPM = common dso_local global i32 0, align 4
@WR_TPC = common dso_local global i32 0, align 4
@MCB2_BRGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_bas*, i32, i32, i32, i32, i32*)* @z8530_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @z8530_param(%struct.uart_bas* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.uart_bas*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.uart_bas* %0, %struct.uart_bas** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %18 = load i32, i32* @RPC_RXE, align 4
  store i32 %18, i32* %16, align 4
  %19 = load i32, i32* @MPM_CM16, align 4
  store i32 %19, i32* %15, align 4
  %20 = load i32, i32* @TPC_TXE, align 4
  %21 = load i32*, i32** %13, align 8
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @TPC_DTR, align 4
  %24 = load i32, i32* @TPC_RTS, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %22, %25
  %27 = or i32 %20, %26
  store i32 %27, i32* %17, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp sge i32 %28, 8
  br i1 %29, label %30, label %37

30:                                               ; preds = %6
  %31 = load i32, i32* @RPC_RB8, align 4
  %32 = load i32, i32* %16, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %16, align 4
  %34 = load i32, i32* @TPC_TB8, align 4
  %35 = load i32, i32* %17, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %17, align 4
  br label %66

37:                                               ; preds = %6
  %38 = load i32, i32* %10, align 4
  %39 = icmp eq i32 %38, 7
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load i32, i32* @RPC_RB7, align 4
  %42 = load i32, i32* %16, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %16, align 4
  %44 = load i32, i32* @TPC_TB7, align 4
  %45 = load i32, i32* %17, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %17, align 4
  br label %65

47:                                               ; preds = %37
  %48 = load i32, i32* %10, align 4
  %49 = icmp eq i32 %48, 6
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load i32, i32* @RPC_RB6, align 4
  %52 = load i32, i32* %16, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %16, align 4
  %54 = load i32, i32* @TPC_TB6, align 4
  %55 = load i32, i32* %17, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %17, align 4
  br label %64

57:                                               ; preds = %47
  %58 = load i32, i32* @RPC_RB5, align 4
  %59 = load i32, i32* %16, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %16, align 4
  %61 = load i32, i32* @TPC_TB5, align 4
  %62 = load i32, i32* %17, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %17, align 4
  br label %64

64:                                               ; preds = %57, %50
  br label %65

65:                                               ; preds = %64, %40
  br label %66

66:                                               ; preds = %65, %30
  %67 = load i32, i32* %11, align 4
  %68 = icmp sgt i32 %67, 1
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = load i32, i32* @MPM_SB2, align 4
  br label %73

71:                                               ; preds = %66
  %72 = load i32, i32* @MPM_SB1, align 4
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi i32 [ %70, %69 ], [ %72, %71 ]
  %75 = load i32, i32* %15, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* %12, align 4
  switch i32 %77, label %89 [
    i32 130, label %78
    i32 129, label %84
    i32 128, label %85
  ]

78:                                               ; preds = %73
  %79 = load i32, i32* @MPM_PE, align 4
  %80 = load i32, i32* @MPM_EVEN, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* %15, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %15, align 4
  br label %91

84:                                               ; preds = %73
  br label %91

85:                                               ; preds = %73
  %86 = load i32, i32* @MPM_PE, align 4
  %87 = load i32, i32* %15, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %15, align 4
  br label %91

89:                                               ; preds = %73
  %90 = load i32, i32* @EINVAL, align 4
  store i32 %90, i32* %7, align 4
  br label %160

91:                                               ; preds = %85, %84, %78
  %92 = load i32, i32* %9, align 4
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %105

94:                                               ; preds = %91
  %95 = load %struct.uart_bas*, %struct.uart_bas** %8, align 8
  %96 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @z8530_divisor(i32 %97, i32 %98)
  store i32 %99, i32* %14, align 4
  %100 = load i32, i32* %14, align 4
  %101 = icmp eq i32 %100, -1
  br i1 %101, label %102, label %104

102:                                              ; preds = %94
  %103 = load i32, i32* @EINVAL, align 4
  store i32 %103, i32* %7, align 4
  br label %160

104:                                              ; preds = %94
  br label %106

105:                                              ; preds = %91
  store i32 -1, i32* %14, align 4
  br label %106

106:                                              ; preds = %105, %104
  %107 = load %struct.uart_bas*, %struct.uart_bas** %8, align 8
  %108 = load i32, i32* @WR_MCB2, align 4
  %109 = load i32, i32* @UART_PCLK, align 4
  %110 = call i32 @uart_setmreg(%struct.uart_bas* %107, i32 %108, i32 %109)
  %111 = load %struct.uart_bas*, %struct.uart_bas** %8, align 8
  %112 = call i32 @uart_barrier(%struct.uart_bas* %111)
  %113 = load i32, i32* %14, align 4
  %114 = icmp sge i32 %113, 0
  br i1 %114, label %115, label %131

115:                                              ; preds = %106
  %116 = load %struct.uart_bas*, %struct.uart_bas** %8, align 8
  %117 = load i32, i32* @WR_TCL, align 4
  %118 = load i32, i32* %14, align 4
  %119 = and i32 %118, 255
  %120 = call i32 @uart_setmreg(%struct.uart_bas* %116, i32 %117, i32 %119)
  %121 = load %struct.uart_bas*, %struct.uart_bas** %8, align 8
  %122 = call i32 @uart_barrier(%struct.uart_bas* %121)
  %123 = load %struct.uart_bas*, %struct.uart_bas** %8, align 8
  %124 = load i32, i32* @WR_TCH, align 4
  %125 = load i32, i32* %14, align 4
  %126 = ashr i32 %125, 8
  %127 = and i32 %126, 255
  %128 = call i32 @uart_setmreg(%struct.uart_bas* %123, i32 %124, i32 %127)
  %129 = load %struct.uart_bas*, %struct.uart_bas** %8, align 8
  %130 = call i32 @uart_barrier(%struct.uart_bas* %129)
  br label %131

131:                                              ; preds = %115, %106
  %132 = load %struct.uart_bas*, %struct.uart_bas** %8, align 8
  %133 = load i32, i32* @WR_RPC, align 4
  %134 = load i32, i32* %16, align 4
  %135 = call i32 @uart_setmreg(%struct.uart_bas* %132, i32 %133, i32 %134)
  %136 = load %struct.uart_bas*, %struct.uart_bas** %8, align 8
  %137 = call i32 @uart_barrier(%struct.uart_bas* %136)
  %138 = load %struct.uart_bas*, %struct.uart_bas** %8, align 8
  %139 = load i32, i32* @WR_MPM, align 4
  %140 = load i32, i32* %15, align 4
  %141 = call i32 @uart_setmreg(%struct.uart_bas* %138, i32 %139, i32 %140)
  %142 = load %struct.uart_bas*, %struct.uart_bas** %8, align 8
  %143 = call i32 @uart_barrier(%struct.uart_bas* %142)
  %144 = load %struct.uart_bas*, %struct.uart_bas** %8, align 8
  %145 = load i32, i32* @WR_TPC, align 4
  %146 = load i32, i32* %17, align 4
  %147 = call i32 @uart_setmreg(%struct.uart_bas* %144, i32 %145, i32 %146)
  %148 = load %struct.uart_bas*, %struct.uart_bas** %8, align 8
  %149 = call i32 @uart_barrier(%struct.uart_bas* %148)
  %150 = load %struct.uart_bas*, %struct.uart_bas** %8, align 8
  %151 = load i32, i32* @WR_MCB2, align 4
  %152 = load i32, i32* @UART_PCLK, align 4
  %153 = load i32, i32* @MCB2_BRGE, align 4
  %154 = or i32 %152, %153
  %155 = call i32 @uart_setmreg(%struct.uart_bas* %150, i32 %151, i32 %154)
  %156 = load %struct.uart_bas*, %struct.uart_bas** %8, align 8
  %157 = call i32 @uart_barrier(%struct.uart_bas* %156)
  %158 = load i32, i32* %17, align 4
  %159 = load i32*, i32** %13, align 8
  store i32 %158, i32* %159, align 4
  store i32 0, i32* %7, align 4
  br label %160

160:                                              ; preds = %131, %102, %89
  %161 = load i32, i32* %7, align 4
  ret i32 %161
}

declare dso_local i32 @z8530_divisor(i32, i32) #1

declare dso_local i32 @uart_setmreg(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @uart_barrier(%struct.uart_bas*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
