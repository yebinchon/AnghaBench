; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/imcsmb/extr_imcsmb.c_imcsmb_transfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/imcsmb/extr_imcsmb.c_imcsmb_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imcsmb_softc = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@IMCSMB_CNTL_DTI_MASK = common dso_local global i32 0, align 4
@IMCSMB_CNTL_CLK_OVERRIDE = common dso_local global i32 0, align 4
@IMCSMB_CNTL_WRITE_DISABLE_BIT = common dso_local global i32 0, align 4
@IMCSMB_CNTL_POLL_EN = common dso_local global i32 0, align 4
@IMCSMB_CMD_TRIGGER_BIT = common dso_local global i32 0, align 4
@IMCSMB_CMD_WORD_ACCESS = common dso_local global i32 0, align 4
@IMCSMB_CMD_WRITE_BIT = common dso_local global i32 0, align 4
@IMCSMB_STATUS_BUSY_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"imcsmb\00", align 1
@hz = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"transfer: timeout waiting for device to settle\0A\00", align 1
@IMCSMB_STATUS_WRITE_DATA_DONE = common dso_local global i32 0, align 4
@IMCSMB_STATUS_READ_DATA_VALID = common dso_local global i32 0, align 4
@SMB_ETIMEOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"transfer timeout\0A\00", align 1
@IMCSMB_STATUS_BUS_ERROR_BIT = common dso_local global i32 0, align 4
@SMB_ENOACK = common dso_local global i32 0, align 4
@SMB_ENOERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8, i8*, i32, i32)* @imcsmb_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imcsmb_transfer(i32 %0, i32 %1, i8 signext %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.imcsmb_softc*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i8 %2, i8* %9, align 1
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call %struct.imcsmb_softc* @device_get_softc(i32 %24)
  store %struct.imcsmb_softc* %25, %struct.imcsmb_softc** %13, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = bitcast i8* %26 to i32*
  store i32* %27, i32** %22, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = bitcast i8* %28 to i32*
  store i32* %29, i32** %20, align 8
  %30 = load i32*, i32** %22, align 8
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %23, align 4
  %32 = load i32*, i32** %20, align 8
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %21, align 4
  %34 = load %struct.imcsmb_softc*, %struct.imcsmb_softc** %13, align 8
  %35 = getelementptr inbounds %struct.imcsmb_softc, %struct.imcsmb_softc* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.imcsmb_softc*, %struct.imcsmb_softc** %13, align 8
  %38 = getelementptr inbounds %struct.imcsmb_softc, %struct.imcsmb_softc* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @pci_read_config(i32 %36, i32 %41, i32 4)
  store i32 %42, i32* %18, align 4
  %43 = load i32, i32* %18, align 4
  store i32 %43, i32* %17, align 4
  %44 = load i32, i32* @IMCSMB_CNTL_DTI_MASK, align 4
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %17, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %17, align 4
  %48 = load i32, i32* %8, align 4
  %49 = and i32 %48, 240
  %50 = shl i32 %49, 24
  %51 = load i32, i32* %17, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %17, align 4
  %53 = load i32, i32* @IMCSMB_CNTL_CLK_OVERRIDE, align 4
  %54 = load i32, i32* %17, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %17, align 4
  %56 = load i32, i32* @IMCSMB_CNTL_WRITE_DISABLE_BIT, align 4
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %17, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %17, align 4
  %60 = load i32, i32* @IMCSMB_CNTL_POLL_EN, align 4
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %17, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %17, align 4
  %64 = load i32, i32* @IMCSMB_CMD_TRIGGER_BIT, align 4
  store i32 %64, i32* %16, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %6
  %68 = load i32, i32* @IMCSMB_CMD_WORD_ACCESS, align 4
  %69 = load i32, i32* %16, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %16, align 4
  br label %71

71:                                               ; preds = %67, %6
  %72 = load i32, i32* %12, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load i32, i32* @IMCSMB_CMD_WRITE_BIT, align 4
  %76 = load i32, i32* %16, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %16, align 4
  br label %78

78:                                               ; preds = %74, %71
  %79 = load i32, i32* %8, align 4
  %80 = and i32 %79, 14
  %81 = shl i32 %80, 23
  %82 = load i32, i32* %16, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %16, align 4
  %84 = load i8, i8* %9, align 1
  %85 = sext i8 %84 to i32
  %86 = shl i32 %85, 16
  %87 = load i32, i32* %16, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %16, align 4
  %89 = load i32, i32* %12, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %104

91:                                               ; preds = %78
  %92 = load i32, i32* %11, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i32, i32* %21, align 4
  %96 = call i32 @htobe16(i32 %95)
  store i32 %96, i32* %21, align 4
  br label %100

97:                                               ; preds = %91
  %98 = load i32, i32* %23, align 4
  %99 = and i32 %98, 255
  store i32 %99, i32* %21, align 4
  br label %100

100:                                              ; preds = %97, %94
  %101 = load i32, i32* %21, align 4
  %102 = load i32, i32* %16, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %16, align 4
  br label %104

104:                                              ; preds = %100, %78
  %105 = load %struct.imcsmb_softc*, %struct.imcsmb_softc** %13, align 8
  %106 = getelementptr inbounds %struct.imcsmb_softc, %struct.imcsmb_softc* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.imcsmb_softc*, %struct.imcsmb_softc** %13, align 8
  %109 = getelementptr inbounds %struct.imcsmb_softc, %struct.imcsmb_softc* %108, i32 0, i32 0
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %17, align 4
  %114 = call i32 @pci_write_config(i32 %107, i32 %112, i32 %113, i32 4)
  store i32 4, i32* %14, align 4
  br label %115

115:                                              ; preds = %138, %104
  %116 = load i32, i32* %14, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %141

118:                                              ; preds = %115
  %119 = load %struct.imcsmb_softc*, %struct.imcsmb_softc** %13, align 8
  %120 = getelementptr inbounds %struct.imcsmb_softc, %struct.imcsmb_softc* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.imcsmb_softc*, %struct.imcsmb_softc** %13, align 8
  %123 = getelementptr inbounds %struct.imcsmb_softc, %struct.imcsmb_softc* %122, i32 0, i32 0
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @pci_read_config(i32 %121, i32 %126, i32 4)
  store i32 %127, i32* %19, align 4
  %128 = load i32, i32* %19, align 4
  %129 = load i32, i32* @IMCSMB_STATUS_BUSY_BIT, align 4
  %130 = and i32 %128, %129
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %118
  br label %141

133:                                              ; preds = %118
  %134 = load i32, i32* @hz, align 4
  %135 = mul nsw i32 10, %134
  %136 = sdiv i32 %135, 1000
  %137 = call i32 @pause(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %136)
  br label %138

138:                                              ; preds = %133
  %139 = load i32, i32* %14, align 4
  %140 = add nsw i32 %139, -1
  store i32 %140, i32* %14, align 4
  br label %115

141:                                              ; preds = %132, %115
  %142 = load i32, i32* %14, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %141
  %145 = load %struct.imcsmb_softc*, %struct.imcsmb_softc** %13, align 8
  %146 = getelementptr inbounds %struct.imcsmb_softc, %struct.imcsmb_softc* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @device_printf(i32 %147, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %149

149:                                              ; preds = %144, %141
  %150 = load %struct.imcsmb_softc*, %struct.imcsmb_softc** %13, align 8
  %151 = getelementptr inbounds %struct.imcsmb_softc, %struct.imcsmb_softc* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.imcsmb_softc*, %struct.imcsmb_softc** %13, align 8
  %154 = getelementptr inbounds %struct.imcsmb_softc, %struct.imcsmb_softc* %153, i32 0, i32 0
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %16, align 4
  %159 = call i32 @pci_write_config(i32 %152, i32 %157, i32 %158, i32 4)
  store i32 35000, i32* %14, align 4
  br label %160

160:                                              ; preds = %191, %149
  %161 = load i32, i32* %14, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %194

163:                                              ; preds = %160
  %164 = call i32 @DELAY(i32 10)
  %165 = load %struct.imcsmb_softc*, %struct.imcsmb_softc** %13, align 8
  %166 = getelementptr inbounds %struct.imcsmb_softc, %struct.imcsmb_softc* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.imcsmb_softc*, %struct.imcsmb_softc** %13, align 8
  %169 = getelementptr inbounds %struct.imcsmb_softc, %struct.imcsmb_softc* %168, i32 0, i32 0
  %170 = load %struct.TYPE_2__*, %struct.TYPE_2__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @pci_read_config(i32 %167, i32 %172, i32 4)
  store i32 %173, i32* %19, align 4
  %174 = load i32, i32* %12, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %183

176:                                              ; preds = %163
  %177 = load i32, i32* %19, align 4
  %178 = load i32, i32* @IMCSMB_STATUS_WRITE_DATA_DONE, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %176
  br label %194

182:                                              ; preds = %176
  br label %190

183:                                              ; preds = %163
  %184 = load i32, i32* %19, align 4
  %185 = load i32, i32* @IMCSMB_STATUS_READ_DATA_VALID, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %183
  br label %194

189:                                              ; preds = %183
  br label %190

190:                                              ; preds = %189, %182
  br label %191

191:                                              ; preds = %190
  %192 = load i32, i32* %14, align 4
  %193 = sub nsw i32 %192, 10
  store i32 %193, i32* %14, align 4
  br label %160

194:                                              ; preds = %188, %181, %160
  %195 = load i32, i32* %14, align 4
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %201

197:                                              ; preds = %194
  %198 = load i32, i32* @SMB_ETIMEOUT, align 4
  store i32 %198, i32* %15, align 4
  %199 = load i32, i32* %7, align 4
  %200 = call i32 @device_printf(i32 %199, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %234

201:                                              ; preds = %194
  %202 = load i32, i32* %19, align 4
  %203 = load i32, i32* @IMCSMB_STATUS_BUS_ERROR_BIT, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %213

206:                                              ; preds = %201
  %207 = load i32, i32* %8, align 4
  %208 = and i32 %207, 240
  %209 = icmp ne i32 %208, 96
  br i1 %209, label %210, label %212

210:                                              ; preds = %206
  %211 = load i32, i32* @SMB_ENOACK, align 4
  store i32 %211, i32* %15, align 4
  br label %234

212:                                              ; preds = %206
  br label %213

213:                                              ; preds = %212, %201
  %214 = load i32, i32* %12, align 4
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %232

216:                                              ; preds = %213
  %217 = load i32, i32* %11, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %226

219:                                              ; preds = %216
  %220 = load i32, i32* %19, align 4
  %221 = and i32 %220, 65535
  store i32 %221, i32* %21, align 4
  %222 = load i32, i32* %21, align 4
  %223 = call i32 @htobe16(i32 %222)
  store i32 %223, i32* %21, align 4
  %224 = load i32, i32* %21, align 4
  %225 = load i32*, i32** %20, align 8
  store i32 %224, i32* %225, align 4
  br label %231

226:                                              ; preds = %216
  %227 = load i32, i32* %19, align 4
  %228 = and i32 %227, 255
  store i32 %228, i32* %23, align 4
  %229 = load i32, i32* %23, align 4
  %230 = load i32*, i32** %22, align 8
  store i32 %229, i32* %230, align 4
  br label %231

231:                                              ; preds = %226, %219
  br label %232

232:                                              ; preds = %231, %213
  %233 = load i32, i32* @SMB_ENOERR, align 4
  store i32 %233, i32* %15, align 4
  br label %234

234:                                              ; preds = %232, %210, %197
  %235 = load %struct.imcsmb_softc*, %struct.imcsmb_softc** %13, align 8
  %236 = getelementptr inbounds %struct.imcsmb_softc, %struct.imcsmb_softc* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 8
  %238 = load %struct.imcsmb_softc*, %struct.imcsmb_softc** %13, align 8
  %239 = getelementptr inbounds %struct.imcsmb_softc, %struct.imcsmb_softc* %238, i32 0, i32 0
  %240 = load %struct.TYPE_2__*, %struct.TYPE_2__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* %18, align 4
  %244 = call i32 @pci_write_config(i32 %237, i32 %242, i32 %243, i32 4)
  %245 = load i32, i32* %15, align 4
  ret i32 %245
}

declare dso_local %struct.imcsmb_softc* @device_get_softc(i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @htobe16(i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i32 @pause(i8*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
