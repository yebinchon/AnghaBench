; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_icee.c_icee_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_icee.c_icee_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.uio = type { i32, i32 }
%struct.icee_softc = type { i32, i32, i32, i32, i32 }
%struct.iic_msg = type { i32, i32*, i32, i32, i32, i32 }

@MAX_WR_SZ = common dso_local global i32 0, align 4
@IIC_M_WR = common dso_local global i32 0, align 4
@IIC_M_RD = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IIC_INTRWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.uio*, i32)* @icee_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icee_write(%struct.cdev* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.icee_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca [1 x %struct.iic_msg], align 16
  %16 = alloca [1 x %struct.iic_msg], align 16
  %17 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store %struct.uio* %1, %struct.uio** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load i32, i32* @MAX_WR_SZ, align 4
  %19 = add nsw i32 %18, 2
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %13, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %14, align 8
  %23 = getelementptr inbounds [1 x %struct.iic_msg], [1 x %struct.iic_msg]* %15, i64 0, i64 0
  %24 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %23, i32 0, i32 0
  store i32 0, i32* %24, align 16
  %25 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %23, i32 0, i32 1
  %26 = load i32, i32* @IIC_M_WR, align 4
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i32*
  store i32* %28, i32** %25, align 8
  %29 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %23, i32 0, i32 2
  store i32 0, i32* %29, align 16
  %30 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %23, i32 0, i32 3
  %31 = ptrtoint i32* %22 to i32
  store i32 %31, i32* %30, align 4
  %32 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %23, i32 0, i32 4
  store i32 0, i32* %32, align 8
  %33 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %23, i32 0, i32 5
  store i32 0, i32* %33, align 4
  %34 = getelementptr inbounds [1 x %struct.iic_msg], [1 x %struct.iic_msg]* %16, i64 0, i64 0
  %35 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %34, i32 0, i32 0
  store i32 0, i32* %35, align 16
  %36 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %34, i32 0, i32 1
  %37 = load i32, i32* @IIC_M_RD, align 4
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to i32*
  store i32* %39, i32** %36, align 8
  %40 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %34, i32 0, i32 2
  store i32 1, i32* %40, align 16
  %41 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %34, i32 0, i32 3
  %42 = ptrtoint i32* %22 to i32
  store i32 %42, i32* %41, align 4
  %43 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %34, i32 0, i32 4
  store i32 0, i32* %43, align 8
  %44 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %34, i32 0, i32 5
  store i32 0, i32* %44, align 4
  %45 = load %struct.cdev*, %struct.cdev** %5, align 8
  %46 = call %struct.icee_softc* @CDEV2SOFTC(%struct.cdev* %45)
  store %struct.icee_softc* %46, %struct.icee_softc** %8, align 8
  %47 = load %struct.uio*, %struct.uio** %6, align 8
  %48 = getelementptr inbounds %struct.uio, %struct.uio* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.icee_softc*, %struct.icee_softc** %8, align 8
  %51 = getelementptr inbounds %struct.icee_softc, %struct.icee_softc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp sge i32 %49, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %3
  %55 = load i32, i32* @EIO, align 4
  store i32 %55, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %202

56:                                               ; preds = %3
  %57 = load %struct.icee_softc*, %struct.icee_softc** %8, align 8
  %58 = getelementptr inbounds %struct.icee_softc, %struct.icee_softc* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 8
  br i1 %60, label %61, label %68

61:                                               ; preds = %56
  %62 = load %struct.icee_softc*, %struct.icee_softc** %8, align 8
  %63 = getelementptr inbounds %struct.icee_softc, %struct.icee_softc* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 16
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i32, i32* @EINVAL, align 4
  store i32 %67, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %202

68:                                               ; preds = %61, %56
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %69

69:                                               ; preds = %199, %68
  %70 = load %struct.uio*, %struct.uio** %6, align 8
  %71 = getelementptr inbounds %struct.uio, %struct.uio* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %200

74:                                               ; preds = %69
  %75 = load %struct.uio*, %struct.uio** %6, align 8
  %76 = getelementptr inbounds %struct.uio, %struct.uio* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.icee_softc*, %struct.icee_softc** %8, align 8
  %79 = getelementptr inbounds %struct.icee_softc, %struct.icee_softc* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp sge i32 %77, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  br label %200

83:                                               ; preds = %74
  %84 = load %struct.icee_softc*, %struct.icee_softc** %8, align 8
  %85 = getelementptr inbounds %struct.icee_softc, %struct.icee_softc* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.uio*, %struct.uio** %6, align 8
  %88 = getelementptr inbounds %struct.uio, %struct.uio* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.icee_softc*, %struct.icee_softc** %8, align 8
  %91 = getelementptr inbounds %struct.icee_softc, %struct.icee_softc* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = sub nsw i32 %92, 1
  %94 = and i32 %89, %93
  %95 = sub nsw i32 %86, %94
  %96 = load %struct.uio*, %struct.uio** %6, align 8
  %97 = getelementptr inbounds %struct.uio, %struct.uio* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @MIN(i32 %95, i32 %98)
  store i32 %99, i32* %10, align 4
  %100 = load %struct.icee_softc*, %struct.icee_softc** %8, align 8
  %101 = getelementptr inbounds %struct.icee_softc, %struct.icee_softc* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  switch i32 %102, label %145 [
    i32 8, label %103
    i32 16, label %121
  ]

103:                                              ; preds = %83
  %104 = load %struct.uio*, %struct.uio** %6, align 8
  %105 = getelementptr inbounds %struct.uio, %struct.uio* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = ashr i32 %106, 7
  %108 = load %struct.icee_softc*, %struct.icee_softc** %8, align 8
  %109 = getelementptr inbounds %struct.icee_softc, %struct.icee_softc* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %107, %110
  store i32 %111, i32* %11, align 4
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 1, %112
  %114 = getelementptr inbounds [1 x %struct.iic_msg], [1 x %struct.iic_msg]* %15, i64 0, i64 0
  %115 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %114, i32 0, i32 2
  store i32 %113, i32* %115, align 16
  %116 = load %struct.uio*, %struct.uio** %6, align 8
  %117 = getelementptr inbounds %struct.uio, %struct.uio* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = and i32 %118, 255
  %120 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 %119, i32* %120, align 16
  br label %145

121:                                              ; preds = %83
  %122 = load %struct.icee_softc*, %struct.icee_softc** %8, align 8
  %123 = getelementptr inbounds %struct.icee_softc, %struct.icee_softc* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.uio*, %struct.uio** %6, align 8
  %126 = getelementptr inbounds %struct.uio, %struct.uio* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = ashr i32 %127, 15
  %129 = or i32 %124, %128
  store i32 %129, i32* %11, align 4
  %130 = load i32, i32* %10, align 4
  %131 = add nsw i32 2, %130
  %132 = getelementptr inbounds [1 x %struct.iic_msg], [1 x %struct.iic_msg]* %15, i64 0, i64 0
  %133 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 16
  %134 = load %struct.uio*, %struct.uio** %6, align 8
  %135 = getelementptr inbounds %struct.uio, %struct.uio* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = ashr i32 %136, 8
  %138 = and i32 %137, 255
  %139 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 %138, i32* %139, align 16
  %140 = load %struct.uio*, %struct.uio** %6, align 8
  %141 = getelementptr inbounds %struct.uio, %struct.uio* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = and i32 %142, 255
  %144 = getelementptr inbounds i32, i32* %22, i64 1
  store i32 %143, i32* %144, align 4
  br label %145

145:                                              ; preds = %83, %121, %103
  %146 = load i32, i32* %11, align 4
  %147 = getelementptr inbounds [1 x %struct.iic_msg], [1 x %struct.iic_msg]* %15, i64 0, i64 0
  %148 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %147, i32 0, i32 3
  store i32 %146, i32* %148, align 4
  %149 = load %struct.icee_softc*, %struct.icee_softc** %8, align 8
  %150 = getelementptr inbounds %struct.icee_softc, %struct.icee_softc* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = sdiv i32 %151, 8
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %22, i64 %153
  %155 = load i32, i32* %10, align 4
  %156 = load %struct.uio*, %struct.uio** %6, align 8
  %157 = call i32 @uiomove(i32* %154, i32 %155, %struct.uio* %156)
  store i32 %157, i32* %9, align 4
  %158 = load i32, i32* %9, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %145
  br label %200

161:                                              ; preds = %145
  %162 = load %struct.icee_softc*, %struct.icee_softc** %8, align 8
  %163 = getelementptr inbounds %struct.icee_softc, %struct.icee_softc* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 4
  %165 = getelementptr inbounds [1 x %struct.iic_msg], [1 x %struct.iic_msg]* %15, i64 0, i64 0
  %166 = load i32, i32* @IIC_INTRWAIT, align 4
  %167 = call i32 @iicbus_transfer_excl(i32 %164, %struct.iic_msg* %165, i32 1, i32 %166)
  store i32 %167, i32* %9, align 4
  %168 = load i32, i32* %9, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %161
  %171 = load i32, i32* %9, align 4
  %172 = call i32 @iic2errno(i32 %171)
  store i32 %172, i32* %9, align 4
  br label %200

173:                                              ; preds = %161
  store i32 10000, i32* %12, align 4
  %174 = load i32, i32* %11, align 4
  %175 = getelementptr inbounds [1 x %struct.iic_msg], [1 x %struct.iic_msg]* %16, i64 0, i64 0
  %176 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %175, i32 0, i32 3
  store i32 %174, i32* %176, align 4
  br label %177

177:                                              ; preds = %191, %173
  %178 = load %struct.icee_softc*, %struct.icee_softc** %8, align 8
  %179 = getelementptr inbounds %struct.icee_softc, %struct.icee_softc* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 4
  %181 = getelementptr inbounds [1 x %struct.iic_msg], [1 x %struct.iic_msg]* %16, i64 0, i64 0
  %182 = load i32, i32* @IIC_INTRWAIT, align 4
  %183 = call i32 @iicbus_transfer_excl(i32 %180, %struct.iic_msg* %181, i32 1, i32 %182)
  store i32 %183, i32* %9, align 4
  br label %184

184:                                              ; preds = %177
  %185 = load i32, i32* %12, align 4
  %186 = add nsw i32 %185, -1
  store i32 %186, i32* %12, align 4
  %187 = icmp sgt i32 %185, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %184
  %189 = load i32, i32* %9, align 4
  %190 = icmp ne i32 %189, 0
  br label %191

191:                                              ; preds = %188, %184
  %192 = phi i1 [ false, %184 ], [ %190, %188 ]
  br i1 %192, label %177, label %193

193:                                              ; preds = %191
  %194 = load i32, i32* %9, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %193
  %197 = load i32, i32* %9, align 4
  %198 = call i32 @iic2errno(i32 %197)
  store i32 %198, i32* %9, align 4
  br label %200

199:                                              ; preds = %193
  br label %69

200:                                              ; preds = %196, %170, %160, %82, %69
  %201 = load i32, i32* %9, align 4
  store i32 %201, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %202

202:                                              ; preds = %200, %66, %54
  %203 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %203)
  %204 = load i32, i32* %4, align 4
  ret i32 %204
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.icee_softc* @CDEV2SOFTC(%struct.cdev*) #2

declare dso_local i32 @MIN(i32, i32) #2

declare dso_local i32 @uiomove(i32*, i32, %struct.uio*) #2

declare dso_local i32 @iicbus_transfer_excl(i32, %struct.iic_msg*, i32, i32) #2

declare dso_local i32 @iic2errno(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
