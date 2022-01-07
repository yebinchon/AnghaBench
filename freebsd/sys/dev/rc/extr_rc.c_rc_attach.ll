; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rc/extr_rc.c_rc_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rc/extr_rc.c_rc_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_chans = type { i32, %struct.tty*, i32, i32, i32, i32, i32*, i32*, i32*, i32*, %struct.rc_softc* }
%struct.tty = type { i32, i32, i32, i32, i32, i32, %struct.rc_chans* }
%struct.rc_softc = type { i32, i32, i32, i32*, %struct.rc_chans*, i32, i32**, i32, i32, i32 }

@IOBASE_ADDRS = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@iobase_addrs = common dso_local global i32* null, align 8
@ENXIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"ioport %d was rid %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to alloc ioports %x-%x\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"failed to alloc IRQ\0A\00", align 1
@CD180_PPRL = common dso_local global i32 0, align 4
@CD180_PPRH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"%d chans, firmware rev. %c\0A\00", align 1
@CD180_NCHAN = common dso_local global i32 0, align 4
@CD180_GFRCR = common dso_local global i32 0, align 4
@RC_IBUFSIZE = common dso_local global i64 0, align 8
@RC_IHIGHWATER = common dso_local global i64 0, align 8
@rc_start = common dso_local global i32 0, align 4
@rc_param = common dso_local global i32 0, align 4
@rc_modem = common dso_local global i32 0, align 4
@rc_break = common dso_local global i32 0, align 4
@rc_close = common dso_local global i32 0, align 4
@rc_stop = common dso_local global i32 0, align 4
@TS_CALLOUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"m%d\00", align 1
@INTR_TYPE_TTY = common dso_local global i32 0, align 4
@rc_intr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"failed to register interrupt handler\0A\00", align 1
@tty_intr_event = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"rc\00", align 1
@rc_pollcard = common dso_local global i32 0, align 4
@SWI_TTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @rc_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rc_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.rc_chans*, align 8
  %5 = alloca %struct.tty*, align 8
  %6 = alloca %struct.rc_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call %struct.rc_softc* @device_get_softc(i32 %13)
  store %struct.rc_softc* %14, %struct.rc_softc** %6, align 8
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.rc_softc*, %struct.rc_softc** %6, align 8
  %17 = getelementptr inbounds %struct.rc_softc, %struct.rc_softc* %16, i32 0, i32 9
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @isa_get_port(i32 %18)
  store i32 %19, i32* %7, align 4
  store i32 0, i32* %11, align 4
  br label %20

20:                                               ; preds = %40, %1
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @IOBASE_ADDRS, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %43

24:                                               ; preds = %20
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @SYS_RES_IOPORT, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32*, i32** @iobase_addrs, align 8
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %28, %33
  %35 = call i64 @bus_set_resource(i32 %25, i32 %26, i32 %27, i32 %34, i32 16)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %24
  %38 = load i32, i32* @ENXIO, align 4
  store i32 %38, i32* %2, align 4
  br label %278

39:                                               ; preds = %24
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %11, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %11, align 4
  br label %20

43:                                               ; preds = %20
  %44 = load i32, i32* @ENOMEM, align 4
  store i32 %44, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %45

45:                                               ; preds = %97, %43
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @IOBASE_ADDRS, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %100

49:                                               ; preds = %45
  %50 = load i32, i32* %11, align 4
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @SYS_RES_IOPORT, align 4
  %53 = load i32, i32* @RF_ACTIVE, align 4
  %54 = call i32* @bus_alloc_resource_anywhere(i32 %51, i32 %52, i32* %12, i32 16, i32 %53)
  %55 = load %struct.rc_softc*, %struct.rc_softc** %6, align 8
  %56 = getelementptr inbounds %struct.rc_softc, %struct.rc_softc* %55, i32 0, i32 6
  %57 = load i32**, i32*** %56, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32*, i32** %57, i64 %59
  store i32* %54, i32** %60, align 8
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %49
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %12, align 4
  %68 = call i32 (i32, i8*, ...) @device_printf(i32 %65, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %67)
  br label %274

69:                                               ; preds = %49
  %70 = load %struct.rc_softc*, %struct.rc_softc** %6, align 8
  %71 = getelementptr inbounds %struct.rc_softc, %struct.rc_softc* %70, i32 0, i32 6
  %72 = load i32**, i32*** %71, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32*, i32** %72, i64 %74
  %76 = load i32*, i32** %75, align 8
  %77 = icmp eq i32* %76, null
  br i1 %77, label %78, label %96

78:                                               ; preds = %69
  %79 = load i32, i32* %3, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load i32*, i32** @iobase_addrs, align 8
  %82 = load i32, i32* %11, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %80, %85
  %87 = load i32, i32* %7, align 4
  %88 = load i32*, i32** @iobase_addrs, align 8
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %87, %92
  %94 = add nsw i32 %93, 16
  %95 = call i32 (i32, i8*, ...) @device_printf(i32 %79, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %86, i32 %94)
  br label %274

96:                                               ; preds = %69
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %11, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %11, align 4
  br label %45

100:                                              ; preds = %45
  %101 = load %struct.rc_softc*, %struct.rc_softc** %6, align 8
  %102 = getelementptr inbounds %struct.rc_softc, %struct.rc_softc* %101, i32 0, i32 6
  %103 = load i32**, i32*** %102, align 8
  %104 = getelementptr inbounds i32*, i32** %103, i64 0
  %105 = load i32*, i32** %104, align 8
  %106 = call i32 @rman_get_bustag(i32* %105)
  %107 = load %struct.rc_softc*, %struct.rc_softc** %6, align 8
  %108 = getelementptr inbounds %struct.rc_softc, %struct.rc_softc* %107, i32 0, i32 8
  store i32 %106, i32* %108, align 4
  %109 = load %struct.rc_softc*, %struct.rc_softc** %6, align 8
  %110 = getelementptr inbounds %struct.rc_softc, %struct.rc_softc* %109, i32 0, i32 6
  %111 = load i32**, i32*** %110, align 8
  %112 = getelementptr inbounds i32*, i32** %111, i64 0
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @rman_get_bushandle(i32* %113)
  %115 = load %struct.rc_softc*, %struct.rc_softc** %6, align 8
  %116 = getelementptr inbounds %struct.rc_softc, %struct.rc_softc* %115, i32 0, i32 7
  store i32 %114, i32* %116, align 8
  %117 = load i32, i32* %3, align 4
  %118 = load i32, i32* @SYS_RES_IRQ, align 4
  %119 = load %struct.rc_softc*, %struct.rc_softc** %6, align 8
  %120 = getelementptr inbounds %struct.rc_softc, %struct.rc_softc* %119, i32 0, i32 5
  %121 = load i32, i32* @RF_ACTIVE, align 4
  %122 = call i32* @bus_alloc_resource_any(i32 %117, i32 %118, i32* %120, i32 %121)
  %123 = load %struct.rc_softc*, %struct.rc_softc** %6, align 8
  %124 = getelementptr inbounds %struct.rc_softc, %struct.rc_softc* %123, i32 0, i32 3
  store i32* %122, i32** %124, align 8
  %125 = load %struct.rc_softc*, %struct.rc_softc** %6, align 8
  %126 = getelementptr inbounds %struct.rc_softc, %struct.rc_softc* %125, i32 0, i32 3
  %127 = load i32*, i32** %126, align 8
  %128 = icmp eq i32* %127, null
  br i1 %128, label %129, label %132

129:                                              ; preds = %100
  %130 = load i32, i32* %3, align 4
  %131 = call i32 (i32, i8*, ...) @device_printf(i32 %130, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %274

132:                                              ; preds = %100
  %133 = load i32, i32* @ENXIO, align 4
  store i32 %133, i32* %10, align 4
  %134 = load %struct.rc_softc*, %struct.rc_softc** %6, align 8
  %135 = load i32, i32* @CD180_PPRL, align 4
  %136 = call i32 @rcout(%struct.rc_softc* %134, i32 %135, i32 34)
  %137 = load %struct.rc_softc*, %struct.rc_softc** %6, align 8
  %138 = load i32, i32* @CD180_PPRH, align 4
  %139 = call i32 @rcout(%struct.rc_softc* %137, i32 %138, i32 17)
  %140 = load %struct.rc_softc*, %struct.rc_softc** %6, align 8
  %141 = load i32, i32* @CD180_PPRL, align 4
  %142 = call i32 @rcin(%struct.rc_softc* %140, i32 %141)
  %143 = icmp ne i32 %142, 34
  br i1 %143, label %149, label %144

144:                                              ; preds = %132
  %145 = load %struct.rc_softc*, %struct.rc_softc** %6, align 8
  %146 = load i32, i32* @CD180_PPRH, align 4
  %147 = call i32 @rcin(%struct.rc_softc* %145, i32 %146)
  %148 = icmp ne i32 %147, 17
  br i1 %148, label %149, label %150

149:                                              ; preds = %144, %132
  br label %274

150:                                              ; preds = %144
  %151 = load %struct.rc_softc*, %struct.rc_softc** %6, align 8
  %152 = call i64 @rc_test(%struct.rc_softc* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %150
  br label %274

155:                                              ; preds = %150
  %156 = load i32, i32* %3, align 4
  %157 = call i32 @device_get_unit(i32 %156)
  %158 = load %struct.rc_softc*, %struct.rc_softc** %6, align 8
  %159 = getelementptr inbounds %struct.rc_softc, %struct.rc_softc* %158, i32 0, i32 0
  store i32 %157, i32* %159, align 8
  %160 = load i32, i32* %3, align 4
  %161 = load i32, i32* @CD180_NCHAN, align 4
  %162 = load %struct.rc_softc*, %struct.rc_softc** %6, align 8
  %163 = load i32, i32* @CD180_GFRCR, align 4
  %164 = call i32 @rcin(%struct.rc_softc* %162, i32 %163)
  %165 = and i32 %164, 15
  %166 = add nsw i32 %165, 65
  %167 = call i32 (i32, i8*, ...) @device_printf(i32 %160, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %161, i32 %166)
  %168 = load %struct.rc_softc*, %struct.rc_softc** %6, align 8
  %169 = getelementptr inbounds %struct.rc_softc, %struct.rc_softc* %168, i32 0, i32 4
  %170 = load %struct.rc_chans*, %struct.rc_chans** %169, align 8
  store %struct.rc_chans* %170, %struct.rc_chans** %4, align 8
  %171 = load i32, i32* @CD180_NCHAN, align 4
  %172 = load %struct.rc_softc*, %struct.rc_softc** %6, align 8
  %173 = getelementptr inbounds %struct.rc_softc, %struct.rc_softc* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = mul nsw i32 %171, %174
  store i32 %175, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %176

176:                                              ; preds = %246, %155
  %177 = load i32, i32* %9, align 4
  %178 = load i32, i32* @CD180_NCHAN, align 4
  %179 = icmp slt i32 %177, %178
  br i1 %179, label %180, label %251

180:                                              ; preds = %176
  %181 = load %struct.rc_softc*, %struct.rc_softc** %6, align 8
  %182 = load %struct.rc_chans*, %struct.rc_chans** %4, align 8
  %183 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %182, i32 0, i32 10
  store %struct.rc_softc* %181, %struct.rc_softc** %183, align 8
  %184 = load i32, i32* %9, align 4
  %185 = load %struct.rc_chans*, %struct.rc_chans** %4, align 8
  %186 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %185, i32 0, i32 0
  store i32 %184, i32* %186, align 8
  %187 = load %struct.rc_chans*, %struct.rc_chans** %4, align 8
  %188 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %187, i32 0, i32 6
  %189 = load i32*, i32** %188, align 8
  %190 = load %struct.rc_chans*, %struct.rc_chans** %4, align 8
  %191 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %190, i32 0, i32 9
  store i32* %189, i32** %191, align 8
  %192 = load %struct.rc_chans*, %struct.rc_chans** %4, align 8
  %193 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %192, i32 0, i32 6
  %194 = load i32*, i32** %193, align 8
  %195 = load i64, i64* @RC_IBUFSIZE, align 8
  %196 = getelementptr inbounds i32, i32* %194, i64 %195
  %197 = load %struct.rc_chans*, %struct.rc_chans** %4, align 8
  %198 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %197, i32 0, i32 8
  store i32* %196, i32** %198, align 8
  %199 = load %struct.rc_chans*, %struct.rc_chans** %4, align 8
  %200 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %199, i32 0, i32 6
  %201 = load i32*, i32** %200, align 8
  %202 = load i64, i64* @RC_IHIGHWATER, align 8
  %203 = getelementptr inbounds i32, i32* %201, i64 %202
  %204 = load %struct.rc_chans*, %struct.rc_chans** %4, align 8
  %205 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %204, i32 0, i32 7
  store i32* %203, i32** %205, align 8
  %206 = load %struct.rc_chans*, %struct.rc_chans** %4, align 8
  %207 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.rc_chans*, %struct.rc_chans** %4, align 8
  %210 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %209, i32 0, i32 4
  store i32 %208, i32* %210, align 8
  %211 = load %struct.rc_chans*, %struct.rc_chans** %4, align 8
  %212 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %211, i32 0, i32 5
  store i32 %208, i32* %212, align 4
  %213 = load %struct.rc_chans*, %struct.rc_chans** %4, align 8
  %214 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %213, i32 0, i32 2
  %215 = call i32 @callout_init(i32* %214, i32 0)
  %216 = call %struct.tty* (...) @ttyalloc()
  %217 = load %struct.rc_chans*, %struct.rc_chans** %4, align 8
  %218 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %217, i32 0, i32 1
  store %struct.tty* %216, %struct.tty** %218, align 8
  store %struct.tty* %216, %struct.tty** %5, align 8
  %219 = load %struct.rc_chans*, %struct.rc_chans** %4, align 8
  %220 = load %struct.tty*, %struct.tty** %5, align 8
  %221 = getelementptr inbounds %struct.tty, %struct.tty* %220, i32 0, i32 6
  store %struct.rc_chans* %219, %struct.rc_chans** %221, align 8
  %222 = load i32, i32* @rc_start, align 4
  %223 = load %struct.tty*, %struct.tty** %5, align 8
  %224 = getelementptr inbounds %struct.tty, %struct.tty* %223, i32 0, i32 5
  store i32 %222, i32* %224, align 4
  %225 = load i32, i32* @rc_param, align 4
  %226 = load %struct.tty*, %struct.tty** %5, align 8
  %227 = getelementptr inbounds %struct.tty, %struct.tty* %226, i32 0, i32 4
  store i32 %225, i32* %227, align 8
  %228 = load i32, i32* @rc_modem, align 4
  %229 = load %struct.tty*, %struct.tty** %5, align 8
  %230 = getelementptr inbounds %struct.tty, %struct.tty* %229, i32 0, i32 3
  store i32 %228, i32* %230, align 4
  %231 = load i32, i32* @rc_break, align 4
  %232 = load %struct.tty*, %struct.tty** %5, align 8
  %233 = getelementptr inbounds %struct.tty, %struct.tty* %232, i32 0, i32 2
  store i32 %231, i32* %233, align 8
  %234 = load i32, i32* @rc_close, align 4
  %235 = load %struct.tty*, %struct.tty** %5, align 8
  %236 = getelementptr inbounds %struct.tty, %struct.tty* %235, i32 0, i32 1
  store i32 %234, i32* %236, align 4
  %237 = load i32, i32* @rc_stop, align 4
  %238 = load %struct.tty*, %struct.tty** %5, align 8
  %239 = getelementptr inbounds %struct.tty, %struct.tty* %238, i32 0, i32 0
  store i32 %237, i32* %239, align 8
  %240 = load %struct.tty*, %struct.tty** %5, align 8
  %241 = load i32, i32* @TS_CALLOUT, align 4
  %242 = load i32, i32* %9, align 4
  %243 = load i32, i32* %8, align 4
  %244 = add nsw i32 %242, %243
  %245 = call i32 @ttycreate(%struct.tty* %240, i32 %241, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %244)
  br label %246

246:                                              ; preds = %180
  %247 = load i32, i32* %9, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %9, align 4
  %249 = load %struct.rc_chans*, %struct.rc_chans** %4, align 8
  %250 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %249, i32 1
  store %struct.rc_chans* %250, %struct.rc_chans** %4, align 8
  br label %176

251:                                              ; preds = %176
  %252 = load i32, i32* %3, align 4
  %253 = load %struct.rc_softc*, %struct.rc_softc** %6, align 8
  %254 = getelementptr inbounds %struct.rc_softc, %struct.rc_softc* %253, i32 0, i32 3
  %255 = load i32*, i32** %254, align 8
  %256 = load i32, i32* @INTR_TYPE_TTY, align 4
  %257 = load i32, i32* @rc_intr, align 4
  %258 = load %struct.rc_softc*, %struct.rc_softc** %6, align 8
  %259 = load %struct.rc_softc*, %struct.rc_softc** %6, align 8
  %260 = getelementptr inbounds %struct.rc_softc, %struct.rc_softc* %259, i32 0, i32 2
  %261 = call i32 @bus_setup_intr(i32 %252, i32* %255, i32 %256, i32* null, i32 %257, %struct.rc_softc* %258, i32* %260)
  store i32 %261, i32* %10, align 4
  %262 = load i32, i32* %10, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %267

264:                                              ; preds = %251
  %265 = load i32, i32* %3, align 4
  %266 = call i32 (i32, i8*, ...) @device_printf(i32 %265, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  br label %274

267:                                              ; preds = %251
  %268 = load i32, i32* @rc_pollcard, align 4
  %269 = load %struct.rc_softc*, %struct.rc_softc** %6, align 8
  %270 = load i32, i32* @SWI_TTY, align 4
  %271 = load %struct.rc_softc*, %struct.rc_softc** %6, align 8
  %272 = getelementptr inbounds %struct.rc_softc, %struct.rc_softc* %271, i32 0, i32 1
  %273 = call i32 @swi_add(i32* @tty_intr_event, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %268, %struct.rc_softc* %269, i32 %270, i32 0, i32* %272)
  store i32 0, i32* %2, align 4
  br label %278

274:                                              ; preds = %264, %154, %149, %129, %78, %64
  %275 = load i32, i32* %3, align 4
  %276 = call i32 @rc_release_resources(i32 %275)
  %277 = load i32, i32* %10, align 4
  store i32 %277, i32* %2, align 4
  br label %278

278:                                              ; preds = %274, %267, %37
  %279 = load i32, i32* %2, align 4
  ret i32 %279
}

declare dso_local %struct.rc_softc* @device_get_softc(i32) #1

declare dso_local i32 @isa_get_port(i32) #1

declare dso_local i64 @bus_set_resource(i32, i32, i32, i32, i32) #1

declare dso_local i32* @bus_alloc_resource_anywhere(i32, i32, i32*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @rman_get_bustag(i32*) #1

declare dso_local i32 @rman_get_bushandle(i32*) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @rcout(%struct.rc_softc*, i32, i32) #1

declare dso_local i32 @rcin(%struct.rc_softc*, i32) #1

declare dso_local i64 @rc_test(%struct.rc_softc*) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local %struct.tty* @ttyalloc(...) #1

declare dso_local i32 @ttycreate(%struct.tty*, i32, i8*, i32) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.rc_softc*, i32*) #1

declare dso_local i32 @swi_add(i32*, i8*, i32, %struct.rc_softc*, i32, i32, i32*) #1

declare dso_local i32 @rc_release_resources(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
