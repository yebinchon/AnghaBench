; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_cpu_sparc64.c_uart_cpu_getdev.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_cpu_sparc64.c_uart_cpu_getdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_class = type { i32 }
%struct.uart_devinfo = type { i32, i32, i32, i8*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32*, i32, i64 }

@.str = private unnamed_addr constant [9 x i8] c"/options\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"compatible\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"se\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"FJSV,se\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"sab82532\00", align 1
@uart_sab82532_class = common dso_local global %struct.uart_class zeroinitializer, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"zs\00", align 1
@uart_z8530_class = common dso_local global %struct.uart_class zeroinitializer, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"lom-console\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"su\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"su_pnp\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"rsc-console\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"su16550\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"su16552\00", align 1
@uart_ns8250_class = common dso_local global %struct.uart_class zeroinitializer, align 4
@.str.13 = private unnamed_addr constant [7 x i8] c"sgsbbc\00", align 1
@uart_sbbc_class = common dso_local global %struct.uart_class zeroinitializer, align 4
@bst_store = common dso_local global i32* null, align 8
@UART_PARITY_NONE = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [8 x i8] c"%s-mode\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"ssp-console-modes\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"%d,%d,%c,%d,%c\00", align 1
@UART_PARITY_ODD = common dso_local global i8* null, align 8
@UART_PARITY_EVEN = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uart_cpu_getdev(i32 %0, %struct.uart_devinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.uart_devinfo*, align 8
  %6 = alloca [32 x i8], align 16
  %7 = alloca [32 x i8], align 16
  %8 = alloca [64 x i8], align 16
  %9 = alloca %struct.uart_class*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8, align 1
  %20 = alloca i8, align 1
  store i32 %0, i32* %4, align 4
  store %struct.uart_devinfo* %1, %struct.uart_devinfo** %5, align 8
  %21 = call i32 @OF_finddevice(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %21, i32* %11, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @ENXIO, align 4
  store i32 %24, i32* %3, align 4
  br label %289

25:                                               ; preds = %2
  %26 = load i32, i32* %4, align 4
  switch i32 %26, label %37 [
    i32 130, label %27
    i32 129, label %31
    i32 128, label %34
  ]

27:                                               ; preds = %25
  %28 = load i32, i32* %11, align 4
  %29 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %30 = call i32 @uart_cpu_getdev_console(i32 %28, i8* %29, i32 64)
  store i32 %30, i32* %10, align 4
  br label %38

31:                                               ; preds = %25
  %32 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %33 = call i32 @uart_cpu_getdev_dbgport(i8* %32, i32 64)
  store i32 %33, i32* %10, align 4
  br label %38

34:                                               ; preds = %25
  %35 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %36 = call i32 @uart_cpu_getdev_keyboard(i8* %35, i32 64)
  store i32 %36, i32* %10, align 4
  br label %38

37:                                               ; preds = %25
  store i32 -1, i32* %10, align 4
  br label %38

38:                                               ; preds = %37, %34, %31, %27
  %39 = load i32, i32* %10, align 4
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32, i32* @ENXIO, align 4
  store i32 %42, i32* %3, align 4
  br label %289

43:                                               ; preds = %38
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @OF_decode_addr(i32 %44, i32 0, i32* %17, i32* %12)
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* %15, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* %15, align 4
  store i32 %49, i32* %3, align 4
  br label %289

50:                                               ; preds = %43
  %51 = load i32, i32* %10, align 4
  %52 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %53 = call i32 @OF_getprop(i32 %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %52, i32 32)
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i32, i32* @ENXIO, align 4
  store i32 %56, i32* %3, align 4
  br label %289

57:                                               ; preds = %50
  %58 = load i32, i32* %10, align 4
  %59 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %60 = call i32 @OF_getprop(i32 %58, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %59, i32 32)
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  store i8 0, i8* %63, align 16
  br label %64

64:                                               ; preds = %62, %57
  %65 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %66 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store i32 0, i32* %67, align 8
  %68 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %69 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 4
  store i64 0, i64* %70, align 8
  store %struct.uart_class* null, %struct.uart_class** %9, align 8
  %71 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %72 = call i32 @strcmp(i8* %71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %64
  %75 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %76 = call i32 @strcmp(i8* %75, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %80 = call i32 @strcmp(i8* %79, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %103, label %82

82:                                               ; preds = %78, %74, %64
  store %struct.uart_class* @uart_sab82532_class, %struct.uart_class** %9, align 8
  %83 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %84 = call i8* @uart_cpu_channel(i8* %83)
  %85 = ptrtoint i8* %84 to i32
  %86 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %87 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %86, i32 0, i32 4
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  store i32 %85, i32* %88, align 4
  %89 = icmp eq i32 %85, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %82
  %91 = load i32, i32* @ENXIO, align 4
  store i32 %91, i32* %3, align 4
  br label %289

92:                                               ; preds = %82
  %93 = load %struct.uart_class*, %struct.uart_class** %9, align 8
  %94 = call i32 @uart_getrange(%struct.uart_class* %93)
  %95 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %96 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %95, i32 0, i32 4
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = sub nsw i32 %98, 1
  %100 = mul nsw i32 %94, %99
  %101 = load i32, i32* %12, align 4
  %102 = add nsw i32 %101, %100
  store i32 %102, i32* %12, align 4
  br label %190

103:                                              ; preds = %78
  %104 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %105 = call i32 @strcmp(i8* %104, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %147, label %107

107:                                              ; preds = %103
  store %struct.uart_class* @uart_z8530_class, %struct.uart_class** %9, align 8
  %108 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %109 = call i8* @uart_cpu_channel(i8* %108)
  %110 = ptrtoint i8* %109 to i32
  %111 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %112 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %111, i32 0, i32 4
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  store i32 %110, i32* %113, align 4
  %114 = icmp eq i32 %110, 0
  br i1 %114, label %115, label %125

115:                                              ; preds = %107
  %116 = load i32, i32* %4, align 4
  %117 = icmp eq i32 %116, 128
  br i1 %117, label %118, label %122

118:                                              ; preds = %115
  %119 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %120 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %119, i32 0, i32 4
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 1
  store i32 1, i32* %121, align 4
  br label %124

122:                                              ; preds = %115
  %123 = load i32, i32* @ENXIO, align 4
  store i32 %123, i32* %3, align 4
  br label %289

124:                                              ; preds = %118
  br label %125

125:                                              ; preds = %124, %107
  %126 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %127 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %126, i32 0, i32 4
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  store i32 1, i32* %128, align 8
  %129 = load %struct.uart_class*, %struct.uart_class** %9, align 8
  %130 = call i32 @uart_getrange(%struct.uart_class* %129)
  %131 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %132 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %131, i32 0, i32 4
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = shl i32 %130, %134
  store i32 %135, i32* %16, align 4
  %136 = load i32, i32* %16, align 4
  %137 = load i32, i32* %16, align 4
  %138 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %139 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %138, i32 0, i32 4
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = sub nsw i32 %141, 1
  %143 = mul nsw i32 %137, %142
  %144 = sub nsw i32 %136, %143
  %145 = load i32, i32* %12, align 4
  %146 = add nsw i32 %145, %144
  store i32 %146, i32* %12, align 4
  br label %189

147:                                              ; preds = %103
  %148 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %149 = call i32 @strcmp(i8* %148, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %175

151:                                              ; preds = %147
  %152 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %153 = call i32 @strcmp(i8* %152, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %175

155:                                              ; preds = %151
  %156 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %157 = call i32 @strcmp(i8* %156, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %175

159:                                              ; preds = %155
  %160 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %161 = call i32 @strcmp(i8* %160, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %175

163:                                              ; preds = %159
  %164 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %165 = call i32 @strcmp(i8* %164, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %175

167:                                              ; preds = %163
  %168 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %169 = call i32 @strcmp(i8* %168, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %167
  %172 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %173 = call i32 @strcmp(i8* %172, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %179, label %175

175:                                              ; preds = %171, %167, %163, %159, %155, %151, %147
  store %struct.uart_class* @uart_ns8250_class, %struct.uart_class** %9, align 8
  %176 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %177 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %176, i32 0, i32 4
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 1
  store i32 0, i32* %178, align 4
  br label %188

179:                                              ; preds = %171
  %180 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %181 = call i32 @strcmp(i8* %180, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0))
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %187, label %183

183:                                              ; preds = %179
  store %struct.uart_class* @uart_sbbc_class, %struct.uart_class** %9, align 8
  %184 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %185 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %184, i32 0, i32 4
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 1
  store i32 0, i32* %186, align 4
  br label %187

187:                                              ; preds = %183, %179
  br label %188

188:                                              ; preds = %187, %175
  br label %189

189:                                              ; preds = %188, %125
  br label %190

190:                                              ; preds = %189, %92
  %191 = load %struct.uart_class*, %struct.uart_class** %9, align 8
  %192 = icmp eq %struct.uart_class* %191, null
  br i1 %192, label %193, label %195

193:                                              ; preds = %190
  %194 = load i32, i32* @ENXIO, align 4
  store i32 %194, i32* %3, align 4
  br label %289

195:                                              ; preds = %190
  %196 = load %struct.uart_class*, %struct.uart_class** %9, align 8
  %197 = call i32 @uart_getops(%struct.uart_class* %196)
  %198 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %199 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %198, i32 0, i32 5
  store i32 %197, i32* %199, align 8
  %200 = load i32*, i32** @bst_store, align 8
  %201 = load i32, i32* %4, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  %204 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %205 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %204, i32 0, i32 4
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 2
  store i32* %203, i32** %206, align 8
  %207 = load i32, i32* %17, align 4
  %208 = load i32, i32* %12, align 4
  %209 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %210 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %209, i32 0, i32 4
  %211 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %210, i32 0, i32 2
  %212 = load i32*, i32** %211, align 8
  %213 = call i32 @sparc64_fake_bustag(i32 %207, i32 %208, i32* %212)
  %214 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %215 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %214, i32 0, i32 4
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i32 0, i32 3
  store i32 %213, i32* %216, align 8
  %217 = load i32, i32* %4, align 4
  %218 = icmp eq i32 %217, 128
  br i1 %218, label %219, label %222

219:                                              ; preds = %195
  %220 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %221 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %220, i32 0, i32 0
  store i32 1200, i32* %221, align 8
  br label %233

222:                                              ; preds = %195
  %223 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %224 = call i32 @strcmp(i8* %223, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %229, label %226

226:                                              ; preds = %222
  %227 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %228 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %227, i32 0, i32 0
  store i32 115200, i32* %228, align 8
  br label %232

229:                                              ; preds = %222
  %230 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %231 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %230, i32 0, i32 0
  store i32 9600, i32* %231, align 8
  br label %232

232:                                              ; preds = %229, %226
  br label %233

233:                                              ; preds = %232, %219
  %234 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %235 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %234, i32 0, i32 1
  store i32 8, i32* %235, align 4
  %236 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %237 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %236, i32 0, i32 2
  store i32 1, i32* %237, align 8
  %238 = load i8*, i8** @UART_PARITY_NONE, align 8
  %239 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %240 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %239, i32 0, i32 3
  store i8* %238, i8** %240, align 8
  %241 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %242 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %243 = call i32 @snprintf(i8* %241, i32 32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8* %242)
  %244 = load i32, i32* %11, align 4
  %245 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %246 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %247 = call i32 @OF_getprop(i32 %244, i8* %245, i8* %246, i32 32)
  %248 = icmp eq i32 %247, -1
  br i1 %248, label %249, label %255

249:                                              ; preds = %233
  %250 = load i32, i32* %10, align 4
  %251 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %252 = call i32 @OF_getprop(i32 %250, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i8* %251, i32 32)
  %253 = icmp eq i32 %252, -1
  br i1 %253, label %254, label %255

254:                                              ; preds = %249
  store i32 0, i32* %3, align 4
  br label %289

255:                                              ; preds = %249, %233
  %256 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %257 = call i32 @sscanf(i8* %256, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i32* %13, i32* %14, i8* %20, i32* %18, i8* %19)
  %258 = icmp ne i32 %257, 5
  br i1 %258, label %259, label %260

259:                                              ; preds = %255
  store i32 0, i32* %3, align 4
  br label %289

260:                                              ; preds = %255
  %261 = load i32, i32* %13, align 4
  %262 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %263 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %262, i32 0, i32 0
  store i32 %261, i32* %263, align 8
  %264 = load i32, i32* %14, align 4
  %265 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %266 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %265, i32 0, i32 1
  store i32 %264, i32* %266, align 4
  %267 = load i32, i32* %18, align 4
  %268 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %269 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %268, i32 0, i32 2
  store i32 %267, i32* %269, align 8
  %270 = load i8, i8* %20, align 1
  %271 = sext i8 %270 to i32
  %272 = icmp eq i32 %271, 110
  br i1 %272, label %273, label %275

273:                                              ; preds = %260
  %274 = load i8*, i8** @UART_PARITY_NONE, align 8
  br label %285

275:                                              ; preds = %260
  %276 = load i8, i8* %20, align 1
  %277 = sext i8 %276 to i32
  %278 = icmp eq i32 %277, 111
  br i1 %278, label %279, label %281

279:                                              ; preds = %275
  %280 = load i8*, i8** @UART_PARITY_ODD, align 8
  br label %283

281:                                              ; preds = %275
  %282 = load i8*, i8** @UART_PARITY_EVEN, align 8
  br label %283

283:                                              ; preds = %281, %279
  %284 = phi i8* [ %280, %279 ], [ %282, %281 ]
  br label %285

285:                                              ; preds = %283, %273
  %286 = phi i8* [ %274, %273 ], [ %284, %283 ]
  %287 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %288 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %287, i32 0, i32 3
  store i8* %286, i8** %288, align 8
  store i32 0, i32* %3, align 4
  br label %289

289:                                              ; preds = %285, %259, %254, %193, %122, %90, %55, %48, %41, %23
  %290 = load i32, i32* %3, align 4
  ret i32 %290
}

declare dso_local i32 @OF_finddevice(i8*) #1

declare dso_local i32 @uart_cpu_getdev_console(i32, i8*, i32) #1

declare dso_local i32 @uart_cpu_getdev_dbgport(i8*, i32) #1

declare dso_local i32 @uart_cpu_getdev_keyboard(i8*, i32) #1

declare dso_local i32 @OF_decode_addr(i32, i32, i32*, i32*) #1

declare dso_local i32 @OF_getprop(i32, i8*, i8*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @uart_cpu_channel(i8*) #1

declare dso_local i32 @uart_getrange(%struct.uart_class*) #1

declare dso_local i32 @uart_getops(%struct.uart_class*) #1

declare dso_local i32 @sparc64_fake_bustag(i32, i32, i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i8*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
