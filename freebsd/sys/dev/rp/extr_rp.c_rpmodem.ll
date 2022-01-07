; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rp/extr_rp.c_rpmodem.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rp/extr_rp.c_rpmodem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32 }
%struct.rp_port = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@SER_DTR = common dso_local global i32 0, align 4
@SET_DTR = common dso_local global i32 0, align 4
@SER_RTS = common dso_local global i32 0, align 4
@SET_RTS = common dso_local global i32 0, align 4
@_INDX_ADDR = common dso_local global i32 0, align 4
@CD_ACT = common dso_local global i32 0, align 4
@SER_DCD = common dso_local global i32 0, align 4
@DSR_ACT = common dso_local global i32 0, align 4
@SER_DSR = common dso_local global i32 0, align 4
@CTS_ACT = common dso_local global i32 0, align 4
@SER_CTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty*, i32, i32)* @rpmodem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpmodem(%struct.tty* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rp_port*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.tty* %0, %struct.tty** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.tty*, %struct.tty** %5, align 8
  %13 = call %struct.rp_port* @tty_softc(%struct.tty* %12)
  store %struct.rp_port* %13, %struct.rp_port** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %74

19:                                               ; preds = %16, %3
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @SER_DTR, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @SET_DTR, align 4
  store i32 %25, i32* %9, align 4
  br label %26

26:                                               ; preds = %24, %19
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @SER_DTR, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @SET_DTR, align 4
  store i32 %32, i32* %10, align 4
  br label %33

33:                                               ; preds = %31, %26
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @SER_RTS, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @SET_RTS, align 4
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %38, %33
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @SER_RTS, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* @SET_RTS, align 4
  store i32 %46, i32* %10, align 4
  br label %47

47:                                               ; preds = %45, %40
  %48 = load i32, i32* %9, align 4
  %49 = xor i32 %48, -1
  %50 = load %struct.rp_port*, %struct.rp_port** %8, align 8
  %51 = getelementptr inbounds %struct.rp_port, %struct.rp_port* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 3
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, %49
  store i32 %56, i32* %54, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.rp_port*, %struct.rp_port** %8, align 8
  %59 = getelementptr inbounds %struct.rp_port, %struct.rp_port* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 3
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %57
  store i32 %64, i32* %62, align 4
  %65 = load %struct.rp_port*, %struct.rp_port** %8, align 8
  %66 = getelementptr inbounds %struct.rp_port, %struct.rp_port* %65, i32 0, i32 0
  %67 = load i32, i32* @_INDX_ADDR, align 4
  %68 = load %struct.rp_port*, %struct.rp_port** %8, align 8
  %69 = getelementptr inbounds %struct.rp_port, %struct.rp_port* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @le32dec(i32* %71)
  %73 = call i32 @rp_writech4(%struct.TYPE_3__* %66, i32 %67, i32 %72)
  br label %130

74:                                               ; preds = %16
  %75 = load %struct.rp_port*, %struct.rp_port** %8, align 8
  %76 = getelementptr inbounds %struct.rp_port, %struct.rp_port* %75, i32 0, i32 0
  %77 = call i32 @sGetChanStatusLo(%struct.TYPE_3__* %76)
  store i32 %77, i32* %9, align 4
  %78 = load %struct.rp_port*, %struct.rp_port** %8, align 8
  %79 = getelementptr inbounds %struct.rp_port, %struct.rp_port* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 3
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @SET_DTR, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %74
  %89 = load i32, i32* @SER_DTR, align 4
  %90 = load i32, i32* %11, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %11, align 4
  br label %92

92:                                               ; preds = %88, %74
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* @SET_RTS, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  %98 = load i32, i32* @SER_RTS, align 4
  %99 = load i32, i32* %11, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %11, align 4
  br label %101

101:                                              ; preds = %97, %92
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* @CD_ACT, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %101
  %107 = load i32, i32* @SER_DCD, align 4
  %108 = load i32, i32* %11, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %11, align 4
  br label %110

110:                                              ; preds = %106, %101
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* @DSR_ACT, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %110
  %116 = load i32, i32* @SER_DSR, align 4
  %117 = load i32, i32* %11, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %11, align 4
  br label %119

119:                                              ; preds = %115, %110
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* @CTS_ACT, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %119
  %125 = load i32, i32* @SER_CTS, align 4
  %126 = load i32, i32* %11, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %11, align 4
  br label %128

128:                                              ; preds = %124, %119
  %129 = load i32, i32* %11, align 4
  store i32 %129, i32* %4, align 4
  br label %131

130:                                              ; preds = %47
  store i32 0, i32* %4, align 4
  br label %131

131:                                              ; preds = %130, %128
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local %struct.rp_port* @tty_softc(%struct.tty*) #1

declare dso_local i32 @rp_writech4(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @le32dec(i32*) #1

declare dso_local i32 @sGetChanStatusLo(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
