; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/gadget/extr_g_audio.c_g_audio_handle_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/gadget/extr_g_audio.c_g_audio_handle_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_audio_softc = type { i32, i32, i32 }
%struct.usb_device_request = type { i64, i32 }

@UT_READ_CLASS_INTERFACE = common dso_local global i64 0, align 8
@UT_WRITE_CLASS_INTERFACE = common dso_local global i64 0, align 8
@UT_WRITE_CLASS_ENDPOINT = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8**, i64*, i64, i32*)* @g_audio_handle_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_audio_handle_request(i32 %0, i8* %1, i8** %2, i64* %3, i64 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.g_audio_softc*, align 8
  %15 = alloca %struct.usb_device_request*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i64* %3, i64** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call %struct.g_audio_softc* @device_get_softc(i32 %17)
  store %struct.g_audio_softc* %18, %struct.g_audio_softc** %14, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = bitcast i8* %19 to %struct.usb_device_request*
  store %struct.usb_device_request* %20, %struct.usb_device_request** %15, align 8
  %21 = load i32*, i32** %13, align 8
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %16, align 4
  %23 = load i32, i32* %16, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %185, label %25

25:                                               ; preds = %6
  %26 = load %struct.usb_device_request*, %struct.usb_device_request** %15, align 8
  %27 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @UT_READ_CLASS_INTERFACE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %52

31:                                               ; preds = %25
  %32 = load %struct.usb_device_request*, %struct.usb_device_request** %15, align 8
  %33 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 130
  br i1 %35, label %36, label %52

36:                                               ; preds = %31
  %37 = load i64, i64* %12, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %36
  %40 = load %struct.g_audio_softc*, %struct.g_audio_softc** %14, align 8
  %41 = getelementptr inbounds %struct.g_audio_softc, %struct.g_audio_softc* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @USETW(i32 %42, i32 0)
  %44 = load i64*, i64** %11, align 8
  store i64 2, i64* %44, align 8
  %45 = load %struct.g_audio_softc*, %struct.g_audio_softc** %14, align 8
  %46 = getelementptr inbounds %struct.g_audio_softc, %struct.g_audio_softc* %45, i32 0, i32 2
  %47 = bitcast i32* %46 to i8*
  %48 = load i8**, i8*** %10, align 8
  store i8* %47, i8** %48, align 8
  br label %51

49:                                               ; preds = %36
  %50 = load i64*, i64** %11, align 8
  store i64 0, i64* %50, align 8
  br label %51

51:                                               ; preds = %49, %39
  store i32 0, i32* %7, align 4
  br label %187

52:                                               ; preds = %31, %25
  %53 = load %struct.usb_device_request*, %struct.usb_device_request** %15, align 8
  %54 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @UT_READ_CLASS_INTERFACE, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %79

58:                                               ; preds = %52
  %59 = load %struct.usb_device_request*, %struct.usb_device_request** %15, align 8
  %60 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %61, 131
  br i1 %62, label %63, label %79

63:                                               ; preds = %58
  %64 = load i64, i64* %12, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %63
  %67 = load %struct.g_audio_softc*, %struct.g_audio_softc** %14, align 8
  %68 = getelementptr inbounds %struct.g_audio_softc, %struct.g_audio_softc* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @USETW(i32 %69, i32 8192)
  %71 = load i64*, i64** %11, align 8
  store i64 2, i64* %71, align 8
  %72 = load %struct.g_audio_softc*, %struct.g_audio_softc** %14, align 8
  %73 = getelementptr inbounds %struct.g_audio_softc, %struct.g_audio_softc* %72, i32 0, i32 2
  %74 = bitcast i32* %73 to i8*
  %75 = load i8**, i8*** %10, align 8
  store i8* %74, i8** %75, align 8
  br label %78

76:                                               ; preds = %63
  %77 = load i64*, i64** %11, align 8
  store i64 0, i64* %77, align 8
  br label %78

78:                                               ; preds = %76, %66
  store i32 0, i32* %7, align 4
  br label %187

79:                                               ; preds = %58, %52
  %80 = load %struct.usb_device_request*, %struct.usb_device_request** %15, align 8
  %81 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @UT_READ_CLASS_INTERFACE, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %106

85:                                               ; preds = %79
  %86 = load %struct.usb_device_request*, %struct.usb_device_request** %15, align 8
  %87 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = icmp eq i32 %88, 132
  br i1 %89, label %90, label %106

90:                                               ; preds = %85
  %91 = load i64, i64* %12, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %90
  %94 = load %struct.g_audio_softc*, %struct.g_audio_softc** %14, align 8
  %95 = getelementptr inbounds %struct.g_audio_softc, %struct.g_audio_softc* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @USETW(i32 %96, i32 1)
  %98 = load i64*, i64** %11, align 8
  store i64 2, i64* %98, align 8
  %99 = load %struct.g_audio_softc*, %struct.g_audio_softc** %14, align 8
  %100 = getelementptr inbounds %struct.g_audio_softc, %struct.g_audio_softc* %99, i32 0, i32 2
  %101 = bitcast i32* %100 to i8*
  %102 = load i8**, i8*** %10, align 8
  store i8* %101, i8** %102, align 8
  br label %105

103:                                              ; preds = %90
  %104 = load i64*, i64** %11, align 8
  store i64 0, i64* %104, align 8
  br label %105

105:                                              ; preds = %103, %93
  store i32 0, i32* %7, align 4
  br label %187

106:                                              ; preds = %85, %79
  %107 = load %struct.usb_device_request*, %struct.usb_device_request** %15, align 8
  %108 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @UT_READ_CLASS_INTERFACE, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %133

112:                                              ; preds = %106
  %113 = load %struct.usb_device_request*, %struct.usb_device_request** %15, align 8
  %114 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = icmp eq i32 %115, 129
  br i1 %116, label %117, label %133

117:                                              ; preds = %112
  %118 = load i64, i64* %12, align 8
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %130

120:                                              ; preds = %117
  %121 = load %struct.g_audio_softc*, %struct.g_audio_softc** %14, align 8
  %122 = getelementptr inbounds %struct.g_audio_softc, %struct.g_audio_softc* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @USETW(i32 %123, i32 8192)
  %125 = load i64*, i64** %11, align 8
  store i64 4, i64* %125, align 8
  %126 = load %struct.g_audio_softc*, %struct.g_audio_softc** %14, align 8
  %127 = getelementptr inbounds %struct.g_audio_softc, %struct.g_audio_softc* %126, i32 0, i32 1
  %128 = bitcast i32* %127 to i8*
  %129 = load i8**, i8*** %10, align 8
  store i8* %128, i8** %129, align 8
  br label %132

130:                                              ; preds = %117
  %131 = load i64*, i64** %11, align 8
  store i64 0, i64* %131, align 8
  br label %132

132:                                              ; preds = %130, %120
  store i32 0, i32* %7, align 4
  br label %187

133:                                              ; preds = %112, %106
  %134 = load %struct.usb_device_request*, %struct.usb_device_request** %15, align 8
  %135 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @UT_WRITE_CLASS_INTERFACE, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %156

139:                                              ; preds = %133
  %140 = load %struct.usb_device_request*, %struct.usb_device_request** %15, align 8
  %141 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = icmp eq i32 %142, 1
  br i1 %143, label %144, label %156

144:                                              ; preds = %139
  %145 = load i64, i64* %12, align 8
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %144
  %148 = load i64*, i64** %11, align 8
  store i64 4, i64* %148, align 8
  %149 = load %struct.g_audio_softc*, %struct.g_audio_softc** %14, align 8
  %150 = getelementptr inbounds %struct.g_audio_softc, %struct.g_audio_softc* %149, i32 0, i32 1
  %151 = bitcast i32* %150 to i8*
  %152 = load i8**, i8*** %10, align 8
  store i8* %151, i8** %152, align 8
  br label %155

153:                                              ; preds = %144
  %154 = load i64*, i64** %11, align 8
  store i64 0, i64* %154, align 8
  br label %155

155:                                              ; preds = %153, %147
  store i32 0, i32* %7, align 4
  br label %187

156:                                              ; preds = %139, %133
  %157 = load %struct.usb_device_request*, %struct.usb_device_request** %15, align 8
  %158 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @UT_WRITE_CLASS_ENDPOINT, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %179

162:                                              ; preds = %156
  %163 = load %struct.usb_device_request*, %struct.usb_device_request** %15, align 8
  %164 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = icmp eq i32 %165, 1
  br i1 %166, label %167, label %179

167:                                              ; preds = %162
  %168 = load i64, i64* %12, align 8
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %167
  %171 = load i64*, i64** %11, align 8
  store i64 4, i64* %171, align 8
  %172 = load %struct.g_audio_softc*, %struct.g_audio_softc** %14, align 8
  %173 = getelementptr inbounds %struct.g_audio_softc, %struct.g_audio_softc* %172, i32 0, i32 0
  %174 = bitcast i32* %173 to i8*
  %175 = load i8**, i8*** %10, align 8
  store i8* %174, i8** %175, align 8
  br label %178

176:                                              ; preds = %167
  %177 = load i64*, i64** %11, align 8
  store i64 0, i64* %177, align 8
  br label %178

178:                                              ; preds = %176, %170
  store i32 0, i32* %7, align 4
  br label %187

179:                                              ; preds = %162, %156
  br label %180

180:                                              ; preds = %179
  br label %181

181:                                              ; preds = %180
  br label %182

182:                                              ; preds = %181
  br label %183

183:                                              ; preds = %182
  br label %184

184:                                              ; preds = %183
  br label %185

185:                                              ; preds = %184, %6
  %186 = load i32, i32* @ENXIO, align 4
  store i32 %186, i32* %7, align 4
  br label %187

187:                                              ; preds = %185, %178, %155, %132, %105, %78, %51
  %188 = load i32, i32* %7, align 4
  ret i32 %188
}

declare dso_local %struct.g_audio_softc* @device_get_softc(i32) #1

declare dso_local i32 @USETW(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
