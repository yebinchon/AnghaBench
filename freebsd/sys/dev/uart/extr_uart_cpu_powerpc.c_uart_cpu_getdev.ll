; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_cpu_powerpc.c_uart_cpu_getdev.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_cpu_powerpc.c_uart_cpu_getdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_class = type { i32 }
%struct.uart_devinfo = type { i8, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i8, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"/options\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"/chosen\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"stdout-path\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"linux,stdout-path\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"stdin-path\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"input-device\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"output-device\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"input-device-1\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"output-device-1\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"serial0\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"hw.uart.dbgport\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [12 x i8] c"device_type\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"chrp,es\00", align 1
@uart_z8530_class = common dso_local global %struct.uart_class zeroinitializer, align 4
@.str.16 = private unnamed_addr constant [8 x i8] c"ns16550\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"ns8250\00", align 1
@uart_ns8250_class = common dso_local global %struct.uart_class zeroinitializer, align 4
@.str.18 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"current-speed\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"reg-shift\00", align 1
@UART_PARITY_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uart_cpu_getdev(i32 %0, %struct.uart_devinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.uart_devinfo*, align 8
  %6 = alloca [64 x i8], align 16
  %7 = alloca %struct.uart_class*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.uart_devinfo* %1, %struct.uart_devinfo** %5, align 8
  %12 = call i32 @OF_finddevice(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* %9, align 4
  %13 = call i32 @OF_finddevice(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %4, align 4
  switch i32 %14, label %109 [
    i32 129, label %15
    i32 128, label %95
  ]

15:                                               ; preds = %2
  %16 = load i32, i32* @ENXIO, align 4
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, -1
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @ofw_get_uart_console(i32 %23, i32* %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* null)
  store i32 %24, i32* %11, align 4
  br label %25

25:                                               ; preds = %22, %19, %15
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, -1
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @ofw_get_uart_console(i32 %32, i32* %8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* null)
  store i32 %33, i32* %11, align 4
  br label %34

34:                                               ; preds = %31, %28, %25
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, -1
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @ofw_get_console_phandle_path(i32 %41, i32* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store i32 %42, i32* %11, align 4
  br label %43

43:                                               ; preds = %40, %37, %34
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, -1
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @ofw_get_uart_console(i32 %50, i32* %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* null)
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %49, %46, %43
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, -1
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @ofw_get_console_phandle_path(i32 %59, i32* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  store i32 %60, i32* %11, align 4
  br label %61

61:                                               ; preds = %58, %55, %52
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, -1
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @ofw_get_uart_console(i32 %68, i32* %8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  store i32 %69, i32* %11, align 4
  br label %70

70:                                               ; preds = %67, %64, %61
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, -1
  br i1 %72, label %73, label %79

73:                                               ; preds = %70
  %74 = load i32, i32* %11, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @ofw_get_uart_console(i32 %77, i32* %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  store i32 %78, i32* %11, align 4
  br label %79

79:                                               ; preds = %76, %73, %70
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %79
  %83 = call i32 @OF_finddevice(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp eq i32 %84, -1
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = load i32, i32* @ENXIO, align 4
  store i32 %87, i32* %11, align 4
  br label %88

88:                                               ; preds = %86, %82
  br label %89

89:                                               ; preds = %88, %79
  %90 = load i32, i32* %11, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = load i32, i32* %11, align 4
  store i32 %93, i32* %3, align 4
  br label %209

94:                                               ; preds = %89
  br label %111

95:                                               ; preds = %2
  %96 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %97 = call i32 @getenv_string(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i8* %96, i32 64)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %95
  %100 = load i32, i32* @ENXIO, align 4
  store i32 %100, i32* %3, align 4
  br label %209

101:                                              ; preds = %95
  %102 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %103 = call i32 @OF_finddevice(i8* %102)
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* %8, align 4
  %105 = icmp eq i32 %104, -1
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = load i32, i32* @ENXIO, align 4
  store i32 %107, i32* %3, align 4
  br label %209

108:                                              ; preds = %101
  br label %111

109:                                              ; preds = %2
  %110 = load i32, i32* @EINVAL, align 4
  store i32 %110, i32* %3, align 4
  br label %209

111:                                              ; preds = %108, %94
  %112 = load i32, i32* %8, align 4
  %113 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %114 = call i32 @OF_getprop(i32 %112, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i8* %113, i32 64)
  %115 = icmp eq i32 %114, -1
  br i1 %115, label %116, label %118

116:                                              ; preds = %111
  %117 = load i32, i32* @ENXIO, align 4
  store i32 %117, i32* %3, align 4
  br label %209

118:                                              ; preds = %111
  %119 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %120 = call i64 @strcmp(i8* %119, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %118
  %123 = load i32, i32* @ENXIO, align 4
  store i32 %123, i32* %3, align 4
  br label %209

124:                                              ; preds = %118
  %125 = load i32, i32* %8, align 4
  %126 = call i64 @ofw_bus_node_is_compatible(i32 %125, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0))
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %124
  store %struct.uart_class* @uart_z8530_class, %struct.uart_class** %7, align 8
  %129 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %130 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %129, i32 0, i32 4
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  store i32 4, i32* %131, align 4
  %132 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %133 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %132, i32 0, i32 4
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 1
  store i32 1, i32* %134, align 4
  br label %153

135:                                              ; preds = %124
  %136 = load i32, i32* %8, align 4
  %137 = call i64 @ofw_bus_node_is_compatible(i32 %136, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0))
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %143, label %139

139:                                              ; preds = %135
  %140 = load i32, i32* %8, align 4
  %141 = call i64 @ofw_bus_node_is_compatible(i32 %140, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0))
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %150

143:                                              ; preds = %139, %135
  store %struct.uart_class* @uart_ns8250_class, %struct.uart_class** %7, align 8
  %144 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %145 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %144, i32 0, i32 4
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  store i32 0, i32* %146, align 4
  %147 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %148 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %147, i32 0, i32 4
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 1
  store i32 0, i32* %149, align 4
  br label %152

150:                                              ; preds = %139
  %151 = load i32, i32* @ENXIO, align 4
  store i32 %151, i32* %3, align 4
  br label %209

152:                                              ; preds = %143
  br label %153

153:                                              ; preds = %152, %128
  %154 = load %struct.uart_class*, %struct.uart_class** %7, align 8
  %155 = icmp eq %struct.uart_class* %154, null
  br i1 %155, label %156, label %158

156:                                              ; preds = %153
  %157 = load i32, i32* @ENXIO, align 4
  store i32 %157, i32* %3, align 4
  br label %209

158:                                              ; preds = %153
  %159 = load i32, i32* %8, align 4
  %160 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %161 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %160, i32 0, i32 4
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 4
  %163 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %164 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %163, i32 0, i32 4
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 3
  %166 = call i32 @OF_decode_addr(i32 %159, i32 0, i32* %162, i32* %165, i32* null)
  store i32 %166, i32* %11, align 4
  %167 = load i32, i32* %11, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %158
  %170 = load i32, i32* %11, align 4
  store i32 %170, i32* %3, align 4
  br label %209

171:                                              ; preds = %158
  %172 = load %struct.uart_class*, %struct.uart_class** %7, align 8
  %173 = call i32 @uart_getops(%struct.uart_class* %172)
  %174 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %175 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %174, i32 0, i32 5
  store i32 %173, i32* %175, align 4
  %176 = load i32, i32* %8, align 4
  %177 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %178 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %177, i32 0, i32 4
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 2
  %180 = call i32 @OF_getprop(i32 %176, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i8* %179, i32 1)
  %181 = icmp eq i32 %180, -1
  br i1 %181, label %182, label %186

182:                                              ; preds = %171
  %183 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %184 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %183, i32 0, i32 4
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 2
  store i8 0, i8* %185, align 4
  br label %186

186:                                              ; preds = %182, %171
  %187 = load i32, i32* %8, align 4
  %188 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %189 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %188, i32 0, i32 0
  %190 = call i32 @OF_getprop(i32 %187, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i8* %189, i32 1)
  %191 = icmp eq i32 %190, -1
  br i1 %191, label %192, label %195

192:                                              ; preds = %186
  %193 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %194 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %193, i32 0, i32 0
  store i8 0, i8* %194, align 4
  br label %195

195:                                              ; preds = %192, %186
  %196 = load i32, i32* %8, align 4
  %197 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %198 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %197, i32 0, i32 4
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 0
  %200 = bitcast i32* %199 to i8*
  %201 = call i32 @OF_getprop(i32 %196, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0), i8* %200, i32 4)
  %202 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %203 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %202, i32 0, i32 1
  store i32 8, i32* %203, align 4
  %204 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %205 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %204, i32 0, i32 2
  store i32 1, i32* %205, align 4
  %206 = load i32, i32* @UART_PARITY_NONE, align 4
  %207 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %208 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %207, i32 0, i32 3
  store i32 %206, i32* %208, align 4
  store i32 0, i32* %3, align 4
  br label %209

209:                                              ; preds = %195, %169, %156, %150, %122, %116, %109, %106, %99, %92
  %210 = load i32, i32* %3, align 4
  ret i32 %210
}

declare dso_local i32 @OF_finddevice(i8*) #1

declare dso_local i32 @ofw_get_uart_console(i32, i32*, i8*, i8*) #1

declare dso_local i32 @ofw_get_console_phandle_path(i32, i32*, i8*) #1

declare dso_local i32 @getenv_string(i8*, i8*, i32) #1

declare dso_local i32 @OF_getprop(i32, i8*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @ofw_bus_node_is_compatible(i32, i8*) #1

declare dso_local i32 @OF_decode_addr(i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @uart_getops(%struct.uart_class*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
