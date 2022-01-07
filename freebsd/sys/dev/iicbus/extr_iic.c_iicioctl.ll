; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_iic.c_iicioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_iic.c_iicioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.thread = type { i32 }
%struct.iiccmd = type { i32, i32, i32, i32 }
%struct.uio = type { i32, i32, i32, i32, %struct.thread*, i8*, %struct.iovec* }
%struct.iovec = type { i32, i32 }
%struct.iic_cdevpriv = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.iic_rdwr_data = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"iic cdevpriv should not be NULL!\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@IIC_DONTWAIT = common dso_local global i32 0, align 4
@IIC_WAIT = common dso_local global i32 0, align 4
@IIC_INTR = common dso_local global i32 0, align 4
@IIC_UNKNOWN = common dso_local global i32 0, align 4
@IIC_ENOADDR = common dso_local global i32 0, align 4
@UIO_USERSPACE = common dso_local global i8* null, align 8
@UIO_WRITE = common dso_local global i32 0, align 4
@UIO_READ = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i64, i32, %struct.thread*)* @iicioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iicioctl(%struct.cdev* %0, i32 %1, i64 %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.iiccmd*, align 8
  %15 = alloca %struct.uio, align 8
  %16 = alloca %struct.iovec, align 4
  %17 = alloca %struct.iic_cdevpriv*, align 8
  %18 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.thread* %4, %struct.thread** %11, align 8
  %19 = load i64, i64* %9, align 8
  %20 = inttoptr i64 %19 to %struct.iiccmd*
  store %struct.iiccmd* %20, %struct.iiccmd** %14, align 8
  %21 = bitcast %struct.iic_cdevpriv** %17 to i8**
  %22 = call i32 @devfs_get_cdevpriv(i8** %21)
  store i32 %22, i32* %18, align 4
  %23 = load i32, i32* %18, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %5
  %26 = load i32, i32* %18, align 4
  store i32 %26, i32* %6, align 4
  br label %245

27:                                               ; preds = %5
  %28 = load %struct.iic_cdevpriv*, %struct.iic_cdevpriv** %17, align 8
  %29 = icmp ne %struct.iic_cdevpriv* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 @KASSERT(i32 %30, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.iic_cdevpriv*, %struct.iic_cdevpriv** %17, align 8
  %33 = getelementptr inbounds %struct.iic_cdevpriv, %struct.iic_cdevpriv* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = call i32 @device_get_parent(i32 %37)
  store i32 %38, i32* %12, align 4
  %39 = load %struct.iic_cdevpriv*, %struct.iic_cdevpriv** %17, align 8
  %40 = call i32 @IIC_LOCK(%struct.iic_cdevpriv* %39)
  %41 = load i32, i32* %8, align 4
  switch i32 %41, label %239 [
    i32 130, label %42
    i32 129, label %89
    i32 132, label %103
    i32 128, label %142
    i32 134, label %173
    i32 135, label %207
    i32 133, label %220
    i32 131, label %233
  ]

42:                                               ; preds = %27
  %43 = load %struct.iic_cdevpriv*, %struct.iic_cdevpriv** %17, align 8
  %44 = getelementptr inbounds %struct.iic_cdevpriv, %struct.iic_cdevpriv* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* @EINVAL, align 4
  store i32 %48, i32* %18, align 4
  br label %241

49:                                               ; preds = %42
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @O_NONBLOCK, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i32, i32* @IIC_DONTWAIT, align 4
  br label %62

58:                                               ; preds = %49
  %59 = load i32, i32* @IIC_WAIT, align 4
  %60 = load i32, i32* @IIC_INTR, align 4
  %61 = or i32 %59, %60
  br label %62

62:                                               ; preds = %58, %56
  %63 = phi i32 [ %57, %56 ], [ %61, %58 ]
  %64 = call i32 @iicbus_request_bus(i32 %50, i32 %51, i32 %63)
  store i32 %64, i32* %18, align 4
  %65 = load i32, i32* %18, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %62
  %68 = load i32, i32* %12, align 4
  %69 = load %struct.iiccmd*, %struct.iiccmd** %14, align 8
  %70 = getelementptr inbounds %struct.iiccmd, %struct.iiccmd* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @iicbus_start(i32 %68, i32 %71, i32 0)
  store i32 %72, i32* %18, align 4
  br label %73

73:                                               ; preds = %67, %62
  %74 = load i32, i32* %18, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %73
  %77 = load %struct.iiccmd*, %struct.iiccmd** %14, align 8
  %78 = getelementptr inbounds %struct.iiccmd, %struct.iiccmd* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.iic_cdevpriv*, %struct.iic_cdevpriv** %17, align 8
  %81 = getelementptr inbounds %struct.iic_cdevpriv, %struct.iic_cdevpriv* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load %struct.iic_cdevpriv*, %struct.iic_cdevpriv** %17, align 8
  %83 = getelementptr inbounds %struct.iic_cdevpriv, %struct.iic_cdevpriv* %82, i32 0, i32 0
  store i32 1, i32* %83, align 8
  br label %88

84:                                               ; preds = %73
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* %13, align 4
  %87 = call i32 @iicbus_release_bus(i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %84, %76
  br label %241

89:                                               ; preds = %27
  %90 = load %struct.iic_cdevpriv*, %struct.iic_cdevpriv** %17, align 8
  %91 = getelementptr inbounds %struct.iic_cdevpriv, %struct.iic_cdevpriv* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %89
  %95 = load i32, i32* %12, align 4
  %96 = call i32 @iicbus_stop(i32 %95)
  store i32 %96, i32* %18, align 4
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* %13, align 4
  %99 = call i32 @iicbus_release_bus(i32 %97, i32 %98)
  %100 = load %struct.iic_cdevpriv*, %struct.iic_cdevpriv** %17, align 8
  %101 = getelementptr inbounds %struct.iic_cdevpriv, %struct.iic_cdevpriv* %100, i32 0, i32 0
  store i32 0, i32* %101, align 8
  br label %102

102:                                              ; preds = %94, %89
  br label %241

103:                                              ; preds = %27
  %104 = load %struct.iic_cdevpriv*, %struct.iic_cdevpriv** %17, align 8
  %105 = getelementptr inbounds %struct.iic_cdevpriv, %struct.iic_cdevpriv* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %124, label %108

108:                                              ; preds = %103
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* %13, align 4
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* @O_NONBLOCK, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %108
  %116 = load i32, i32* @IIC_DONTWAIT, align 4
  br label %121

117:                                              ; preds = %108
  %118 = load i32, i32* @IIC_WAIT, align 4
  %119 = load i32, i32* @IIC_INTR, align 4
  %120 = or i32 %118, %119
  br label %121

121:                                              ; preds = %117, %115
  %122 = phi i32 [ %116, %115 ], [ %120, %117 ]
  %123 = call i32 @iicbus_request_bus(i32 %109, i32 %110, i32 %122)
  store i32 %123, i32* %18, align 4
  br label %124

124:                                              ; preds = %121, %103
  %125 = load i32, i32* %18, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %141

127:                                              ; preds = %124
  %128 = load i32, i32* %12, align 4
  %129 = load i32, i32* @IIC_UNKNOWN, align 4
  %130 = call i32 @iicbus_reset(i32 %128, i32 %129, i32 0, i32* null)
  store i32 %130, i32* %18, align 4
  %131 = load i32, i32* %18, align 4
  %132 = load i32, i32* @IIC_ENOADDR, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %127
  store i32 0, i32* %18, align 4
  br label %135

135:                                              ; preds = %134, %127
  %136 = load i32, i32* %12, align 4
  %137 = load i32, i32* %13, align 4
  %138 = call i32 @iicbus_release_bus(i32 %136, i32 %137)
  %139 = load %struct.iic_cdevpriv*, %struct.iic_cdevpriv** %17, align 8
  %140 = getelementptr inbounds %struct.iic_cdevpriv, %struct.iic_cdevpriv* %139, i32 0, i32 0
  store i32 0, i32* %140, align 8
  br label %141

141:                                              ; preds = %135, %124
  br label %241

142:                                              ; preds = %27
  %143 = load %struct.iic_cdevpriv*, %struct.iic_cdevpriv** %17, align 8
  %144 = getelementptr inbounds %struct.iic_cdevpriv, %struct.iic_cdevpriv* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %149, label %147

147:                                              ; preds = %142
  %148 = load i32, i32* @EINVAL, align 4
  store i32 %148, i32* %18, align 4
  br label %241

149:                                              ; preds = %142
  %150 = load %struct.iiccmd*, %struct.iiccmd** %14, align 8
  %151 = getelementptr inbounds %struct.iiccmd, %struct.iiccmd* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = getelementptr inbounds %struct.iovec, %struct.iovec* %16, i32 0, i32 1
  store i32 %152, i32* %153, align 4
  %154 = load %struct.iiccmd*, %struct.iiccmd** %14, align 8
  %155 = getelementptr inbounds %struct.iiccmd, %struct.iiccmd* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = getelementptr inbounds %struct.iovec, %struct.iovec* %16, i32 0, i32 0
  store i32 %156, i32* %157, align 4
  %158 = getelementptr inbounds %struct.uio, %struct.uio* %15, i32 0, i32 6
  store %struct.iovec* %16, %struct.iovec** %158, align 8
  %159 = getelementptr inbounds %struct.uio, %struct.uio* %15, i32 0, i32 0
  store i32 1, i32* %159, align 8
  %160 = load i8*, i8** @UIO_USERSPACE, align 8
  %161 = getelementptr inbounds %struct.uio, %struct.uio* %15, i32 0, i32 5
  store i8* %160, i8** %161, align 8
  %162 = load %struct.thread*, %struct.thread** %11, align 8
  %163 = getelementptr inbounds %struct.uio, %struct.uio* %15, i32 0, i32 4
  store %struct.thread* %162, %struct.thread** %163, align 8
  %164 = load %struct.iiccmd*, %struct.iiccmd** %14, align 8
  %165 = getelementptr inbounds %struct.iiccmd, %struct.iiccmd* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = getelementptr inbounds %struct.uio, %struct.uio* %15, i32 0, i32 3
  store i32 %166, i32* %167, align 4
  %168 = getelementptr inbounds %struct.uio, %struct.uio* %15, i32 0, i32 2
  store i32 0, i32* %168, align 8
  %169 = load i32, i32* @UIO_WRITE, align 4
  %170 = getelementptr inbounds %struct.uio, %struct.uio* %15, i32 0, i32 1
  store i32 %169, i32* %170, align 4
  %171 = load %struct.iic_cdevpriv*, %struct.iic_cdevpriv** %17, align 8
  %172 = call i32 @iicuio_move(%struct.iic_cdevpriv* %171, %struct.uio* %15, i32 0)
  store i32 %172, i32* %18, align 4
  br label %241

173:                                              ; preds = %27
  %174 = load %struct.iic_cdevpriv*, %struct.iic_cdevpriv** %17, align 8
  %175 = getelementptr inbounds %struct.iic_cdevpriv, %struct.iic_cdevpriv* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %180, label %178

178:                                              ; preds = %173
  %179 = load i32, i32* @EINVAL, align 4
  store i32 %179, i32* %18, align 4
  br label %241

180:                                              ; preds = %173
  %181 = load %struct.iiccmd*, %struct.iiccmd** %14, align 8
  %182 = getelementptr inbounds %struct.iiccmd, %struct.iiccmd* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = getelementptr inbounds %struct.iovec, %struct.iovec* %16, i32 0, i32 1
  store i32 %183, i32* %184, align 4
  %185 = load %struct.iiccmd*, %struct.iiccmd** %14, align 8
  %186 = getelementptr inbounds %struct.iiccmd, %struct.iiccmd* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = getelementptr inbounds %struct.iovec, %struct.iovec* %16, i32 0, i32 0
  store i32 %187, i32* %188, align 4
  %189 = getelementptr inbounds %struct.uio, %struct.uio* %15, i32 0, i32 6
  store %struct.iovec* %16, %struct.iovec** %189, align 8
  %190 = getelementptr inbounds %struct.uio, %struct.uio* %15, i32 0, i32 0
  store i32 1, i32* %190, align 8
  %191 = load i8*, i8** @UIO_USERSPACE, align 8
  %192 = getelementptr inbounds %struct.uio, %struct.uio* %15, i32 0, i32 5
  store i8* %191, i8** %192, align 8
  %193 = load %struct.thread*, %struct.thread** %11, align 8
  %194 = getelementptr inbounds %struct.uio, %struct.uio* %15, i32 0, i32 4
  store %struct.thread* %193, %struct.thread** %194, align 8
  %195 = load %struct.iiccmd*, %struct.iiccmd** %14, align 8
  %196 = getelementptr inbounds %struct.iiccmd, %struct.iiccmd* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 4
  %198 = getelementptr inbounds %struct.uio, %struct.uio* %15, i32 0, i32 3
  store i32 %197, i32* %198, align 4
  %199 = getelementptr inbounds %struct.uio, %struct.uio* %15, i32 0, i32 2
  store i32 0, i32* %199, align 8
  %200 = load i32, i32* @UIO_READ, align 4
  %201 = getelementptr inbounds %struct.uio, %struct.uio* %15, i32 0, i32 1
  store i32 %200, i32* %201, align 4
  %202 = load %struct.iic_cdevpriv*, %struct.iic_cdevpriv** %17, align 8
  %203 = load %struct.iiccmd*, %struct.iiccmd** %14, align 8
  %204 = getelementptr inbounds %struct.iiccmd, %struct.iiccmd* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @iicuio_move(%struct.iic_cdevpriv* %202, %struct.uio* %15, i32 %205)
  store i32 %206, i32* %18, align 4
  br label %241

207:                                              ; preds = %27
  %208 = load %struct.iic_cdevpriv*, %struct.iic_cdevpriv** %17, align 8
  %209 = getelementptr inbounds %struct.iic_cdevpriv, %struct.iic_cdevpriv* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %207
  %213 = load i32, i32* @EINVAL, align 4
  store i32 %213, i32* %18, align 4
  br label %241

214:                                              ; preds = %207
  %215 = load %struct.iic_cdevpriv*, %struct.iic_cdevpriv** %17, align 8
  %216 = load i64, i64* %9, align 8
  %217 = inttoptr i64 %216 to %struct.iic_rdwr_data*
  %218 = load i32, i32* %10, align 4
  %219 = call i32 @iicrdwr(%struct.iic_cdevpriv* %215, %struct.iic_rdwr_data* %217, i32 %218)
  store i32 %219, i32* %18, align 4
  br label %241

220:                                              ; preds = %27
  %221 = load %struct.iic_cdevpriv*, %struct.iic_cdevpriv** %17, align 8
  %222 = getelementptr inbounds %struct.iic_cdevpriv, %struct.iic_cdevpriv* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %227, label %225

225:                                              ; preds = %220
  %226 = load i32, i32* @EINVAL, align 4
  store i32 %226, i32* %18, align 4
  br label %241

227:                                              ; preds = %220
  %228 = load i32, i32* %12, align 4
  %229 = load %struct.iiccmd*, %struct.iiccmd** %14, align 8
  %230 = getelementptr inbounds %struct.iiccmd, %struct.iiccmd* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @iicbus_repeated_start(i32 %228, i32 %231, i32 0)
  store i32 %232, i32* %18, align 4
  br label %241

233:                                              ; preds = %27
  %234 = load i64, i64* %9, align 8
  %235 = inttoptr i64 %234 to i32*
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.iic_cdevpriv*, %struct.iic_cdevpriv** %17, align 8
  %238 = getelementptr inbounds %struct.iic_cdevpriv, %struct.iic_cdevpriv* %237, i32 0, i32 1
  store i32 %236, i32* %238, align 4
  br label %241

239:                                              ; preds = %27
  %240 = load i32, i32* @ENOTTY, align 4
  store i32 %240, i32* %18, align 4
  br label %241

241:                                              ; preds = %239, %233, %227, %225, %214, %212, %180, %178, %149, %147, %141, %102, %88, %47
  %242 = load %struct.iic_cdevpriv*, %struct.iic_cdevpriv** %17, align 8
  %243 = call i32 @IIC_UNLOCK(%struct.iic_cdevpriv* %242)
  %244 = load i32, i32* %18, align 4
  store i32 %244, i32* %6, align 4
  br label %245

245:                                              ; preds = %241, %25
  %246 = load i32, i32* %6, align 4
  ret i32 %246
}

declare dso_local i32 @devfs_get_cdevpriv(i8**) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @IIC_LOCK(%struct.iic_cdevpriv*) #1

declare dso_local i32 @iicbus_request_bus(i32, i32, i32) #1

declare dso_local i32 @iicbus_start(i32, i32, i32) #1

declare dso_local i32 @iicbus_release_bus(i32, i32) #1

declare dso_local i32 @iicbus_stop(i32) #1

declare dso_local i32 @iicbus_reset(i32, i32, i32, i32*) #1

declare dso_local i32 @iicuio_move(%struct.iic_cdevpriv*, %struct.uio*, i32) #1

declare dso_local i32 @iicrdwr(%struct.iic_cdevpriv*, %struct.iic_rdwr_data*, i32) #1

declare dso_local i32 @iicbus_repeated_start(i32, i32, i32) #1

declare dso_local i32 @IIC_UNLOCK(%struct.iic_cdevpriv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
