; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rc/extr_rc.c_rc_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rc/extr_rc.c_rc_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32, %struct.TYPE_2__, %struct.rc_chans* }
%struct.TYPE_2__ = type { i32 }
%struct.rc_chans = type { i32, i32, i32, i32, i32, i32, i32, %struct.rc_softc* }
%struct.rc_softc = type { i32 }

@RC_OSBUSY = common dso_local global i32 0, align 4
@TS_TTSTOP = common dso_local global i32 0, align 4
@RC_OSUSP = common dso_local global i32 0, align 4
@RC_RTSFLOW = common dso_local global i32 0, align 4
@TS_TBLOCK = common dso_local global i32 0, align 4
@MSVR_RTS = common dso_local global i32 0, align 4
@CD180_CAR = common dso_local global i32 0, align 4
@CD180_MSVR = common dso_local global i32 0, align 4
@TS_TIMEOUT = common dso_local global i32 0, align 4
@TS_BUSY = common dso_local global i32 0, align 4
@IER_TxRdy = common dso_local global i32 0, align 4
@CD180_IER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty*)* @rc_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rc_start(%struct.tty* %0) #0 {
  %2 = alloca %struct.tty*, align 8
  %3 = alloca %struct.rc_softc*, align 8
  %4 = alloca %struct.rc_chans*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tty* %0, %struct.tty** %2, align 8
  %7 = load %struct.tty*, %struct.tty** %2, align 8
  %8 = getelementptr inbounds %struct.tty, %struct.tty* %7, i32 0, i32 2
  %9 = load %struct.rc_chans*, %struct.rc_chans** %8, align 8
  store %struct.rc_chans* %9, %struct.rc_chans** %4, align 8
  %10 = load %struct.rc_chans*, %struct.rc_chans** %4, align 8
  %11 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @RC_OSBUSY, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %192

17:                                               ; preds = %1
  %18 = load %struct.rc_chans*, %struct.rc_chans** %4, align 8
  %19 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %18, i32 0, i32 7
  %20 = load %struct.rc_softc*, %struct.rc_softc** %19, align 8
  store %struct.rc_softc* %20, %struct.rc_softc** %3, align 8
  %21 = call i32 (...) @spltty()
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* @RC_OSBUSY, align 4
  %23 = load %struct.rc_chans*, %struct.rc_chans** %4, align 8
  %24 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 8
  %27 = call i32 (...) @critical_enter()
  %28 = load %struct.tty*, %struct.tty** %2, align 8
  %29 = getelementptr inbounds %struct.tty, %struct.tty* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @TS_TTSTOP, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %17
  %35 = load i32, i32* @RC_OSUSP, align 4
  %36 = load %struct.rc_chans*, %struct.rc_chans** %4, align 8
  %37 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  br label %47

40:                                               ; preds = %17
  %41 = load i32, i32* @RC_OSUSP, align 4
  %42 = xor i32 %41, -1
  %43 = load %struct.rc_chans*, %struct.rc_chans** %4, align 8
  %44 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 8
  br label %47

47:                                               ; preds = %40, %34
  %48 = load %struct.rc_chans*, %struct.rc_chans** %4, align 8
  %49 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @RC_RTSFLOW, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %84

54:                                               ; preds = %47
  %55 = load %struct.tty*, %struct.tty** %2, align 8
  %56 = getelementptr inbounds %struct.tty, %struct.tty* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @TS_TBLOCK, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %84

61:                                               ; preds = %54
  %62 = load %struct.rc_chans*, %struct.rc_chans** %4, align 8
  %63 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @MSVR_RTS, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %84

68:                                               ; preds = %61
  %69 = load %struct.rc_softc*, %struct.rc_softc** %3, align 8
  %70 = load i32, i32* @CD180_CAR, align 4
  %71 = load %struct.rc_chans*, %struct.rc_chans** %4, align 8
  %72 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @rcout(%struct.rc_softc* %69, i32 %70, i32 %73)
  %75 = load %struct.rc_softc*, %struct.rc_softc** %3, align 8
  %76 = load i32, i32* @CD180_MSVR, align 4
  %77 = load i32, i32* @MSVR_RTS, align 4
  %78 = xor i32 %77, -1
  %79 = load %struct.rc_chans*, %struct.rc_chans** %4, align 8
  %80 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, %78
  store i32 %82, i32* %80, align 4
  %83 = call i32 @rcout(%struct.rc_softc* %75, i32 %76, i32 %82)
  br label %107

84:                                               ; preds = %61, %54, %47
  %85 = load %struct.rc_chans*, %struct.rc_chans** %4, align 8
  %86 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @MSVR_RTS, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %106, label %91

91:                                               ; preds = %84
  %92 = load %struct.rc_softc*, %struct.rc_softc** %3, align 8
  %93 = load i32, i32* @CD180_CAR, align 4
  %94 = load %struct.rc_chans*, %struct.rc_chans** %4, align 8
  %95 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @rcout(%struct.rc_softc* %92, i32 %93, i32 %96)
  %98 = load %struct.rc_softc*, %struct.rc_softc** %3, align 8
  %99 = load i32, i32* @CD180_MSVR, align 4
  %100 = load i32, i32* @MSVR_RTS, align 4
  %101 = load %struct.rc_chans*, %struct.rc_chans** %4, align 8
  %102 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 4
  %105 = call i32 @rcout(%struct.rc_softc* %98, i32 %99, i32 %104)
  br label %106

106:                                              ; preds = %91, %84
  br label %107

107:                                              ; preds = %106, %68
  %108 = call i32 (...) @critical_exit()
  %109 = load %struct.tty*, %struct.tty** %2, align 8
  %110 = getelementptr inbounds %struct.tty, %struct.tty* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @TS_TIMEOUT, align 4
  %113 = load i32, i32* @TS_TTSTOP, align 4
  %114 = or i32 %112, %113
  %115 = and i32 %111, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %107
  br label %183

118:                                              ; preds = %107
  %119 = load %struct.tty*, %struct.tty** %2, align 8
  %120 = call i32 @ttwwakeup(%struct.tty* %119)
  %121 = load %struct.tty*, %struct.tty** %2, align 8
  %122 = getelementptr inbounds %struct.tty, %struct.tty* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @TS_BUSY, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %118
  br label %183

128:                                              ; preds = %118
  %129 = load %struct.tty*, %struct.tty** %2, align 8
  %130 = getelementptr inbounds %struct.tty, %struct.tty* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = icmp sgt i32 %132, 0
  br i1 %133, label %134, label %182

134:                                              ; preds = %128
  %135 = load i32, i32* @TS_BUSY, align 4
  %136 = load %struct.tty*, %struct.tty** %2, align 8
  %137 = getelementptr inbounds %struct.tty, %struct.tty* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = or i32 %138, %135
  store i32 %139, i32* %137, align 8
  %140 = load %struct.tty*, %struct.tty** %2, align 8
  %141 = getelementptr inbounds %struct.tty, %struct.tty* %140, i32 0, i32 1
  %142 = load %struct.rc_chans*, %struct.rc_chans** %4, align 8
  %143 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %142, i32 0, i32 5
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @q_to_b(%struct.TYPE_2__* %141, i32 %144, i32 4)
  store i32 %145, i32* %6, align 4
  %146 = call i32 (...) @critical_enter()
  %147 = load %struct.rc_chans*, %struct.rc_chans** %4, align 8
  %148 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %147, i32 0, i32 5
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.rc_chans*, %struct.rc_chans** %4, align 8
  %151 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %150, i32 0, i32 4
  store i32 %149, i32* %151, align 8
  %152 = load %struct.rc_chans*, %struct.rc_chans** %4, align 8
  %153 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* %6, align 4
  %156 = add nsw i32 %154, %155
  %157 = load %struct.rc_chans*, %struct.rc_chans** %4, align 8
  %158 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %157, i32 0, i32 3
  store i32 %156, i32* %158, align 4
  %159 = call i32 (...) @critical_exit()
  %160 = load %struct.rc_chans*, %struct.rc_chans** %4, align 8
  %161 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %160, i32 0, i32 6
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @IER_TxRdy, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %181, label %166

166:                                              ; preds = %134
  %167 = load %struct.rc_softc*, %struct.rc_softc** %3, align 8
  %168 = load i32, i32* @CD180_CAR, align 4
  %169 = load %struct.rc_chans*, %struct.rc_chans** %4, align 8
  %170 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @rcout(%struct.rc_softc* %167, i32 %168, i32 %171)
  %173 = load %struct.rc_softc*, %struct.rc_softc** %3, align 8
  %174 = load i32, i32* @CD180_IER, align 4
  %175 = load i32, i32* @IER_TxRdy, align 4
  %176 = load %struct.rc_chans*, %struct.rc_chans** %4, align 8
  %177 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %176, i32 0, i32 6
  %178 = load i32, i32* %177, align 8
  %179 = or i32 %178, %175
  store i32 %179, i32* %177, align 8
  %180 = call i32 @rcout(%struct.rc_softc* %173, i32 %174, i32 %179)
  br label %181

181:                                              ; preds = %166, %134
  br label %182

182:                                              ; preds = %181, %128
  br label %183

183:                                              ; preds = %182, %127, %117
  %184 = load i32, i32* @RC_OSBUSY, align 4
  %185 = xor i32 %184, -1
  %186 = load %struct.rc_chans*, %struct.rc_chans** %4, align 8
  %187 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = and i32 %188, %185
  store i32 %189, i32* %187, align 8
  %190 = load i32, i32* %5, align 4
  %191 = call i32 @splx(i32 %190)
  br label %192

192:                                              ; preds = %183, %16
  ret void
}

declare dso_local i32 @spltty(...) #1

declare dso_local i32 @critical_enter(...) #1

declare dso_local i32 @rcout(%struct.rc_softc*, i32, i32) #1

declare dso_local i32 @critical_exit(...) #1

declare dso_local i32 @ttwwakeup(%struct.tty*) #1

declare dso_local i32 @q_to_b(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @splx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
