; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_uhid_snes.c_uhid_snes_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_uhid_snes.c_uhid_snes_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_fifo = type { i32 }
%struct.uhid_snes_softc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.usb_gen_descriptor = type { i32, i32, i32*, i32 }

@FREAD = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@UHID_FLAG_IMMED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_fifo*, i32, i8*, i32)* @uhid_snes_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uhid_snes_ioctl(%struct.usb_fifo* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_fifo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.uhid_snes_softc*, align 8
  %11 = alloca %struct.usb_gen_descriptor*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.usb_fifo* %0, %struct.usb_fifo** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.usb_fifo*, %struct.usb_fifo** %6, align 8
  %16 = call %struct.uhid_snes_softc* @usb_fifo_softc(%struct.usb_fifo* %15)
  store %struct.uhid_snes_softc* %16, %struct.uhid_snes_softc** %10, align 8
  store i32 0, i32* %13, align 4
  %17 = load i32, i32* %7, align 4
  switch i32 %17, label %225 [
    i32 131, label %18
    i32 129, label %54
    i32 132, label %104
    i32 128, label %163
    i32 130, label %222
  ]

18:                                               ; preds = %4
  %19 = load i8*, i8** %8, align 8
  %20 = bitcast i8* %19 to %struct.usb_gen_descriptor*
  store %struct.usb_gen_descriptor* %20, %struct.usb_gen_descriptor** %11, align 8
  %21 = load %struct.uhid_snes_softc*, %struct.uhid_snes_softc** %10, align 8
  %22 = getelementptr inbounds %struct.uhid_snes_softc, %struct.uhid_snes_softc* %21, i32 0, i32 9
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.usb_gen_descriptor*, %struct.usb_gen_descriptor** %11, align 8
  %25 = getelementptr inbounds %struct.usb_gen_descriptor, %struct.usb_gen_descriptor* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp sgt i32 %23, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %18
  %29 = load %struct.usb_gen_descriptor*, %struct.usb_gen_descriptor** %11, align 8
  %30 = getelementptr inbounds %struct.usb_gen_descriptor, %struct.usb_gen_descriptor* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %12, align 4
  br label %36

32:                                               ; preds = %18
  %33 = load %struct.uhid_snes_softc*, %struct.uhid_snes_softc** %10, align 8
  %34 = getelementptr inbounds %struct.uhid_snes_softc, %struct.uhid_snes_softc* %33, i32 0, i32 9
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %12, align 4
  br label %36

36:                                               ; preds = %32, %28
  %37 = load i32, i32* %12, align 4
  %38 = load %struct.usb_gen_descriptor*, %struct.usb_gen_descriptor** %11, align 8
  %39 = getelementptr inbounds %struct.usb_gen_descriptor, %struct.usb_gen_descriptor* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 8
  %40 = load %struct.usb_gen_descriptor*, %struct.usb_gen_descriptor** %11, align 8
  %41 = getelementptr inbounds %struct.usb_gen_descriptor, %struct.usb_gen_descriptor* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %227

45:                                               ; preds = %36
  %46 = load %struct.uhid_snes_softc*, %struct.uhid_snes_softc** %10, align 8
  %47 = getelementptr inbounds %struct.uhid_snes_softc, %struct.uhid_snes_softc* %46, i32 0, i32 8
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.usb_gen_descriptor*, %struct.usb_gen_descriptor** %11, align 8
  %50 = getelementptr inbounds %struct.usb_gen_descriptor, %struct.usb_gen_descriptor* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @copyout(i32 %48, i32* %51, i32 %52)
  store i32 %53, i32* %13, align 4
  br label %227

54:                                               ; preds = %4
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @FREAD, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* @EPERM, align 4
  store i32 %60, i32* %13, align 4
  br label %227

61:                                               ; preds = %54
  %62 = load i8*, i8** %8, align 8
  %63 = bitcast i8* %62 to i32*
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %90

66:                                               ; preds = %61
  %67 = load %struct.uhid_snes_softc*, %struct.uhid_snes_softc** %10, align 8
  %68 = load %struct.uhid_snes_softc*, %struct.uhid_snes_softc** %10, align 8
  %69 = getelementptr inbounds %struct.uhid_snes_softc, %struct.uhid_snes_softc* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.uhid_snes_softc*, %struct.uhid_snes_softc** %10, align 8
  %72 = getelementptr inbounds %struct.uhid_snes_softc, %struct.uhid_snes_softc* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @uhid_get_report(%struct.uhid_snes_softc* %67, i32 134, i32 %70, i32* null, i32* null, i32 %73)
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %13, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %66
  br label %227

78:                                               ; preds = %66
  %79 = load %struct.uhid_snes_softc*, %struct.uhid_snes_softc** %10, align 8
  %80 = getelementptr inbounds %struct.uhid_snes_softc, %struct.uhid_snes_softc* %79, i32 0, i32 6
  %81 = call i32 @mtx_lock(i32* %80)
  %82 = load i32, i32* @UHID_FLAG_IMMED, align 4
  %83 = load %struct.uhid_snes_softc*, %struct.uhid_snes_softc** %10, align 8
  %84 = getelementptr inbounds %struct.uhid_snes_softc, %struct.uhid_snes_softc* %83, i32 0, i32 7
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 4
  %87 = load %struct.uhid_snes_softc*, %struct.uhid_snes_softc** %10, align 8
  %88 = getelementptr inbounds %struct.uhid_snes_softc, %struct.uhid_snes_softc* %87, i32 0, i32 6
  %89 = call i32 @mtx_unlock(i32* %88)
  br label %103

90:                                               ; preds = %61
  %91 = load %struct.uhid_snes_softc*, %struct.uhid_snes_softc** %10, align 8
  %92 = getelementptr inbounds %struct.uhid_snes_softc, %struct.uhid_snes_softc* %91, i32 0, i32 6
  %93 = call i32 @mtx_lock(i32* %92)
  %94 = load i32, i32* @UHID_FLAG_IMMED, align 4
  %95 = xor i32 %94, -1
  %96 = load %struct.uhid_snes_softc*, %struct.uhid_snes_softc** %10, align 8
  %97 = getelementptr inbounds %struct.uhid_snes_softc, %struct.uhid_snes_softc* %96, i32 0, i32 7
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, %95
  store i32 %99, i32* %97, align 4
  %100 = load %struct.uhid_snes_softc*, %struct.uhid_snes_softc** %10, align 8
  %101 = getelementptr inbounds %struct.uhid_snes_softc, %struct.uhid_snes_softc* %100, i32 0, i32 6
  %102 = call i32 @mtx_unlock(i32* %101)
  br label %103

103:                                              ; preds = %90, %78
  br label %227

104:                                              ; preds = %4
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* @FREAD, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %111, label %109

109:                                              ; preds = %104
  %110 = load i32, i32* @EPERM, align 4
  store i32 %110, i32* %13, align 4
  br label %227

111:                                              ; preds = %104
  %112 = load i8*, i8** %8, align 8
  %113 = bitcast i8* %112 to %struct.usb_gen_descriptor*
  store %struct.usb_gen_descriptor* %113, %struct.usb_gen_descriptor** %11, align 8
  %114 = load %struct.usb_gen_descriptor*, %struct.usb_gen_descriptor** %11, align 8
  %115 = getelementptr inbounds %struct.usb_gen_descriptor, %struct.usb_gen_descriptor* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  switch i32 %116, label %138 [
    i32 134, label %117
    i32 133, label %124
    i32 135, label %131
  ]

117:                                              ; preds = %111
  %118 = load %struct.uhid_snes_softc*, %struct.uhid_snes_softc** %10, align 8
  %119 = getelementptr inbounds %struct.uhid_snes_softc, %struct.uhid_snes_softc* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %12, align 4
  %121 = load %struct.uhid_snes_softc*, %struct.uhid_snes_softc** %10, align 8
  %122 = getelementptr inbounds %struct.uhid_snes_softc, %struct.uhid_snes_softc* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %14, align 4
  br label %140

124:                                              ; preds = %111
  %125 = load %struct.uhid_snes_softc*, %struct.uhid_snes_softc** %10, align 8
  %126 = getelementptr inbounds %struct.uhid_snes_softc, %struct.uhid_snes_softc* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %12, align 4
  %128 = load %struct.uhid_snes_softc*, %struct.uhid_snes_softc** %10, align 8
  %129 = getelementptr inbounds %struct.uhid_snes_softc, %struct.uhid_snes_softc* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %14, align 4
  br label %140

131:                                              ; preds = %111
  %132 = load %struct.uhid_snes_softc*, %struct.uhid_snes_softc** %10, align 8
  %133 = getelementptr inbounds %struct.uhid_snes_softc, %struct.uhid_snes_softc* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %12, align 4
  %135 = load %struct.uhid_snes_softc*, %struct.uhid_snes_softc** %10, align 8
  %136 = getelementptr inbounds %struct.uhid_snes_softc, %struct.uhid_snes_softc* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* %14, align 4
  br label %140

138:                                              ; preds = %111
  %139 = load i32, i32* @EINVAL, align 4
  store i32 %139, i32* %5, align 4
  br label %229

140:                                              ; preds = %131, %124, %117
  %141 = load i32, i32* %14, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %140
  %144 = load %struct.usb_gen_descriptor*, %struct.usb_gen_descriptor** %11, align 8
  %145 = getelementptr inbounds %struct.usb_gen_descriptor, %struct.usb_gen_descriptor* %144, i32 0, i32 2
  %146 = load i32*, i32** %145, align 8
  %147 = call i32 @copyin(i32* %146, i32* %14, i32 1)
  br label %148

148:                                              ; preds = %143, %140
  %149 = load %struct.uhid_snes_softc*, %struct.uhid_snes_softc** %10, align 8
  %150 = load %struct.usb_gen_descriptor*, %struct.usb_gen_descriptor** %11, align 8
  %151 = getelementptr inbounds %struct.usb_gen_descriptor, %struct.usb_gen_descriptor* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* %14, align 4
  %154 = load %struct.usb_gen_descriptor*, %struct.usb_gen_descriptor** %11, align 8
  %155 = getelementptr inbounds %struct.usb_gen_descriptor, %struct.usb_gen_descriptor* %154, i32 0, i32 2
  %156 = load i32*, i32** %155, align 8
  %157 = load %struct.usb_gen_descriptor*, %struct.usb_gen_descriptor** %11, align 8
  %158 = getelementptr inbounds %struct.usb_gen_descriptor, %struct.usb_gen_descriptor* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %12, align 4
  %161 = call i32 @imin(i32 %159, i32 %160)
  %162 = call i32 @uhid_get_report(%struct.uhid_snes_softc* %149, i32 %152, i32 %153, i32* null, i32* %156, i32 %161)
  store i32 %162, i32* %13, align 4
  br label %227

163:                                              ; preds = %4
  %164 = load i32, i32* %9, align 4
  %165 = load i32, i32* @FWRITE, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %170, label %168

168:                                              ; preds = %163
  %169 = load i32, i32* @EPERM, align 4
  store i32 %169, i32* %13, align 4
  br label %227

170:                                              ; preds = %163
  %171 = load i8*, i8** %8, align 8
  %172 = bitcast i8* %171 to %struct.usb_gen_descriptor*
  store %struct.usb_gen_descriptor* %172, %struct.usb_gen_descriptor** %11, align 8
  %173 = load %struct.usb_gen_descriptor*, %struct.usb_gen_descriptor** %11, align 8
  %174 = getelementptr inbounds %struct.usb_gen_descriptor, %struct.usb_gen_descriptor* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  switch i32 %175, label %197 [
    i32 134, label %176
    i32 133, label %183
    i32 135, label %190
  ]

176:                                              ; preds = %170
  %177 = load %struct.uhid_snes_softc*, %struct.uhid_snes_softc** %10, align 8
  %178 = getelementptr inbounds %struct.uhid_snes_softc, %struct.uhid_snes_softc* %177, i32 0, i32 5
  %179 = load i32, i32* %178, align 4
  store i32 %179, i32* %12, align 4
  %180 = load %struct.uhid_snes_softc*, %struct.uhid_snes_softc** %10, align 8
  %181 = getelementptr inbounds %struct.uhid_snes_softc, %struct.uhid_snes_softc* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 4
  store i32 %182, i32* %14, align 4
  br label %199

183:                                              ; preds = %170
  %184 = load %struct.uhid_snes_softc*, %struct.uhid_snes_softc** %10, align 8
  %185 = getelementptr inbounds %struct.uhid_snes_softc, %struct.uhid_snes_softc* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  store i32 %186, i32* %12, align 4
  %187 = load %struct.uhid_snes_softc*, %struct.uhid_snes_softc** %10, align 8
  %188 = getelementptr inbounds %struct.uhid_snes_softc, %struct.uhid_snes_softc* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  store i32 %189, i32* %14, align 4
  br label %199

190:                                              ; preds = %170
  %191 = load %struct.uhid_snes_softc*, %struct.uhid_snes_softc** %10, align 8
  %192 = getelementptr inbounds %struct.uhid_snes_softc, %struct.uhid_snes_softc* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  store i32 %193, i32* %12, align 4
  %194 = load %struct.uhid_snes_softc*, %struct.uhid_snes_softc** %10, align 8
  %195 = getelementptr inbounds %struct.uhid_snes_softc, %struct.uhid_snes_softc* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  store i32 %196, i32* %14, align 4
  br label %199

197:                                              ; preds = %170
  %198 = load i32, i32* @EINVAL, align 4
  store i32 %198, i32* %5, align 4
  br label %229

199:                                              ; preds = %190, %183, %176
  %200 = load i32, i32* %14, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %207

202:                                              ; preds = %199
  %203 = load %struct.usb_gen_descriptor*, %struct.usb_gen_descriptor** %11, align 8
  %204 = getelementptr inbounds %struct.usb_gen_descriptor, %struct.usb_gen_descriptor* %203, i32 0, i32 2
  %205 = load i32*, i32** %204, align 8
  %206 = call i32 @copyin(i32* %205, i32* %14, i32 1)
  br label %207

207:                                              ; preds = %202, %199
  %208 = load %struct.uhid_snes_softc*, %struct.uhid_snes_softc** %10, align 8
  %209 = load %struct.usb_gen_descriptor*, %struct.usb_gen_descriptor** %11, align 8
  %210 = getelementptr inbounds %struct.usb_gen_descriptor, %struct.usb_gen_descriptor* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* %14, align 4
  %213 = load %struct.usb_gen_descriptor*, %struct.usb_gen_descriptor** %11, align 8
  %214 = getelementptr inbounds %struct.usb_gen_descriptor, %struct.usb_gen_descriptor* %213, i32 0, i32 2
  %215 = load i32*, i32** %214, align 8
  %216 = load %struct.usb_gen_descriptor*, %struct.usb_gen_descriptor** %11, align 8
  %217 = getelementptr inbounds %struct.usb_gen_descriptor, %struct.usb_gen_descriptor* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* %12, align 4
  %220 = call i32 @imin(i32 %218, i32 %219)
  %221 = call i32 @uhid_set_report(%struct.uhid_snes_softc* %208, i32 %211, i32 %212, i32* null, i32* %215, i32 %220)
  store i32 %221, i32* %13, align 4
  br label %227

222:                                              ; preds = %4
  %223 = load i8*, i8** %8, align 8
  %224 = bitcast i8* %223 to i32*
  store i32 0, i32* %224, align 4
  br label %227

225:                                              ; preds = %4
  %226 = load i32, i32* @EINVAL, align 4
  store i32 %226, i32* %13, align 4
  br label %227

227:                                              ; preds = %225, %222, %207, %168, %148, %109, %103, %77, %59, %45, %44
  %228 = load i32, i32* %13, align 4
  store i32 %228, i32* %5, align 4
  br label %229

229:                                              ; preds = %227, %197, %138
  %230 = load i32, i32* %5, align 4
  ret i32 %230
}

declare dso_local %struct.uhid_snes_softc* @usb_fifo_softc(%struct.usb_fifo*) #1

declare dso_local i32 @copyout(i32, i32*, i32) #1

declare dso_local i32 @uhid_get_report(%struct.uhid_snes_softc*, i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @copyin(i32*, i32*, i32) #1

declare dso_local i32 @imin(i32, i32) #1

declare dso_local i32 @uhid_set_report(%struct.uhid_snes_softc*, i32, i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
