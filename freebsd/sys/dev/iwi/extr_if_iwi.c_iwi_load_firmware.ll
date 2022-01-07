; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_load_firmware.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_load_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwi_softc = type { i32, i32, i32, i32, i32, i32* }
%struct.iwi_fw = type { i32, i32, i32 }

@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@IWI_CSR_AUTOINC_ADDR = common dso_local global i32 0, align 4
@IWI_CB_MAXDATALEN = common dso_local global i32 0, align 4
@IWI_CB_DEFAULT_CTL = common dso_local global i32 0, align 4
@IWI_CSR_AUTOINC_DATA = common dso_local global i32 0, align 4
@IWI_CSR_RST = common dso_local global i32 0, align 4
@IWI_RST_MASTER_DISABLED = common dso_local global i32 0, align 4
@IWI_RST_STOP_MASTER = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"timeout processing command blocks for %s firmware\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@IWI_CSR_INTR_MASK = common dso_local global i32 0, align 4
@IWI_INTR_MASK = common dso_local global i32 0, align 4
@IWI_CSR_CTL = common dso_local global i32 0, align 4
@IWI_CTL_ALLOW_STANDBY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"iwiinit\00", align 1
@hz = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [60 x i8] c"timeout waiting for %s firmware initialization to complete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwi_softc*, %struct.iwi_fw*)* @iwi_load_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwi_load_firmware(%struct.iwi_softc* %0, %struct.iwi_fw* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwi_softc*, align 8
  %5 = alloca %struct.iwi_fw*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.iwi_softc* %0, %struct.iwi_softc** %4, align 8
  store %struct.iwi_fw* %1, %struct.iwi_fw** %5, align 8
  %18 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %19 = call i32 @IWI_LOCK_ASSERT(%struct.iwi_softc* %18)
  %20 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %21 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %20, i32 0, i32 5
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.iwi_fw*, %struct.iwi_fw** %5, align 8
  %24 = getelementptr inbounds %struct.iwi_fw, %struct.iwi_fw* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.iwi_fw*, %struct.iwi_fw** %5, align 8
  %27 = getelementptr inbounds %struct.iwi_fw, %struct.iwi_fw* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @memcpy(i32* %22, i32 %25, i32 %28)
  %30 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %31 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %34 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %37 = call i32 @bus_dmamap_sync(i32 %32, i32 %35, i32 %36)
  %38 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %39 = call i32 @MEM_WRITE_4(%struct.iwi_softc* %38, i32 3145888, i32 159744)
  %40 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %41 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %10, align 4
  %43 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %44 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %43, i32 0, i32 5
  %45 = load i32*, i32** %44, align 8
  store i32* %45, i32** %6, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = load %struct.iwi_fw*, %struct.iwi_fw** %5, align 8
  %48 = getelementptr inbounds %struct.iwi_fw, %struct.iwi_fw* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %46, i64 %50
  store i32* %51, i32** %7, align 8
  %52 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %53 = load i32, i32* @IWI_CSR_AUTOINC_ADDR, align 4
  %54 = call i32 @CSR_WRITE_4(%struct.iwi_softc* %52, i32 %53, i32 159744)
  br label %55

55:                                               ; preds = %116, %2
  %56 = load i32*, i32** %6, align 8
  %57 = load i32*, i32** %7, align 8
  %58 = icmp ult i32* %56, %57
  br i1 %58, label %59, label %117

59:                                               ; preds = %55
  %60 = load i32*, i32** %6, align 8
  %61 = call i32 @GETLE32(i32* %60)
  store i32 %61, i32* %11, align 4
  %62 = load i32*, i32** %6, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 4
  store i32* %63, i32** %6, align 8
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %64, 4
  store i32 %65, i32* %10, align 4
  %66 = load i32*, i32** %6, align 8
  %67 = call i32 @GETLE32(i32* %66)
  store i32 %67, i32* %13, align 4
  %68 = load i32*, i32** %6, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 4
  store i32* %69, i32** %6, align 8
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, 4
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %13, align 4
  %73 = load i32*, i32** %6, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  store i32* %75, i32** %6, align 8
  br label %76

76:                                               ; preds = %79, %59
  %77 = load i32, i32* %13, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %116

79:                                               ; preds = %76
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* @IWI_CB_MAXDATALEN, align 4
  %82 = call i32 @min(i32 %80, i32 %81)
  store i32 %82, i32* %14, align 4
  %83 = load i32, i32* @IWI_CB_DEFAULT_CTL, align 4
  %84 = load i32, i32* %14, align 4
  %85 = or i32 %83, %84
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %10, align 4
  %88 = xor i32 %86, %87
  %89 = load i32, i32* %11, align 4
  %90 = xor i32 %88, %89
  store i32 %90, i32* %12, align 4
  %91 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %92 = load i32, i32* @IWI_CSR_AUTOINC_DATA, align 4
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @CSR_WRITE_4(%struct.iwi_softc* %91, i32 %92, i32 %93)
  %95 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %96 = load i32, i32* @IWI_CSR_AUTOINC_DATA, align 4
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @CSR_WRITE_4(%struct.iwi_softc* %95, i32 %96, i32 %97)
  %99 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %100 = load i32, i32* @IWI_CSR_AUTOINC_DATA, align 4
  %101 = load i32, i32* %11, align 4
  %102 = call i32 @CSR_WRITE_4(%struct.iwi_softc* %99, i32 %100, i32 %101)
  %103 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %104 = load i32, i32* @IWI_CSR_AUTOINC_DATA, align 4
  %105 = load i32, i32* %12, align 4
  %106 = call i32 @CSR_WRITE_4(%struct.iwi_softc* %103, i32 %104, i32 %105)
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* %10, align 4
  %109 = add nsw i32 %108, %107
  store i32 %109, i32* %10, align 4
  %110 = load i32, i32* %14, align 4
  %111 = load i32, i32* %11, align 4
  %112 = add nsw i32 %111, %110
  store i32 %112, i32* %11, align 4
  %113 = load i32, i32* %14, align 4
  %114 = load i32, i32* %13, align 4
  %115 = sub nsw i32 %114, %113
  store i32 %115, i32* %13, align 4
  br label %76

116:                                              ; preds = %76
  br label %55

117:                                              ; preds = %55
  %118 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %119 = load i32, i32* @IWI_CSR_AUTOINC_ADDR, align 4
  %120 = call i32 @CSR_READ_4(%struct.iwi_softc* %118, i32 %119)
  store i32 %120, i32* %8, align 4
  %121 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %122 = load i32, i32* @IWI_CSR_AUTOINC_DATA, align 4
  %123 = call i32 @CSR_WRITE_4(%struct.iwi_softc* %121, i32 %122, i32 0)
  %124 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %125 = load i32, i32* @IWI_CSR_RST, align 4
  %126 = call i32 @CSR_READ_4(%struct.iwi_softc* %124, i32 %125)
  store i32 %126, i32* %15, align 4
  %127 = load i32, i32* @IWI_RST_MASTER_DISABLED, align 4
  %128 = load i32, i32* @IWI_RST_STOP_MASTER, align 4
  %129 = or i32 %127, %128
  %130 = xor i32 %129, -1
  %131 = load i32, i32* %15, align 4
  %132 = and i32 %131, %130
  store i32 %132, i32* %15, align 4
  %133 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %134 = load i32, i32* @IWI_CSR_RST, align 4
  %135 = load i32, i32* %15, align 4
  %136 = call i32 @CSR_WRITE_4(%struct.iwi_softc* %133, i32 %134, i32 %135)
  %137 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %138 = call i32 @MEM_WRITE_4(%struct.iwi_softc* %137, i32 3145892, i32 5505280)
  store i32 0, i32* %16, align 4
  br label %139

139:                                              ; preds = %150, %117
  %140 = load i32, i32* %16, align 4
  %141 = icmp slt i32 %140, 400
  br i1 %141, label %142, label %153

142:                                              ; preds = %139
  %143 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %144 = call i32 @MEM_READ_4(%struct.iwi_softc* %143, i32 3145936)
  %145 = load i32, i32* %8, align 4
  %146 = icmp sge i32 %144, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %142
  br label %153

148:                                              ; preds = %142
  %149 = call i32 @DELAY(i32 100)
  br label %150

150:                                              ; preds = %148
  %151 = load i32, i32* %16, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %16, align 4
  br label %139

153:                                              ; preds = %147, %139
  %154 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %155 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %158 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %161 = call i32 @bus_dmamap_sync(i32 %156, i32 %159, i32 %160)
  %162 = load i32, i32* %16, align 4
  %163 = icmp eq i32 %162, 400
  br i1 %163, label %164, label %173

164:                                              ; preds = %153
  %165 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %166 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.iwi_fw*, %struct.iwi_fw** %5, align 8
  %169 = getelementptr inbounds %struct.iwi_fw, %struct.iwi_fw* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @device_printf(i32 %167, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %170)
  %172 = load i32, i32* @EIO, align 4
  store i32 %172, i32* %3, align 4
  br label %208

173:                                              ; preds = %153
  %174 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %175 = call i32 @MEM_WRITE_4(%struct.iwi_softc* %174, i32 3145892, i32 5508096)
  %176 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %177 = load i32, i32* @IWI_CSR_INTR_MASK, align 4
  %178 = load i32, i32* @IWI_INTR_MASK, align 4
  %179 = call i32 @CSR_WRITE_4(%struct.iwi_softc* %176, i32 %177, i32 %178)
  %180 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %181 = load i32, i32* @IWI_CSR_RST, align 4
  %182 = call i32 @CSR_WRITE_4(%struct.iwi_softc* %180, i32 %181, i32 0)
  %183 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %184 = load i32, i32* @IWI_CSR_CTL, align 4
  %185 = call i32 @CSR_READ_4(%struct.iwi_softc* %183, i32 %184)
  store i32 %185, i32* %15, align 4
  %186 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %187 = load i32, i32* @IWI_CSR_CTL, align 4
  %188 = load i32, i32* %15, align 4
  %189 = load i32, i32* @IWI_CTL_ALLOW_STANDBY, align 4
  %190 = or i32 %188, %189
  %191 = call i32 @CSR_WRITE_4(%struct.iwi_softc* %186, i32 %187, i32 %190)
  %192 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %193 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %194 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %193, i32 0, i32 2
  %195 = load i32, i32* @hz, align 4
  %196 = call i32 @msleep(%struct.iwi_softc* %192, i32* %194, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %195)
  store i32 %196, i32* %17, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %206

198:                                              ; preds = %173
  %199 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %200 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.iwi_fw*, %struct.iwi_fw** %5, align 8
  %203 = getelementptr inbounds %struct.iwi_fw, %struct.iwi_fw* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @device_printf(i32 %201, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 %204)
  br label %206

206:                                              ; preds = %198, %173
  %207 = load i32, i32* %17, align 4
  store i32 %207, i32* %3, align 4
  br label %208

208:                                              ; preds = %206, %164
  %209 = load i32, i32* %3, align 4
  ret i32 %209
}

declare dso_local i32 @IWI_LOCK_ASSERT(%struct.iwi_softc*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @MEM_WRITE_4(%struct.iwi_softc*, i32, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.iwi_softc*, i32, i32) #1

declare dso_local i32 @GETLE32(i32*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.iwi_softc*, i32) #1

declare dso_local i32 @MEM_READ_4(%struct.iwi_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @msleep(%struct.iwi_softc*, i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
