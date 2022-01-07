; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_ukbd.c_ukbd_parse_hid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_ukbd.c_ukbd_parse_hid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ukbd_softc = type { i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8* }

@UKBD_FLAG_HID_MASK = common dso_local global i32 0, align 4
@hid_input = common dso_local global i32 0, align 4
@HUP_CONSUMER = common dso_local global i32 0, align 4
@HUG_APPLE_EJECT = common dso_local global i32 0, align 4
@HIO_VARIABLE = common dso_local global i32 0, align 4
@UKBD_FLAG_APPLE_EJECT = common dso_local global i32 0, align 4
@UKBD_FLAG_APPLE_SWAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Found Apple eject-key\0A\00", align 1
@UKBD_FLAG_APPLE_FN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Found Apple FN-key\0A\00", align 1
@HUP_KEYBOARD = common dso_local global i32 0, align 4
@UKBD_FLAG_CTRL_L = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Found left control\0A\00", align 1
@UKBD_FLAG_CTRL_R = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Found right control\0A\00", align 1
@UKBD_FLAG_SHIFT_L = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"Found left shift\0A\00", align 1
@UKBD_FLAG_SHIFT_R = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"Found right shift\0A\00", align 1
@UKBD_FLAG_ALT_L = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"Found left alt\0A\00", align 1
@UKBD_FLAG_ALT_R = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"Found right alt\0A\00", align 1
@UKBD_FLAG_WIN_L = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [16 x i8] c"Found left GUI\0A\00", align 1
@UKBD_FLAG_WIN_R = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [17 x i8] c"Found right GUI\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"Ignoring keyboard event control\0A\00", align 1
@UKBD_FLAG_EVENTS = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [28 x i8] c"Found keyboard event array\0A\00", align 1
@hid_output = common dso_local global i32 0, align 4
@HUP_LEDS = common dso_local global i32 0, align 4
@UKBD_FLAG_NUMLOCK = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [24 x i8] c"Found keyboard numlock\0A\00", align 1
@UKBD_FLAG_CAPSLOCK = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [25 x i8] c"Found keyboard capslock\0A\00", align 1
@UKBD_FLAG_SCROLLLOCK = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [27 x i8] c"Found keyboard scrolllock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ukbd_softc*, i32*, i32)* @ukbd_parse_hid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ukbd_parse_hid(%struct.ukbd_softc* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.ukbd_softc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ukbd_softc* %0, %struct.ukbd_softc** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @UKBD_FLAG_HID_MASK, align 4
  %9 = xor i32 %8, -1
  %10 = load %struct.ukbd_softc*, %struct.ukbd_softc** %4, align 8
  %11 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = and i32 %12, %9
  store i32 %13, i32* %11, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @hid_input, align 4
  %17 = load %struct.ukbd_softc*, %struct.ukbd_softc** %4, align 8
  %18 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %17, i32 0, i32 30
  %19 = call i8* @hid_report_size(i32* %14, i32 %15, i32 %16, i32* %18)
  %20 = load %struct.ukbd_softc*, %struct.ukbd_softc** %4, align 8
  %21 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %20, i32 0, i32 31
  store i8* %19, i8** %21, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @HUP_CONSUMER, align 4
  %25 = load i32, i32* @HUG_APPLE_EJECT, align 4
  %26 = call i32 @HID_USAGE2(i32 %24, i32 %25)
  %27 = load i32, i32* @hid_input, align 4
  %28 = load %struct.ukbd_softc*, %struct.ukbd_softc** %4, align 8
  %29 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %28, i32 0, i32 29
  %30 = load %struct.ukbd_softc*, %struct.ukbd_softc** %4, align 8
  %31 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %30, i32 0, i32 28
  %32 = call i64 @hid_locate(i32* %22, i32 %23, i32 %26, i32 %27, i32 0, i32* %29, i32* %7, i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %3
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @HIO_VARIABLE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load i32, i32* @UKBD_FLAG_APPLE_EJECT, align 4
  %41 = load i32, i32* @UKBD_FLAG_APPLE_SWAP, align 4
  %42 = or i32 %40, %41
  %43 = load %struct.ukbd_softc*, %struct.ukbd_softc** %4, align 8
  %44 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  br label %47

47:                                               ; preds = %39, %34
  %48 = call i32 @DPRINTFN(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %3
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @HID_USAGE2(i32 65535, i32 3)
  %53 = load i32, i32* @hid_input, align 4
  %54 = load %struct.ukbd_softc*, %struct.ukbd_softc** %4, align 8
  %55 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %54, i32 0, i32 27
  %56 = load %struct.ukbd_softc*, %struct.ukbd_softc** %4, align 8
  %57 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %56, i32 0, i32 26
  %58 = call i64 @hid_locate(i32* %50, i32 %51, i32 %52, i32 %53, i32 0, i32* %55, i32* %7, i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %49
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @HIO_VARIABLE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load i32, i32* @UKBD_FLAG_APPLE_FN, align 4
  %67 = load %struct.ukbd_softc*, %struct.ukbd_softc** %4, align 8
  %68 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 8
  br label %71

71:                                               ; preds = %65, %60
  %72 = call i32 @DPRINTFN(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %49
  %74 = load i32*, i32** %5, align 8
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @HUP_KEYBOARD, align 4
  %77 = call i32 @HID_USAGE2(i32 %76, i32 224)
  %78 = load i32, i32* @hid_input, align 4
  %79 = load %struct.ukbd_softc*, %struct.ukbd_softc** %4, align 8
  %80 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %79, i32 0, i32 25
  %81 = load %struct.ukbd_softc*, %struct.ukbd_softc** %4, align 8
  %82 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %81, i32 0, i32 24
  %83 = call i64 @hid_locate(i32* %74, i32 %75, i32 %77, i32 %78, i32 0, i32* %80, i32* %7, i32* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %98

85:                                               ; preds = %73
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @HIO_VARIABLE, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %85
  %91 = load i32, i32* @UKBD_FLAG_CTRL_L, align 4
  %92 = load %struct.ukbd_softc*, %struct.ukbd_softc** %4, align 8
  %93 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 8
  br label %96

96:                                               ; preds = %90, %85
  %97 = call i32 @DPRINTFN(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %98

98:                                               ; preds = %96, %73
  %99 = load i32*, i32** %5, align 8
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* @HUP_KEYBOARD, align 4
  %102 = call i32 @HID_USAGE2(i32 %101, i32 228)
  %103 = load i32, i32* @hid_input, align 4
  %104 = load %struct.ukbd_softc*, %struct.ukbd_softc** %4, align 8
  %105 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %104, i32 0, i32 23
  %106 = load %struct.ukbd_softc*, %struct.ukbd_softc** %4, align 8
  %107 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %106, i32 0, i32 22
  %108 = call i64 @hid_locate(i32* %99, i32 %100, i32 %102, i32 %103, i32 0, i32* %105, i32* %7, i32* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %123

110:                                              ; preds = %98
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* @HIO_VARIABLE, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %110
  %116 = load i32, i32* @UKBD_FLAG_CTRL_R, align 4
  %117 = load %struct.ukbd_softc*, %struct.ukbd_softc** %4, align 8
  %118 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = or i32 %119, %116
  store i32 %120, i32* %118, align 8
  br label %121

121:                                              ; preds = %115, %110
  %122 = call i32 @DPRINTFN(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %123

123:                                              ; preds = %121, %98
  %124 = load i32*, i32** %5, align 8
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* @HUP_KEYBOARD, align 4
  %127 = call i32 @HID_USAGE2(i32 %126, i32 225)
  %128 = load i32, i32* @hid_input, align 4
  %129 = load %struct.ukbd_softc*, %struct.ukbd_softc** %4, align 8
  %130 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %129, i32 0, i32 21
  %131 = load %struct.ukbd_softc*, %struct.ukbd_softc** %4, align 8
  %132 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %131, i32 0, i32 20
  %133 = call i64 @hid_locate(i32* %124, i32 %125, i32 %127, i32 %128, i32 0, i32* %130, i32* %7, i32* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %148

135:                                              ; preds = %123
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* @HIO_VARIABLE, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %135
  %141 = load i32, i32* @UKBD_FLAG_SHIFT_L, align 4
  %142 = load %struct.ukbd_softc*, %struct.ukbd_softc** %4, align 8
  %143 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = or i32 %144, %141
  store i32 %145, i32* %143, align 8
  br label %146

146:                                              ; preds = %140, %135
  %147 = call i32 @DPRINTFN(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %148

148:                                              ; preds = %146, %123
  %149 = load i32*, i32** %5, align 8
  %150 = load i32, i32* %6, align 4
  %151 = load i32, i32* @HUP_KEYBOARD, align 4
  %152 = call i32 @HID_USAGE2(i32 %151, i32 229)
  %153 = load i32, i32* @hid_input, align 4
  %154 = load %struct.ukbd_softc*, %struct.ukbd_softc** %4, align 8
  %155 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %154, i32 0, i32 19
  %156 = load %struct.ukbd_softc*, %struct.ukbd_softc** %4, align 8
  %157 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %156, i32 0, i32 18
  %158 = call i64 @hid_locate(i32* %149, i32 %150, i32 %152, i32 %153, i32 0, i32* %155, i32* %7, i32* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %173

160:                                              ; preds = %148
  %161 = load i32, i32* %7, align 4
  %162 = load i32, i32* @HIO_VARIABLE, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %160
  %166 = load i32, i32* @UKBD_FLAG_SHIFT_R, align 4
  %167 = load %struct.ukbd_softc*, %struct.ukbd_softc** %4, align 8
  %168 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = or i32 %169, %166
  store i32 %170, i32* %168, align 8
  br label %171

171:                                              ; preds = %165, %160
  %172 = call i32 @DPRINTFN(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  br label %173

173:                                              ; preds = %171, %148
  %174 = load i32*, i32** %5, align 8
  %175 = load i32, i32* %6, align 4
  %176 = load i32, i32* @HUP_KEYBOARD, align 4
  %177 = call i32 @HID_USAGE2(i32 %176, i32 226)
  %178 = load i32, i32* @hid_input, align 4
  %179 = load %struct.ukbd_softc*, %struct.ukbd_softc** %4, align 8
  %180 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %179, i32 0, i32 17
  %181 = load %struct.ukbd_softc*, %struct.ukbd_softc** %4, align 8
  %182 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %181, i32 0, i32 16
  %183 = call i64 @hid_locate(i32* %174, i32 %175, i32 %177, i32 %178, i32 0, i32* %180, i32* %7, i32* %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %198

185:                                              ; preds = %173
  %186 = load i32, i32* %7, align 4
  %187 = load i32, i32* @HIO_VARIABLE, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %196

190:                                              ; preds = %185
  %191 = load i32, i32* @UKBD_FLAG_ALT_L, align 4
  %192 = load %struct.ukbd_softc*, %struct.ukbd_softc** %4, align 8
  %193 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = or i32 %194, %191
  store i32 %195, i32* %193, align 8
  br label %196

196:                                              ; preds = %190, %185
  %197 = call i32 @DPRINTFN(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  br label %198

198:                                              ; preds = %196, %173
  %199 = load i32*, i32** %5, align 8
  %200 = load i32, i32* %6, align 4
  %201 = load i32, i32* @HUP_KEYBOARD, align 4
  %202 = call i32 @HID_USAGE2(i32 %201, i32 230)
  %203 = load i32, i32* @hid_input, align 4
  %204 = load %struct.ukbd_softc*, %struct.ukbd_softc** %4, align 8
  %205 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %204, i32 0, i32 15
  %206 = load %struct.ukbd_softc*, %struct.ukbd_softc** %4, align 8
  %207 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %206, i32 0, i32 14
  %208 = call i64 @hid_locate(i32* %199, i32 %200, i32 %202, i32 %203, i32 0, i32* %205, i32* %7, i32* %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %223

210:                                              ; preds = %198
  %211 = load i32, i32* %7, align 4
  %212 = load i32, i32* @HIO_VARIABLE, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %221

215:                                              ; preds = %210
  %216 = load i32, i32* @UKBD_FLAG_ALT_R, align 4
  %217 = load %struct.ukbd_softc*, %struct.ukbd_softc** %4, align 8
  %218 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = or i32 %219, %216
  store i32 %220, i32* %218, align 8
  br label %221

221:                                              ; preds = %215, %210
  %222 = call i32 @DPRINTFN(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  br label %223

223:                                              ; preds = %221, %198
  %224 = load i32*, i32** %5, align 8
  %225 = load i32, i32* %6, align 4
  %226 = load i32, i32* @HUP_KEYBOARD, align 4
  %227 = call i32 @HID_USAGE2(i32 %226, i32 227)
  %228 = load i32, i32* @hid_input, align 4
  %229 = load %struct.ukbd_softc*, %struct.ukbd_softc** %4, align 8
  %230 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %229, i32 0, i32 13
  %231 = load %struct.ukbd_softc*, %struct.ukbd_softc** %4, align 8
  %232 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %231, i32 0, i32 12
  %233 = call i64 @hid_locate(i32* %224, i32 %225, i32 %227, i32 %228, i32 0, i32* %230, i32* %7, i32* %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %248

235:                                              ; preds = %223
  %236 = load i32, i32* %7, align 4
  %237 = load i32, i32* @HIO_VARIABLE, align 4
  %238 = and i32 %236, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %246

240:                                              ; preds = %235
  %241 = load i32, i32* @UKBD_FLAG_WIN_L, align 4
  %242 = load %struct.ukbd_softc*, %struct.ukbd_softc** %4, align 8
  %243 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = or i32 %244, %241
  store i32 %245, i32* %243, align 8
  br label %246

246:                                              ; preds = %240, %235
  %247 = call i32 @DPRINTFN(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  br label %248

248:                                              ; preds = %246, %223
  %249 = load i32*, i32** %5, align 8
  %250 = load i32, i32* %6, align 4
  %251 = load i32, i32* @HUP_KEYBOARD, align 4
  %252 = call i32 @HID_USAGE2(i32 %251, i32 231)
  %253 = load i32, i32* @hid_input, align 4
  %254 = load %struct.ukbd_softc*, %struct.ukbd_softc** %4, align 8
  %255 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %254, i32 0, i32 11
  %256 = load %struct.ukbd_softc*, %struct.ukbd_softc** %4, align 8
  %257 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %256, i32 0, i32 10
  %258 = call i64 @hid_locate(i32* %249, i32 %250, i32 %252, i32 %253, i32 0, i32* %255, i32* %7, i32* %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %273

260:                                              ; preds = %248
  %261 = load i32, i32* %7, align 4
  %262 = load i32, i32* @HIO_VARIABLE, align 4
  %263 = and i32 %261, %262
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %271

265:                                              ; preds = %260
  %266 = load i32, i32* @UKBD_FLAG_WIN_R, align 4
  %267 = load %struct.ukbd_softc*, %struct.ukbd_softc** %4, align 8
  %268 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = or i32 %269, %266
  store i32 %270, i32* %268, align 8
  br label %271

271:                                              ; preds = %265, %260
  %272 = call i32 @DPRINTFN(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  br label %273

273:                                              ; preds = %271, %248
  %274 = load i32*, i32** %5, align 8
  %275 = load i32, i32* %6, align 4
  %276 = load i32, i32* @HUP_KEYBOARD, align 4
  %277 = call i32 @HID_USAGE2(i32 %276, i32 0)
  %278 = load i32, i32* @hid_input, align 4
  %279 = load %struct.ukbd_softc*, %struct.ukbd_softc** %4, align 8
  %280 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %279, i32 0, i32 9
  %281 = load %struct.ukbd_softc*, %struct.ukbd_softc** %4, align 8
  %282 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %281, i32 0, i32 8
  %283 = call i64 @hid_locate(i32* %274, i32 %275, i32 %277, i32 %278, i32 0, i32* %280, i32* %7, i32* %282)
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %300

285:                                              ; preds = %273
  %286 = load i32, i32* %7, align 4
  %287 = load i32, i32* @HIO_VARIABLE, align 4
  %288 = and i32 %286, %287
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %292

290:                                              ; preds = %285
  %291 = call i32 @DPRINTFN(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0))
  br label %299

292:                                              ; preds = %285
  %293 = load i32, i32* @UKBD_FLAG_EVENTS, align 4
  %294 = load %struct.ukbd_softc*, %struct.ukbd_softc** %4, align 8
  %295 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = or i32 %296, %293
  store i32 %297, i32* %295, align 8
  %298 = call i32 @DPRINTFN(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0))
  br label %299

299:                                              ; preds = %292, %290
  br label %300

300:                                              ; preds = %299, %273
  %301 = load i32*, i32** %5, align 8
  %302 = load i32, i32* %6, align 4
  %303 = load i32, i32* @hid_output, align 4
  %304 = call i8* @hid_report_size(i32* %301, i32 %302, i32 %303, i32* null)
  %305 = load %struct.ukbd_softc*, %struct.ukbd_softc** %4, align 8
  %306 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %305, i32 0, i32 7
  store i8* %304, i8** %306, align 8
  %307 = load i32*, i32** %5, align 8
  %308 = load i32, i32* %6, align 4
  %309 = load i32, i32* @HUP_LEDS, align 4
  %310 = call i32 @HID_USAGE2(i32 %309, i32 1)
  %311 = load i32, i32* @hid_output, align 4
  %312 = load %struct.ukbd_softc*, %struct.ukbd_softc** %4, align 8
  %313 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %312, i32 0, i32 6
  %314 = load %struct.ukbd_softc*, %struct.ukbd_softc** %4, align 8
  %315 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %314, i32 0, i32 5
  %316 = call i64 @hid_locate(i32* %307, i32 %308, i32 %310, i32 %311, i32 0, i32* %313, i32* %7, i32* %315)
  %317 = icmp ne i64 %316, 0
  br i1 %317, label %318, label %331

318:                                              ; preds = %300
  %319 = load i32, i32* %7, align 4
  %320 = load i32, i32* @HIO_VARIABLE, align 4
  %321 = and i32 %319, %320
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %329

323:                                              ; preds = %318
  %324 = load i32, i32* @UKBD_FLAG_NUMLOCK, align 4
  %325 = load %struct.ukbd_softc*, %struct.ukbd_softc** %4, align 8
  %326 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 8
  %328 = or i32 %327, %324
  store i32 %328, i32* %326, align 8
  br label %329

329:                                              ; preds = %323, %318
  %330 = call i32 @DPRINTFN(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0))
  br label %331

331:                                              ; preds = %329, %300
  %332 = load i32*, i32** %5, align 8
  %333 = load i32, i32* %6, align 4
  %334 = load i32, i32* @HUP_LEDS, align 4
  %335 = call i32 @HID_USAGE2(i32 %334, i32 2)
  %336 = load i32, i32* @hid_output, align 4
  %337 = load %struct.ukbd_softc*, %struct.ukbd_softc** %4, align 8
  %338 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %337, i32 0, i32 4
  %339 = load %struct.ukbd_softc*, %struct.ukbd_softc** %4, align 8
  %340 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %339, i32 0, i32 3
  %341 = call i64 @hid_locate(i32* %332, i32 %333, i32 %335, i32 %336, i32 0, i32* %338, i32* %7, i32* %340)
  %342 = icmp ne i64 %341, 0
  br i1 %342, label %343, label %356

343:                                              ; preds = %331
  %344 = load i32, i32* %7, align 4
  %345 = load i32, i32* @HIO_VARIABLE, align 4
  %346 = and i32 %344, %345
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %354

348:                                              ; preds = %343
  %349 = load i32, i32* @UKBD_FLAG_CAPSLOCK, align 4
  %350 = load %struct.ukbd_softc*, %struct.ukbd_softc** %4, align 8
  %351 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 8
  %353 = or i32 %352, %349
  store i32 %353, i32* %351, align 8
  br label %354

354:                                              ; preds = %348, %343
  %355 = call i32 @DPRINTFN(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0))
  br label %356

356:                                              ; preds = %354, %331
  %357 = load i32*, i32** %5, align 8
  %358 = load i32, i32* %6, align 4
  %359 = load i32, i32* @HUP_LEDS, align 4
  %360 = call i32 @HID_USAGE2(i32 %359, i32 3)
  %361 = load i32, i32* @hid_output, align 4
  %362 = load %struct.ukbd_softc*, %struct.ukbd_softc** %4, align 8
  %363 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %362, i32 0, i32 2
  %364 = load %struct.ukbd_softc*, %struct.ukbd_softc** %4, align 8
  %365 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %364, i32 0, i32 1
  %366 = call i64 @hid_locate(i32* %357, i32 %358, i32 %360, i32 %361, i32 0, i32* %363, i32* %7, i32* %365)
  %367 = icmp ne i64 %366, 0
  br i1 %367, label %368, label %381

368:                                              ; preds = %356
  %369 = load i32, i32* %7, align 4
  %370 = load i32, i32* @HIO_VARIABLE, align 4
  %371 = and i32 %369, %370
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %379

373:                                              ; preds = %368
  %374 = load i32, i32* @UKBD_FLAG_SCROLLLOCK, align 4
  %375 = load %struct.ukbd_softc*, %struct.ukbd_softc** %4, align 8
  %376 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 8
  %378 = or i32 %377, %374
  store i32 %378, i32* %376, align 8
  br label %379

379:                                              ; preds = %373, %368
  %380 = call i32 @DPRINTFN(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0))
  br label %381

381:                                              ; preds = %379, %356
  ret void
}

declare dso_local i8* @hid_report_size(i32*, i32, i32, i32*) #1

declare dso_local i64 @hid_locate(i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @HID_USAGE2(i32, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
