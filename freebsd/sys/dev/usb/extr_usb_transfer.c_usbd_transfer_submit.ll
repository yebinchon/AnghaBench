; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_transfer.c_usbd_transfer_submit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_transfer.c_usbd_transfer_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i64, i64, i64, i64*, i64, %struct.usb_xfer_root*, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_10__*, i64, i64, i64, i64 }
%struct.usb_xfer_root = type { i32, %struct.TYPE_7__*, %struct.usb_bus* }
%struct.TYPE_7__ = type { i64 }
%struct.usb_bus = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i64, i64, i64, i64, i64 }
%struct.TYPE_8__ = type { i64, i64, i64 }
%struct.TYPE_10__ = type { i32*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.usb_xfer*)* }

@.str = private unnamed_addr constant [42 x i8] c"xfer=%p, endpoint=%p, nframes=%d, dir=%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@MA_OWNED = common dso_local global i32 0, align 4
@MA_NOTOWNED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"open\0A\00", align 1
@USB_STATE_POWERED = common dso_local global i64 0, align 8
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"xfer=%p nframes=0: stall or clear stall!\0A\00", align 1
@USB_ERR_INVAL = common dso_local global i32 0, align 4
@USB_ERR_STALLED = common dso_local global i32 0, align 4
@USB_DEBUG_VAR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usbd_transfer_submit(%struct.usb_xfer* %0) #0 {
  %2 = alloca %struct.usb_xfer*, align 8
  %3 = alloca %struct.usb_xfer_root*, align 8
  %4 = alloca %struct.usb_bus*, align 8
  %5 = alloca i64, align 8
  store %struct.usb_xfer* %0, %struct.usb_xfer** %2, align 8
  %6 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %7 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %6, i32 0, i32 5
  %8 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %7, align 8
  store %struct.usb_xfer_root* %8, %struct.usb_xfer_root** %3, align 8
  %9 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %3, align 8
  %10 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %9, i32 0, i32 2
  %11 = load %struct.usb_bus*, %struct.usb_bus** %10, align 8
  store %struct.usb_bus* %11, %struct.usb_bus** %4, align 8
  %12 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %13 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %14 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %13, i32 0, i32 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %17 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %20 = call i64 @USB_GET_DATA_ISREAD(%struct.usb_xfer* %19)
  %21 = icmp ne i64 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %24 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), %struct.usb_xfer* %12, %struct.TYPE_10__* %15, i64 %18, i8* %23)
  %25 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %26 = load i32, i32* @MA_OWNED, align 4
  %27 = call i32 @USB_XFER_LOCK_ASSERT(%struct.usb_xfer* %25, i32 %26)
  %28 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %29 = load i32, i32* @MA_NOTOWNED, align 4
  %30 = call i32 @USB_BUS_LOCK_ASSERT(%struct.usb_bus* %28, i32 %29)
  %31 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %32 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %31, i32 0, i32 6
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %54, label %36

36:                                               ; preds = %1
  %37 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %38 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %37, i32 0, i32 6
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %41 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %42 = call i32 @USB_BUS_LOCK(%struct.usb_bus* %41)
  %43 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %44 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %43, i32 0, i32 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32 (%struct.usb_xfer*)*, i32 (%struct.usb_xfer*)** %48, align 8
  %50 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %51 = call i32 %49(%struct.usb_xfer* %50)
  %52 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %53 = call i32 @USB_BUS_UNLOCK(%struct.usb_bus* %52)
  br label %54

54:                                               ; preds = %36, %1
  %55 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %56 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %55, i32 0, i32 6
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  store i32 1, i32* %57, align 4
  %58 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %59 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %58, i32 0, i32 12
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %54
  %63 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %64 = call i32 @USB_BUS_LOCK(%struct.usb_bus* %63)
  %65 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %66 = call i32 @usbd_transfer_dequeue(%struct.usb_xfer* %65)
  %67 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %68 = call i32 @USB_BUS_UNLOCK(%struct.usb_bus* %67)
  br label %69

69:                                               ; preds = %62, %54
  %70 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %71 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %70, i32 0, i32 6
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 9
  store i64 0, i64* %72, align 8
  %73 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %74 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %73, i32 0, i32 6
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 8
  store i64 0, i64* %75, align 8
  %76 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %77 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %76, i32 0, i32 6
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 2
  store i32 0, i32* %78, align 8
  %79 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %80 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %79, i32 0, i32 1
  store i64 0, i64* %80, align 8
  %81 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %82 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %81, i32 0, i32 11
  store i64 0, i64* %82, align 8
  %83 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %84 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %83, i32 0, i32 10
  store i64 0, i64* %84, align 8
  %85 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %86 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %85, i32 0, i32 9
  store i64 0, i64* %86, align 8
  %87 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %3, align 8
  %88 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %87, i32 0, i32 1
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @USB_STATE_POWERED, align 8
  %93 = icmp slt i64 %91, %92
  br i1 %93, label %94, label %102

94:                                               ; preds = %69
  %95 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %96 = call i32 @USB_BUS_LOCK(%struct.usb_bus* %95)
  %97 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %98 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %99 = call i32 @usbd_transfer_done(%struct.usb_xfer* %97, i32 %98)
  %100 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %101 = call i32 @USB_BUS_UNLOCK(%struct.usb_bus* %100)
  br label %264

102:                                              ; preds = %69
  %103 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %104 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %142

107:                                              ; preds = %102
  %108 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %109 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %108, i32 0, i32 7
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %134

113:                                              ; preds = %107
  %114 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %115 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), %struct.usb_xfer* %114)
  %116 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %117 = call i32 @USB_BUS_LOCK(%struct.usb_bus* %116)
  %118 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %119 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %118, i32 0, i32 6
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 2
  store i32 1, i32* %120, align 8
  %121 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %122 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %121, i32 0, i32 8
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %127 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = getelementptr inbounds i32, i32* %125, i64 %128
  %130 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %131 = call i32 @usb_command_wrapper(i32* %129, %struct.usb_xfer* %130)
  %132 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %133 = call i32 @USB_BUS_UNLOCK(%struct.usb_bus* %132)
  br label %264

134:                                              ; preds = %107
  %135 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %136 = call i32 @USB_BUS_LOCK(%struct.usb_bus* %135)
  %137 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %138 = load i32, i32* @USB_ERR_INVAL, align 4
  %139 = call i32 @usbd_transfer_done(%struct.usb_xfer* %137, i32 %138)
  %140 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %141 = call i32 @USB_BUS_UNLOCK(%struct.usb_bus* %140)
  br label %264

142:                                              ; preds = %102
  store i64 0, i64* %5, align 8
  br label %143

143:                                              ; preds = %194, %142
  %144 = load i64, i64* %5, align 8
  %145 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %146 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %144, %147
  br i1 %148, label %149, label %197

149:                                              ; preds = %143
  %150 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %151 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %150, i32 0, i32 3
  %152 = load i64*, i64** %151, align 8
  %153 = load i64, i64* %5, align 8
  %154 = getelementptr inbounds i64, i64* %152, i64 %153
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %157 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %156, i32 0, i32 3
  %158 = load i64*, i64** %157, align 8
  %159 = load i64, i64* %5, align 8
  %160 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %161 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %160, i32 0, i32 4
  %162 = load i64, i64* %161, align 8
  %163 = add i64 %159, %162
  %164 = getelementptr inbounds i64, i64* %158, i64 %163
  store i64 %155, i64* %164, align 8
  %165 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %166 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %165, i32 0, i32 3
  %167 = load i64*, i64** %166, align 8
  %168 = load i64, i64* %5, align 8
  %169 = getelementptr inbounds i64, i64* %167, i64 %168
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %172 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = add nsw i64 %173, %170
  store i64 %174, i64* %172, align 8
  %175 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %176 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %179 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %178, i32 0, i32 3
  %180 = load i64*, i64** %179, align 8
  %181 = load i64, i64* %5, align 8
  %182 = getelementptr inbounds i64, i64* %180, i64 %181
  %183 = load i64, i64* %182, align 8
  %184 = icmp slt i64 %177, %183
  br i1 %184, label %185, label %193

185:                                              ; preds = %149
  %186 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %187 = call i32 @USB_BUS_LOCK(%struct.usb_bus* %186)
  %188 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %189 = load i32, i32* @USB_ERR_INVAL, align 4
  %190 = call i32 @usbd_transfer_done(%struct.usb_xfer* %188, i32 %189)
  %191 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %192 = call i32 @USB_BUS_UNLOCK(%struct.usb_bus* %191)
  br label %264

193:                                              ; preds = %149
  br label %194

194:                                              ; preds = %193
  %195 = load i64, i64* %5, align 8
  %196 = add i64 %195, 1
  store i64 %196, i64* %5, align 8
  br label %143

197:                                              ; preds = %143
  %198 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %199 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %198, i32 0, i32 6
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 3
  store i32 0, i32* %200, align 4
  %201 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %202 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %201, i32 0, i32 6
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 4
  store i32 0, i32* %203, align 8
  %204 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %205 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %204, i32 0, i32 6
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 6
  %207 = load i64, i64* %206, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %222

209:                                              ; preds = %197
  %210 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %211 = call i64 @usbd_setup_ctrl_transfer(%struct.usb_xfer* %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %221

213:                                              ; preds = %209
  %214 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %215 = call i32 @USB_BUS_LOCK(%struct.usb_bus* %214)
  %216 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %217 = load i32, i32* @USB_ERR_STALLED, align 4
  %218 = call i32 @usbd_transfer_done(%struct.usb_xfer* %216, i32 %217)
  %219 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %220 = call i32 @USB_BUS_UNLOCK(%struct.usb_bus* %219)
  br label %264

221:                                              ; preds = %209
  br label %222

222:                                              ; preds = %221, %197
  %223 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %224 = call i64 @USB_GET_DATA_ISREAD(%struct.usb_xfer* %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %261

226:                                              ; preds = %222
  %227 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %228 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %227, i32 0, i32 7
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %239

232:                                              ; preds = %226
  %233 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %234 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %233, i32 0, i32 6
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i32 0, i32 3
  store i32 1, i32* %235, align 4
  %236 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %237 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %236, i32 0, i32 6
  %238 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %237, i32 0, i32 4
  store i32 1, i32* %238, align 8
  br label %260

239:                                              ; preds = %226
  %240 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %241 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %240, i32 0, i32 7
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %259

245:                                              ; preds = %239
  %246 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %247 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %246, i32 0, i32 6
  %248 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %247, i32 0, i32 3
  store i32 1, i32* %248, align 4
  %249 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %250 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %249, i32 0, i32 6
  %251 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %250, i32 0, i32 6
  %252 = load i64, i64* %251, align 8
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %258

254:                                              ; preds = %245
  %255 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %256 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %255, i32 0, i32 6
  %257 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %256, i32 0, i32 4
  store i32 1, i32* %257, align 8
  br label %258

258:                                              ; preds = %254, %245
  br label %259

259:                                              ; preds = %258, %239
  br label %260

260:                                              ; preds = %259, %232
  br label %261

261:                                              ; preds = %260, %222
  %262 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %263 = call i32 @usbd_pipe_enter(%struct.usb_xfer* %262)
  br label %264

264:                                              ; preds = %261, %213, %185, %134, %113, %94
  ret void
}

declare dso_local i32 @DPRINTF(i8*, ...) #1

declare dso_local i64 @USB_GET_DATA_ISREAD(%struct.usb_xfer*) #1

declare dso_local i32 @USB_XFER_LOCK_ASSERT(%struct.usb_xfer*, i32) #1

declare dso_local i32 @USB_BUS_LOCK_ASSERT(%struct.usb_bus*, i32) #1

declare dso_local i32 @USB_BUS_LOCK(%struct.usb_bus*) #1

declare dso_local i32 @USB_BUS_UNLOCK(%struct.usb_bus*) #1

declare dso_local i32 @usbd_transfer_dequeue(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_transfer_done(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usb_command_wrapper(i32*, %struct.usb_xfer*) #1

declare dso_local i64 @usbd_setup_ctrl_transfer(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_pipe_enter(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
