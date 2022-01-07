; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_wsp.c_wsp_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_wsp.c_wsp_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_fifo = type { i32 }
%struct.wsp_softc = type { i32, %struct.TYPE_4__, %struct.TYPE_5__, %struct.TYPE_6__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i8**, i8*, i8*, i32 }
%struct.TYPE_6__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@MOUSE_PROTO_MSC = common dso_local global i8* null, align 8
@MOUSE_MSC_PACKETSIZE = common dso_local global i8* null, align 8
@MOUSE_MSC_SYNCMASK = common dso_local global i8* null, align 8
@MOUSE_MSC_SYNC = common dso_local global i8* null, align 8
@MOUSE_PROTO_SYSMOUSE = common dso_local global i8* null, align 8
@MOUSE_SYS_PACKETSIZE = common dso_local global i8* null, align 8
@MOUSE_SYS_SYNCMASK = common dso_local global i8* null, align 8
@MOUSE_SYS_SYNC = common dso_local global i8* null, align 8
@MOUSE_POSCHANGED = common dso_local global i32 0, align 4
@MOUSE_BUTTONSCHANGED = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wsp_ioctl(%struct.usb_fifo* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.usb_fifo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.wsp_softc*, align 8
  %10 = alloca %struct.TYPE_5__, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_4__*, align 8
  store %struct.usb_fifo* %0, %struct.usb_fifo** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.usb_fifo*, %struct.usb_fifo** %5, align 8
  %14 = call %struct.wsp_softc* @usb_fifo_softc(%struct.usb_fifo* %13)
  store %struct.wsp_softc* %14, %struct.wsp_softc** %9, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.wsp_softc*, %struct.wsp_softc** %9, align 8
  %16 = getelementptr inbounds %struct.wsp_softc, %struct.wsp_softc* %15, i32 0, i32 0
  %17 = call i32 @mtx_lock(i32* %16)
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %271 [
    i32 133, label %19
    i32 131, label %26
    i32 128, label %33
    i32 132, label %123
    i32 129, label %130
    i32 130, label %209
  ]

19:                                               ; preds = %4
  %20 = load i8*, i8** %7, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_6__*
  %22 = load %struct.wsp_softc*, %struct.wsp_softc** %9, align 8
  %23 = getelementptr inbounds %struct.wsp_softc, %struct.wsp_softc* %22, i32 0, i32 3
  %24 = bitcast %struct.TYPE_6__* %21 to i8*
  %25 = bitcast %struct.TYPE_6__* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 8 %25, i64 4, i1 false)
  br label %273

26:                                               ; preds = %4
  %27 = load i8*, i8** %7, align 8
  %28 = bitcast i8* %27 to %struct.TYPE_5__*
  %29 = load %struct.wsp_softc*, %struct.wsp_softc** %9, align 8
  %30 = getelementptr inbounds %struct.wsp_softc, %struct.wsp_softc* %29, i32 0, i32 2
  %31 = bitcast %struct.TYPE_5__* %28 to i8*
  %32 = bitcast %struct.TYPE_5__* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 40, i1 false)
  br label %273

33:                                               ; preds = %4
  %34 = load i8*, i8** %7, align 8
  %35 = bitcast i8* %34 to %struct.TYPE_5__*
  %36 = bitcast %struct.TYPE_5__* %10 to i8*
  %37 = bitcast %struct.TYPE_5__* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* align 8 %37, i64 40, i1 false)
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %53

42:                                               ; preds = %33
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp sgt i32 %48, 1
  br i1 %49, label %50, label %52

50:                                               ; preds = %46, %42
  %51 = load i32, i32* @EINVAL, align 4
  store i32 %51, i32* %11, align 4
  br label %274

52:                                               ; preds = %46
  br label %53

53:                                               ; preds = %52, %41
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.wsp_softc*, %struct.wsp_softc** %9, align 8
  %57 = getelementptr inbounds %struct.wsp_softc, %struct.wsp_softc* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.wsp_softc*, %struct.wsp_softc** %9, align 8
  %62 = getelementptr inbounds %struct.wsp_softc, %struct.wsp_softc* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 4
  %63 = load %struct.wsp_softc*, %struct.wsp_softc** %9, align 8
  %64 = getelementptr inbounds %struct.wsp_softc, %struct.wsp_softc* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  store i32 3, i32* %65, align 8
  %66 = load %struct.wsp_softc*, %struct.wsp_softc** %9, align 8
  %67 = getelementptr inbounds %struct.wsp_softc, %struct.wsp_softc* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %92

71:                                               ; preds = %53
  %72 = load i8*, i8** @MOUSE_PROTO_MSC, align 8
  %73 = load %struct.wsp_softc*, %struct.wsp_softc** %9, align 8
  %74 = getelementptr inbounds %struct.wsp_softc, %struct.wsp_softc* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 3
  store i8* %72, i8** %75, align 8
  %76 = load i8*, i8** @MOUSE_MSC_PACKETSIZE, align 8
  %77 = load %struct.wsp_softc*, %struct.wsp_softc** %9, align 8
  %78 = getelementptr inbounds %struct.wsp_softc, %struct.wsp_softc* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 2
  store i8* %76, i8** %79, align 8
  %80 = load i8*, i8** @MOUSE_MSC_SYNCMASK, align 8
  %81 = load %struct.wsp_softc*, %struct.wsp_softc** %9, align 8
  %82 = getelementptr inbounds %struct.wsp_softc, %struct.wsp_softc* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load i8**, i8*** %83, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i64 0
  store i8* %80, i8** %85, align 8
  %86 = load i8*, i8** @MOUSE_MSC_SYNC, align 8
  %87 = load %struct.wsp_softc*, %struct.wsp_softc** %9, align 8
  %88 = getelementptr inbounds %struct.wsp_softc, %struct.wsp_softc* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  %90 = load i8**, i8*** %89, align 8
  %91 = getelementptr inbounds i8*, i8** %90, i64 1
  store i8* %86, i8** %91, align 8
  br label %120

92:                                               ; preds = %53
  %93 = load %struct.wsp_softc*, %struct.wsp_softc** %9, align 8
  %94 = getelementptr inbounds %struct.wsp_softc, %struct.wsp_softc* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp eq i32 %96, 1
  br i1 %97, label %98, label %119

98:                                               ; preds = %92
  %99 = load i8*, i8** @MOUSE_PROTO_SYSMOUSE, align 8
  %100 = load %struct.wsp_softc*, %struct.wsp_softc** %9, align 8
  %101 = getelementptr inbounds %struct.wsp_softc, %struct.wsp_softc* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 3
  store i8* %99, i8** %102, align 8
  %103 = load i8*, i8** @MOUSE_SYS_PACKETSIZE, align 8
  %104 = load %struct.wsp_softc*, %struct.wsp_softc** %9, align 8
  %105 = getelementptr inbounds %struct.wsp_softc, %struct.wsp_softc* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 2
  store i8* %103, i8** %106, align 8
  %107 = load i8*, i8** @MOUSE_SYS_SYNCMASK, align 8
  %108 = load %struct.wsp_softc*, %struct.wsp_softc** %9, align 8
  %109 = getelementptr inbounds %struct.wsp_softc, %struct.wsp_softc* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  %111 = load i8**, i8*** %110, align 8
  %112 = getelementptr inbounds i8*, i8** %111, i64 0
  store i8* %107, i8** %112, align 8
  %113 = load i8*, i8** @MOUSE_SYS_SYNC, align 8
  %114 = load %struct.wsp_softc*, %struct.wsp_softc** %9, align 8
  %115 = getelementptr inbounds %struct.wsp_softc, %struct.wsp_softc* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 1
  %117 = load i8**, i8*** %116, align 8
  %118 = getelementptr inbounds i8*, i8** %117, i64 1
  store i8* %113, i8** %118, align 8
  br label %119

119:                                              ; preds = %98, %92
  br label %120

120:                                              ; preds = %119, %71
  %121 = load %struct.wsp_softc*, %struct.wsp_softc** %9, align 8
  %122 = call i32 @wsp_reset_buf(%struct.wsp_softc* %121)
  br label %273

123:                                              ; preds = %4
  %124 = load %struct.wsp_softc*, %struct.wsp_softc** %9, align 8
  %125 = getelementptr inbounds %struct.wsp_softc, %struct.wsp_softc* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i8*, i8** %7, align 8
  %129 = bitcast i8* %128 to i32*
  store i32 %127, i32* %129, align 4
  br label %273

130:                                              ; preds = %4
  %131 = load i8*, i8** %7, align 8
  %132 = bitcast i8* %131 to i32*
  %133 = load i32, i32* %132, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %140, label %135

135:                                              ; preds = %130
  %136 = load i8*, i8** %7, align 8
  %137 = bitcast i8* %136 to i32*
  %138 = load i32, i32* %137, align 4
  %139 = icmp sgt i32 %138, 1
  br i1 %139, label %140, label %142

140:                                              ; preds = %135, %130
  %141 = load i32, i32* @EINVAL, align 4
  store i32 %141, i32* %11, align 4
  br label %274

142:                                              ; preds = %135
  %143 = load i8*, i8** %7, align 8
  %144 = bitcast i8* %143 to i32*
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.wsp_softc*, %struct.wsp_softc** %9, align 8
  %147 = getelementptr inbounds %struct.wsp_softc, %struct.wsp_softc* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 0
  store i32 %145, i32* %148, align 8
  %149 = load %struct.wsp_softc*, %struct.wsp_softc** %9, align 8
  %150 = getelementptr inbounds %struct.wsp_softc, %struct.wsp_softc* %149, i32 0, i32 3
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  store i32 3, i32* %151, align 8
  %152 = load %struct.wsp_softc*, %struct.wsp_softc** %9, align 8
  %153 = getelementptr inbounds %struct.wsp_softc, %struct.wsp_softc* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %178

157:                                              ; preds = %142
  %158 = load i8*, i8** @MOUSE_PROTO_MSC, align 8
  %159 = load %struct.wsp_softc*, %struct.wsp_softc** %9, align 8
  %160 = getelementptr inbounds %struct.wsp_softc, %struct.wsp_softc* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 3
  store i8* %158, i8** %161, align 8
  %162 = load i8*, i8** @MOUSE_MSC_PACKETSIZE, align 8
  %163 = load %struct.wsp_softc*, %struct.wsp_softc** %9, align 8
  %164 = getelementptr inbounds %struct.wsp_softc, %struct.wsp_softc* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 2
  store i8* %162, i8** %165, align 8
  %166 = load i8*, i8** @MOUSE_MSC_SYNCMASK, align 8
  %167 = load %struct.wsp_softc*, %struct.wsp_softc** %9, align 8
  %168 = getelementptr inbounds %struct.wsp_softc, %struct.wsp_softc* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 1
  %170 = load i8**, i8*** %169, align 8
  %171 = getelementptr inbounds i8*, i8** %170, i64 0
  store i8* %166, i8** %171, align 8
  %172 = load i8*, i8** @MOUSE_MSC_SYNC, align 8
  %173 = load %struct.wsp_softc*, %struct.wsp_softc** %9, align 8
  %174 = getelementptr inbounds %struct.wsp_softc, %struct.wsp_softc* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 1
  %176 = load i8**, i8*** %175, align 8
  %177 = getelementptr inbounds i8*, i8** %176, i64 1
  store i8* %172, i8** %177, align 8
  br label %206

178:                                              ; preds = %142
  %179 = load %struct.wsp_softc*, %struct.wsp_softc** %9, align 8
  %180 = getelementptr inbounds %struct.wsp_softc, %struct.wsp_softc* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = icmp eq i32 %182, 1
  br i1 %183, label %184, label %205

184:                                              ; preds = %178
  %185 = load i8*, i8** @MOUSE_PROTO_SYSMOUSE, align 8
  %186 = load %struct.wsp_softc*, %struct.wsp_softc** %9, align 8
  %187 = getelementptr inbounds %struct.wsp_softc, %struct.wsp_softc* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 3
  store i8* %185, i8** %188, align 8
  %189 = load i8*, i8** @MOUSE_SYS_PACKETSIZE, align 8
  %190 = load %struct.wsp_softc*, %struct.wsp_softc** %9, align 8
  %191 = getelementptr inbounds %struct.wsp_softc, %struct.wsp_softc* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 2
  store i8* %189, i8** %192, align 8
  %193 = load i8*, i8** @MOUSE_SYS_SYNCMASK, align 8
  %194 = load %struct.wsp_softc*, %struct.wsp_softc** %9, align 8
  %195 = getelementptr inbounds %struct.wsp_softc, %struct.wsp_softc* %194, i32 0, i32 2
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 1
  %197 = load i8**, i8*** %196, align 8
  %198 = getelementptr inbounds i8*, i8** %197, i64 0
  store i8* %193, i8** %198, align 8
  %199 = load i8*, i8** @MOUSE_SYS_SYNC, align 8
  %200 = load %struct.wsp_softc*, %struct.wsp_softc** %9, align 8
  %201 = getelementptr inbounds %struct.wsp_softc, %struct.wsp_softc* %200, i32 0, i32 2
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 1
  %203 = load i8**, i8*** %202, align 8
  %204 = getelementptr inbounds i8*, i8** %203, i64 1
  store i8* %199, i8** %204, align 8
  br label %205

205:                                              ; preds = %184, %178
  br label %206

206:                                              ; preds = %205, %157
  %207 = load %struct.wsp_softc*, %struct.wsp_softc** %9, align 8
  %208 = call i32 @wsp_reset_buf(%struct.wsp_softc* %207)
  br label %273

209:                                              ; preds = %4
  %210 = load i8*, i8** %7, align 8
  %211 = bitcast i8* %210 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %211, %struct.TYPE_4__** %12, align 8
  %212 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %213 = load %struct.wsp_softc*, %struct.wsp_softc** %9, align 8
  %214 = getelementptr inbounds %struct.wsp_softc, %struct.wsp_softc* %213, i32 0, i32 1
  %215 = bitcast %struct.TYPE_4__* %212 to i8*
  %216 = bitcast %struct.TYPE_4__* %214 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %215, i8* align 4 %216, i64 24, i1 false)
  %217 = load %struct.wsp_softc*, %struct.wsp_softc** %9, align 8
  %218 = getelementptr inbounds %struct.wsp_softc, %struct.wsp_softc* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.wsp_softc*, %struct.wsp_softc** %9, align 8
  %222 = getelementptr inbounds %struct.wsp_softc, %struct.wsp_softc* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 1
  store i32 %220, i32* %223, align 4
  %224 = load %struct.wsp_softc*, %struct.wsp_softc** %9, align 8
  %225 = getelementptr inbounds %struct.wsp_softc, %struct.wsp_softc* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 2
  store i32 0, i32* %226, align 4
  %227 = load %struct.wsp_softc*, %struct.wsp_softc** %9, align 8
  %228 = getelementptr inbounds %struct.wsp_softc, %struct.wsp_softc* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i32 0, i32 5
  store i32 0, i32* %229, align 4
  %230 = load %struct.wsp_softc*, %struct.wsp_softc** %9, align 8
  %231 = getelementptr inbounds %struct.wsp_softc, %struct.wsp_softc* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 4
  store i32 0, i32* %232, align 4
  %233 = load %struct.wsp_softc*, %struct.wsp_softc** %9, align 8
  %234 = getelementptr inbounds %struct.wsp_softc, %struct.wsp_softc* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 3
  store i32 0, i32* %235, align 4
  %236 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 5
  %238 = load i32, i32* %237, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %250, label %240

240:                                              ; preds = %209
  %241 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 4
  %243 = load i32, i32* %242, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %250, label %245

245:                                              ; preds = %240
  %246 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %256

250:                                              ; preds = %245, %240, %209
  %251 = load i32, i32* @MOUSE_POSCHANGED, align 4
  %252 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %253 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = or i32 %254, %251
  store i32 %255, i32* %253, align 4
  br label %256

256:                                              ; preds = %250, %245
  %257 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %258 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %261 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = icmp ne i32 %259, %262
  br i1 %263, label %264, label %270

264:                                              ; preds = %256
  %265 = load i32, i32* @MOUSE_BUTTONSCHANGED, align 4
  %266 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %267 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = or i32 %268, %265
  store i32 %269, i32* %267, align 4
  br label %270

270:                                              ; preds = %264, %256
  br label %273

271:                                              ; preds = %4
  %272 = load i32, i32* @ENOTTY, align 4
  store i32 %272, i32* %11, align 4
  br label %273

273:                                              ; preds = %271, %270, %206, %123, %120, %26, %19
  br label %274

274:                                              ; preds = %273, %140, %50
  %275 = load %struct.wsp_softc*, %struct.wsp_softc** %9, align 8
  %276 = getelementptr inbounds %struct.wsp_softc, %struct.wsp_softc* %275, i32 0, i32 0
  %277 = call i32 @mtx_unlock(i32* %276)
  %278 = load i32, i32* %11, align 4
  ret i32 %278
}

declare dso_local %struct.wsp_softc* @usb_fifo_softc(%struct.usb_fifo*) #1

declare dso_local i32 @mtx_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @wsp_reset_buf(%struct.wsp_softc*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
