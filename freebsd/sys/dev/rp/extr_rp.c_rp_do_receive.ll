; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rp/extr_rp.c_rp_do_receive.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rp/extr_rp.c_rp_do_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rp_port = type { i32 }
%struct.tty = type { i32 }

@RXFOVERFL = common dso_local global i32 0, align 4
@RXBREAK = common dso_local global i32 0, align 4
@RXFRAME = common dso_local global i32 0, align 4
@RXPARITY = common dso_local global i32 0, align 4
@STATMODE = common dso_local global i32 0, align 4
@STMBREAK = common dso_local global i32 0, align 4
@STMFRAMEH = common dso_local global i32 0, align 4
@TRE_FRAMING = common dso_local global i32 0, align 4
@STMPARITYH = common dso_local global i32 0, align 4
@TRE_PARITY = common dso_local global i32 0, align 4
@STMRCVROVRH = common dso_local global i32 0, align 4
@TRE_OVERRUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rp_port*, %struct.tty*, i32*, i32)* @rp_do_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rp_do_receive(%struct.rp_port* %0, %struct.tty* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.rp_port*, align 8
  %6 = alloca %struct.tty*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.rp_port* %0, %struct.rp_port** %5, align 8
  store %struct.tty* %1, %struct.tty** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %12, align 4
  %13 = load i32*, i32** %7, align 8
  %14 = call i32 @sGetRxCnt(i32* %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  br label %135

18:                                               ; preds = %4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @RXFOVERFL, align 4
  %21 = load i32, i32* @RXBREAK, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @RXFRAME, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @RXPARITY, align 4
  %26 = or i32 %24, %25
  %27 = and i32 %19, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %18
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @STATMODE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @STATMODE, align 4
  %36 = load i32, i32* %8, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %8, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @sEnRxStatusMode(i32* %38)
  br label %40

40:                                               ; preds = %34, %29
  br label %41

41:                                               ; preds = %40, %18
  %42 = load %struct.tty*, %struct.tty** %6, align 8
  %43 = call i32 @tty_lock(%struct.tty* %42)
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @STATMODE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %111

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %96, %48
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %103

52:                                               ; preds = %49
  %53 = load i32*, i32** %7, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = call i32 @sGetTxRxDataIO(i32* %54)
  %56 = call i32 @rp_readch2(i32* %53, i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = and i32 %57, 255
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @STMBREAK, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %52
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @STMFRAMEH, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %63, %52
  %69 = load i32, i32* @TRE_FRAMING, align 4
  %70 = load i32, i32* %12, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %12, align 4
  br label %96

72:                                               ; preds = %63
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @STMPARITYH, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load i32, i32* @TRE_PARITY, align 4
  %79 = load i32, i32* %12, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %12, align 4
  br label %95

81:                                               ; preds = %72
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @STMRCVROVRH, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %81
  %87 = load %struct.rp_port*, %struct.rp_port** %5, align 8
  %88 = getelementptr inbounds %struct.rp_port, %struct.rp_port* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 4
  %91 = load i32, i32* @TRE_OVERRUN, align 4
  %92 = load i32, i32* %12, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %12, align 4
  br label %94

94:                                               ; preds = %86, %81
  br label %95

95:                                               ; preds = %94, %77
  br label %96

96:                                               ; preds = %95, %68
  %97 = load %struct.tty*, %struct.tty** %6, align 8
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %12, align 4
  %100 = call i32 @ttydisc_rint(%struct.tty* %97, i32 %98, i32 %99)
  %101 = load i32, i32* %10, align 4
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %10, align 4
  br label %49

103:                                              ; preds = %49
  %104 = load i32*, i32** %7, align 8
  %105 = call i32 @sGetRxCnt(i32* %104)
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %103
  %108 = load i32*, i32** %7, align 8
  %109 = call i32 @sDisRxStatusMode(i32* %108)
  br label %110

110:                                              ; preds = %107, %103
  br label %130

111:                                              ; preds = %41
  %112 = load i32*, i32** %7, align 8
  %113 = call i32 @sGetRxCnt(i32* %112)
  store i32 %113, i32* %10, align 4
  br label %114

114:                                              ; preds = %117, %111
  %115 = load i32, i32* %10, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %129

117:                                              ; preds = %114
  %118 = load i32*, i32** %7, align 8
  %119 = load i32*, i32** %7, align 8
  %120 = call i32 @sGetTxRxDataIO(i32* %119)
  %121 = call i32 @rp_readch1(i32* %118, i32 %120)
  store i32 %121, i32* %11, align 4
  %122 = load %struct.tty*, %struct.tty** %6, align 8
  %123 = load i32, i32* %11, align 4
  %124 = and i32 %123, 255
  %125 = load i32, i32* %12, align 4
  %126 = call i32 @ttydisc_rint(%struct.tty* %122, i32 %124, i32 %125)
  %127 = load i32, i32* %10, align 4
  %128 = add nsw i32 %127, -1
  store i32 %128, i32* %10, align 4
  br label %114

129:                                              ; preds = %114
  br label %130

130:                                              ; preds = %129, %110
  %131 = load %struct.tty*, %struct.tty** %6, align 8
  %132 = call i32 @ttydisc_rint_done(%struct.tty* %131)
  %133 = load %struct.tty*, %struct.tty** %6, align 8
  %134 = call i32 @tty_unlock(%struct.tty* %133)
  br label %135

135:                                              ; preds = %130, %17
  ret void
}

declare dso_local i32 @sGetRxCnt(i32*) #1

declare dso_local i32 @sEnRxStatusMode(i32*) #1

declare dso_local i32 @tty_lock(%struct.tty*) #1

declare dso_local i32 @rp_readch2(i32*, i32) #1

declare dso_local i32 @sGetTxRxDataIO(i32*) #1

declare dso_local i32 @ttydisc_rint(%struct.tty*, i32, i32) #1

declare dso_local i32 @sDisRxStatusMode(i32*) #1

declare dso_local i32 @rp_readch1(i32*, i32) #1

declare dso_local i32 @ttydisc_rint_done(%struct.tty*) #1

declare dso_local i32 @tty_unlock(%struct.tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
