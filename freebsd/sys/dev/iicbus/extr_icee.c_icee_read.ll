; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_icee.c_icee_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_icee.c_icee_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.uio = type { i64, i64 }
%struct.icee_softc = type { i64, i32, i32, i32 }
%struct.iic_msg = type { i32, i32*, i32, i32, i32, i32 }

@MAX_RD_SZ = common dso_local global i32 0, align 4
@IIC_M_WR = common dso_local global i32 0, align 4
@IIC_M_RD = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IIC_INTRWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.uio*, i32)* @icee_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icee_read(%struct.cdev* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.icee_softc*, align 8
  %9 = alloca [2 x i32], align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [2 x %struct.iic_msg], align 16
  %17 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store %struct.uio* %1, %struct.uio** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load i32, i32* @MAX_RD_SZ, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %10, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  %22 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %16, i64 0, i64 0
  %23 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %22, i32 0, i32 0
  store i32 0, i32* %23, align 16
  %24 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %22, i32 0, i32 1
  %25 = load i32, i32* @IIC_M_WR, align 4
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to i32*
  store i32* %27, i32** %24, align 8
  %28 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %22, i32 0, i32 2
  store i32 1, i32* %28, align 16
  %29 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %22, i32 0, i32 3
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %31 = ptrtoint i32* %30 to i32
  store i32 %31, i32* %29, align 4
  %32 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %22, i32 0, i32 4
  store i32 0, i32* %32, align 8
  %33 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %22, i32 0, i32 5
  store i32 0, i32* %33, align 4
  %34 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %22, i64 1
  %35 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %34, i32 0, i32 0
  store i32 0, i32* %35, align 16
  %36 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %34, i32 0, i32 1
  %37 = load i32, i32* @IIC_M_RD, align 4
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to i32*
  store i32* %39, i32** %36, align 8
  %40 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %34, i32 0, i32 2
  store i32 0, i32* %40, align 16
  %41 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %34, i32 0, i32 3
  %42 = ptrtoint i32* %21 to i32
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
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.icee_softc*, %struct.icee_softc** %8, align 8
  %51 = getelementptr inbounds %struct.icee_softc, %struct.icee_softc* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %49, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %197

55:                                               ; preds = %3
  %56 = load %struct.uio*, %struct.uio** %6, align 8
  %57 = getelementptr inbounds %struct.uio, %struct.uio* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.icee_softc*, %struct.icee_softc** %8, align 8
  %60 = getelementptr inbounds %struct.icee_softc, %struct.icee_softc* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp sgt i64 %58, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %55
  %64 = load i32, i32* @EIO, align 4
  store i32 %64, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %197

65:                                               ; preds = %55
  %66 = load %struct.icee_softc*, %struct.icee_softc** %8, align 8
  %67 = getelementptr inbounds %struct.icee_softc, %struct.icee_softc* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 8
  br i1 %69, label %70, label %77

70:                                               ; preds = %65
  %71 = load %struct.icee_softc*, %struct.icee_softc** %8, align 8
  %72 = getelementptr inbounds %struct.icee_softc, %struct.icee_softc* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 16
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i32, i32* @EINVAL, align 4
  store i32 %76, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %197

77:                                               ; preds = %70, %65
  store i32 0, i32* %12, align 4
  store i32 0, i32* %15, align 4
  br label %78

78:                                               ; preds = %194, %77
  %79 = load %struct.uio*, %struct.uio** %6, align 8
  %80 = getelementptr inbounds %struct.uio, %struct.uio* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp sgt i64 %81, 0
  br i1 %82, label %83, label %195

83:                                               ; preds = %78
  %84 = load %struct.uio*, %struct.uio** %6, align 8
  %85 = getelementptr inbounds %struct.uio, %struct.uio* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.icee_softc*, %struct.icee_softc** %8, align 8
  %88 = getelementptr inbounds %struct.icee_softc, %struct.icee_softc* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp sge i64 %86, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %83
  br label %195

92:                                               ; preds = %83
  %93 = load i32, i32* @MAX_RD_SZ, align 4
  %94 = sext i32 %93 to i64
  %95 = load %struct.uio*, %struct.uio** %6, align 8
  %96 = getelementptr inbounds %struct.uio, %struct.uio* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i32, i32* @MAX_RD_SZ, align 4
  %99 = sub nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = and i64 %97, %100
  %102 = sub nsw i64 %94, %101
  %103 = trunc i64 %102 to i32
  %104 = load %struct.uio*, %struct.uio** %6, align 8
  %105 = getelementptr inbounds %struct.uio, %struct.uio* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @MIN(i32 %103, i64 %106)
  store i32 %107, i32* %14, align 4
  %108 = load %struct.icee_softc*, %struct.icee_softc** %8, align 8
  %109 = getelementptr inbounds %struct.icee_softc, %struct.icee_softc* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  switch i32 %110, label %162 [
    i32 8, label %111
    i32 16, label %133
  ]

111:                                              ; preds = %92
  %112 = load %struct.uio*, %struct.uio** %6, align 8
  %113 = getelementptr inbounds %struct.uio, %struct.uio* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = ashr i64 %114, 7
  %116 = load %struct.icee_softc*, %struct.icee_softc** %8, align 8
  %117 = getelementptr inbounds %struct.icee_softc, %struct.icee_softc* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = sext i32 %118 to i64
  %120 = or i64 %115, %119
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %15, align 4
  %122 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %16, i64 0, i64 0
  %123 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %122, i32 0, i32 2
  store i32 1, i32* %123, align 16
  %124 = load i32, i32* %14, align 4
  %125 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %16, i64 0, i64 1
  %126 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %125, i32 0, i32 2
  store i32 %124, i32* %126, align 16
  %127 = load %struct.uio*, %struct.uio** %6, align 8
  %128 = getelementptr inbounds %struct.uio, %struct.uio* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = and i64 %129, 255
  %131 = trunc i64 %130 to i32
  %132 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 %131, i32* %132, align 4
  br label %162

133:                                              ; preds = %92
  %134 = load %struct.icee_softc*, %struct.icee_softc** %8, align 8
  %135 = getelementptr inbounds %struct.icee_softc, %struct.icee_softc* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = sext i32 %136 to i64
  %138 = load %struct.uio*, %struct.uio** %6, align 8
  %139 = getelementptr inbounds %struct.uio, %struct.uio* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = ashr i64 %140, 15
  %142 = or i64 %137, %141
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %15, align 4
  %144 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %16, i64 0, i64 0
  %145 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %144, i32 0, i32 2
  store i32 2, i32* %145, align 16
  %146 = load i32, i32* %14, align 4
  %147 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %16, i64 0, i64 1
  %148 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %147, i32 0, i32 2
  store i32 %146, i32* %148, align 16
  %149 = load %struct.uio*, %struct.uio** %6, align 8
  %150 = getelementptr inbounds %struct.uio, %struct.uio* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = ashr i64 %151, 8
  %153 = and i64 %152, 255
  %154 = trunc i64 %153 to i32
  %155 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 %154, i32* %155, align 4
  %156 = load %struct.uio*, %struct.uio** %6, align 8
  %157 = getelementptr inbounds %struct.uio, %struct.uio* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = and i64 %158, 255
  %160 = trunc i64 %159 to i32
  %161 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 %160, i32* %161, align 4
  br label %162

162:                                              ; preds = %92, %133, %111
  store i32 0, i32* %13, align 4
  br label %163

163:                                              ; preds = %172, %162
  %164 = load i32, i32* %13, align 4
  %165 = icmp slt i32 %164, 2
  br i1 %165, label %166, label %175

166:                                              ; preds = %163
  %167 = load i32, i32* %15, align 4
  %168 = load i32, i32* %13, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %16, i64 0, i64 %169
  %171 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %170, i32 0, i32 3
  store i32 %167, i32* %171, align 4
  br label %172

172:                                              ; preds = %166
  %173 = load i32, i32* %13, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %13, align 4
  br label %163

175:                                              ; preds = %163
  %176 = load %struct.icee_softc*, %struct.icee_softc** %8, align 8
  %177 = getelementptr inbounds %struct.icee_softc, %struct.icee_softc* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 8
  %179 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %16, i64 0, i64 0
  %180 = load i32, i32* @IIC_INTRWAIT, align 4
  %181 = call i32 @iicbus_transfer_excl(i32 %178, %struct.iic_msg* %179, i32 2, i32 %180)
  store i32 %181, i32* %12, align 4
  %182 = load i32, i32* %12, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %175
  %185 = load i32, i32* %12, align 4
  %186 = call i32 @iic2errno(i32 %185)
  store i32 %186, i32* %12, align 4
  br label %195

187:                                              ; preds = %175
  %188 = load i32, i32* %14, align 4
  %189 = load %struct.uio*, %struct.uio** %6, align 8
  %190 = call i32 @uiomove(i32* %21, i32 %188, %struct.uio* %189)
  store i32 %190, i32* %12, align 4
  %191 = load i32, i32* %12, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %187
  br label %195

194:                                              ; preds = %187
  br label %78

195:                                              ; preds = %193, %184, %91, %78
  %196 = load i32, i32* %12, align 4
  store i32 %196, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %197

197:                                              ; preds = %195, %75, %63, %54
  %198 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %198)
  %199 = load i32, i32* %4, align 4
  ret i32 %199
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.icee_softc* @CDEV2SOFTC(%struct.cdev*) #2

declare dso_local i32 @MIN(i32, i64) #2

declare dso_local i32 @iicbus_transfer_excl(i32, %struct.iic_msg*, i32, i32) #2

declare dso_local i32 @iic2errno(i32) #2

declare dso_local i32 @uiomove(i32*, i32, %struct.uio*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
