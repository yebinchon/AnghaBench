; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/twsi/extr_twsi.c_twsi_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/twsi/extr_twsi.c_twsi_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twsi_softc = type { i32, i64, i32, i64, i32, i32, i64, i8*, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32*, i32 }

@.str = private unnamed_addr constant [15 x i8] c"Got interrupt\0A\00", align 1
@TWSI_CONTROL_IFLG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"status=%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Send the address\0A\00", align 1
@IIC_M_RD = common dso_local global i32 0, align 4
@LSB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"Ack received after transmitting the address\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Sending byte 0 = %x\0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"No ack received after transmitting the address\0A\00", align 1
@ETIMEDOUT = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [38 x i8] c"Ack received after transmitting data\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"Done sending all the bytes\0A\00", align 1
@IIC_M_NOSTOP = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"Done TX data, send stop\0A\00", align 1
@TWSI_CONTROL_STOP = common dso_local global i32 0, align 4
@TWSI_CONTROL_INTEN = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [22 x i8] c"Sending byte %d = %x\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"Ack received after receiving data\0A\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"msg_len=%d recv_bytes=%d\0A\00", align 1
@TWSI_CONTROL_ACK = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [29 x i8] c"Done RX data, send stop (2)\0A\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"No ack when receiving data\0A\00", align 1
@ENXIO = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [23 x i8] c"status=%x hot handled\0A\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"Done with interrupts\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @twsi_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @twsi_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.twsi_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.twsi_softc*
  store %struct.twsi_softc* %7, %struct.twsi_softc** %3, align 8
  %8 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %9 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 8
  %11 = call i32 (i32, i8*, ...) @debugf(i32 %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %407, %1
  %13 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %14 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %15 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @TWSI_READ(%struct.twsi_softc* %13, i32 %16)
  %18 = load i32, i32* @TWSI_CONTROL_IFLG, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %408

21:                                               ; preds = %12
  %22 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %23 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %24 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %23, i32 0, i32 10
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @TWSI_READ(%struct.twsi_softc* %22, i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %28 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 (i32, i8*, ...) @debugf(i32 %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %4, align 4
  switch i32 %32, label %376 [
    i32 128, label %33
    i32 129, label %33
    i32 134, label %82
    i32 136, label %120
    i32 133, label %135
    i32 135, label %135
    i32 130, label %149
    i32 132, label %252
    i32 131, label %311
  ]

33:                                               ; preds = %21, %21
  %34 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %35 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = call i32 (i32, i8*, ...) @debugf(i32 %36, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %38 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %39 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %38, i32 0, i32 8
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @IIC_M_RD, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %33
  %47 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %48 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %49 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %48, i32 0, i32 9
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %52 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %51, i32 0, i32 8
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @LSB, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @TWSI_WRITE(%struct.twsi_softc* %47, i32 %50, i32 %57)
  br label %73

59:                                               ; preds = %33
  %60 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %61 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %62 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %61, i32 0, i32 9
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %65 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %64, i32 0, i32 8
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @LSB, align 4
  %70 = xor i32 %69, -1
  %71 = and i32 %68, %70
  %72 = call i32 @TWSI_WRITE(%struct.twsi_softc* %60, i32 %63, i32 %71)
  br label %73

73:                                               ; preds = %59, %46
  %74 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %75 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %76 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %79 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @TWSI_WRITE(%struct.twsi_softc* %74, i32 %77, i32 %80)
  br label %391

82:                                               ; preds = %21
  %83 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %84 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = call i32 (i32, i8*, ...) @debugf(i32 %85, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  %87 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %88 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %87, i32 0, i32 1
  store i64 0, i64* %88, align 8
  %89 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %90 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %93 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %92, i32 0, i32 8
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 (i32, i8*, ...) @debugf(i32 %91, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %98)
  %100 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %101 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %102 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %101, i32 0, i32 9
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %105 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %104, i32 0, i32 8
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @TWSI_WRITE(%struct.twsi_softc* %100, i32 %103, i32 %110)
  %112 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %113 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %114 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %117 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @TWSI_WRITE(%struct.twsi_softc* %112, i32 %115, i32 %118)
  br label %391

120:                                              ; preds = %21
  %121 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %122 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = call i32 (i32, i8*, ...) @debugf(i32 %123, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  %125 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %126 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %125, i32 0, i32 2
  store i32 0, i32* %126, align 8
  %127 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %128 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %129 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %132 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @TWSI_WRITE(%struct.twsi_softc* %127, i32 %130, i32 %133)
  br label %391

135:                                              ; preds = %21, %21
  %136 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %137 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = call i32 (i32, i8*, ...) @debugf(i32 %138, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  %140 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %141 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %140, i32 0, i32 3
  store i64 0, i64* %141, align 8
  %142 = load i8*, i8** @ETIMEDOUT, align 8
  %143 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %144 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %143, i32 0, i32 7
  store i8* %142, i8** %144, align 8
  %145 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %146 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %145, i32 0, i32 0
  store i32 0, i32* %146, align 8
  %147 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %148 = call i32 @wakeup(%struct.twsi_softc* %147)
  br label %391

149:                                              ; preds = %21
  %150 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %151 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 8
  %153 = call i32 (i32, i8*, ...) @debugf(i32 %152, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  %154 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %155 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = add i64 %156, 1
  store i64 %157, i64* %155, align 8
  %158 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %159 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %158, i32 0, i32 8
  %160 = load %struct.TYPE_2__*, %struct.TYPE_2__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 8
  %163 = sub nsw i32 %162, 1
  %164 = sext i32 %163 to i64
  %165 = icmp eq i64 %156, %164
  br i1 %165, label %166, label %210

166:                                              ; preds = %149
  %167 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %168 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 8
  %170 = call i32 (i32, i8*, ...) @debugf(i32 %169, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  %171 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %172 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %171, i32 0, i32 8
  %173 = load %struct.TYPE_2__*, %struct.TYPE_2__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @IIC_M_NOSTOP, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %194, label %179

179:                                              ; preds = %166
  %180 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %181 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 8
  %183 = call i32 (i32, i8*, ...) @debugf(i32 %182, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  %184 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %185 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %186 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %185, i32 0, i32 5
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %189 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @TWSI_CONTROL_STOP, align 4
  %192 = or i32 %190, %191
  %193 = call i32 @TWSI_WRITE(%struct.twsi_softc* %184, i32 %187, i32 %192)
  br label %209

194:                                              ; preds = %166
  %195 = load i32, i32* @TWSI_CONTROL_INTEN, align 4
  %196 = xor i32 %195, -1
  %197 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %198 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = and i32 %199, %196
  store i32 %200, i32* %198, align 8
  %201 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %202 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %203 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %202, i32 0, i32 5
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %206 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @TWSI_WRITE(%struct.twsi_softc* %201, i32 %204, i32 %207)
  br label %209

209:                                              ; preds = %194, %179
  store i32 1, i32* %5, align 4
  br label %251

210:                                              ; preds = %149
  %211 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %212 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %211, i32 0, i32 4
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %215 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %218 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %217, i32 0, i32 8
  %219 = load %struct.TYPE_2__*, %struct.TYPE_2__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %219, i32 0, i32 2
  %221 = load i32*, i32** %220, align 8
  %222 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %223 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %222, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = getelementptr inbounds i32, i32* %221, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = call i32 (i32, i8*, ...) @debugf(i32 %213, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i64 %216, i32 %226)
  %228 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %229 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %230 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %229, i32 0, i32 9
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %233 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %232, i32 0, i32 8
  %234 = load %struct.TYPE_2__*, %struct.TYPE_2__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %234, i32 0, i32 2
  %236 = load i32*, i32** %235, align 8
  %237 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %238 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %237, i32 0, i32 1
  %239 = load i64, i64* %238, align 8
  %240 = getelementptr inbounds i32, i32* %236, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @TWSI_WRITE(%struct.twsi_softc* %228, i32 %231, i32 %241)
  %243 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %244 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %245 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %244, i32 0, i32 5
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %248 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = call i32 @TWSI_WRITE(%struct.twsi_softc* %243, i32 %246, i32 %249)
  br label %251

251:                                              ; preds = %210, %209
  br label %391

252:                                              ; preds = %21
  %253 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %254 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %253, i32 0, i32 4
  %255 = load i32, i32* %254, align 8
  %256 = call i32 (i32, i8*, ...) @debugf(i32 %255, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0))
  %257 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %258 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %257, i32 0, i32 4
  %259 = load i32, i32* %258, align 8
  %260 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %261 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %260, i32 0, i32 8
  %262 = load %struct.TYPE_2__*, %struct.TYPE_2__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %262, i32 0, i32 3
  %264 = load i32, i32* %263, align 8
  %265 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %266 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 8
  %268 = call i32 (i32, i8*, ...) @debugf(i32 %259, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0), i32 %264, i32 %267)
  %269 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %270 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %271 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %270, i32 0, i32 9
  %272 = load i32, i32* %271, align 8
  %273 = call i32 @TWSI_READ(%struct.twsi_softc* %269, i32 %272)
  %274 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %275 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %274, i32 0, i32 8
  %276 = load %struct.TYPE_2__*, %struct.TYPE_2__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %276, i32 0, i32 2
  %278 = load i32*, i32** %277, align 8
  %279 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %280 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %279, i32 0, i32 2
  %281 = load i32, i32* %280, align 8
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %280, align 8
  %283 = sext i32 %281 to i64
  %284 = getelementptr inbounds i32, i32* %278, i64 %283
  store i32 %273, i32* %284, align 4
  %285 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %286 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %285, i32 0, i32 8
  %287 = load %struct.TYPE_2__*, %struct.TYPE_2__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %287, i32 0, i32 3
  %289 = load i32, i32* %288, align 8
  %290 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %291 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %290, i32 0, i32 2
  %292 = load i32, i32* %291, align 8
  %293 = sub nsw i32 %289, %292
  %294 = icmp eq i32 %293, 1
  br i1 %294, label %295, label %302

295:                                              ; preds = %252
  %296 = load i32, i32* @TWSI_CONTROL_ACK, align 4
  %297 = xor i32 %296, -1
  %298 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %299 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = and i32 %300, %297
  store i32 %301, i32* %299, align 8
  br label %302

302:                                              ; preds = %295, %252
  %303 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %304 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %305 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %304, i32 0, i32 5
  %306 = load i32, i32* %305, align 4
  %307 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %308 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = call i32 @TWSI_WRITE(%struct.twsi_softc* %303, i32 %306, i32 %309)
  br label %391

311:                                              ; preds = %21
  %312 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %313 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %312, i32 0, i32 8
  %314 = load %struct.TYPE_2__*, %struct.TYPE_2__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %314, i32 0, i32 3
  %316 = load i32, i32* %315, align 8
  %317 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %318 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %317, i32 0, i32 2
  %319 = load i32, i32* %318, align 8
  %320 = sub nsw i32 %316, %319
  %321 = icmp eq i32 %320, 1
  br i1 %321, label %322, label %363

322:                                              ; preds = %311
  %323 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %324 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %325 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %324, i32 0, i32 9
  %326 = load i32, i32* %325, align 8
  %327 = call i32 @TWSI_READ(%struct.twsi_softc* %323, i32 %326)
  %328 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %329 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %328, i32 0, i32 8
  %330 = load %struct.TYPE_2__*, %struct.TYPE_2__** %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %330, i32 0, i32 2
  %332 = load i32*, i32** %331, align 8
  %333 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %334 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %333, i32 0, i32 2
  %335 = load i32, i32* %334, align 8
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %334, align 8
  %337 = sext i32 %335 to i64
  %338 = getelementptr inbounds i32, i32* %332, i64 %337
  store i32 %327, i32* %338, align 4
  %339 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %340 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %339, i32 0, i32 4
  %341 = load i32, i32* %340, align 8
  %342 = call i32 (i32, i8*, ...) @debugf(i32 %341, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0))
  %343 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %344 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %343, i32 0, i32 8
  %345 = load %struct.TYPE_2__*, %struct.TYPE_2__** %344, align 8
  %346 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 8
  %348 = load i32, i32* @IIC_M_NOSTOP, align 4
  %349 = and i32 %347, %348
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %362, label %351

351:                                              ; preds = %322
  %352 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %353 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %354 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %353, i32 0, i32 5
  %355 = load i32, i32* %354, align 4
  %356 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %357 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 8
  %359 = load i32, i32* @TWSI_CONTROL_STOP, align 4
  %360 = or i32 %358, %359
  %361 = call i32 @TWSI_WRITE(%struct.twsi_softc* %352, i32 %355, i32 %360)
  br label %362

362:                                              ; preds = %351, %322
  br label %373

363:                                              ; preds = %311
  %364 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %365 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %364, i32 0, i32 4
  %366 = load i32, i32* %365, align 8
  %367 = call i32 (i32, i8*, ...) @debugf(i32 %366, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0))
  %368 = load i8*, i8** @ENXIO, align 8
  %369 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %370 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %369, i32 0, i32 7
  store i8* %368, i8** %370, align 8
  %371 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %372 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %371, i32 0, i32 0
  store i32 0, i32* %372, align 8
  br label %373

373:                                              ; preds = %363, %362
  %374 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %375 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %374, i32 0, i32 3
  store i64 0, i64* %375, align 8
  store i32 1, i32* %5, align 4
  br label %391

376:                                              ; preds = %21
  %377 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %378 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %377, i32 0, i32 4
  %379 = load i32, i32* %378, align 8
  %380 = load i32, i32* %4, align 4
  %381 = call i32 (i32, i8*, ...) @debugf(i32 %379, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 %380)
  %382 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %383 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %382, i32 0, i32 3
  store i64 0, i64* %383, align 8
  %384 = load i8*, i8** @ENXIO, align 8
  %385 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %386 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %385, i32 0, i32 7
  store i8* %384, i8** %386, align 8
  %387 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %388 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %387, i32 0, i32 0
  store i32 0, i32* %388, align 8
  %389 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %390 = call i32 @wakeup(%struct.twsi_softc* %389)
  br label %391

391:                                              ; preds = %376, %373, %302, %251, %135, %120, %82, %73
  %392 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %393 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %392, i32 0, i32 6
  %394 = load i64, i64* %393, align 8
  %395 = icmp ne i64 %394, 0
  br i1 %395, label %396, label %407

396:                                              ; preds = %391
  %397 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %398 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %399 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %398, i32 0, i32 5
  %400 = load i32, i32* %399, align 4
  %401 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %402 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %401, i32 0, i32 0
  %403 = load i32, i32* %402, align 8
  %404 = load i32, i32* @TWSI_CONTROL_IFLG, align 4
  %405 = or i32 %403, %404
  %406 = call i32 @TWSI_WRITE(%struct.twsi_softc* %397, i32 %400, i32 %405)
  br label %407

407:                                              ; preds = %396, %391
  br label %12

408:                                              ; preds = %12
  %409 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %410 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %409, i32 0, i32 4
  %411 = load i32, i32* %410, align 8
  %412 = call i32 (i32, i8*, ...) @debugf(i32 %411, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0))
  %413 = load i32, i32* %5, align 4
  %414 = icmp eq i32 %413, 1
  br i1 %414, label %415, label %420

415:                                              ; preds = %408
  %416 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %417 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %416, i32 0, i32 3
  store i64 0, i64* %417, align 8
  %418 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %419 = call i32 @wakeup(%struct.twsi_softc* %418)
  br label %420

420:                                              ; preds = %415, %408
  ret void
}

declare dso_local i32 @debugf(i32, i8*, ...) #1

declare dso_local i32 @TWSI_READ(%struct.twsi_softc*, i32) #1

declare dso_local i32 @TWSI_WRITE(%struct.twsi_softc*, i32, i32) #1

declare dso_local i32 @wakeup(%struct.twsi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
