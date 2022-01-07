; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_lcd.c_jzlcd_set_videomode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_lcd.c_jzlcd_set_videomode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jzlcd_softc = type { i32, i32, i32, i32, i32 }
%struct.videomode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@LCDVAT = common dso_local global i32 0, align 4
@LCDVAT_HT_SHIFT = common dso_local global i32 0, align 4
@LCDVAT_VT_SHIFT = common dso_local global i32 0, align 4
@LCDDAH = common dso_local global i32 0, align 4
@LCDDAH_HDS_SHIFT = common dso_local global i32 0, align 4
@LCDDAH_HDE_SHIFT = common dso_local global i32 0, align 4
@LCDDAV = common dso_local global i32 0, align 4
@LCDDAV_VDS_SHIFT = common dso_local global i32 0, align 4
@LCDDAV_VDE_SHIFT = common dso_local global i32 0, align 4
@LCDHSYNC = common dso_local global i32 0, align 4
@LCDVSYNC = common dso_local global i32 0, align 4
@LCDCFG = common dso_local global i32 0, align 4
@LCDCFG_NEWDES = common dso_local global i32 0, align 4
@LCDCFG_RECOVER = common dso_local global i32 0, align 4
@LCDCFG_24 = common dso_local global i32 0, align 4
@LCDCFG_PSM = common dso_local global i32 0, align 4
@LCDCFG_CLSM = common dso_local global i32 0, align 4
@LCDCFG_SPLM = common dso_local global i32 0, align 4
@LCDCFG_REVM = common dso_local global i32 0, align 4
@LCDCFG_PCP = common dso_local global i32 0, align 4
@LCDCTRL = common dso_local global i32 0, align 4
@LCDCTRL_BST = common dso_local global i32 0, align 4
@LCDCTRL_BST_64 = common dso_local global i32 0, align 4
@LCDCTRL_OFUM = common dso_local global i32 0, align 4
@LCDPCFG = common dso_local global i32 0, align 4
@PCFG_MAGIC = common dso_local global i32 0, align 4
@LCDRGBC = common dso_local global i32 0, align 4
@LCDRGBC_RGBFMT = common dso_local global i32 0, align 4
@LCDSTATE = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@LCDDA0 = common dso_local global i32 0, align 4
@LCDDA1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"failed to set pixel clock to %u Hz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jzlcd_softc*, %struct.videomode*)* @jzlcd_set_videomode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jzlcd_set_videomode(%struct.jzlcd_softc* %0, %struct.videomode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.jzlcd_softc*, align 8
  %5 = alloca %struct.videomode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
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
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.jzlcd_softc* %0, %struct.jzlcd_softc** %4, align 8
  store %struct.videomode* %1, %struct.videomode** %5, align 8
  %20 = load %struct.videomode*, %struct.videomode** %5, align 8
  %21 = getelementptr inbounds %struct.videomode, %struct.videomode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.videomode*, %struct.videomode** %5, align 8
  %24 = getelementptr inbounds %struct.videomode, %struct.videomode* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %22, %25
  store i32 %26, i32* %6, align 4
  %27 = load %struct.videomode*, %struct.videomode** %5, align 8
  %28 = getelementptr inbounds %struct.videomode, %struct.videomode* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.videomode*, %struct.videomode** %5, align 8
  %31 = getelementptr inbounds %struct.videomode, %struct.videomode* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %29, %32
  store i32 %33, i32* %7, align 4
  %34 = load %struct.videomode*, %struct.videomode** %5, align 8
  %35 = getelementptr inbounds %struct.videomode, %struct.videomode* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.videomode*, %struct.videomode** %5, align 8
  %38 = getelementptr inbounds %struct.videomode, %struct.videomode* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %36, %39
  store i32 %40, i32* %8, align 4
  %41 = load %struct.videomode*, %struct.videomode** %5, align 8
  %42 = getelementptr inbounds %struct.videomode, %struct.videomode* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.videomode*, %struct.videomode** %5, align 8
  %45 = getelementptr inbounds %struct.videomode, %struct.videomode* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %43, %46
  store i32 %47, i32* %9, align 4
  %48 = load %struct.videomode*, %struct.videomode** %5, align 8
  %49 = getelementptr inbounds %struct.videomode, %struct.videomode* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.videomode*, %struct.videomode** %5, align 8
  %52 = getelementptr inbounds %struct.videomode, %struct.videomode* %51, i32 0, i32 7
  %53 = load i32, i32* %52, align 4
  %54 = sub nsw i32 %50, %53
  store i32 %54, i32* %10, align 4
  %55 = load %struct.videomode*, %struct.videomode** %5, align 8
  %56 = getelementptr inbounds %struct.videomode, %struct.videomode* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.videomode*, %struct.videomode** %5, align 8
  %59 = getelementptr inbounds %struct.videomode, %struct.videomode* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 %57, %60
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %62, %63
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load %struct.videomode*, %struct.videomode** %5, align 8
  %67 = getelementptr inbounds %struct.videomode, %struct.videomode* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %65, %68
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %70, %71
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %73, %74
  store i32 %75, i32* %15, align 4
  %76 = load i32, i32* %15, align 4
  %77 = load %struct.videomode*, %struct.videomode** %5, align 8
  %78 = getelementptr inbounds %struct.videomode, %struct.videomode* %77, i32 0, i32 7
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %76, %79
  store i32 %80, i32* %16, align 4
  %81 = load i32, i32* %16, align 4
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %81, %82
  store i32 %83, i32* %17, align 4
  %84 = load %struct.jzlcd_softc*, %struct.jzlcd_softc** %4, align 8
  %85 = load i32, i32* @LCDVAT, align 4
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* @LCDVAT_HT_SHIFT, align 4
  %88 = shl i32 %86, %87
  %89 = load i32, i32* %17, align 4
  %90 = load i32, i32* @LCDVAT_VT_SHIFT, align 4
  %91 = shl i32 %89, %90
  %92 = or i32 %88, %91
  %93 = call i32 @LCD_WRITE(%struct.jzlcd_softc* %84, i32 %85, i32 %92)
  %94 = load %struct.jzlcd_softc*, %struct.jzlcd_softc** %4, align 8
  %95 = load i32, i32* @LCDDAH, align 4
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* @LCDDAH_HDS_SHIFT, align 4
  %98 = shl i32 %96, %97
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* @LCDDAH_HDE_SHIFT, align 4
  %101 = shl i32 %99, %100
  %102 = or i32 %98, %101
  %103 = call i32 @LCD_WRITE(%struct.jzlcd_softc* %94, i32 %95, i32 %102)
  %104 = load %struct.jzlcd_softc*, %struct.jzlcd_softc** %4, align 8
  %105 = load i32, i32* @LCDDAV, align 4
  %106 = load i32, i32* %15, align 4
  %107 = load i32, i32* @LCDDAV_VDS_SHIFT, align 4
  %108 = shl i32 %106, %107
  %109 = load i32, i32* %16, align 4
  %110 = load i32, i32* @LCDDAV_VDE_SHIFT, align 4
  %111 = shl i32 %109, %110
  %112 = or i32 %108, %111
  %113 = call i32 @LCD_WRITE(%struct.jzlcd_softc* %104, i32 %105, i32 %112)
  %114 = load %struct.jzlcd_softc*, %struct.jzlcd_softc** %4, align 8
  %115 = load i32, i32* @LCDHSYNC, align 4
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @LCD_WRITE(%struct.jzlcd_softc* %114, i32 %115, i32 %116)
  %118 = load %struct.jzlcd_softc*, %struct.jzlcd_softc** %4, align 8
  %119 = load i32, i32* @LCDVSYNC, align 4
  %120 = load i32, i32* %11, align 4
  %121 = call i32 @LCD_WRITE(%struct.jzlcd_softc* %118, i32 %119, i32 %120)
  %122 = load %struct.jzlcd_softc*, %struct.jzlcd_softc** %4, align 8
  %123 = load i32, i32* @LCDCFG, align 4
  %124 = load i32, i32* @LCDCFG_NEWDES, align 4
  %125 = load i32, i32* @LCDCFG_RECOVER, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @LCDCFG_24, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @LCDCFG_PSM, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* @LCDCFG_CLSM, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* @LCDCFG_SPLM, align 4
  %134 = or i32 %132, %133
  %135 = load i32, i32* @LCDCFG_REVM, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* @LCDCFG_PCP, align 4
  %138 = or i32 %136, %137
  %139 = call i32 @LCD_WRITE(%struct.jzlcd_softc* %122, i32 %123, i32 %138)
  %140 = load %struct.jzlcd_softc*, %struct.jzlcd_softc** %4, align 8
  %141 = load i32, i32* @LCDCTRL, align 4
  %142 = call i32 @LCD_READ(%struct.jzlcd_softc* %140, i32 %141)
  store i32 %142, i32* %18, align 4
  %143 = load i32, i32* @LCDCTRL_BST, align 4
  %144 = xor i32 %143, -1
  %145 = load i32, i32* %18, align 4
  %146 = and i32 %145, %144
  store i32 %146, i32* %18, align 4
  %147 = load i32, i32* @LCDCTRL_BST_64, align 4
  %148 = load i32, i32* @LCDCTRL_OFUM, align 4
  %149 = or i32 %147, %148
  %150 = load i32, i32* %18, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %18, align 4
  %152 = load %struct.jzlcd_softc*, %struct.jzlcd_softc** %4, align 8
  %153 = load i32, i32* @LCDCTRL, align 4
  %154 = load i32, i32* %18, align 4
  %155 = call i32 @LCD_WRITE(%struct.jzlcd_softc* %152, i32 %153, i32 %154)
  %156 = load %struct.jzlcd_softc*, %struct.jzlcd_softc** %4, align 8
  %157 = load i32, i32* @LCDPCFG, align 4
  %158 = load i32, i32* @PCFG_MAGIC, align 4
  %159 = call i32 @LCD_WRITE(%struct.jzlcd_softc* %156, i32 %157, i32 %158)
  %160 = load %struct.jzlcd_softc*, %struct.jzlcd_softc** %4, align 8
  %161 = load i32, i32* @LCDRGBC, align 4
  %162 = load i32, i32* @LCDRGBC_RGBFMT, align 4
  %163 = call i32 @LCD_WRITE(%struct.jzlcd_softc* %160, i32 %161, i32 %162)
  %164 = load %struct.jzlcd_softc*, %struct.jzlcd_softc** %4, align 8
  %165 = load i32, i32* @LCDSTATE, align 4
  %166 = call i32 @LCD_WRITE(%struct.jzlcd_softc* %164, i32 %165, i32 0)
  %167 = load %struct.jzlcd_softc*, %struct.jzlcd_softc** %4, align 8
  %168 = load %struct.videomode*, %struct.videomode** %5, align 8
  %169 = call i32 @jzlcd_setup_descriptor(%struct.jzlcd_softc* %167, %struct.videomode* %168, i32 0)
  %170 = load %struct.jzlcd_softc*, %struct.jzlcd_softc** %4, align 8
  %171 = load %struct.videomode*, %struct.videomode** %5, align 8
  %172 = call i32 @jzlcd_setup_descriptor(%struct.jzlcd_softc* %170, %struct.videomode* %171, i32 1)
  %173 = load %struct.jzlcd_softc*, %struct.jzlcd_softc** %4, align 8
  %174 = getelementptr inbounds %struct.jzlcd_softc, %struct.jzlcd_softc* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.jzlcd_softc*, %struct.jzlcd_softc** %4, align 8
  %177 = getelementptr inbounds %struct.jzlcd_softc, %struct.jzlcd_softc* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %180 = call i32 @bus_dmamap_sync(i32 %175, i32 %178, i32 %179)
  %181 = load %struct.jzlcd_softc*, %struct.jzlcd_softc** %4, align 8
  %182 = load i32, i32* @LCDDA0, align 4
  %183 = load %struct.jzlcd_softc*, %struct.jzlcd_softc** %4, align 8
  %184 = getelementptr inbounds %struct.jzlcd_softc, %struct.jzlcd_softc* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = sext i32 %185 to i64
  %187 = add i64 %186, 4
  %188 = trunc i64 %187 to i32
  %189 = call i32 @LCD_WRITE(%struct.jzlcd_softc* %181, i32 %182, i32 %188)
  %190 = load %struct.jzlcd_softc*, %struct.jzlcd_softc** %4, align 8
  %191 = load i32, i32* @LCDDA1, align 4
  %192 = load %struct.jzlcd_softc*, %struct.jzlcd_softc** %4, align 8
  %193 = getelementptr inbounds %struct.jzlcd_softc, %struct.jzlcd_softc* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @LCD_WRITE(%struct.jzlcd_softc* %190, i32 %191, i32 %194)
  %196 = load %struct.jzlcd_softc*, %struct.jzlcd_softc** %4, align 8
  %197 = getelementptr inbounds %struct.jzlcd_softc, %struct.jzlcd_softc* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.videomode*, %struct.videomode** %5, align 8
  %200 = getelementptr inbounds %struct.videomode, %struct.videomode* %199, i32 0, i32 8
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @DOT_CLOCK_TO_HZ(i32 %201)
  %203 = call i32 @clk_set_freq(i32 %198, i32 %202, i32 0)
  store i32 %203, i32* %19, align 4
  %204 = load i32, i32* %19, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %216

206:                                              ; preds = %2
  %207 = load %struct.jzlcd_softc*, %struct.jzlcd_softc** %4, align 8
  %208 = getelementptr inbounds %struct.jzlcd_softc, %struct.jzlcd_softc* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.videomode*, %struct.videomode** %5, align 8
  %211 = getelementptr inbounds %struct.videomode, %struct.videomode* %210, i32 0, i32 8
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @DOT_CLOCK_TO_HZ(i32 %212)
  %214 = call i32 @device_printf(i32 %209, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %213)
  %215 = load i32, i32* %19, align 4
  store i32 %215, i32* %3, align 4
  br label %217

216:                                              ; preds = %2
  store i32 0, i32* %3, align 4
  br label %217

217:                                              ; preds = %216, %206
  %218 = load i32, i32* %3, align 4
  ret i32 %218
}

declare dso_local i32 @LCD_WRITE(%struct.jzlcd_softc*, i32, i32) #1

declare dso_local i32 @LCD_READ(%struct.jzlcd_softc*, i32) #1

declare dso_local i32 @jzlcd_setup_descriptor(%struct.jzlcd_softc*, %struct.videomode*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @clk_set_freq(i32, i32, i32) #1

declare dso_local i32 @DOT_CLOCK_TO_HZ(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
