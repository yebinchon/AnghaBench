; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_ums.c_ums_fifo_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_ums.c_ums_fifo_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_fifo = type { i32 }
%struct.ums_softc = type { i8*, i32, %struct.TYPE_4__, %struct.TYPE_5__, %struct.TYPE_6__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i8**, i8*, i8*, i32 }
%struct.TYPE_6__ = type { i8* }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MOUSE_MSC_MAXBUTTON = common dso_local global i8* null, align 8
@MOUSE_PROTO_MSC = common dso_local global i8* null, align 8
@MOUSE_MSC_PACKETSIZE = common dso_local global i8* null, align 8
@MOUSE_MSC_SYNCMASK = common dso_local global i8* null, align 8
@MOUSE_MSC_SYNC = common dso_local global i8* null, align 8
@MOUSE_SYS_MAXBUTTON = common dso_local global i8* null, align 8
@MOUSE_PROTO_SYSMOUSE = common dso_local global i8* null, align 8
@MOUSE_SYS_PACKETSIZE = common dso_local global i8* null, align 8
@MOUSE_SYS_SYNCMASK = common dso_local global i8* null, align 8
@MOUSE_SYS_SYNC = common dso_local global i8* null, align 8
@MOUSE_POSCHANGED = common dso_local global i32 0, align 4
@MOUSE_BUTTONSCHANGED = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_fifo*, i32, i8*, i32)* @ums_fifo_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ums_fifo_ioctl(%struct.usb_fifo* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.usb_fifo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ums_softc*, align 8
  %10 = alloca %struct.TYPE_5__, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_4__*, align 8
  store %struct.usb_fifo* %0, %struct.usb_fifo** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.usb_fifo*, %struct.usb_fifo** %5, align 8
  %14 = call %struct.ums_softc* @usb_fifo_softc(%struct.usb_fifo* %13)
  store %struct.ums_softc* %14, %struct.ums_softc** %9, align 8
  store i32 0, i32* %11, align 4
  %15 = call i32 @DPRINTFN(i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.ums_softc*, %struct.ums_softc** %9, align 8
  %17 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %16, i32 0, i32 1
  %18 = call i32 @mtx_lock(i32* %17)
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %339 [
    i32 133, label %20
    i32 131, label %27
    i32 128, label %34
    i32 132, label %158
    i32 129, label %165
    i32 130, label %277
  ]

20:                                               ; preds = %4
  %21 = load i8*, i8** %7, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_6__*
  %23 = load %struct.ums_softc*, %struct.ums_softc** %9, align 8
  %24 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %23, i32 0, i32 4
  %25 = bitcast %struct.TYPE_6__* %22 to i8*
  %26 = bitcast %struct.TYPE_6__* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 8, i1 false)
  br label %341

27:                                               ; preds = %4
  %28 = load i8*, i8** %7, align 8
  %29 = bitcast i8* %28 to %struct.TYPE_5__*
  %30 = load %struct.ums_softc*, %struct.ums_softc** %9, align 8
  %31 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %30, i32 0, i32 3
  %32 = bitcast %struct.TYPE_5__* %29 to i8*
  %33 = bitcast %struct.TYPE_5__* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 8 %33, i64 40, i1 false)
  br label %341

34:                                               ; preds = %4
  %35 = load i8*, i8** %7, align 8
  %36 = bitcast i8* %35 to %struct.TYPE_5__*
  %37 = bitcast %struct.TYPE_5__* %10 to i8*
  %38 = bitcast %struct.TYPE_5__* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 8 %38, i64 40, i1 false)
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %60

43:                                               ; preds = %34
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp sgt i32 %49, 1
  br i1 %50, label %51, label %53

51:                                               ; preds = %47, %43
  %52 = load i32, i32* @EINVAL, align 4
  store i32 %52, i32* %11, align 4
  br label %341

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.ums_softc*, %struct.ums_softc** %9, align 8
  %57 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 8
  br label %59

59:                                               ; preds = %53
  br label %60

60:                                               ; preds = %59, %42
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.ums_softc*, %struct.ums_softc** %9, align 8
  %64 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %63, i32 0, i32 5
  store i32 %62, i32* %64, align 8
  %65 = load %struct.ums_softc*, %struct.ums_softc** %9, align 8
  %66 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %109

70:                                               ; preds = %60
  %71 = load %struct.ums_softc*, %struct.ums_softc** %9, align 8
  %72 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = load i8*, i8** @MOUSE_MSC_MAXBUTTON, align 8
  %75 = icmp ugt i8* %73, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %70
  %77 = load i8*, i8** @MOUSE_MSC_MAXBUTTON, align 8
  %78 = load %struct.ums_softc*, %struct.ums_softc** %9, align 8
  %79 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  store i8* %77, i8** %80, align 8
  br label %88

81:                                               ; preds = %70
  %82 = load %struct.ums_softc*, %struct.ums_softc** %9, align 8
  %83 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = load %struct.ums_softc*, %struct.ums_softc** %9, align 8
  %86 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %85, i32 0, i32 4
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  store i8* %84, i8** %87, align 8
  br label %88

88:                                               ; preds = %81, %76
  %89 = load i8*, i8** @MOUSE_PROTO_MSC, align 8
  %90 = load %struct.ums_softc*, %struct.ums_softc** %9, align 8
  %91 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 3
  store i8* %89, i8** %92, align 8
  %93 = load i8*, i8** @MOUSE_MSC_PACKETSIZE, align 8
  %94 = load %struct.ums_softc*, %struct.ums_softc** %9, align 8
  %95 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 2
  store i8* %93, i8** %96, align 8
  %97 = load i8*, i8** @MOUSE_MSC_SYNCMASK, align 8
  %98 = load %struct.ums_softc*, %struct.ums_softc** %9, align 8
  %99 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  %101 = load i8**, i8*** %100, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i64 0
  store i8* %97, i8** %102, align 8
  %103 = load i8*, i8** @MOUSE_MSC_SYNC, align 8
  %104 = load %struct.ums_softc*, %struct.ums_softc** %9, align 8
  %105 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 1
  %107 = load i8**, i8*** %106, align 8
  %108 = getelementptr inbounds i8*, i8** %107, i64 1
  store i8* %103, i8** %108, align 8
  br label %155

109:                                              ; preds = %60
  %110 = load %struct.ums_softc*, %struct.ums_softc** %9, align 8
  %111 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp eq i32 %113, 1
  br i1 %114, label %115, label %154

115:                                              ; preds = %109
  %116 = load %struct.ums_softc*, %struct.ums_softc** %9, align 8
  %117 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = load i8*, i8** @MOUSE_SYS_MAXBUTTON, align 8
  %120 = icmp ugt i8* %118, %119
  br i1 %120, label %121, label %126

121:                                              ; preds = %115
  %122 = load i8*, i8** @MOUSE_SYS_MAXBUTTON, align 8
  %123 = load %struct.ums_softc*, %struct.ums_softc** %9, align 8
  %124 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %123, i32 0, i32 4
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  store i8* %122, i8** %125, align 8
  br label %133

126:                                              ; preds = %115
  %127 = load %struct.ums_softc*, %struct.ums_softc** %9, align 8
  %128 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  %130 = load %struct.ums_softc*, %struct.ums_softc** %9, align 8
  %131 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %130, i32 0, i32 4
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  store i8* %129, i8** %132, align 8
  br label %133

133:                                              ; preds = %126, %121
  %134 = load i8*, i8** @MOUSE_PROTO_SYSMOUSE, align 8
  %135 = load %struct.ums_softc*, %struct.ums_softc** %9, align 8
  %136 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 3
  store i8* %134, i8** %137, align 8
  %138 = load i8*, i8** @MOUSE_SYS_PACKETSIZE, align 8
  %139 = load %struct.ums_softc*, %struct.ums_softc** %9, align 8
  %140 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 2
  store i8* %138, i8** %141, align 8
  %142 = load i8*, i8** @MOUSE_SYS_SYNCMASK, align 8
  %143 = load %struct.ums_softc*, %struct.ums_softc** %9, align 8
  %144 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 1
  %146 = load i8**, i8*** %145, align 8
  %147 = getelementptr inbounds i8*, i8** %146, i64 0
  store i8* %142, i8** %147, align 8
  %148 = load i8*, i8** @MOUSE_SYS_SYNC, align 8
  %149 = load %struct.ums_softc*, %struct.ums_softc** %9, align 8
  %150 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %149, i32 0, i32 3
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 1
  %152 = load i8**, i8*** %151, align 8
  %153 = getelementptr inbounds i8*, i8** %152, i64 1
  store i8* %148, i8** %153, align 8
  br label %154

154:                                              ; preds = %133, %109
  br label %155

155:                                              ; preds = %154, %88
  %156 = load %struct.ums_softc*, %struct.ums_softc** %9, align 8
  %157 = call i32 @ums_reset_buf(%struct.ums_softc* %156)
  br label %341

158:                                              ; preds = %4
  %159 = load %struct.ums_softc*, %struct.ums_softc** %9, align 8
  %160 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %159, i32 0, i32 3
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i8*, i8** %7, align 8
  %164 = bitcast i8* %163 to i32*
  store i32 %162, i32* %164, align 4
  br label %341

165:                                              ; preds = %4
  %166 = load i8*, i8** %7, align 8
  %167 = bitcast i8* %166 to i32*
  %168 = load i32, i32* %167, align 4
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %175, label %170

170:                                              ; preds = %165
  %171 = load i8*, i8** %7, align 8
  %172 = bitcast i8* %171 to i32*
  %173 = load i32, i32* %172, align 4
  %174 = icmp sgt i32 %173, 1
  br i1 %174, label %175, label %177

175:                                              ; preds = %170, %165
  %176 = load i32, i32* @EINVAL, align 4
  store i32 %176, i32* %11, align 4
  br label %341

177:                                              ; preds = %170
  %178 = load i8*, i8** %7, align 8
  %179 = bitcast i8* %178 to i32*
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.ums_softc*, %struct.ums_softc** %9, align 8
  %182 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %181, i32 0, i32 3
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 0
  store i32 %180, i32* %183, align 8
  %184 = load %struct.ums_softc*, %struct.ums_softc** %9, align 8
  %185 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %184, i32 0, i32 3
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %228

189:                                              ; preds = %177
  %190 = load %struct.ums_softc*, %struct.ums_softc** %9, align 8
  %191 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %190, i32 0, i32 0
  %192 = load i8*, i8** %191, align 8
  %193 = load i8*, i8** @MOUSE_MSC_MAXBUTTON, align 8
  %194 = icmp ugt i8* %192, %193
  br i1 %194, label %195, label %200

195:                                              ; preds = %189
  %196 = load i8*, i8** @MOUSE_MSC_MAXBUTTON, align 8
  %197 = load %struct.ums_softc*, %struct.ums_softc** %9, align 8
  %198 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %197, i32 0, i32 4
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 0
  store i8* %196, i8** %199, align 8
  br label %207

200:                                              ; preds = %189
  %201 = load %struct.ums_softc*, %struct.ums_softc** %9, align 8
  %202 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %201, i32 0, i32 0
  %203 = load i8*, i8** %202, align 8
  %204 = load %struct.ums_softc*, %struct.ums_softc** %9, align 8
  %205 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %204, i32 0, i32 4
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 0
  store i8* %203, i8** %206, align 8
  br label %207

207:                                              ; preds = %200, %195
  %208 = load i8*, i8** @MOUSE_PROTO_MSC, align 8
  %209 = load %struct.ums_softc*, %struct.ums_softc** %9, align 8
  %210 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %209, i32 0, i32 3
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 3
  store i8* %208, i8** %211, align 8
  %212 = load i8*, i8** @MOUSE_MSC_PACKETSIZE, align 8
  %213 = load %struct.ums_softc*, %struct.ums_softc** %9, align 8
  %214 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %213, i32 0, i32 3
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 2
  store i8* %212, i8** %215, align 8
  %216 = load i8*, i8** @MOUSE_MSC_SYNCMASK, align 8
  %217 = load %struct.ums_softc*, %struct.ums_softc** %9, align 8
  %218 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %217, i32 0, i32 3
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 1
  %220 = load i8**, i8*** %219, align 8
  %221 = getelementptr inbounds i8*, i8** %220, i64 0
  store i8* %216, i8** %221, align 8
  %222 = load i8*, i8** @MOUSE_MSC_SYNC, align 8
  %223 = load %struct.ums_softc*, %struct.ums_softc** %9, align 8
  %224 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %223, i32 0, i32 3
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 1
  %226 = load i8**, i8*** %225, align 8
  %227 = getelementptr inbounds i8*, i8** %226, i64 1
  store i8* %222, i8** %227, align 8
  br label %274

228:                                              ; preds = %177
  %229 = load %struct.ums_softc*, %struct.ums_softc** %9, align 8
  %230 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %229, i32 0, i32 3
  %231 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = icmp eq i32 %232, 1
  br i1 %233, label %234, label %273

234:                                              ; preds = %228
  %235 = load %struct.ums_softc*, %struct.ums_softc** %9, align 8
  %236 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %235, i32 0, i32 0
  %237 = load i8*, i8** %236, align 8
  %238 = load i8*, i8** @MOUSE_SYS_MAXBUTTON, align 8
  %239 = icmp ugt i8* %237, %238
  br i1 %239, label %240, label %245

240:                                              ; preds = %234
  %241 = load i8*, i8** @MOUSE_SYS_MAXBUTTON, align 8
  %242 = load %struct.ums_softc*, %struct.ums_softc** %9, align 8
  %243 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %242, i32 0, i32 4
  %244 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %243, i32 0, i32 0
  store i8* %241, i8** %244, align 8
  br label %252

245:                                              ; preds = %234
  %246 = load %struct.ums_softc*, %struct.ums_softc** %9, align 8
  %247 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %246, i32 0, i32 0
  %248 = load i8*, i8** %247, align 8
  %249 = load %struct.ums_softc*, %struct.ums_softc** %9, align 8
  %250 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %249, i32 0, i32 4
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %250, i32 0, i32 0
  store i8* %248, i8** %251, align 8
  br label %252

252:                                              ; preds = %245, %240
  %253 = load i8*, i8** @MOUSE_PROTO_SYSMOUSE, align 8
  %254 = load %struct.ums_softc*, %struct.ums_softc** %9, align 8
  %255 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %254, i32 0, i32 3
  %256 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %255, i32 0, i32 3
  store i8* %253, i8** %256, align 8
  %257 = load i8*, i8** @MOUSE_SYS_PACKETSIZE, align 8
  %258 = load %struct.ums_softc*, %struct.ums_softc** %9, align 8
  %259 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %258, i32 0, i32 3
  %260 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %259, i32 0, i32 2
  store i8* %257, i8** %260, align 8
  %261 = load i8*, i8** @MOUSE_SYS_SYNCMASK, align 8
  %262 = load %struct.ums_softc*, %struct.ums_softc** %9, align 8
  %263 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %262, i32 0, i32 3
  %264 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %263, i32 0, i32 1
  %265 = load i8**, i8*** %264, align 8
  %266 = getelementptr inbounds i8*, i8** %265, i64 0
  store i8* %261, i8** %266, align 8
  %267 = load i8*, i8** @MOUSE_SYS_SYNC, align 8
  %268 = load %struct.ums_softc*, %struct.ums_softc** %9, align 8
  %269 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %268, i32 0, i32 3
  %270 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %269, i32 0, i32 1
  %271 = load i8**, i8*** %270, align 8
  %272 = getelementptr inbounds i8*, i8** %271, i64 1
  store i8* %267, i8** %272, align 8
  br label %273

273:                                              ; preds = %252, %228
  br label %274

274:                                              ; preds = %273, %207
  %275 = load %struct.ums_softc*, %struct.ums_softc** %9, align 8
  %276 = call i32 @ums_reset_buf(%struct.ums_softc* %275)
  br label %341

277:                                              ; preds = %4
  %278 = load i8*, i8** %7, align 8
  %279 = bitcast i8* %278 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %279, %struct.TYPE_4__** %12, align 8
  %280 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %281 = load %struct.ums_softc*, %struct.ums_softc** %9, align 8
  %282 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %281, i32 0, i32 2
  %283 = bitcast %struct.TYPE_4__* %280 to i8*
  %284 = bitcast %struct.TYPE_4__* %282 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %283, i8* align 4 %284, i64 24, i1 false)
  %285 = load %struct.ums_softc*, %struct.ums_softc** %9, align 8
  %286 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %285, i32 0, i32 2
  %287 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %286, i32 0, i32 2
  %288 = load i32, i32* %287, align 4
  %289 = load %struct.ums_softc*, %struct.ums_softc** %9, align 8
  %290 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %289, i32 0, i32 2
  %291 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %290, i32 0, i32 1
  store i32 %288, i32* %291, align 4
  %292 = load %struct.ums_softc*, %struct.ums_softc** %9, align 8
  %293 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %292, i32 0, i32 2
  %294 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %293, i32 0, i32 2
  store i32 0, i32* %294, align 4
  %295 = load %struct.ums_softc*, %struct.ums_softc** %9, align 8
  %296 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %295, i32 0, i32 2
  %297 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %296, i32 0, i32 5
  store i32 0, i32* %297, align 4
  %298 = load %struct.ums_softc*, %struct.ums_softc** %9, align 8
  %299 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %298, i32 0, i32 2
  %300 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %299, i32 0, i32 4
  store i32 0, i32* %300, align 4
  %301 = load %struct.ums_softc*, %struct.ums_softc** %9, align 8
  %302 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %301, i32 0, i32 2
  %303 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %302, i32 0, i32 3
  store i32 0, i32* %303, align 4
  %304 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %305 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %304, i32 0, i32 5
  %306 = load i32, i32* %305, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %318, label %308

308:                                              ; preds = %277
  %309 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %310 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %309, i32 0, i32 4
  %311 = load i32, i32* %310, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %318, label %313

313:                                              ; preds = %308
  %314 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %315 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %314, i32 0, i32 3
  %316 = load i32, i32* %315, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %324

318:                                              ; preds = %313, %308, %277
  %319 = load i32, i32* @MOUSE_POSCHANGED, align 4
  %320 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %321 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 4
  %323 = or i32 %322, %319
  store i32 %323, i32* %321, align 4
  br label %324

324:                                              ; preds = %318, %313
  %325 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %326 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %325, i32 0, i32 2
  %327 = load i32, i32* %326, align 4
  %328 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %329 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %328, i32 0, i32 1
  %330 = load i32, i32* %329, align 4
  %331 = icmp ne i32 %327, %330
  br i1 %331, label %332, label %338

332:                                              ; preds = %324
  %333 = load i32, i32* @MOUSE_BUTTONSCHANGED, align 4
  %334 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %335 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 4
  %337 = or i32 %336, %333
  store i32 %337, i32* %335, align 4
  br label %338

338:                                              ; preds = %332, %324
  br label %341

339:                                              ; preds = %4
  %340 = load i32, i32* @ENOTTY, align 4
  store i32 %340, i32* %11, align 4
  br label %341

341:                                              ; preds = %339, %338, %274, %175, %158, %155, %51, %27, %20
  %342 = load %struct.ums_softc*, %struct.ums_softc** %9, align 8
  %343 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %342, i32 0, i32 1
  %344 = call i32 @mtx_unlock(i32* %343)
  %345 = load i32, i32* %11, align 4
  ret i32 %345
}

declare dso_local %struct.ums_softc* @usb_fifo_softc(%struct.usb_fifo*) #1

declare dso_local i32 @DPRINTFN(i32, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ums_reset_buf(%struct.ums_softc*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
