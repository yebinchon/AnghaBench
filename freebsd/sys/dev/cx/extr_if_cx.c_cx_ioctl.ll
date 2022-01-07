; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cx/extr_if_cx.c_cx_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cx/extr_if_cx.c_cx_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i32, %struct.TYPE_26__*, i32, %struct.TYPE_27__*, i32, %struct.TYPE_24__*, %struct.TYPE_29__* }
%struct.TYPE_26__ = type { i32, i32 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_24__ = type { i32* }
%struct.TYPE_29__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.thread = type { i32 }
%struct.serial_statistics = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_25__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"ioctl: getregistered\0A\00", align 1
@NCX = common dso_local global i32 0, align 4
@NCHAN = common dso_local global i32 0, align 4
@channel = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"ioctl: getport\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"ioctl: setproto\0A\00", align 1
@PRIV_DRIVER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"ioctl: getproto\0A\00", align 1
@M_ASYNC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"async\00", align 1
@PP_FR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"fr\00", align 1
@PP_CISCO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"cisco\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"ppp\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@PP_KEEPALIVE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [21 x i8] c"ioctl: getkeepalive\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"ioctl: setkeepalive\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"ioctl: getmode\0A\00", align 1
@SERIAL_ASYNC = common dso_local global i32 0, align 4
@SERIAL_HDLC = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [16 x i8] c"ioctl: setmode\0A\00", align 1
@TS_ISOPEN = common dso_local global i32 0, align 4
@M_HDLC = common dso_local global i32 0, align 4
@IFF_DEBUG = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [17 x i8] c"ioctl: getestat\0A\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"ioctl: clrstat\0A\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"ioctl: getbaud\0A\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"ioctl: setbaud\0A\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"ioctl: getloop\0A\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"ioctl: setloop\0A\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"ioctl: getdpll\0A\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"ioctl: setdpll\0A\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"ioctl: getnrzi\0A\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"ioctl: setnrzi\0A\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"ioctl: getdebug\0A\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"ioctl: setdebug\0A\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"ioctl: tiocsdtr\0A\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"ioctl: tioccdtr\0A\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"ioctl: tiocmset\0A\00", align 1
@TIOCM_DTR = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [17 x i8] c"ioctl: tiocmbis\0A\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"ioctl: tiocmbic\0A\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"ioctl: tiocmget\0A\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"ioctl: 0x%lx\0A\00", align 1
@ENOTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i64, i32, %struct.thread*)* @cx_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx_ioctl(%struct.cdev* %0, i32 %1, i64 %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.TYPE_28__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_29__*, align 8
  %15 = alloca %struct.serial_statistics*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [16 x i8], align 16
  store %struct.cdev* %0, %struct.cdev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.thread* %4, %struct.thread** %11, align 8
  %19 = load %struct.cdev*, %struct.cdev** %7, align 8
  %20 = getelementptr inbounds %struct.cdev, %struct.cdev* %19, i32 0, i32 0
  %21 = load %struct.TYPE_28__*, %struct.TYPE_28__** %20, align 8
  store %struct.TYPE_28__* %21, %struct.TYPE_28__** %12, align 8
  %22 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %23 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %22, i32 0, i32 6
  %24 = load %struct.TYPE_29__*, %struct.TYPE_29__** %23, align 8
  store %struct.TYPE_29__* %24, %struct.TYPE_29__** %14, align 8
  %25 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %25, i32 0, i32 5
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %13, align 8
  %30 = load i32, i32* %8, align 4
  switch i32 %30, label %914 [
    i32 144, label %31
    i32 146, label %69
    i32 135, label %90
    i32 145, label %113
    i32 134, label %158
    i32 150, label %271
    i32 139, label %321
    i32 148, label %384
    i32 137, label %407
    i32 143, label %535
    i32 154, label %592
    i32 153, label %628
    i32 142, label %650
    i32 149, label %681
    i32 138, label %703
    i32 151, label %734
    i32 140, label %756
    i32 147, label %787
    i32 136, label %809
    i32 152, label %840
    i32 141, label %855
  ]

31:                                               ; preds = %5
  %32 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %33 = call i32 @CX_DEBUG2(%struct.TYPE_28__* %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %34 = getelementptr inbounds [16 x i8], [16 x i8]* %18, i64 0, i64 0
  %35 = call i32 @bzero(i8* %34, i32 16)
  store i32 0, i32* %17, align 4
  br label %36

36:                                               ; preds = %62, %31
  %37 = load i32, i32* %17, align 4
  %38 = load i32, i32* @NCX, align 4
  %39 = load i32, i32* @NCHAN, align 4
  %40 = mul nsw i32 %38, %39
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %65

42:                                               ; preds = %36
  %43 = load i32*, i32** @channel, align 8
  %44 = load i32, i32* %17, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %42
  %50 = load i32, i32* %17, align 4
  %51 = and i32 %50, 7
  %52 = shl i32 1, %51
  %53 = load i32, i32* %17, align 4
  %54 = sdiv i32 %53, 8
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [16 x i8], [16 x i8]* %18, i64 0, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = or i32 %58, %52
  %60 = trunc i32 %59 to i8
  store i8 %60, i8* %56, align 1
  br label %61

61:                                               ; preds = %49, %42
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %17, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %17, align 4
  br label %36

65:                                               ; preds = %36
  %66 = getelementptr inbounds [16 x i8], [16 x i8]* %18, i64 0, i64 0
  %67 = load i64, i64* %9, align 8
  %68 = call i32 @bcopy(i8* %66, i64 %67, i32 16)
  store i32 0, i32* %6, align 4
  br label %1044

69:                                               ; preds = %5
  %70 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %71 = call i32 @CX_DEBUG2(%struct.TYPE_28__* %70, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %72 = call i32 (...) @splhigh()
  store i32 %72, i32* %17, align 4
  %73 = load i32*, i32** %13, align 8
  %74 = call i32 @CX_LOCK(i32* %73)
  %75 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %76 = call i32 @cx_get_port(%struct.TYPE_29__* %75)
  %77 = load i64, i64* %9, align 8
  %78 = inttoptr i64 %77 to i32*
  store i32 %76, i32* %78, align 4
  %79 = load i32*, i32** %13, align 8
  %80 = call i32 @CX_UNLOCK(i32* %79)
  %81 = load i32, i32* %17, align 4
  %82 = call i32 @splx(i32 %81)
  %83 = load i64, i64* %9, align 8
  %84 = inttoptr i64 %83 to i32*
  %85 = load i32, i32* %84, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %69
  %88 = load i32, i32* @EINVAL, align 4
  store i32 %88, i32* %6, align 4
  br label %1044

89:                                               ; preds = %69
  store i32 0, i32* %6, align 4
  br label %1044

90:                                               ; preds = %5
  %91 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %92 = call i32 @CX_DEBUG2(%struct.TYPE_28__* %91, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %93 = load %struct.thread*, %struct.thread** %11, align 8
  %94 = load i32, i32* @PRIV_DRIVER, align 4
  %95 = call i32 @priv_check(%struct.thread* %93, i32 %94)
  store i32 %95, i32* %16, align 4
  %96 = load i32, i32* %16, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %90
  %99 = load i32, i32* %16, align 4
  store i32 %99, i32* %6, align 4
  br label %1044

100:                                              ; preds = %90
  %101 = call i32 (...) @splhigh()
  store i32 %101, i32* %17, align 4
  %102 = load i32*, i32** %13, align 8
  %103 = call i32 @CX_LOCK(i32* %102)
  %104 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %105 = load i64, i64* %9, align 8
  %106 = inttoptr i64 %105 to i32*
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @cx_set_port(%struct.TYPE_29__* %104, i32 %107)
  %109 = load i32*, i32** %13, align 8
  %110 = call i32 @CX_UNLOCK(i32* %109)
  %111 = load i32, i32* %17, align 4
  %112 = call i32 @splx(i32 %111)
  store i32 0, i32* %6, align 4
  br label %1044

113:                                              ; preds = %5
  %114 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %115 = call i32 @CX_DEBUG2(%struct.TYPE_28__* %114, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %116 = call i32 (...) @splhigh()
  store i32 %116, i32* %17, align 4
  %117 = load i32*, i32** %13, align 8
  %118 = call i32 @CX_LOCK(i32* %117)
  %119 = load i64, i64* %9, align 8
  %120 = inttoptr i64 %119 to i8*
  %121 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %122 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @M_ASYNC, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %113
  br label %151

127:                                              ; preds = %113
  %128 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %129 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_26__*, %struct.TYPE_26__** %129, align 8
  %131 = call %struct.TYPE_25__* @IFP2SP(%struct.TYPE_26__* %130)
  %132 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @PP_FR, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %127
  br label %149

138:                                              ; preds = %127
  %139 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %140 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_26__*, %struct.TYPE_26__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @PP_CISCO, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  %147 = zext i1 %146 to i64
  %148 = select i1 %146, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)
  br label %149

149:                                              ; preds = %138, %137
  %150 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), %137 ], [ %148, %138 ]
  br label %151

151:                                              ; preds = %149, %126
  %152 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), %126 ], [ %150, %149 ]
  %153 = call i32 @strcpy(i8* %120, i8* %152)
  %154 = load i32*, i32** %13, align 8
  %155 = call i32 @CX_UNLOCK(i32* %154)
  %156 = load i32, i32* %17, align 4
  %157 = call i32 @splx(i32 %156)
  store i32 0, i32* %6, align 4
  br label %1044

158:                                              ; preds = %5
  %159 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %160 = call i32 @CX_DEBUG2(%struct.TYPE_28__* %159, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %161 = load %struct.thread*, %struct.thread** %11, align 8
  %162 = load i32, i32* @PRIV_DRIVER, align 4
  %163 = call i32 @priv_check(%struct.thread* %161, i32 %162)
  store i32 %163, i32* %16, align 4
  %164 = load i32, i32* %16, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %158
  %167 = load i32, i32* %16, align 4
  store i32 %167, i32* %6, align 4
  br label %1044

168:                                              ; preds = %158
  %169 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %170 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @M_ASYNC, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %174, label %176

174:                                              ; preds = %168
  %175 = load i32, i32* @EBUSY, align 4
  store i32 %175, i32* %6, align 4
  br label %1044

176:                                              ; preds = %168
  %177 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %178 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %177, i32 0, i32 1
  %179 = load %struct.TYPE_26__*, %struct.TYPE_26__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %176
  %186 = load i32, i32* @EBUSY, align 4
  store i32 %186, i32* %6, align 4
  br label %1044

187:                                              ; preds = %176
  %188 = load i64, i64* %9, align 8
  %189 = inttoptr i64 %188 to i8*
  %190 = call i32 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %189)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %217, label %192

192:                                              ; preds = %187
  %193 = load i32, i32* @PP_FR, align 4
  %194 = xor i32 %193, -1
  %195 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %196 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %195, i32 0, i32 1
  %197 = load %struct.TYPE_26__*, %struct.TYPE_26__** %196, align 8
  %198 = call %struct.TYPE_25__* @IFP2SP(%struct.TYPE_26__* %197)
  %199 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = and i32 %200, %194
  store i32 %201, i32* %199, align 4
  %202 = load i32, i32* @PP_KEEPALIVE, align 4
  %203 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %204 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %203, i32 0, i32 1
  %205 = load %struct.TYPE_26__*, %struct.TYPE_26__** %204, align 8
  %206 = call %struct.TYPE_25__* @IFP2SP(%struct.TYPE_26__* %205)
  %207 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = or i32 %208, %202
  store i32 %209, i32* %207, align 4
  %210 = load i32, i32* @PP_CISCO, align 4
  %211 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %212 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %211, i32 0, i32 1
  %213 = load %struct.TYPE_26__*, %struct.TYPE_26__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = or i32 %215, %210
  store i32 %216, i32* %214, align 4
  br label %270

217:                                              ; preds = %187
  %218 = load i64, i64* %9, align 8
  %219 = inttoptr i64 %218 to i8*
  %220 = call i32 @strcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %219)
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %241, label %222

222:                                              ; preds = %217
  %223 = load i32, i32* @PP_CISCO, align 4
  %224 = xor i32 %223, -1
  %225 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %226 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %225, i32 0, i32 1
  %227 = load %struct.TYPE_26__*, %struct.TYPE_26__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = and i32 %229, %224
  store i32 %230, i32* %228, align 4
  %231 = load i32, i32* @PP_FR, align 4
  %232 = load i32, i32* @PP_KEEPALIVE, align 4
  %233 = or i32 %231, %232
  %234 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %235 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %234, i32 0, i32 1
  %236 = load %struct.TYPE_26__*, %struct.TYPE_26__** %235, align 8
  %237 = call %struct.TYPE_25__* @IFP2SP(%struct.TYPE_26__* %236)
  %238 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = or i32 %239, %233
  store i32 %240, i32* %238, align 4
  br label %269

241:                                              ; preds = %217
  %242 = load i64, i64* %9, align 8
  %243 = inttoptr i64 %242 to i8*
  %244 = call i32 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %243)
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %266, label %246

246:                                              ; preds = %241
  %247 = load i32, i32* @PP_FR, align 4
  %248 = load i32, i32* @PP_KEEPALIVE, align 4
  %249 = or i32 %247, %248
  %250 = xor i32 %249, -1
  %251 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %252 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %251, i32 0, i32 1
  %253 = load %struct.TYPE_26__*, %struct.TYPE_26__** %252, align 8
  %254 = call %struct.TYPE_25__* @IFP2SP(%struct.TYPE_26__* %253)
  %255 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = and i32 %256, %250
  store i32 %257, i32* %255, align 4
  %258 = load i32, i32* @PP_CISCO, align 4
  %259 = xor i32 %258, -1
  %260 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %261 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %260, i32 0, i32 1
  %262 = load %struct.TYPE_26__*, %struct.TYPE_26__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = and i32 %264, %259
  store i32 %265, i32* %263, align 4
  br label %268

266:                                              ; preds = %241
  %267 = load i32, i32* @EINVAL, align 4
  store i32 %267, i32* %6, align 4
  br label %1044

268:                                              ; preds = %246
  br label %269

269:                                              ; preds = %268, %222
  br label %270

270:                                              ; preds = %269, %192
  store i32 0, i32* %6, align 4
  br label %1044

271:                                              ; preds = %5
  %272 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %273 = call i32 @CX_DEBUG2(%struct.TYPE_28__* %272, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %274 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %275 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %274, i32 0, i32 1
  %276 = load %struct.TYPE_26__*, %struct.TYPE_26__** %275, align 8
  %277 = call %struct.TYPE_25__* @IFP2SP(%struct.TYPE_26__* %276)
  %278 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = load i32, i32* @PP_FR, align 4
  %281 = and i32 %279, %280
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %298, label %283

283:                                              ; preds = %271
  %284 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %285 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %284, i32 0, i32 1
  %286 = load %struct.TYPE_26__*, %struct.TYPE_26__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* @PP_CISCO, align 4
  %290 = and i32 %288, %289
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %298, label %292

292:                                              ; preds = %283
  %293 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %294 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %293, i32 0, i32 2
  %295 = load i32, i32* %294, align 4
  %296 = load i32, i32* @M_ASYNC, align 4
  %297 = icmp eq i32 %295, %296
  br i1 %297, label %298, label %300

298:                                              ; preds = %292, %283, %271
  %299 = load i32, i32* @EINVAL, align 4
  store i32 %299, i32* %6, align 4
  br label %1044

300:                                              ; preds = %292
  %301 = call i32 (...) @splhigh()
  store i32 %301, i32* %17, align 4
  %302 = load i32*, i32** %13, align 8
  %303 = call i32 @CX_LOCK(i32* %302)
  %304 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %305 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %304, i32 0, i32 1
  %306 = load %struct.TYPE_26__*, %struct.TYPE_26__** %305, align 8
  %307 = call %struct.TYPE_25__* @IFP2SP(%struct.TYPE_26__* %306)
  %308 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 4
  %310 = load i32, i32* @PP_KEEPALIVE, align 4
  %311 = and i32 %309, %310
  %312 = icmp ne i32 %311, 0
  %313 = zext i1 %312 to i64
  %314 = select i1 %312, i32 1, i32 0
  %315 = load i64, i64* %9, align 8
  %316 = inttoptr i64 %315 to i32*
  store i32 %314, i32* %316, align 4
  %317 = load i32*, i32** %13, align 8
  %318 = call i32 @CX_UNLOCK(i32* %317)
  %319 = load i32, i32* %17, align 4
  %320 = call i32 @splx(i32 %319)
  store i32 0, i32* %6, align 4
  br label %1044

321:                                              ; preds = %5
  %322 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %323 = call i32 @CX_DEBUG2(%struct.TYPE_28__* %322, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  %324 = load %struct.thread*, %struct.thread** %11, align 8
  %325 = load i32, i32* @PRIV_DRIVER, align 4
  %326 = call i32 @priv_check(%struct.thread* %324, i32 %325)
  store i32 %326, i32* %16, align 4
  %327 = load i32, i32* %16, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %331

329:                                              ; preds = %321
  %330 = load i32, i32* %16, align 4
  store i32 %330, i32* %6, align 4
  br label %1044

331:                                              ; preds = %321
  %332 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %333 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %332, i32 0, i32 1
  %334 = load %struct.TYPE_26__*, %struct.TYPE_26__** %333, align 8
  %335 = call %struct.TYPE_25__* @IFP2SP(%struct.TYPE_26__* %334)
  %336 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 4
  %338 = load i32, i32* @PP_FR, align 4
  %339 = and i32 %337, %338
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %350, label %341

341:                                              ; preds = %331
  %342 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %343 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %342, i32 0, i32 1
  %344 = load %struct.TYPE_26__*, %struct.TYPE_26__** %343, align 8
  %345 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 4
  %347 = load i32, i32* @PP_CISCO, align 4
  %348 = and i32 %346, %347
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %352

350:                                              ; preds = %341, %331
  %351 = load i32, i32* @EINVAL, align 4
  store i32 %351, i32* %6, align 4
  br label %1044

352:                                              ; preds = %341
  %353 = call i32 (...) @splhigh()
  store i32 %353, i32* %17, align 4
  %354 = load i32*, i32** %13, align 8
  %355 = call i32 @CX_LOCK(i32* %354)
  %356 = load i64, i64* %9, align 8
  %357 = inttoptr i64 %356 to i32*
  %358 = load i32, i32* %357, align 4
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %369

360:                                              ; preds = %352
  %361 = load i32, i32* @PP_KEEPALIVE, align 4
  %362 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %363 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %362, i32 0, i32 1
  %364 = load %struct.TYPE_26__*, %struct.TYPE_26__** %363, align 8
  %365 = call %struct.TYPE_25__* @IFP2SP(%struct.TYPE_26__* %364)
  %366 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 4
  %368 = or i32 %367, %361
  store i32 %368, i32* %366, align 4
  br label %379

369:                                              ; preds = %352
  %370 = load i32, i32* @PP_KEEPALIVE, align 4
  %371 = xor i32 %370, -1
  %372 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %373 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %372, i32 0, i32 1
  %374 = load %struct.TYPE_26__*, %struct.TYPE_26__** %373, align 8
  %375 = call %struct.TYPE_25__* @IFP2SP(%struct.TYPE_26__* %374)
  %376 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 4
  %378 = and i32 %377, %371
  store i32 %378, i32* %376, align 4
  br label %379

379:                                              ; preds = %369, %360
  %380 = load i32*, i32** %13, align 8
  %381 = call i32 @CX_UNLOCK(i32* %380)
  %382 = load i32, i32* %17, align 4
  %383 = call i32 @splx(i32 %382)
  store i32 0, i32* %6, align 4
  br label %1044

384:                                              ; preds = %5
  %385 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %386 = call i32 @CX_DEBUG2(%struct.TYPE_28__* %385, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  %387 = call i32 (...) @splhigh()
  store i32 %387, i32* %17, align 4
  %388 = load i32*, i32** %13, align 8
  %389 = call i32 @CX_LOCK(i32* %388)
  %390 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %391 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %390, i32 0, i32 2
  %392 = load i32, i32* %391, align 4
  %393 = load i32, i32* @M_ASYNC, align 4
  %394 = icmp eq i32 %392, %393
  br i1 %394, label %395, label %397

395:                                              ; preds = %384
  %396 = load i32, i32* @SERIAL_ASYNC, align 4
  br label %399

397:                                              ; preds = %384
  %398 = load i32, i32* @SERIAL_HDLC, align 4
  br label %399

399:                                              ; preds = %397, %395
  %400 = phi i32 [ %396, %395 ], [ %398, %397 ]
  %401 = load i64, i64* %9, align 8
  %402 = inttoptr i64 %401 to i32*
  store i32 %400, i32* %402, align 4
  %403 = load i32*, i32** %13, align 8
  %404 = call i32 @CX_UNLOCK(i32* %403)
  %405 = load i32, i32* %17, align 4
  %406 = call i32 @splx(i32 %405)
  store i32 0, i32* %6, align 4
  br label %1044

407:                                              ; preds = %5
  %408 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %409 = call i32 @CX_DEBUG2(%struct.TYPE_28__* %408, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0))
  %410 = load %struct.thread*, %struct.thread** %11, align 8
  %411 = load i32, i32* @PRIV_DRIVER, align 4
  %412 = call i32 @priv_check(%struct.thread* %410, i32 %411)
  store i32 %412, i32* %16, align 4
  %413 = load i32, i32* %16, align 4
  %414 = icmp ne i32 %413, 0
  br i1 %414, label %415, label %417

415:                                              ; preds = %407
  %416 = load i32, i32* %16, align 4
  store i32 %416, i32* %6, align 4
  br label %1044

417:                                              ; preds = %407
  %418 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %419 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %418, i32 0, i32 4
  %420 = load i32, i32* %419, align 8
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %422, label %424

422:                                              ; preds = %417
  %423 = load i32, i32* @EBUSY, align 4
  store i32 %423, i32* %6, align 4
  br label %1044

424:                                              ; preds = %417
  %425 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %426 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %425, i32 0, i32 2
  %427 = load i32, i32* %426, align 4
  %428 = load i32, i32* @M_ASYNC, align 4
  %429 = icmp eq i32 %427, %428
  br i1 %429, label %430, label %452

430:                                              ; preds = %424
  %431 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %432 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %431, i32 0, i32 3
  %433 = load %struct.TYPE_27__*, %struct.TYPE_27__** %432, align 8
  %434 = icmp ne %struct.TYPE_27__* %433, null
  br i1 %434, label %435, label %452

435:                                              ; preds = %430
  %436 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %437 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %436, i32 0, i32 3
  %438 = load %struct.TYPE_27__*, %struct.TYPE_27__** %437, align 8
  %439 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %438, i32 0, i32 0
  %440 = load i32, i32* %439, align 4
  %441 = load i32, i32* @TS_ISOPEN, align 4
  %442 = and i32 %440, %441
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %444, label %452

444:                                              ; preds = %435
  %445 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %446 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %445, i32 0, i32 0
  %447 = load i32, i32* %446, align 8
  %448 = or i32 %447, 2
  %449 = icmp ne i32 %448, 0
  br i1 %449, label %450, label %452

450:                                              ; preds = %444
  %451 = load i32, i32* @EBUSY, align 4
  store i32 %451, i32* %6, align 4
  br label %1044

452:                                              ; preds = %444, %435, %430, %424
  %453 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %454 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %453, i32 0, i32 2
  %455 = load i32, i32* %454, align 4
  %456 = load i32, i32* @M_ASYNC, align 4
  %457 = icmp ne i32 %455, %456
  br i1 %457, label %458, label %471

458:                                              ; preds = %452
  %459 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %460 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %459, i32 0, i32 2
  %461 = load i32, i32* %460, align 8
  %462 = icmp ne i32 %461, 0
  br i1 %462, label %463, label %471

463:                                              ; preds = %458
  %464 = load i64, i64* %9, align 8
  %465 = inttoptr i64 %464 to i32*
  %466 = load i32, i32* %465, align 4
  %467 = load i32, i32* @SERIAL_ASYNC, align 4
  %468 = icmp eq i32 %466, %467
  br i1 %468, label %469, label %471

469:                                              ; preds = %463
  %470 = load i32, i32* @EBUSY, align 4
  store i32 %470, i32* %6, align 4
  br label %1044

471:                                              ; preds = %463, %458, %452
  %472 = call i32 (...) @splhigh()
  store i32 %472, i32* %17, align 4
  %473 = load i32*, i32** %13, align 8
  %474 = call i32 @CX_LOCK(i32* %473)
  %475 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %476 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %475, i32 0, i32 2
  %477 = load i32, i32* %476, align 4
  %478 = load i32, i32* @M_HDLC, align 4
  %479 = icmp eq i32 %477, %478
  br i1 %479, label %480, label %494

480:                                              ; preds = %471
  %481 = load i64, i64* %9, align 8
  %482 = inttoptr i64 %481 to i32*
  %483 = load i32, i32* %482, align 4
  %484 = load i32, i32* @SERIAL_ASYNC, align 4
  %485 = icmp eq i32 %483, %484
  br i1 %485, label %486, label %494

486:                                              ; preds = %480
  %487 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %488 = load i32, i32* @M_ASYNC, align 4
  %489 = call i32 @cx_set_mode(%struct.TYPE_29__* %487, i32 %488)
  %490 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %491 = call i32 @cx_enable_receive(%struct.TYPE_29__* %490, i32 0)
  %492 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %493 = call i32 @cx_enable_transmit(%struct.TYPE_29__* %492, i32 0)
  br label %530

494:                                              ; preds = %480, %471
  %495 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %496 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %495, i32 0, i32 2
  %497 = load i32, i32* %496, align 4
  %498 = load i32, i32* @M_ASYNC, align 4
  %499 = icmp eq i32 %497, %498
  br i1 %499, label %500, label %529

500:                                              ; preds = %494
  %501 = load i64, i64* %9, align 8
  %502 = inttoptr i64 %501 to i32*
  %503 = load i32, i32* %502, align 4
  %504 = load i32, i32* @SERIAL_HDLC, align 4
  %505 = icmp eq i32 %503, %504
  br i1 %505, label %506, label %529

506:                                              ; preds = %500
  %507 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %508 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %507, i32 0, i32 1
  %509 = load %struct.TYPE_26__*, %struct.TYPE_26__** %508, align 8
  %510 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %509, i32 0, i32 0
  %511 = load i32, i32* %510, align 4
  %512 = load i32, i32* @IFF_DEBUG, align 4
  %513 = and i32 %511, %512
  %514 = icmp ne i32 %513, 0
  br i1 %514, label %515, label %521

515:                                              ; preds = %506
  %516 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %517 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %516, i32 0, i32 1
  %518 = load i32, i32* %517, align 4
  %519 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %520 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %519, i32 0, i32 0
  store i32 %518, i32* %520, align 4
  br label %521

521:                                              ; preds = %515, %506
  %522 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %523 = load i32, i32* @M_HDLC, align 4
  %524 = call i32 @cx_set_mode(%struct.TYPE_29__* %522, i32 %523)
  %525 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %526 = call i32 @cx_enable_receive(%struct.TYPE_29__* %525, i32 1)
  %527 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %528 = call i32 @cx_enable_transmit(%struct.TYPE_29__* %527, i32 1)
  br label %529

529:                                              ; preds = %521, %500, %494
  br label %530

530:                                              ; preds = %529, %486
  %531 = load i32*, i32** %13, align 8
  %532 = call i32 @CX_UNLOCK(i32* %531)
  %533 = load i32, i32* %17, align 4
  %534 = call i32 @splx(i32 %533)
  store i32 0, i32* %6, align 4
  br label %1044

535:                                              ; preds = %5
  %536 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %537 = call i32 @CX_DEBUG2(%struct.TYPE_28__* %536, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0))
  %538 = load i64, i64* %9, align 8
  %539 = inttoptr i64 %538 to %struct.serial_statistics*
  store %struct.serial_statistics* %539, %struct.serial_statistics** %15, align 8
  %540 = call i32 (...) @splhigh()
  store i32 %540, i32* %17, align 4
  %541 = load i32*, i32** %13, align 8
  %542 = call i32 @CX_LOCK(i32* %541)
  %543 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %544 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %543, i32 0, i32 11
  %545 = load i32, i32* %544, align 4
  %546 = load %struct.serial_statistics*, %struct.serial_statistics** %15, align 8
  %547 = getelementptr inbounds %struct.serial_statistics, %struct.serial_statistics* %546, i32 0, i32 8
  store i32 %545, i32* %547, align 4
  %548 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %549 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %548, i32 0, i32 10
  %550 = load i32, i32* %549, align 4
  %551 = load %struct.serial_statistics*, %struct.serial_statistics** %15, align 8
  %552 = getelementptr inbounds %struct.serial_statistics, %struct.serial_statistics* %551, i32 0, i32 7
  store i32 %550, i32* %552, align 4
  %553 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %554 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %553, i32 0, i32 9
  %555 = load i32, i32* %554, align 4
  %556 = load %struct.serial_statistics*, %struct.serial_statistics** %15, align 8
  %557 = getelementptr inbounds %struct.serial_statistics, %struct.serial_statistics* %556, i32 0, i32 6
  store i32 %555, i32* %557, align 4
  %558 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %559 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %558, i32 0, i32 8
  %560 = load i32, i32* %559, align 4
  %561 = load %struct.serial_statistics*, %struct.serial_statistics** %15, align 8
  %562 = getelementptr inbounds %struct.serial_statistics, %struct.serial_statistics* %561, i32 0, i32 5
  store i32 %560, i32* %562, align 4
  %563 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %564 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %563, i32 0, i32 7
  %565 = load i32, i32* %564, align 4
  %566 = load %struct.serial_statistics*, %struct.serial_statistics** %15, align 8
  %567 = getelementptr inbounds %struct.serial_statistics, %struct.serial_statistics* %566, i32 0, i32 4
  store i32 %565, i32* %567, align 4
  %568 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %569 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %568, i32 0, i32 6
  %570 = load i32, i32* %569, align 4
  %571 = load %struct.serial_statistics*, %struct.serial_statistics** %15, align 8
  %572 = getelementptr inbounds %struct.serial_statistics, %struct.serial_statistics* %571, i32 0, i32 3
  store i32 %570, i32* %572, align 4
  %573 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %574 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %573, i32 0, i32 5
  %575 = load i32, i32* %574, align 4
  %576 = load %struct.serial_statistics*, %struct.serial_statistics** %15, align 8
  %577 = getelementptr inbounds %struct.serial_statistics, %struct.serial_statistics* %576, i32 0, i32 2
  store i32 %575, i32* %577, align 4
  %578 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %579 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %578, i32 0, i32 4
  %580 = load i32, i32* %579, align 4
  %581 = load %struct.serial_statistics*, %struct.serial_statistics** %15, align 8
  %582 = getelementptr inbounds %struct.serial_statistics, %struct.serial_statistics* %581, i32 0, i32 1
  store i32 %580, i32* %582, align 4
  %583 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %584 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %583, i32 0, i32 3
  %585 = load i32, i32* %584, align 4
  %586 = load %struct.serial_statistics*, %struct.serial_statistics** %15, align 8
  %587 = getelementptr inbounds %struct.serial_statistics, %struct.serial_statistics* %586, i32 0, i32 0
  store i32 %585, i32* %587, align 4
  %588 = load i32*, i32** %13, align 8
  %589 = call i32 @CX_UNLOCK(i32* %588)
  %590 = load i32, i32* %17, align 4
  %591 = call i32 @splx(i32 %590)
  store i32 0, i32* %6, align 4
  br label %1044

592:                                              ; preds = %5
  %593 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %594 = call i32 @CX_DEBUG2(%struct.TYPE_28__* %593, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0))
  %595 = load %struct.thread*, %struct.thread** %11, align 8
  %596 = load i32, i32* @PRIV_DRIVER, align 4
  %597 = call i32 @priv_check(%struct.thread* %595, i32 %596)
  store i32 %597, i32* %16, align 4
  %598 = load i32, i32* %16, align 4
  %599 = icmp ne i32 %598, 0
  br i1 %599, label %600, label %602

600:                                              ; preds = %592
  %601 = load i32, i32* %16, align 4
  store i32 %601, i32* %6, align 4
  br label %1044

602:                                              ; preds = %592
  %603 = call i32 (...) @splhigh()
  store i32 %603, i32* %17, align 4
  %604 = load i32*, i32** %13, align 8
  %605 = call i32 @CX_LOCK(i32* %604)
  %606 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %607 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %606, i32 0, i32 11
  store i32 0, i32* %607, align 4
  %608 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %609 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %608, i32 0, i32 10
  store i32 0, i32* %609, align 4
  %610 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %611 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %610, i32 0, i32 9
  store i32 0, i32* %611, align 4
  %612 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %613 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %612, i32 0, i32 8
  store i32 0, i32* %613, align 4
  %614 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %615 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %614, i32 0, i32 7
  store i32 0, i32* %615, align 4
  %616 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %617 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %616, i32 0, i32 6
  store i32 0, i32* %617, align 4
  %618 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %619 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %618, i32 0, i32 5
  store i32 0, i32* %619, align 4
  %620 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %621 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %620, i32 0, i32 4
  store i32 0, i32* %621, align 4
  %622 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %623 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %622, i32 0, i32 3
  store i32 0, i32* %623, align 4
  %624 = load i32*, i32** %13, align 8
  %625 = call i32 @CX_UNLOCK(i32* %624)
  %626 = load i32, i32* %17, align 4
  %627 = call i32 @splx(i32 %626)
  store i32 0, i32* %6, align 4
  br label %1044

628:                                              ; preds = %5
  %629 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %630 = call i32 @CX_DEBUG2(%struct.TYPE_28__* %629, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0))
  %631 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %632 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %631, i32 0, i32 2
  %633 = load i32, i32* %632, align 4
  %634 = load i32, i32* @M_ASYNC, align 4
  %635 = icmp eq i32 %633, %634
  br i1 %635, label %636, label %638

636:                                              ; preds = %628
  %637 = load i32, i32* @EINVAL, align 4
  store i32 %637, i32* %6, align 4
  br label %1044

638:                                              ; preds = %628
  %639 = call i32 (...) @splhigh()
  store i32 %639, i32* %17, align 4
  %640 = load i32*, i32** %13, align 8
  %641 = call i32 @CX_LOCK(i32* %640)
  %642 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %643 = call i64 @cx_get_baud(%struct.TYPE_29__* %642)
  %644 = load i64, i64* %9, align 8
  %645 = inttoptr i64 %644 to i64*
  store i64 %643, i64* %645, align 8
  %646 = load i32*, i32** %13, align 8
  %647 = call i32 @CX_UNLOCK(i32* %646)
  %648 = load i32, i32* %17, align 4
  %649 = call i32 @splx(i32 %648)
  store i32 0, i32* %6, align 4
  br label %1044

650:                                              ; preds = %5
  %651 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %652 = call i32 @CX_DEBUG2(%struct.TYPE_28__* %651, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0))
  %653 = load %struct.thread*, %struct.thread** %11, align 8
  %654 = load i32, i32* @PRIV_DRIVER, align 4
  %655 = call i32 @priv_check(%struct.thread* %653, i32 %654)
  store i32 %655, i32* %16, align 4
  %656 = load i32, i32* %16, align 4
  %657 = icmp ne i32 %656, 0
  br i1 %657, label %658, label %660

658:                                              ; preds = %650
  %659 = load i32, i32* %16, align 4
  store i32 %659, i32* %6, align 4
  br label %1044

660:                                              ; preds = %650
  %661 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %662 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %661, i32 0, i32 2
  %663 = load i32, i32* %662, align 4
  %664 = load i32, i32* @M_ASYNC, align 4
  %665 = icmp eq i32 %663, %664
  br i1 %665, label %666, label %668

666:                                              ; preds = %660
  %667 = load i32, i32* @EINVAL, align 4
  store i32 %667, i32* %6, align 4
  br label %1044

668:                                              ; preds = %660
  %669 = call i32 (...) @splhigh()
  store i32 %669, i32* %17, align 4
  %670 = load i32*, i32** %13, align 8
  %671 = call i32 @CX_LOCK(i32* %670)
  %672 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %673 = load i64, i64* %9, align 8
  %674 = inttoptr i64 %673 to i64*
  %675 = load i64, i64* %674, align 8
  %676 = call i32 @cx_set_baud(%struct.TYPE_29__* %672, i64 %675)
  %677 = load i32*, i32** %13, align 8
  %678 = call i32 @CX_UNLOCK(i32* %677)
  %679 = load i32, i32* %17, align 4
  %680 = call i32 @splx(i32 %679)
  store i32 0, i32* %6, align 4
  br label %1044

681:                                              ; preds = %5
  %682 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %683 = call i32 @CX_DEBUG2(%struct.TYPE_28__* %682, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0))
  %684 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %685 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %684, i32 0, i32 2
  %686 = load i32, i32* %685, align 4
  %687 = load i32, i32* @M_ASYNC, align 4
  %688 = icmp eq i32 %686, %687
  br i1 %688, label %689, label %691

689:                                              ; preds = %681
  %690 = load i32, i32* @EINVAL, align 4
  store i32 %690, i32* %6, align 4
  br label %1044

691:                                              ; preds = %681
  %692 = call i32 (...) @splhigh()
  store i32 %692, i32* %17, align 4
  %693 = load i32*, i32** %13, align 8
  %694 = call i32 @CX_LOCK(i32* %693)
  %695 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %696 = call i32 @cx_get_loop(%struct.TYPE_29__* %695)
  %697 = load i64, i64* %9, align 8
  %698 = inttoptr i64 %697 to i32*
  store i32 %696, i32* %698, align 4
  %699 = load i32*, i32** %13, align 8
  %700 = call i32 @CX_UNLOCK(i32* %699)
  %701 = load i32, i32* %17, align 4
  %702 = call i32 @splx(i32 %701)
  store i32 0, i32* %6, align 4
  br label %1044

703:                                              ; preds = %5
  %704 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %705 = call i32 @CX_DEBUG2(%struct.TYPE_28__* %704, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0))
  %706 = load %struct.thread*, %struct.thread** %11, align 8
  %707 = load i32, i32* @PRIV_DRIVER, align 4
  %708 = call i32 @priv_check(%struct.thread* %706, i32 %707)
  store i32 %708, i32* %16, align 4
  %709 = load i32, i32* %16, align 4
  %710 = icmp ne i32 %709, 0
  br i1 %710, label %711, label %713

711:                                              ; preds = %703
  %712 = load i32, i32* %16, align 4
  store i32 %712, i32* %6, align 4
  br label %1044

713:                                              ; preds = %703
  %714 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %715 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %714, i32 0, i32 2
  %716 = load i32, i32* %715, align 4
  %717 = load i32, i32* @M_ASYNC, align 4
  %718 = icmp eq i32 %716, %717
  br i1 %718, label %719, label %721

719:                                              ; preds = %713
  %720 = load i32, i32* @EINVAL, align 4
  store i32 %720, i32* %6, align 4
  br label %1044

721:                                              ; preds = %713
  %722 = call i32 (...) @splhigh()
  store i32 %722, i32* %17, align 4
  %723 = load i32*, i32** %13, align 8
  %724 = call i32 @CX_LOCK(i32* %723)
  %725 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %726 = load i64, i64* %9, align 8
  %727 = inttoptr i64 %726 to i32*
  %728 = load i32, i32* %727, align 4
  %729 = call i32 @cx_set_loop(%struct.TYPE_29__* %725, i32 %728)
  %730 = load i32*, i32** %13, align 8
  %731 = call i32 @CX_UNLOCK(i32* %730)
  %732 = load i32, i32* %17, align 4
  %733 = call i32 @splx(i32 %732)
  store i32 0, i32* %6, align 4
  br label %1044

734:                                              ; preds = %5
  %735 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %736 = call i32 @CX_DEBUG2(%struct.TYPE_28__* %735, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0))
  %737 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %738 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %737, i32 0, i32 2
  %739 = load i32, i32* %738, align 4
  %740 = load i32, i32* @M_ASYNC, align 4
  %741 = icmp eq i32 %739, %740
  br i1 %741, label %742, label %744

742:                                              ; preds = %734
  %743 = load i32, i32* @EINVAL, align 4
  store i32 %743, i32* %6, align 4
  br label %1044

744:                                              ; preds = %734
  %745 = call i32 (...) @splhigh()
  store i32 %745, i32* %17, align 4
  %746 = load i32*, i32** %13, align 8
  %747 = call i32 @CX_LOCK(i32* %746)
  %748 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %749 = call i32 @cx_get_dpll(%struct.TYPE_29__* %748)
  %750 = load i64, i64* %9, align 8
  %751 = inttoptr i64 %750 to i32*
  store i32 %749, i32* %751, align 4
  %752 = load i32*, i32** %13, align 8
  %753 = call i32 @CX_UNLOCK(i32* %752)
  %754 = load i32, i32* %17, align 4
  %755 = call i32 @splx(i32 %754)
  store i32 0, i32* %6, align 4
  br label %1044

756:                                              ; preds = %5
  %757 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %758 = call i32 @CX_DEBUG2(%struct.TYPE_28__* %757, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0))
  %759 = load %struct.thread*, %struct.thread** %11, align 8
  %760 = load i32, i32* @PRIV_DRIVER, align 4
  %761 = call i32 @priv_check(%struct.thread* %759, i32 %760)
  store i32 %761, i32* %16, align 4
  %762 = load i32, i32* %16, align 4
  %763 = icmp ne i32 %762, 0
  br i1 %763, label %764, label %766

764:                                              ; preds = %756
  %765 = load i32, i32* %16, align 4
  store i32 %765, i32* %6, align 4
  br label %1044

766:                                              ; preds = %756
  %767 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %768 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %767, i32 0, i32 2
  %769 = load i32, i32* %768, align 4
  %770 = load i32, i32* @M_ASYNC, align 4
  %771 = icmp eq i32 %769, %770
  br i1 %771, label %772, label %774

772:                                              ; preds = %766
  %773 = load i32, i32* @EINVAL, align 4
  store i32 %773, i32* %6, align 4
  br label %1044

774:                                              ; preds = %766
  %775 = call i32 (...) @splhigh()
  store i32 %775, i32* %17, align 4
  %776 = load i32*, i32** %13, align 8
  %777 = call i32 @CX_LOCK(i32* %776)
  %778 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %779 = load i64, i64* %9, align 8
  %780 = inttoptr i64 %779 to i32*
  %781 = load i32, i32* %780, align 4
  %782 = call i32 @cx_set_dpll(%struct.TYPE_29__* %778, i32 %781)
  %783 = load i32*, i32** %13, align 8
  %784 = call i32 @CX_UNLOCK(i32* %783)
  %785 = load i32, i32* %17, align 4
  %786 = call i32 @splx(i32 %785)
  store i32 0, i32* %6, align 4
  br label %1044

787:                                              ; preds = %5
  %788 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %789 = call i32 @CX_DEBUG2(%struct.TYPE_28__* %788, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0))
  %790 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %791 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %790, i32 0, i32 2
  %792 = load i32, i32* %791, align 4
  %793 = load i32, i32* @M_ASYNC, align 4
  %794 = icmp eq i32 %792, %793
  br i1 %794, label %795, label %797

795:                                              ; preds = %787
  %796 = load i32, i32* @EINVAL, align 4
  store i32 %796, i32* %6, align 4
  br label %1044

797:                                              ; preds = %787
  %798 = call i32 (...) @splhigh()
  store i32 %798, i32* %17, align 4
  %799 = load i32*, i32** %13, align 8
  %800 = call i32 @CX_LOCK(i32* %799)
  %801 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %802 = call i32 @cx_get_nrzi(%struct.TYPE_29__* %801)
  %803 = load i64, i64* %9, align 8
  %804 = inttoptr i64 %803 to i32*
  store i32 %802, i32* %804, align 4
  %805 = load i32*, i32** %13, align 8
  %806 = call i32 @CX_UNLOCK(i32* %805)
  %807 = load i32, i32* %17, align 4
  %808 = call i32 @splx(i32 %807)
  store i32 0, i32* %6, align 4
  br label %1044

809:                                              ; preds = %5
  %810 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %811 = call i32 @CX_DEBUG2(%struct.TYPE_28__* %810, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0))
  %812 = load %struct.thread*, %struct.thread** %11, align 8
  %813 = load i32, i32* @PRIV_DRIVER, align 4
  %814 = call i32 @priv_check(%struct.thread* %812, i32 %813)
  store i32 %814, i32* %16, align 4
  %815 = load i32, i32* %16, align 4
  %816 = icmp ne i32 %815, 0
  br i1 %816, label %817, label %819

817:                                              ; preds = %809
  %818 = load i32, i32* %16, align 4
  store i32 %818, i32* %6, align 4
  br label %1044

819:                                              ; preds = %809
  %820 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %821 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %820, i32 0, i32 2
  %822 = load i32, i32* %821, align 4
  %823 = load i32, i32* @M_ASYNC, align 4
  %824 = icmp eq i32 %822, %823
  br i1 %824, label %825, label %827

825:                                              ; preds = %819
  %826 = load i32, i32* @EINVAL, align 4
  store i32 %826, i32* %6, align 4
  br label %1044

827:                                              ; preds = %819
  %828 = call i32 (...) @splhigh()
  store i32 %828, i32* %17, align 4
  %829 = load i32*, i32** %13, align 8
  %830 = call i32 @CX_LOCK(i32* %829)
  %831 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %832 = load i64, i64* %9, align 8
  %833 = inttoptr i64 %832 to i32*
  %834 = load i32, i32* %833, align 4
  %835 = call i32 @cx_set_nrzi(%struct.TYPE_29__* %831, i32 %834)
  %836 = load i32*, i32** %13, align 8
  %837 = call i32 @CX_UNLOCK(i32* %836)
  %838 = load i32, i32* %17, align 4
  %839 = call i32 @splx(i32 %838)
  store i32 0, i32* %6, align 4
  br label %1044

840:                                              ; preds = %5
  %841 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %842 = call i32 @CX_DEBUG2(%struct.TYPE_28__* %841, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0))
  %843 = call i32 (...) @splhigh()
  store i32 %843, i32* %17, align 4
  %844 = load i32*, i32** %13, align 8
  %845 = call i32 @CX_LOCK(i32* %844)
  %846 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %847 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %846, i32 0, i32 0
  %848 = load i32, i32* %847, align 4
  %849 = load i64, i64* %9, align 8
  %850 = inttoptr i64 %849 to i32*
  store i32 %848, i32* %850, align 4
  %851 = load i32*, i32** %13, align 8
  %852 = call i32 @CX_UNLOCK(i32* %851)
  %853 = load i32, i32* %17, align 4
  %854 = call i32 @splx(i32 %853)
  store i32 0, i32* %6, align 4
  br label %1044

855:                                              ; preds = %5
  %856 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %857 = call i32 @CX_DEBUG2(%struct.TYPE_28__* %856, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0))
  %858 = load %struct.thread*, %struct.thread** %11, align 8
  %859 = load i32, i32* @PRIV_DRIVER, align 4
  %860 = call i32 @priv_check(%struct.thread* %858, i32 %859)
  store i32 %860, i32* %16, align 4
  %861 = load i32, i32* %16, align 4
  %862 = icmp ne i32 %861, 0
  br i1 %862, label %863, label %865

863:                                              ; preds = %855
  %864 = load i32, i32* %16, align 4
  store i32 %864, i32* %6, align 4
  br label %1044

865:                                              ; preds = %855
  %866 = call i32 (...) @splhigh()
  store i32 %866, i32* %17, align 4
  %867 = load i32*, i32** %13, align 8
  %868 = call i32 @CX_LOCK(i32* %867)
  %869 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %870 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %869, i32 0, i32 2
  %871 = load i32, i32* %870, align 4
  %872 = load i32, i32* @M_ASYNC, align 4
  %873 = icmp eq i32 %871, %872
  br i1 %873, label %874, label %880

874:                                              ; preds = %865
  %875 = load i64, i64* %9, align 8
  %876 = inttoptr i64 %875 to i32*
  %877 = load i32, i32* %876, align 4
  %878 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %879 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %878, i32 0, i32 0
  store i32 %877, i32* %879, align 4
  br label %909

880:                                              ; preds = %865
  %881 = load i64, i64* %9, align 8
  %882 = inttoptr i64 %881 to i32*
  %883 = load i32, i32* %882, align 4
  %884 = icmp ne i32 %883, 0
  br i1 %884, label %885, label %889

885:                                              ; preds = %880
  %886 = load i64, i64* %9, align 8
  %887 = inttoptr i64 %886 to i32*
  %888 = load i32, i32* %887, align 4
  br label %890

889:                                              ; preds = %880
  br label %890

890:                                              ; preds = %889, %885
  %891 = phi i32 [ %888, %885 ], [ 1, %889 ]
  %892 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %893 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %892, i32 0, i32 1
  store i32 %891, i32* %893, align 4
  %894 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %895 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %894, i32 0, i32 1
  %896 = load %struct.TYPE_26__*, %struct.TYPE_26__** %895, align 8
  %897 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %896, i32 0, i32 0
  %898 = load i32, i32* %897, align 4
  %899 = load i32, i32* @IFF_DEBUG, align 4
  %900 = and i32 %898, %899
  %901 = icmp ne i32 %900, 0
  br i1 %901, label %902, label %908

902:                                              ; preds = %890
  %903 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %904 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %903, i32 0, i32 1
  %905 = load i32, i32* %904, align 4
  %906 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %907 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %906, i32 0, i32 0
  store i32 %905, i32* %907, align 4
  br label %908

908:                                              ; preds = %902, %890
  br label %909

909:                                              ; preds = %908, %874
  %910 = load i32*, i32** %13, align 8
  %911 = call i32 @CX_UNLOCK(i32* %910)
  %912 = load i32, i32* %17, align 4
  %913 = call i32 @splx(i32 %912)
  store i32 0, i32* %6, align 4
  br label %1044

914:                                              ; preds = %5
  %915 = load i32, i32* %8, align 4
  switch i32 %915, label %1037 [
    i32 128, label %916
    i32 133, label %928
    i32 129, label %940
    i32 131, label %970
    i32 132, label %1000
    i32 130, label %1030
  ]

916:                                              ; preds = %914
  %917 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %918 = call i32 @CX_DEBUG2(%struct.TYPE_28__* %917, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0))
  %919 = call i32 (...) @splhigh()
  store i32 %919, i32* %17, align 4
  %920 = load i32*, i32** %13, align 8
  %921 = call i32 @CX_LOCK(i32* %920)
  %922 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %923 = call i32 @cx_set_dtr(%struct.TYPE_29__* %922, i32 1)
  %924 = load i32*, i32** %13, align 8
  %925 = call i32 @CX_UNLOCK(i32* %924)
  %926 = load i32, i32* %17, align 4
  %927 = call i32 @splx(i32 %926)
  store i32 0, i32* %6, align 4
  br label %1044

928:                                              ; preds = %914
  %929 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %930 = call i32 @CX_DEBUG2(%struct.TYPE_28__* %929, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i64 0, i64 0))
  %931 = call i32 (...) @splhigh()
  store i32 %931, i32* %17, align 4
  %932 = load i32*, i32** %13, align 8
  %933 = call i32 @CX_LOCK(i32* %932)
  %934 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %935 = call i32 @cx_set_dtr(%struct.TYPE_29__* %934, i32 0)
  %936 = load i32*, i32** %13, align 8
  %937 = call i32 @CX_UNLOCK(i32* %936)
  %938 = load i32, i32* %17, align 4
  %939 = call i32 @splx(i32 %938)
  store i32 0, i32* %6, align 4
  br label %1044

940:                                              ; preds = %914
  %941 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %942 = call i32 @CX_DEBUG2(%struct.TYPE_28__* %941, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i64 0, i64 0))
  %943 = call i32 (...) @splhigh()
  store i32 %943, i32* %17, align 4
  %944 = load i32*, i32** %13, align 8
  %945 = call i32 @CX_LOCK(i32* %944)
  %946 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %947 = load i64, i64* %9, align 8
  %948 = inttoptr i64 %947 to i32*
  %949 = load i32, i32* %948, align 4
  %950 = load i32, i32* @TIOCM_DTR, align 4
  %951 = and i32 %949, %950
  %952 = icmp ne i32 %951, 0
  %953 = zext i1 %952 to i64
  %954 = select i1 %952, i32 1, i32 0
  %955 = call i32 @cx_set_dtr(%struct.TYPE_29__* %946, i32 %954)
  %956 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %957 = load i64, i64* %9, align 8
  %958 = inttoptr i64 %957 to i32*
  %959 = load i32, i32* %958, align 4
  %960 = load i32, i32* @TIOCM_RTS, align 4
  %961 = and i32 %959, %960
  %962 = icmp ne i32 %961, 0
  %963 = zext i1 %962 to i64
  %964 = select i1 %962, i32 1, i32 0
  %965 = call i32 @cx_set_rts(%struct.TYPE_29__* %956, i32 %964)
  %966 = load i32*, i32** %13, align 8
  %967 = call i32 @CX_UNLOCK(i32* %966)
  %968 = load i32, i32* %17, align 4
  %969 = call i32 @splx(i32 %968)
  store i32 0, i32* %6, align 4
  br label %1044

970:                                              ; preds = %914
  %971 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %972 = call i32 @CX_DEBUG2(%struct.TYPE_28__* %971, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i64 0, i64 0))
  %973 = call i32 (...) @splhigh()
  store i32 %973, i32* %17, align 4
  %974 = load i32*, i32** %13, align 8
  %975 = call i32 @CX_LOCK(i32* %974)
  %976 = load i64, i64* %9, align 8
  %977 = inttoptr i64 %976 to i32*
  %978 = load i32, i32* %977, align 4
  %979 = load i32, i32* @TIOCM_DTR, align 4
  %980 = and i32 %978, %979
  %981 = icmp ne i32 %980, 0
  br i1 %981, label %982, label %985

982:                                              ; preds = %970
  %983 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %984 = call i32 @cx_set_dtr(%struct.TYPE_29__* %983, i32 1)
  br label %985

985:                                              ; preds = %982, %970
  %986 = load i64, i64* %9, align 8
  %987 = inttoptr i64 %986 to i32*
  %988 = load i32, i32* %987, align 4
  %989 = load i32, i32* @TIOCM_RTS, align 4
  %990 = and i32 %988, %989
  %991 = icmp ne i32 %990, 0
  br i1 %991, label %992, label %995

992:                                              ; preds = %985
  %993 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %994 = call i32 @cx_set_rts(%struct.TYPE_29__* %993, i32 1)
  br label %995

995:                                              ; preds = %992, %985
  %996 = load i32*, i32** %13, align 8
  %997 = call i32 @CX_UNLOCK(i32* %996)
  %998 = load i32, i32* %17, align 4
  %999 = call i32 @splx(i32 %998)
  store i32 0, i32* %6, align 4
  br label %1044

1000:                                             ; preds = %914
  %1001 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %1002 = call i32 @CX_DEBUG2(%struct.TYPE_28__* %1001, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i64 0, i64 0))
  %1003 = call i32 (...) @splhigh()
  store i32 %1003, i32* %17, align 4
  %1004 = load i32*, i32** %13, align 8
  %1005 = call i32 @CX_LOCK(i32* %1004)
  %1006 = load i64, i64* %9, align 8
  %1007 = inttoptr i64 %1006 to i32*
  %1008 = load i32, i32* %1007, align 4
  %1009 = load i32, i32* @TIOCM_DTR, align 4
  %1010 = and i32 %1008, %1009
  %1011 = icmp ne i32 %1010, 0
  br i1 %1011, label %1012, label %1015

1012:                                             ; preds = %1000
  %1013 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %1014 = call i32 @cx_set_dtr(%struct.TYPE_29__* %1013, i32 0)
  br label %1015

1015:                                             ; preds = %1012, %1000
  %1016 = load i64, i64* %9, align 8
  %1017 = inttoptr i64 %1016 to i32*
  %1018 = load i32, i32* %1017, align 4
  %1019 = load i32, i32* @TIOCM_RTS, align 4
  %1020 = and i32 %1018, %1019
  %1021 = icmp ne i32 %1020, 0
  br i1 %1021, label %1022, label %1025

1022:                                             ; preds = %1015
  %1023 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %1024 = call i32 @cx_set_rts(%struct.TYPE_29__* %1023, i32 0)
  br label %1025

1025:                                             ; preds = %1022, %1015
  %1026 = load i32*, i32** %13, align 8
  %1027 = call i32 @CX_UNLOCK(i32* %1026)
  %1028 = load i32, i32* %17, align 4
  %1029 = call i32 @splx(i32 %1028)
  store i32 0, i32* %6, align 4
  br label %1044

1030:                                             ; preds = %914
  %1031 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %1032 = call i32 @CX_DEBUG2(%struct.TYPE_28__* %1031, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i64 0, i64 0))
  %1033 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %1034 = call i32 @cx_modem_status(%struct.TYPE_28__* %1033)
  %1035 = load i64, i64* %9, align 8
  %1036 = inttoptr i64 %1035 to i32*
  store i32 %1034, i32* %1036, align 4
  store i32 0, i32* %6, align 4
  br label %1044

1037:                                             ; preds = %914
  %1038 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %1039 = load i32, i32* %8, align 4
  %1040 = sext i32 %1039 to i64
  %1041 = inttoptr i64 %1040 to i8*
  %1042 = call i32 @CX_DEBUG2(%struct.TYPE_28__* %1038, i8* %1041)
  %1043 = load i32, i32* @ENOTTY, align 4
  store i32 %1043, i32* %6, align 4
  br label %1044

1044:                                             ; preds = %1037, %1030, %1025, %995, %940, %928, %916, %909, %863, %840, %827, %825, %817, %797, %795, %774, %772, %764, %744, %742, %721, %719, %711, %691, %689, %668, %666, %658, %638, %636, %602, %600, %535, %530, %469, %450, %422, %415, %399, %379, %350, %329, %300, %298, %270, %266, %185, %174, %166, %151, %100, %98, %89, %87, %65
  %1045 = load i32, i32* %6, align 4
  ret i32 %1045
}

declare dso_local i32 @CX_DEBUG2(%struct.TYPE_28__*, i8*) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @bcopy(i8*, i64, i32) #1

declare dso_local i32 @splhigh(...) #1

declare dso_local i32 @CX_LOCK(i32*) #1

declare dso_local i32 @cx_get_port(%struct.TYPE_29__*) #1

declare dso_local i32 @CX_UNLOCK(i32*) #1

declare dso_local i32 @splx(i32) #1

declare dso_local i32 @priv_check(%struct.thread*, i32) #1

declare dso_local i32 @cx_set_port(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local %struct.TYPE_25__* @IFP2SP(%struct.TYPE_26__*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @cx_set_mode(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @cx_enable_receive(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @cx_enable_transmit(%struct.TYPE_29__*, i32) #1

declare dso_local i64 @cx_get_baud(%struct.TYPE_29__*) #1

declare dso_local i32 @cx_set_baud(%struct.TYPE_29__*, i64) #1

declare dso_local i32 @cx_get_loop(%struct.TYPE_29__*) #1

declare dso_local i32 @cx_set_loop(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @cx_get_dpll(%struct.TYPE_29__*) #1

declare dso_local i32 @cx_set_dpll(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @cx_get_nrzi(%struct.TYPE_29__*) #1

declare dso_local i32 @cx_set_nrzi(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @cx_set_dtr(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @cx_set_rts(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @cx_modem_status(%struct.TYPE_28__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
