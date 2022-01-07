; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_usb_serial.c_ucom_put_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_usb_serial.c_ucom_put_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucom_softc = type { i32, i64, i64, i8*, %struct.tty* }
%struct.tty = type { i32 }
%struct.usb_page_cache = type { i32 }
%struct.usb_page_search = type { i32, i8* }

@MA_OWNED = common dso_local global i32 0, align 4
@UCOM_FLAG_CONSOLE = common dso_local global i32 0, align 4
@UCOM_CONS_BUFSIZE = common dso_local global i32 0, align 4
@ucom_cons_rx_high = common dso_local global i32 0, align 4
@ucom_cons_rx_low = common dso_local global i32 0, align 4
@ucom_cons_rx_buf = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"tp=%p, data lost\0A\00", align 1
@UCOM_JITTERBUF_SIZE = common dso_local global i64 0, align 8
@UCOM_FLAG_RTS_IFLOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"tp=%p, lost %d chars\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ucom_put_data(%struct.ucom_softc* %0, %struct.usb_page_cache* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ucom_softc*, align 8
  %6 = alloca %struct.usb_page_cache*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.usb_page_search, align 8
  %10 = alloca %struct.tty*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.ucom_softc* %0, %struct.ucom_softc** %5, align 8
  store %struct.usb_page_cache* %1, %struct.usb_page_cache** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load %struct.ucom_softc*, %struct.ucom_softc** %5, align 8
  %17 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %16, i32 0, i32 4
  %18 = load %struct.tty*, %struct.tty** %17, align 8
  store %struct.tty* %18, %struct.tty** %10, align 8
  %19 = load %struct.ucom_softc*, %struct.ucom_softc** %5, align 8
  %20 = load i32, i32* @MA_OWNED, align 4
  %21 = call i32 @UCOM_MTX_ASSERT(%struct.ucom_softc* %19, i32 %20)
  %22 = load %struct.ucom_softc*, %struct.ucom_softc** %5, align 8
  %23 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @UCOM_FLAG_CONSOLE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %68

28:                                               ; preds = %4
  %29 = load i32, i32* @UCOM_CONS_BUFSIZE, align 4
  %30 = sub nsw i32 %29, 1
  %31 = load i32, i32* @ucom_cons_rx_high, align 4
  %32 = sub nsw i32 %30, %31
  %33 = load i32, i32* @ucom_cons_rx_low, align 4
  %34 = add nsw i32 %32, %33
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* @UCOM_CONS_BUFSIZE, align 4
  %36 = load i32, i32* %13, align 4
  %37 = urem i32 %36, %35
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* @UCOM_CONS_BUFSIZE, align 4
  %40 = load i32, i32* @ucom_cons_rx_high, align 4
  %41 = sub nsw i32 %39, %40
  %42 = icmp ugt i32 %38, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %28
  %44 = load i32, i32* @UCOM_CONS_BUFSIZE, align 4
  %45 = load i32, i32* @ucom_cons_rx_high, align 4
  %46 = sub nsw i32 %44, %45
  store i32 %46, i32* %13, align 4
  br label %47

47:                                               ; preds = %43, %28
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ugt i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %13, align 4
  br label %53

53:                                               ; preds = %51, %47
  %54 = load %struct.usb_page_cache*, %struct.usb_page_cache** %6, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load i64, i64* @ucom_cons_rx_buf, align 8
  %57 = load i32, i32* @ucom_cons_rx_high, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %56, %58
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @usbd_copy_out(%struct.usb_page_cache* %54, i32 %55, i64 %59, i32 %60)
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* @ucom_cons_rx_high, align 4
  %64 = add i32 %63, %62
  store i32 %64, i32* @ucom_cons_rx_high, align 4
  %65 = load i32, i32* @UCOM_CONS_BUFSIZE, align 4
  %66 = load i32, i32* @ucom_cons_rx_high, align 4
  %67 = srem i32 %66, %65
  store i32 %67, i32* @ucom_cons_rx_high, align 4
  br label %226

68:                                               ; preds = %4
  %69 = load %struct.tty*, %struct.tty** %10, align 8
  %70 = call i64 @tty_gone(%struct.tty* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  br label %226

73:                                               ; preds = %68
  %74 = load i32, i32* %8, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  br label %226

77:                                               ; preds = %73
  br label %78

78:                                               ; preds = %222, %122, %77
  %79 = load i32, i32* %8, align 4
  %80 = icmp ugt i32 %79, 0
  br i1 %80, label %81, label %223

81:                                               ; preds = %78
  %82 = load %struct.usb_page_cache*, %struct.usb_page_cache** %6, align 8
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @usbd_get_page(%struct.usb_page_cache* %82, i32 %83, %struct.usb_page_search* %9)
  %85 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %9, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %8, align 4
  %88 = icmp ugt i32 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %81
  %90 = load i32, i32* %8, align 4
  %91 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %9, i32 0, i32 0
  store i32 %90, i32* %91, align 8
  br label %92

92:                                               ; preds = %89, %81
  %93 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %9, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sub i32 %95, %94
  store i32 %96, i32* %8, align 4
  %97 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %9, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %7, align 4
  %100 = add i32 %99, %98
  store i32 %100, i32* %7, align 4
  %101 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %9, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  store i8* %102, i8** %11, align 8
  %103 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %9, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  store i32 %104, i32* %12, align 4
  %105 = load %struct.tty*, %struct.tty** %10, align 8
  %106 = call i64 @ttydisc_can_bypass(%struct.tty* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %123

108:                                              ; preds = %92
  %109 = load %struct.ucom_softc*, %struct.ucom_softc** %5, align 8
  %110 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %109, i32 0, i32 1
  store i64 0, i64* %110, align 8
  %111 = load %struct.ucom_softc*, %struct.ucom_softc** %5, align 8
  %112 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %111, i32 0, i32 2
  store i64 0, i64* %112, align 8
  %113 = load %struct.tty*, %struct.tty** %10, align 8
  %114 = load i8*, i8** %11, align 8
  %115 = load i32, i32* %12, align 4
  %116 = call i32 @ttydisc_rint_bypass(%struct.tty* %113, i8* %114, i32 %115)
  %117 = load i32, i32* %12, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %108
  %120 = load %struct.tty*, %struct.tty** %10, align 8
  %121 = call i32 (i8*, %struct.tty*, ...) @DPRINTF(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.tty* %120)
  br label %122

122:                                              ; preds = %119, %108
  br label %78

123:                                              ; preds = %92
  store i32 0, i32* %12, align 4
  br label %124

124:                                              ; preds = %219, %123
  %125 = load i32, i32* %12, align 4
  %126 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %9, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp ne i32 %125, %127
  br i1 %128, label %129, label %222

129:                                              ; preds = %124
  %130 = load %struct.ucom_softc*, %struct.ucom_softc** %5, align 8
  %131 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.ucom_softc*, %struct.ucom_softc** %5, align 8
  %134 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %132, %135
  br i1 %136, label %146, label %137

137:                                              ; preds = %129
  %138 = load %struct.tty*, %struct.tty** %10, align 8
  %139 = load i8*, i8** %11, align 8
  %140 = load i32, i32* %12, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds i8, i8* %139, i64 %141
  %143 = load i8, i8* %142, align 1
  %144 = call i32 @ttydisc_rint(%struct.tty* %138, i8 signext %143, i32 0)
  %145 = icmp eq i32 %144, -1
  br i1 %145, label %146, label %218

146:                                              ; preds = %137, %129
  %147 = load %struct.ucom_softc*, %struct.ucom_softc** %5, align 8
  %148 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  store i64 %149, i64* %15, align 8
  %150 = load %struct.ucom_softc*, %struct.ucom_softc** %5, align 8
  %151 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @UCOM_JITTERBUF_SIZE, align 8
  %154 = add i64 %152, %153
  %155 = sub i64 %154, 1
  store i64 %155, i64* %14, align 8
  %156 = load i64, i64* %14, align 8
  %157 = load i64, i64* @UCOM_JITTERBUF_SIZE, align 8
  %158 = icmp uge i64 %156, %157
  br i1 %158, label %159, label %163

159:                                              ; preds = %146
  %160 = load i64, i64* @UCOM_JITTERBUF_SIZE, align 8
  %161 = load i64, i64* %14, align 8
  %162 = sub i64 %161, %160
  store i64 %162, i64* %14, align 8
  br label %163

163:                                              ; preds = %159, %146
  br label %164

164:                                              ; preds = %195, %163
  %165 = load i32, i32* %12, align 4
  %166 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %9, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = icmp ne i32 %165, %167
  br i1 %168, label %169, label %198

169:                                              ; preds = %164
  %170 = load i64, i64* %15, align 8
  %171 = load i64, i64* %14, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %174

173:                                              ; preds = %169
  br label %198

174:                                              ; preds = %169
  %175 = load i8*, i8** %11, align 8
  %176 = load i32, i32* %12, align 4
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds i8, i8* %175, i64 %177
  %179 = load i8, i8* %178, align 1
  %180 = load %struct.ucom_softc*, %struct.ucom_softc** %5, align 8
  %181 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %180, i32 0, i32 3
  %182 = load i8*, i8** %181, align 8
  %183 = load i64, i64* %15, align 8
  %184 = getelementptr inbounds i8, i8* %182, i64 %183
  store i8 %179, i8* %184, align 1
  %185 = load i64, i64* %15, align 8
  %186 = add i64 %185, 1
  store i64 %186, i64* %15, align 8
  %187 = load i64, i64* %15, align 8
  %188 = load i64, i64* @UCOM_JITTERBUF_SIZE, align 8
  %189 = icmp uge i64 %187, %188
  br i1 %189, label %190, label %194

190:                                              ; preds = %174
  %191 = load i64, i64* @UCOM_JITTERBUF_SIZE, align 8
  %192 = load i64, i64* %15, align 8
  %193 = sub i64 %192, %191
  store i64 %193, i64* %15, align 8
  br label %194

194:                                              ; preds = %190, %174
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* %12, align 4
  %197 = add i32 %196, 1
  store i32 %197, i32* %12, align 4
  br label %164

198:                                              ; preds = %173, %164
  %199 = load i64, i64* %15, align 8
  %200 = load %struct.ucom_softc*, %struct.ucom_softc** %5, align 8
  %201 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %200, i32 0, i32 1
  store i64 %199, i64* %201, align 8
  %202 = load %struct.ucom_softc*, %struct.ucom_softc** %5, align 8
  %203 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @UCOM_FLAG_RTS_IFLOW, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %198
  %209 = load %struct.ucom_softc*, %struct.ucom_softc** %5, align 8
  %210 = call i32 @ucom_rts(%struct.ucom_softc* %209, i32 1)
  br label %211

211:                                              ; preds = %208, %198
  %212 = load %struct.tty*, %struct.tty** %10, align 8
  %213 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %9, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* %12, align 4
  %216 = sub i32 %214, %215
  %217 = call i32 (i8*, %struct.tty*, ...) @DPRINTF(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), %struct.tty* %212, i32 %216)
  br label %222

218:                                              ; preds = %137
  br label %219

219:                                              ; preds = %218
  %220 = load i32, i32* %12, align 4
  %221 = add i32 %220, 1
  store i32 %221, i32* %12, align 4
  br label %124

222:                                              ; preds = %211, %124
  br label %78

223:                                              ; preds = %78
  %224 = load %struct.tty*, %struct.tty** %10, align 8
  %225 = call i32 @ttydisc_rint_done(%struct.tty* %224)
  br label %226

226:                                              ; preds = %223, %76, %72, %53
  ret void
}

declare dso_local i32 @UCOM_MTX_ASSERT(%struct.ucom_softc*, i32) #1

declare dso_local i32 @usbd_copy_out(%struct.usb_page_cache*, i32, i64, i32) #1

declare dso_local i64 @tty_gone(%struct.tty*) #1

declare dso_local i32 @usbd_get_page(%struct.usb_page_cache*, i32, %struct.usb_page_search*) #1

declare dso_local i64 @ttydisc_can_bypass(%struct.tty*) #1

declare dso_local i32 @ttydisc_rint_bypass(%struct.tty*, i8*, i32) #1

declare dso_local i32 @DPRINTF(i8*, %struct.tty*, ...) #1

declare dso_local i32 @ttydisc_rint(%struct.tty*, i8 signext, i32) #1

declare dso_local i32 @ucom_rts(%struct.ucom_softc*, i32) #1

declare dso_local i32 @ttydisc_rint_done(%struct.tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
