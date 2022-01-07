; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_uart_emul.c_uart_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_uart_emul.c_uart_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@LCR_DLAB = common dso_local global i32 0, align 4
@REG_DLL = common dso_local global i32 0, align 4
@REG_DLH = common dso_local global i32 0, align 4
@MCR_LOOPBACK = common dso_local global i32 0, align 4
@LSR_OE = common dso_local global i32 0, align 4
@IER_ETXRDY = common dso_local global i32 0, align 4
@FCR_ENABLE = common dso_local global i32 0, align 4
@FIFOSZ = common dso_local global i32 0, align 4
@FCR_RCV_RST = common dso_local global i32 0, align 4
@FCR_DMA = common dso_local global i32 0, align 4
@FCR_RX_MASK = common dso_local global i32 0, align 4
@MSR_CTS = common dso_local global i32 0, align 4
@MSR_DCTS = common dso_local global i32 0, align 4
@MSR_DSR = common dso_local global i32 0, align 4
@MSR_DDSR = common dso_local global i32 0, align 4
@MSR_DCD = common dso_local global i32 0, align 4
@MSR_DDCD = common dso_local global i32 0, align 4
@MSR_RI = common dso_local global i32 0, align 4
@MSR_TERI = common dso_local global i32 0, align 4
@MSR_DELTA_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uart_write(%struct.uart_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.uart_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %10 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %9, i32 0, i32 9
  %11 = call i32 @pthread_mutex_lock(i32* %10)
  %12 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %13 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @LCR_DLAB, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @REG_DLL, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %25 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  br label %243

26:                                               ; preds = %18
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @REG_DLH, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %33 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  br label %243

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34, %3
  %36 = load i32, i32* %5, align 4
  switch i32 %36, label %241 [
    i32 135, label %37
    i32 133, label %71
    i32 134, label %91
    i32 132, label %143
    i32 130, label %147
    i32 131, label %235
    i32 129, label %236
    i32 128, label %237
  ]

37:                                               ; preds = %35
  %38 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %39 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @MCR_LOOPBACK, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %37
  %45 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @rxfifo_putchar(%struct.uart_softc* %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load i32, i32* @LSR_OE, align 4
  %51 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %52 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %51, i32 0, i32 11
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %49, %44
  br label %68

56:                                               ; preds = %37
  %57 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %58 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %57, i32 0, i32 10
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %64 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %63, i32 0, i32 10
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @ttywrite(%struct.TYPE_2__* %64, i32 %65)
  br label %67

67:                                               ; preds = %62, %56
  br label %68

68:                                               ; preds = %67, %55
  %69 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %70 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %69, i32 0, i32 4
  store i32 1, i32* %70, align 4
  br label %242

71:                                               ; preds = %35
  %72 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %73 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @IER_ETXRDY, align 4
  %76 = and i32 %74, %75
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %71
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @IER_ETXRDY, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %85 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %84, i32 0, i32 4
  store i32 1, i32* %85, align 4
  br label %86

86:                                               ; preds = %83, %78, %71
  %87 = load i32, i32* %6, align 4
  %88 = and i32 %87, 15
  %89 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %90 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %89, i32 0, i32 5
  store i32 %88, i32* %90, align 4
  br label %242

91:                                               ; preds = %35
  %92 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %93 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %92, i32 0, i32 6
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @FCR_ENABLE, align 4
  %96 = and i32 %94, %95
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @FCR_ENABLE, align 4
  %99 = and i32 %97, %98
  %100 = xor i32 %96, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %115

102:                                              ; preds = %91
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* @FCR_ENABLE, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %102
  %108 = load i32, i32* @FIFOSZ, align 4
  br label %110

109:                                              ; preds = %102
  br label %110

110:                                              ; preds = %109, %107
  %111 = phi i32 [ %108, %107 ], [ 1, %109 ]
  store i32 %111, i32* %7, align 4
  %112 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @rxfifo_reset(%struct.uart_softc* %112, i32 %113)
  br label %115

115:                                              ; preds = %110, %91
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* @FCR_ENABLE, align 4
  %118 = and i32 %116, %117
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %115
  %121 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %122 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %121, i32 0, i32 6
  store i32 0, i32* %122, align 4
  br label %142

123:                                              ; preds = %115
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* @FCR_RCV_RST, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %123
  %129 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %130 = load i32, i32* @FIFOSZ, align 4
  %131 = call i32 @rxfifo_reset(%struct.uart_softc* %129, i32 %130)
  br label %132

132:                                              ; preds = %128, %123
  %133 = load i32, i32* %6, align 4
  %134 = load i32, i32* @FCR_ENABLE, align 4
  %135 = load i32, i32* @FCR_DMA, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* @FCR_RX_MASK, align 4
  %138 = or i32 %136, %137
  %139 = and i32 %133, %138
  %140 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %141 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %140, i32 0, i32 6
  store i32 %139, i32* %141, align 4
  br label %142

142:                                              ; preds = %132, %120
  br label %242

143:                                              ; preds = %35
  %144 = load i32, i32* %6, align 4
  %145 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %146 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 4
  br label %242

147:                                              ; preds = %35
  %148 = load i32, i32* %6, align 4
  %149 = and i32 %148, 31
  %150 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %151 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %150, i32 0, i32 3
  store i32 %149, i32* %151, align 4
  %152 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %153 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @modem_status(i32 %154)
  store i32 %155, i32* %8, align 4
  %156 = load i32, i32* %8, align 4
  %157 = load i32, i32* @MSR_CTS, align 4
  %158 = and i32 %156, %157
  %159 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %160 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %159, i32 0, i32 7
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @MSR_CTS, align 4
  %163 = and i32 %161, %162
  %164 = xor i32 %158, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %147
  %167 = load i32, i32* @MSR_DCTS, align 4
  %168 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %169 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %168, i32 0, i32 7
  %170 = load i32, i32* %169, align 4
  %171 = or i32 %170, %167
  store i32 %171, i32* %169, align 4
  br label %172

172:                                              ; preds = %166, %147
  %173 = load i32, i32* %8, align 4
  %174 = load i32, i32* @MSR_DSR, align 4
  %175 = and i32 %173, %174
  %176 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %177 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %176, i32 0, i32 7
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @MSR_DSR, align 4
  %180 = and i32 %178, %179
  %181 = xor i32 %175, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %189

183:                                              ; preds = %172
  %184 = load i32, i32* @MSR_DDSR, align 4
  %185 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %186 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %185, i32 0, i32 7
  %187 = load i32, i32* %186, align 4
  %188 = or i32 %187, %184
  store i32 %188, i32* %186, align 4
  br label %189

189:                                              ; preds = %183, %172
  %190 = load i32, i32* %8, align 4
  %191 = load i32, i32* @MSR_DCD, align 4
  %192 = and i32 %190, %191
  %193 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %194 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %193, i32 0, i32 7
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* @MSR_DCD, align 4
  %197 = and i32 %195, %196
  %198 = xor i32 %192, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %206

200:                                              ; preds = %189
  %201 = load i32, i32* @MSR_DDCD, align 4
  %202 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %203 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %202, i32 0, i32 7
  %204 = load i32, i32* %203, align 4
  %205 = or i32 %204, %201
  store i32 %205, i32* %203, align 4
  br label %206

206:                                              ; preds = %200, %189
  %207 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %208 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %207, i32 0, i32 7
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @MSR_RI, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %224

213:                                              ; preds = %206
  %214 = load i32, i32* %8, align 4
  %215 = load i32, i32* @MSR_RI, align 4
  %216 = and i32 %214, %215
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %224

218:                                              ; preds = %213
  %219 = load i32, i32* @MSR_TERI, align 4
  %220 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %221 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %220, i32 0, i32 7
  %222 = load i32, i32* %221, align 4
  %223 = or i32 %222, %219
  store i32 %223, i32* %221, align 4
  br label %224

224:                                              ; preds = %218, %213, %206
  %225 = load i32, i32* @MSR_DELTA_MASK, align 4
  %226 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %227 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %226, i32 0, i32 7
  %228 = load i32, i32* %227, align 4
  %229 = and i32 %228, %225
  store i32 %229, i32* %227, align 4
  %230 = load i32, i32* %8, align 4
  %231 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %232 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %231, i32 0, i32 7
  %233 = load i32, i32* %232, align 4
  %234 = or i32 %233, %230
  store i32 %234, i32* %232, align 4
  br label %242

235:                                              ; preds = %35
  br label %242

236:                                              ; preds = %35
  br label %242

237:                                              ; preds = %35
  %238 = load i32, i32* %6, align 4
  %239 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %240 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %239, i32 0, i32 8
  store i32 %238, i32* %240, align 4
  br label %242

241:                                              ; preds = %35
  br label %242

242:                                              ; preds = %241, %237, %236, %235, %224, %143, %142, %86, %68
  br label %243

243:                                              ; preds = %242, %30, %22
  %244 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %245 = call i32 @uart_toggle_intr(%struct.uart_softc* %244)
  %246 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %247 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %246, i32 0, i32 9
  %248 = call i32 @pthread_mutex_unlock(i32* %247)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @rxfifo_putchar(%struct.uart_softc*, i32) #1

declare dso_local i32 @ttywrite(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @rxfifo_reset(%struct.uart_softc*, i32) #1

declare dso_local i32 @modem_status(i32) #1

declare dso_local i32 @uart_toggle_intr(%struct.uart_softc*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
