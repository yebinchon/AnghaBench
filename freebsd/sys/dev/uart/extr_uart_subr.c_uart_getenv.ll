; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_subr.c_uart_getenv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_subr.c_uart_getenv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_devinfo = type { i32, i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i8*, i8*, i8*, i8* }
%struct.uart_class = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"hw.uart.console\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"hw.uart.dbgport\00", align 1
@UART_PARITY_NONE = common dso_local global i32 0, align 4
@uart_bus_space_io = common dso_local global i32 0, align 4
@uart_bus_space_mem = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uart_getenv(i32 %0, %struct.uart_devinfo* %1, %struct.uart_class* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.uart_devinfo*, align 8
  %7 = alloca %struct.uart_class*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.uart_devinfo* %1, %struct.uart_devinfo** %6, align 8
  store %struct.uart_class* %2, %struct.uart_class** %7, align 8
  store i32 -1, i32* %10, align 4
  %12 = load %struct.uart_class*, %struct.uart_class** %7, align 8
  %13 = icmp eq %struct.uart_class* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @ENXIO, align 4
  store i32 %15, i32* %4, align 4
  br label %200

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %22 [
    i32 140, label %18
    i32 139, label %20
  ]

18:                                               ; preds = %16
  %19 = call i8* @kern_getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i8* %19, i8** %9, align 8
  br label %23

20:                                               ; preds = %16
  %21 = call i8* @kern_getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i8* %21, i8** %9, align 8
  br label %23

22:                                               ; preds = %16
  store i8* null, i8** %9, align 8
  br label %23

23:                                               ; preds = %22, %20, %18
  %24 = load i8*, i8** %9, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* @ENXIO, align 4
  store i32 %27, i32* %4, align 4
  br label %200

28:                                               ; preds = %23
  %29 = load %struct.uart_devinfo*, %struct.uart_devinfo** %6, align 8
  %30 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 4
  store i8* null, i8** %31, align 8
  %32 = load %struct.uart_devinfo*, %struct.uart_devinfo** %6, align 8
  %33 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 3
  store i8* null, i8** %34, align 8
  %35 = load %struct.uart_devinfo*, %struct.uart_devinfo** %6, align 8
  %36 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  store i8* null, i8** %37, align 8
  %38 = load %struct.uart_devinfo*, %struct.uart_devinfo** %6, align 8
  %39 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %38, i32 0, i32 0
  store i32 0, i32* %39, align 8
  %40 = load %struct.uart_devinfo*, %struct.uart_devinfo** %6, align 8
  %41 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %40, i32 0, i32 1
  store i32 8, i32* %41, align 4
  %42 = load %struct.uart_devinfo*, %struct.uart_devinfo** %6, align 8
  %43 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %42, i32 0, i32 2
  store i32 1, i32* %43, align 8
  %44 = load i32, i32* @UART_PARITY_NONE, align 4
  %45 = load %struct.uart_devinfo*, %struct.uart_devinfo** %6, align 8
  %46 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 4
  %47 = load i8*, i8** %9, align 8
  store i8* %47, i8** %8, align 8
  br label %48

48:                                               ; preds = %123, %28
  %49 = call i32 @uart_parse_tag(i8** %8)
  switch i32 %49, label %104 [
    i32 138, label %50
    i32 137, label %55
    i32 136, label %60
    i32 135, label %65
    i32 134, label %70
    i32 133, label %73
    i32 132, label %79
    i32 131, label %85
    i32 130, label %89
    i32 129, label %94
    i32 128, label %99
  ]

50:                                               ; preds = %48
  %51 = call i8* @uart_parse_long(i8** %8)
  %52 = load %struct.uart_devinfo*, %struct.uart_devinfo** %6, align 8
  %53 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 5
  store i8* %51, i8** %54, align 8
  br label %108

55:                                               ; preds = %48
  %56 = call i8* @uart_parse_long(i8** %8)
  %57 = ptrtoint i8* %56 to i32
  %58 = load %struct.uart_devinfo*, %struct.uart_devinfo** %6, align 8
  %59 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  br label %108

60:                                               ; preds = %48
  %61 = call i8* @uart_parse_long(i8** %8)
  %62 = load %struct.uart_devinfo*, %struct.uart_devinfo** %6, align 8
  %63 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 4
  store i8* %61, i8** %64, align 8
  br label %108

65:                                               ; preds = %48
  %66 = call i8* @uart_parse_long(i8** %8)
  %67 = ptrtoint i8* %66 to i32
  %68 = load %struct.uart_devinfo*, %struct.uart_devinfo** %6, align 8
  %69 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  br label %108

70:                                               ; preds = %48
  %71 = load %struct.uart_class*, %struct.uart_class** %7, align 8
  %72 = call %struct.uart_class* @uart_parse_class(%struct.uart_class* %71, i8** %8)
  store %struct.uart_class* %72, %struct.uart_class** %7, align 8
  br label %108

73:                                               ; preds = %48
  %74 = load i32, i32* @uart_bus_space_io, align 4
  %75 = load %struct.uart_devinfo*, %struct.uart_devinfo** %6, align 8
  %76 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  store i32 %74, i32* %77, align 4
  %78 = call i32 @uart_parse_addr(i8** %8)
  store i32 %78, i32* %10, align 4
  br label %108

79:                                               ; preds = %48
  %80 = load i32, i32* @uart_bus_space_mem, align 4
  %81 = load %struct.uart_devinfo*, %struct.uart_devinfo** %6, align 8
  %82 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  store i32 %80, i32* %83, align 4
  %84 = call i32 @uart_parse_addr(i8** %8)
  store i32 %84, i32* %10, align 4
  br label %108

85:                                               ; preds = %48
  %86 = call i32 @uart_parse_parity(i8** %8)
  %87 = load %struct.uart_devinfo*, %struct.uart_devinfo** %6, align 8
  %88 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %87, i32 0, i32 5
  store i32 %86, i32* %88, align 4
  br label %108

89:                                               ; preds = %48
  %90 = call i8* @uart_parse_long(i8** %8)
  %91 = load %struct.uart_devinfo*, %struct.uart_devinfo** %6, align 8
  %92 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 3
  store i8* %90, i8** %93, align 8
  br label %108

94:                                               ; preds = %48
  %95 = call i8* @uart_parse_long(i8** %8)
  %96 = ptrtoint i8* %95 to i32
  %97 = load %struct.uart_devinfo*, %struct.uart_devinfo** %6, align 8
  %98 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 8
  br label %108

99:                                               ; preds = %48
  %100 = call i8* @uart_parse_long(i8** %8)
  %101 = load %struct.uart_devinfo*, %struct.uart_devinfo** %6, align 8
  %102 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 2
  store i8* %100, i8** %103, align 8
  br label %108

104:                                              ; preds = %48
  %105 = load i8*, i8** %9, align 8
  %106 = call i32 @freeenv(i8* %105)
  %107 = load i32, i32* @EINVAL, align 4
  store i32 %107, i32* %4, align 4
  br label %200

108:                                              ; preds = %99, %94, %89, %85, %79, %73, %70, %65, %60, %55, %50
  %109 = load i8*, i8** %8, align 8
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %108
  br label %126

114:                                              ; preds = %108
  %115 = load i8*, i8** %8, align 8
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp ne i32 %117, 44
  br i1 %118, label %119, label %123

119:                                              ; preds = %114
  %120 = load i8*, i8** %9, align 8
  %121 = call i32 @freeenv(i8* %120)
  %122 = load i32, i32* @EINVAL, align 4
  store i32 %122, i32* %4, align 4
  br label %200

123:                                              ; preds = %114
  %124 = load i8*, i8** %8, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %125, i8** %8, align 8
  br label %48

126:                                              ; preds = %113
  %127 = load i8*, i8** %9, align 8
  %128 = call i32 @freeenv(i8* %127)
  %129 = load i32, i32* %10, align 4
  %130 = icmp eq i32 %129, -1
  br i1 %130, label %131, label %133

131:                                              ; preds = %126
  %132 = load i32, i32* @EINVAL, align 4
  store i32 %132, i32* %4, align 4
  br label %200

133:                                              ; preds = %126
  %134 = load %struct.uart_devinfo*, %struct.uart_devinfo** %6, align 8
  %135 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp sge i32 %136, 19200
  br i1 %137, label %138, label %148

138:                                              ; preds = %133
  %139 = load %struct.uart_devinfo*, %struct.uart_devinfo** %6, align 8
  %140 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = srem i32 %141, 19200
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %138
  %145 = load %struct.uart_devinfo*, %struct.uart_devinfo** %6, align 8
  %146 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %145, i32 0, i32 0
  store i32 0, i32* %146, align 8
  br label %147

147:                                              ; preds = %144, %138
  br label %183

148:                                              ; preds = %133
  %149 = load %struct.uart_devinfo*, %struct.uart_devinfo** %6, align 8
  %150 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = icmp sge i32 %151, 1200
  br i1 %152, label %153, label %163

153:                                              ; preds = %148
  %154 = load %struct.uart_devinfo*, %struct.uart_devinfo** %6, align 8
  %155 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = srem i32 %156, 1200
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %153
  %160 = load %struct.uart_devinfo*, %struct.uart_devinfo** %6, align 8
  %161 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %160, i32 0, i32 0
  store i32 0, i32* %161, align 8
  br label %162

162:                                              ; preds = %159, %153
  br label %182

163:                                              ; preds = %148
  %164 = load %struct.uart_devinfo*, %struct.uart_devinfo** %6, align 8
  %165 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = icmp sgt i32 %166, 0
  br i1 %167, label %168, label %178

168:                                              ; preds = %163
  %169 = load %struct.uart_devinfo*, %struct.uart_devinfo** %6, align 8
  %170 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = srem i32 %171, 75
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %168
  %175 = load %struct.uart_devinfo*, %struct.uart_devinfo** %6, align 8
  %176 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %175, i32 0, i32 0
  store i32 0, i32* %176, align 8
  br label %177

177:                                              ; preds = %174, %168
  br label %181

178:                                              ; preds = %163
  %179 = load %struct.uart_devinfo*, %struct.uart_devinfo** %6, align 8
  %180 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %179, i32 0, i32 0
  store i32 0, i32* %180, align 8
  br label %181

181:                                              ; preds = %178, %177
  br label %182

182:                                              ; preds = %181, %162
  br label %183

183:                                              ; preds = %182, %147
  %184 = load %struct.uart_class*, %struct.uart_class** %7, align 8
  %185 = call i32 @uart_getops(%struct.uart_class* %184)
  %186 = load %struct.uart_devinfo*, %struct.uart_devinfo** %6, align 8
  %187 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %186, i32 0, i32 4
  store i32 %185, i32* %187, align 8
  %188 = load %struct.uart_devinfo*, %struct.uart_devinfo** %6, align 8
  %189 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %188, i32 0, i32 3
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* %10, align 4
  %193 = load %struct.uart_class*, %struct.uart_class** %7, align 8
  %194 = call i32 @uart_getrange(%struct.uart_class* %193)
  %195 = load %struct.uart_devinfo*, %struct.uart_devinfo** %6, align 8
  %196 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %195, i32 0, i32 3
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 0
  %198 = call i32 @bus_space_map(i32 %191, i32 %192, i32 %194, i32 0, i32* %197)
  store i32 %198, i32* %11, align 4
  %199 = load i32, i32* %11, align 4
  store i32 %199, i32* %4, align 4
  br label %200

200:                                              ; preds = %183, %131, %119, %104, %26, %14
  %201 = load i32, i32* %4, align 4
  ret i32 %201
}

declare dso_local i8* @kern_getenv(i8*) #1

declare dso_local i32 @uart_parse_tag(i8**) #1

declare dso_local i8* @uart_parse_long(i8**) #1

declare dso_local %struct.uart_class* @uart_parse_class(%struct.uart_class*, i8**) #1

declare dso_local i32 @uart_parse_addr(i8**) #1

declare dso_local i32 @uart_parse_parity(i8**) #1

declare dso_local i32 @freeenv(i8*) #1

declare dso_local i32 @uart_getops(%struct.uart_class*) #1

declare dso_local i32 @bus_space_map(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @uart_getrange(%struct.uart_class*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
