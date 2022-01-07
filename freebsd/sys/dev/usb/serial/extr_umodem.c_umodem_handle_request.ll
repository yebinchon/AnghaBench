; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_umodem.c_umodem_handle_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_umodem.c_umodem_handle_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.umodem_softc = type { i32, i32, i32 }
%struct.usb_device_request = type { i64, i64, i32*, i32* }

@.str = private unnamed_addr constant [7 x i8] c"sc=%p\0A\00", align 1
@UT_WRITE_CLASS_INTERFACE = common dso_local global i64 0, align 8
@UCDC_SET_LINE_CODING = common dso_local global i64 0, align 8
@UCDC_SET_COMM_FEATURE = common dso_local global i64 0, align 8
@UCDC_SET_CONTROL_LINE_STATE = common dso_local global i64 0, align 8
@UCDC_SEND_BREAK = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8**, i64*, i64, i32*)* @umodem_handle_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @umodem_handle_request(i32 %0, i8* %1, i8** %2, i64* %3, i64 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.umodem_softc*, align 8
  %15 = alloca %struct.usb_device_request*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i64* %3, i64** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call %struct.umodem_softc* @device_get_softc(i32 %17)
  store %struct.umodem_softc* %18, %struct.umodem_softc** %14, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = bitcast i8* %19 to %struct.usb_device_request*
  store %struct.usb_device_request* %20, %struct.usb_device_request** %15, align 8
  %21 = load i32*, i32** %13, align 8
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %16, align 4
  %23 = load %struct.umodem_softc*, %struct.umodem_softc** %14, align 8
  %24 = call i32 @DPRINTF(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.umodem_softc* %23)
  %25 = load i32, i32* %16, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %189, label %27

27:                                               ; preds = %6
  %28 = load %struct.usb_device_request*, %struct.usb_device_request** %15, align 8
  %29 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @UT_WRITE_CLASS_INTERFACE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %82

33:                                               ; preds = %27
  %34 = load %struct.usb_device_request*, %struct.usb_device_request** %15, align 8
  %35 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @UCDC_SET_LINE_CODING, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %82

39:                                               ; preds = %33
  %40 = load %struct.usb_device_request*, %struct.usb_device_request** %15, align 8
  %41 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.umodem_softc*, %struct.umodem_softc** %14, align 8
  %46 = getelementptr inbounds %struct.umodem_softc, %struct.umodem_softc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %44, %47
  br i1 %48, label %49, label %82

49:                                               ; preds = %39
  %50 = load %struct.usb_device_request*, %struct.usb_device_request** %15, align 8
  %51 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %82

56:                                               ; preds = %49
  %57 = load %struct.usb_device_request*, %struct.usb_device_request** %15, align 8
  %58 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %82

63:                                               ; preds = %56
  %64 = load %struct.usb_device_request*, %struct.usb_device_request** %15, align 8
  %65 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %64, i32 0, i32 3
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %63
  %71 = load i64, i64* %12, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %70
  %74 = load i64*, i64** %11, align 8
  store i64 4, i64* %74, align 8
  %75 = load %struct.umodem_softc*, %struct.umodem_softc** %14, align 8
  %76 = getelementptr inbounds %struct.umodem_softc, %struct.umodem_softc* %75, i32 0, i32 2
  %77 = bitcast i32* %76 to i8*
  %78 = load i8**, i8*** %10, align 8
  store i8* %77, i8** %78, align 8
  br label %81

79:                                               ; preds = %70
  %80 = load i64*, i64** %11, align 8
  store i64 0, i64* %80, align 8
  br label %81

81:                                               ; preds = %79, %73
  store i32 0, i32* %7, align 4
  br label %191

82:                                               ; preds = %63, %56, %49, %39, %33, %27
  %83 = load %struct.usb_device_request*, %struct.usb_device_request** %15, align 8
  %84 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @UT_WRITE_CLASS_INTERFACE, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %123

88:                                               ; preds = %82
  %89 = load %struct.usb_device_request*, %struct.usb_device_request** %15, align 8
  %90 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.umodem_softc*, %struct.umodem_softc** %14, align 8
  %95 = getelementptr inbounds %struct.umodem_softc, %struct.umodem_softc* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %93, %96
  br i1 %97, label %98, label %123

98:                                               ; preds = %88
  %99 = load %struct.usb_device_request*, %struct.usb_device_request** %15, align 8
  %100 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %123

105:                                              ; preds = %98
  %106 = load %struct.usb_device_request*, %struct.usb_device_request** %15, align 8
  %107 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @UCDC_SET_COMM_FEATURE, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %123

111:                                              ; preds = %105
  %112 = load i64, i64* %12, align 8
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %111
  %115 = load i64*, i64** %11, align 8
  store i64 4, i64* %115, align 8
  %116 = load %struct.umodem_softc*, %struct.umodem_softc** %14, align 8
  %117 = getelementptr inbounds %struct.umodem_softc, %struct.umodem_softc* %116, i32 0, i32 1
  %118 = bitcast i32* %117 to i8*
  %119 = load i8**, i8*** %10, align 8
  store i8* %118, i8** %119, align 8
  br label %122

120:                                              ; preds = %111
  %121 = load i64*, i64** %11, align 8
  store i64 0, i64* %121, align 8
  br label %122

122:                                              ; preds = %120, %114
  store i32 0, i32* %7, align 4
  br label %191

123:                                              ; preds = %105, %98, %88, %82
  %124 = load %struct.usb_device_request*, %struct.usb_device_request** %15, align 8
  %125 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @UT_WRITE_CLASS_INTERFACE, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %154

129:                                              ; preds = %123
  %130 = load %struct.usb_device_request*, %struct.usb_device_request** %15, align 8
  %131 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %130, i32 0, i32 2
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.umodem_softc*, %struct.umodem_softc** %14, align 8
  %136 = getelementptr inbounds %struct.umodem_softc, %struct.umodem_softc* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = icmp eq i32 %134, %137
  br i1 %138, label %139, label %154

139:                                              ; preds = %129
  %140 = load %struct.usb_device_request*, %struct.usb_device_request** %15, align 8
  %141 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %140, i32 0, i32 2
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 1
  %144 = load i32, i32* %143, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %154

146:                                              ; preds = %139
  %147 = load %struct.usb_device_request*, %struct.usb_device_request** %15, align 8
  %148 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @UCDC_SET_CONTROL_LINE_STATE, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %146
  %153 = load i64*, i64** %11, align 8
  store i64 0, i64* %153, align 8
  store i32 0, i32* %7, align 4
  br label %191

154:                                              ; preds = %146, %139, %129, %123
  %155 = load %struct.usb_device_request*, %struct.usb_device_request** %15, align 8
  %156 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @UT_WRITE_CLASS_INTERFACE, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %185

160:                                              ; preds = %154
  %161 = load %struct.usb_device_request*, %struct.usb_device_request** %15, align 8
  %162 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %161, i32 0, i32 2
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 0
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.umodem_softc*, %struct.umodem_softc** %14, align 8
  %167 = getelementptr inbounds %struct.umodem_softc, %struct.umodem_softc* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = icmp eq i32 %165, %168
  br i1 %169, label %170, label %185

170:                                              ; preds = %160
  %171 = load %struct.usb_device_request*, %struct.usb_device_request** %15, align 8
  %172 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %171, i32 0, i32 2
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 1
  %175 = load i32, i32* %174, align 4
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %185

177:                                              ; preds = %170
  %178 = load %struct.usb_device_request*, %struct.usb_device_request** %15, align 8
  %179 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @UCDC_SEND_BREAK, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %185

183:                                              ; preds = %177
  %184 = load i64*, i64** %11, align 8
  store i64 0, i64* %184, align 8
  store i32 0, i32* %7, align 4
  br label %191

185:                                              ; preds = %177, %170, %160, %154
  br label %186

186:                                              ; preds = %185
  br label %187

187:                                              ; preds = %186
  br label %188

188:                                              ; preds = %187
  br label %189

189:                                              ; preds = %188, %6
  %190 = load i32, i32* @ENXIO, align 4
  store i32 %190, i32* %7, align 4
  br label %191

191:                                              ; preds = %189, %183, %152, %122, %81
  %192 = load i32, i32* %7, align 4
  ret i32 %192
}

declare dso_local %struct.umodem_softc* @device_get_softc(i32) #1

declare dso_local i32 @DPRINTF(i8*, %struct.umodem_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
