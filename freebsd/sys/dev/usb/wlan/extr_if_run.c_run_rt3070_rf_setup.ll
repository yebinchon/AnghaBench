; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_rt3070_rf_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_rt3070_rf_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.run_softc = type { i32, i32, i32, i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@RT2860_TX_SW_CFG1 = common dso_local global i32 0, align 4
@RT2860_TX_SW_CFG2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.run_softc*)* @run_rt3070_rf_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_rt3070_rf_setup(%struct.run_softc* %0) #0 {
  %2 = alloca %struct.run_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.run_softc* %0, %struct.run_softc** %2, align 8
  %6 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %7 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp eq i32 %8, 13682
  br i1 %9, label %10, label %63

10:                                               ; preds = %1
  %11 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %12 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp sge i32 %13, 513
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %17 = call i32 @run_bbp_write(%struct.run_softc* %16, i32 103, i32 192)
  br label %18

18:                                               ; preds = %15, %10
  %19 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %20 = call i32 @run_bbp_read(%struct.run_softc* %19, i32 138, i32* %3)
  %21 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %22 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i32, i32* %3, align 4
  %27 = or i32 %26, 32
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %25, %18
  %29 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %30 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* %3, align 4
  %35 = and i32 %34, -3
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %33, %28
  %37 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @run_bbp_write(%struct.run_softc* %37, i32 138, i32 %38)
  %40 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %41 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp sge i32 %42, 529
  br i1 %43, label %44, label %51

44:                                               ; preds = %36
  %45 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %46 = call i32 @run_bbp_read(%struct.run_softc* %45, i32 31, i32* %3)
  %47 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %48 = load i32, i32* %3, align 4
  %49 = and i32 %48, -4
  %50 = call i32 @run_bbp_write(%struct.run_softc* %47, i32 31, i32 %49)
  br label %51

51:                                               ; preds = %44, %36
  %52 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %53 = call i32 @run_rt3070_rf_read(%struct.run_softc* %52, i32 16, i32* %4)
  %54 = load i32, i32* %4, align 4
  %55 = and i32 %54, -8
  %56 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %57 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %55, %58
  store i32 %59, i32* %4, align 4
  %60 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @run_rt3070_rf_write(%struct.run_softc* %60, i32 16, i32 %61)
  br label %164

63:                                               ; preds = %1
  %64 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %65 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %66, 12401
  br i1 %67, label %68, label %126

68:                                               ; preds = %63
  %69 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %70 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp sge i32 %71, 529
  br i1 %72, label %73, label %82

73:                                               ; preds = %68
  %74 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %75 = call i32 @run_bbp_write(%struct.run_softc* %74, i32 103, i32 192)
  %76 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %77 = call i32 @run_bbp_read(%struct.run_softc* %76, i32 31, i32* %3)
  %78 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %79 = load i32, i32* %3, align 4
  %80 = and i32 %79, -4
  %81 = call i32 @run_bbp_write(%struct.run_softc* %78, i32 31, i32 %80)
  br label %82

82:                                               ; preds = %73, %68
  %83 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %84 = call i32 @run_bbp_read(%struct.run_softc* %83, i32 138, i32* %3)
  %85 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %86 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = icmp eq i32 %87, 1
  br i1 %88, label %89, label %92

89:                                               ; preds = %82
  %90 = load i32, i32* %3, align 4
  %91 = or i32 %90, 32
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %89, %82
  %93 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %94 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, 1
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load i32, i32* %3, align 4
  %99 = and i32 %98, -3
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %97, %92
  %101 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %102 = load i32, i32* %3, align 4
  %103 = call i32 @run_bbp_write(%struct.run_softc* %101, i32 138, i32 %102)
  %104 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %105 = load i32, i32* @RT2860_TX_SW_CFG1, align 4
  %106 = call i32 @run_write(%struct.run_softc* %104, i32 %105, i32 0)
  %107 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %108 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp slt i32 %109, 529
  br i1 %110, label %111, label %121

111:                                              ; preds = %100
  %112 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %113 = load i32, i32* @RT2860_TX_SW_CFG2, align 4
  %114 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %115 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %114, i32 0, i32 6
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  %118 = zext i1 %117 to i64
  %119 = select i1 %117, i32 44, i32 15
  %120 = call i32 @run_write(%struct.run_softc* %112, i32 %113, i32 %119)
  br label %125

121:                                              ; preds = %100
  %122 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %123 = load i32, i32* @RT2860_TX_SW_CFG2, align 4
  %124 = call i32 @run_write(%struct.run_softc* %122, i32 %123, i32 0)
  br label %125

125:                                              ; preds = %121, %111
  br label %163

126:                                              ; preds = %63
  %127 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %128 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp eq i32 %129, 12400
  br i1 %130, label %131, label %162

131:                                              ; preds = %126
  %132 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %133 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = icmp sge i32 %134, 513
  br i1 %135, label %136, label %145

136:                                              ; preds = %131
  %137 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %138 = call i32 @run_bbp_write(%struct.run_softc* %137, i32 103, i32 192)
  %139 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %140 = call i32 @run_bbp_read(%struct.run_softc* %139, i32 31, i32* %3)
  %141 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %142 = load i32, i32* %3, align 4
  %143 = and i32 %142, -4
  %144 = call i32 @run_bbp_write(%struct.run_softc* %141, i32 31, i32 %143)
  br label %145

145:                                              ; preds = %136, %131
  %146 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %147 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = icmp slt i32 %148, 513
  br i1 %149, label %150, label %157

150:                                              ; preds = %145
  %151 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %152 = load i32, i32* @RT2860_TX_SW_CFG1, align 4
  %153 = call i32 @run_write(%struct.run_softc* %151, i32 %152, i32 0)
  %154 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %155 = load i32, i32* @RT2860_TX_SW_CFG2, align 4
  %156 = call i32 @run_write(%struct.run_softc* %154, i32 %155, i32 44)
  br label %161

157:                                              ; preds = %145
  %158 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %159 = load i32, i32* @RT2860_TX_SW_CFG2, align 4
  %160 = call i32 @run_write(%struct.run_softc* %158, i32 %159, i32 0)
  br label %161

161:                                              ; preds = %157, %150
  br label %162

162:                                              ; preds = %161, %126
  br label %163

163:                                              ; preds = %162, %125
  br label %164

164:                                              ; preds = %163, %51
  %165 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %166 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = icmp sge i32 %167, 12401
  br i1 %168, label %169, label %217

169:                                              ; preds = %164
  store i32 0, i32* %5, align 4
  br label %170

170:                                              ; preds = %213, %169
  %171 = load i32, i32* %5, align 4
  %172 = icmp slt i32 %171, 10
  br i1 %172, label %173, label %216

173:                                              ; preds = %170
  %174 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %175 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %174, i32 0, i32 5
  %176 = load %struct.TYPE_2__*, %struct.TYPE_2__** %175, align 8
  %177 = load i32, i32* %5, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %193, label %183

183:                                              ; preds = %173
  %184 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %185 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %184, i32 0, i32 5
  %186 = load %struct.TYPE_2__*, %struct.TYPE_2__** %185, align 8
  %187 = load i32, i32* %5, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = icmp eq i32 %191, 255
  br i1 %192, label %193, label %194

193:                                              ; preds = %183, %173
  br label %213

194:                                              ; preds = %183
  %195 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %196 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %197 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %196, i32 0, i32 5
  %198 = load %struct.TYPE_2__*, %struct.TYPE_2__** %197, align 8
  %199 = load i32, i32* %5, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %205 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %204, i32 0, i32 5
  %206 = load %struct.TYPE_2__*, %struct.TYPE_2__** %205, align 8
  %207 = load i32, i32* %5, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @run_rt3070_rf_write(%struct.run_softc* %195, i32 %203, i32 %211)
  br label %213

213:                                              ; preds = %194, %193
  %214 = load i32, i32* %5, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %5, align 4
  br label %170

216:                                              ; preds = %170
  br label %217

217:                                              ; preds = %216, %164
  ret void
}

declare dso_local i32 @run_bbp_write(%struct.run_softc*, i32, i32) #1

declare dso_local i32 @run_bbp_read(%struct.run_softc*, i32, i32*) #1

declare dso_local i32 @run_rt3070_rf_read(%struct.run_softc*, i32, i32*) #1

declare dso_local i32 @run_rt3070_rf_write(%struct.run_softc*, i32, i32) #1

declare dso_local i32 @run_write(%struct.run_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
