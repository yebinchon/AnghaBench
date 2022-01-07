; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwdev.c_fw_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwdev.c_fw_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.fw_drv1* }
%struct.fw_drv1 = type { %struct.fw_xferq*, %struct.firewire_comm* }
%struct.fw_xferq = type { i64, i64, i64, %struct.TYPE_7__*, i32, i32, i32*, i32, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.firewire_comm = type { i32 (%struct.firewire_comm*, i32)*, i32 (%struct.firewire_comm*, i32)* }
%struct.uio = type { i64 }
%struct.fw_pkt = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64 }

@EIO = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@FWXFERQ_WAKEUP = common dso_local global i32 0, align 4
@FWPRI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"fw_read\00", align 1
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.uio*, i32)* @fw_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fw_read(%struct.cdev* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fw_drv1*, align 8
  %9 = alloca %struct.fw_xferq*, align 8
  %10 = alloca %struct.firewire_comm*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.fw_pkt*, align 8
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store %struct.uio* %1, %struct.uio** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %15 = load %struct.cdev*, %struct.cdev** %5, align 8
  %16 = call i64 @DEV_FWMEM(%struct.cdev* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load %struct.cdev*, %struct.cdev** %5, align 8
  %20 = load %struct.uio*, %struct.uio** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @physio(%struct.cdev* %19, %struct.uio* %20, i32 %21)
  store i32 %22, i32* %4, align 4
  br label %220

23:                                               ; preds = %3
  %24 = load %struct.cdev*, %struct.cdev** %5, align 8
  %25 = getelementptr inbounds %struct.cdev, %struct.cdev* %24, i32 0, i32 0
  %26 = load %struct.fw_drv1*, %struct.fw_drv1** %25, align 8
  store %struct.fw_drv1* %26, %struct.fw_drv1** %8, align 8
  %27 = load %struct.fw_drv1*, %struct.fw_drv1** %8, align 8
  %28 = getelementptr inbounds %struct.fw_drv1, %struct.fw_drv1* %27, i32 0, i32 1
  %29 = load %struct.firewire_comm*, %struct.firewire_comm** %28, align 8
  store %struct.firewire_comm* %29, %struct.firewire_comm** %10, align 8
  %30 = load %struct.fw_drv1*, %struct.fw_drv1** %8, align 8
  %31 = getelementptr inbounds %struct.fw_drv1, %struct.fw_drv1* %30, i32 0, i32 0
  %32 = load %struct.fw_xferq*, %struct.fw_xferq** %31, align 8
  store %struct.fw_xferq* %32, %struct.fw_xferq** %9, align 8
  %33 = load %struct.fw_xferq*, %struct.fw_xferq** %9, align 8
  %34 = icmp eq %struct.fw_xferq* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %23
  %36 = load %struct.fw_drv1*, %struct.fw_drv1** %8, align 8
  %37 = load %struct.uio*, %struct.uio** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @fw_read_async(%struct.fw_drv1* %36, %struct.uio* %37, i32 %38)
  store i32 %39, i32* %4, align 4
  br label %220

40:                                               ; preds = %23
  %41 = load %struct.fw_xferq*, %struct.fw_xferq** %9, align 8
  %42 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %41, i32 0, i32 6
  %43 = load i32*, i32** %42, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* @EIO, align 4
  store i32 %46, i32* %4, align 4
  br label %220

47:                                               ; preds = %40
  %48 = load %struct.firewire_comm*, %struct.firewire_comm** %10, align 8
  %49 = call i32 @FW_GLOCK(%struct.firewire_comm* %48)
  br label %50

50:                                               ; preds = %213, %104, %47
  %51 = load %struct.fw_xferq*, %struct.fw_xferq** %9, align 8
  %52 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %51, i32 0, i32 3
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = icmp eq %struct.TYPE_7__* %53, null
  br i1 %54, label %55, label %76

55:                                               ; preds = %50
  %56 = load %struct.fw_xferq*, %struct.fw_xferq** %9, align 8
  %57 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %56, i32 0, i32 8
  %58 = call %struct.TYPE_7__* @STAILQ_FIRST(i32* %57)
  %59 = load %struct.fw_xferq*, %struct.fw_xferq** %9, align 8
  %60 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %59, i32 0, i32 3
  store %struct.TYPE_7__* %58, %struct.TYPE_7__** %60, align 8
  %61 = load %struct.fw_xferq*, %struct.fw_xferq** %9, align 8
  %62 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %61, i32 0, i32 3
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = icmp ne %struct.TYPE_7__* %63, null
  br i1 %64, label %65, label %75

65:                                               ; preds = %55
  %66 = call i32 (...) @splfw()
  store i32 %66, i32* %12, align 4
  %67 = load %struct.fw_xferq*, %struct.fw_xferq** %9, align 8
  %68 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %67, i32 0, i32 8
  %69 = load i32, i32* @link, align 4
  %70 = call i32 @STAILQ_REMOVE_HEAD(i32* %68, i32 %69)
  %71 = load i32, i32* %12, align 4
  %72 = call i32 @splx(i32 %71)
  %73 = load %struct.fw_xferq*, %struct.fw_xferq** %9, align 8
  %74 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %73, i32 0, i32 0
  store i64 0, i64* %74, align 8
  br label %75

75:                                               ; preds = %65, %55
  br label %76

76:                                               ; preds = %75, %50
  %77 = load %struct.fw_xferq*, %struct.fw_xferq** %9, align 8
  %78 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %77, i32 0, i32 3
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = icmp eq %struct.TYPE_7__* %79, null
  br i1 %80, label %81, label %116

81:                                               ; preds = %76
  %82 = load i32, i32* %13, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %106

84:                                               ; preds = %81
  store i32 1, i32* %13, align 4
  %85 = load i32, i32* @FWXFERQ_WAKEUP, align 4
  %86 = load %struct.fw_xferq*, %struct.fw_xferq** %9, align 8
  %87 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %86, i32 0, i32 7
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 8
  %90 = load %struct.fw_xferq*, %struct.fw_xferq** %9, align 8
  %91 = load %struct.firewire_comm*, %struct.firewire_comm** %10, align 8
  %92 = call i32 @FW_GMTX(%struct.firewire_comm* %91)
  %93 = load i32, i32* @FWPRI, align 4
  %94 = load i32, i32* @hz, align 4
  %95 = call i32 @msleep(%struct.fw_xferq* %90, i32 %92, i32 %93, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %94)
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* @FWXFERQ_WAKEUP, align 4
  %97 = xor i32 %96, -1
  %98 = load %struct.fw_xferq*, %struct.fw_xferq** %9, align 8
  %99 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %98, i32 0, i32 7
  %100 = load i32, i32* %99, align 8
  %101 = and i32 %100, %97
  store i32 %101, i32* %99, align 8
  %102 = load i32, i32* %11, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %84
  br label %50

105:                                              ; preds = %84
  br label %112

106:                                              ; preds = %81
  %107 = load i32, i32* %13, align 4
  %108 = icmp eq i32 %107, 1
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = load i32, i32* @EIO, align 4
  store i32 %110, i32* %11, align 4
  br label %111

111:                                              ; preds = %109, %106
  br label %112

112:                                              ; preds = %111, %105
  %113 = load %struct.firewire_comm*, %struct.firewire_comm** %10, align 8
  %114 = call i32 @FW_GUNLOCK(%struct.firewire_comm* %113)
  %115 = load i32, i32* %11, align 4
  store i32 %115, i32* %4, align 4
  br label %220

116:                                              ; preds = %76
  %117 = load %struct.fw_xferq*, %struct.fw_xferq** %9, align 8
  %118 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %117, i32 0, i32 3
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %118, align 8
  %120 = icmp ne %struct.TYPE_7__* %119, null
  br i1 %120, label %121, label %217

121:                                              ; preds = %116
  %122 = load %struct.firewire_comm*, %struct.firewire_comm** %10, align 8
  %123 = call i32 @FW_GUNLOCK(%struct.firewire_comm* %122)
  %124 = load %struct.fw_xferq*, %struct.fw_xferq** %9, align 8
  %125 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %124, i32 0, i32 6
  %126 = load i32*, i32** %125, align 8
  %127 = load %struct.fw_xferq*, %struct.fw_xferq** %9, align 8
  %128 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %127, i32 0, i32 3
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.fw_xferq*, %struct.fw_xferq** %9, align 8
  %133 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = add nsw i64 %131, %134
  %136 = call i64 @fwdma_v_addr(i32* %126, i64 %135)
  %137 = inttoptr i64 %136 to %struct.fw_pkt*
  store %struct.fw_pkt* %137, %struct.fw_pkt** %14, align 8
  %138 = load %struct.firewire_comm*, %struct.firewire_comm** %10, align 8
  %139 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %138, i32 0, i32 1
  %140 = load i32 (%struct.firewire_comm*, i32)*, i32 (%struct.firewire_comm*, i32)** %139, align 8
  %141 = icmp ne i32 (%struct.firewire_comm*, i32)* %140, null
  br i1 %141, label %142, label %152

142:                                              ; preds = %121
  %143 = load %struct.firewire_comm*, %struct.firewire_comm** %10, align 8
  %144 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %143, i32 0, i32 1
  %145 = load i32 (%struct.firewire_comm*, i32)*, i32 (%struct.firewire_comm*, i32)** %144, align 8
  %146 = load %struct.firewire_comm*, %struct.firewire_comm** %10, align 8
  %147 = load %struct.fw_pkt*, %struct.fw_pkt** %14, align 8
  %148 = getelementptr inbounds %struct.fw_pkt, %struct.fw_pkt* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = call i32 %145(%struct.firewire_comm* %146, i32 %150)
  br label %152

152:                                              ; preds = %142, %121
  %153 = load %struct.fw_pkt*, %struct.fw_pkt** %14, align 8
  %154 = getelementptr inbounds %struct.fw_pkt, %struct.fw_pkt* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %152
  %160 = load i32, i32* @EIO, align 4
  store i32 %160, i32* %11, align 4
  %161 = load i32, i32* %11, align 4
  store i32 %161, i32* %4, align 4
  br label %220

162:                                              ; preds = %152
  %163 = load %struct.fw_pkt*, %struct.fw_pkt** %14, align 8
  %164 = ptrtoint %struct.fw_pkt* %163 to i32
  %165 = load %struct.fw_pkt*, %struct.fw_pkt** %14, align 8
  %166 = getelementptr inbounds %struct.fw_pkt, %struct.fw_pkt* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = add i64 %169, 4
  %171 = load %struct.uio*, %struct.uio** %6, align 8
  %172 = call i32 @uiomove(i32 %164, i64 %170, %struct.uio* %171)
  store i32 %172, i32* %11, align 4
  %173 = load %struct.fw_xferq*, %struct.fw_xferq** %9, align 8
  %174 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = add nsw i64 %175, 1
  store i64 %176, i64* %174, align 8
  %177 = load %struct.fw_xferq*, %struct.fw_xferq** %9, align 8
  %178 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.fw_xferq*, %struct.fw_xferq** %9, align 8
  %181 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = icmp sge i64 %179, %182
  br i1 %183, label %184, label %205

184:                                              ; preds = %162
  %185 = call i32 (...) @splfw()
  store i32 %185, i32* %12, align 4
  %186 = load %struct.fw_xferq*, %struct.fw_xferq** %9, align 8
  %187 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %186, i32 0, i32 5
  %188 = load %struct.fw_xferq*, %struct.fw_xferq** %9, align 8
  %189 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %188, i32 0, i32 3
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %189, align 8
  %191 = load i32, i32* @link, align 4
  %192 = call i32 @STAILQ_INSERT_TAIL(i32* %187, %struct.TYPE_7__* %190, i32 %191)
  %193 = load i32, i32* %12, align 4
  %194 = call i32 @splx(i32 %193)
  %195 = load %struct.firewire_comm*, %struct.firewire_comm** %10, align 8
  %196 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %195, i32 0, i32 0
  %197 = load i32 (%struct.firewire_comm*, i32)*, i32 (%struct.firewire_comm*, i32)** %196, align 8
  %198 = load %struct.firewire_comm*, %struct.firewire_comm** %10, align 8
  %199 = load %struct.fw_xferq*, %struct.fw_xferq** %9, align 8
  %200 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 8
  %202 = call i32 %197(%struct.firewire_comm* %198, i32 %201)
  %203 = load %struct.fw_xferq*, %struct.fw_xferq** %9, align 8
  %204 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %203, i32 0, i32 3
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %204, align 8
  br label %205

205:                                              ; preds = %184, %162
  %206 = load %struct.uio*, %struct.uio** %6, align 8
  %207 = getelementptr inbounds %struct.uio, %struct.uio* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load %struct.fw_xferq*, %struct.fw_xferq** %9, align 8
  %210 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %209, i32 0, i32 2
  %211 = load i64, i64* %210, align 8
  %212 = icmp sge i64 %208, %211
  br i1 %212, label %213, label %216

213:                                              ; preds = %205
  store i32 -1, i32* %13, align 4
  %214 = load %struct.firewire_comm*, %struct.firewire_comm** %10, align 8
  %215 = call i32 @FW_GLOCK(%struct.firewire_comm* %214)
  br label %50

216:                                              ; preds = %205
  br label %217

217:                                              ; preds = %216, %116
  br label %218

218:                                              ; preds = %217
  %219 = load i32, i32* %11, align 4
  store i32 %219, i32* %4, align 4
  br label %220

220:                                              ; preds = %218, %159, %112, %45, %35, %18
  %221 = load i32, i32* %4, align 4
  ret i32 %221
}

declare dso_local i64 @DEV_FWMEM(%struct.cdev*) #1

declare dso_local i32 @physio(%struct.cdev*, %struct.uio*, i32) #1

declare dso_local i32 @fw_read_async(%struct.fw_drv1*, %struct.uio*, i32) #1

declare dso_local i32 @FW_GLOCK(%struct.firewire_comm*) #1

declare dso_local %struct.TYPE_7__* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @splfw(...) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @splx(i32) #1

declare dso_local i32 @msleep(%struct.fw_xferq*, i32, i32, i8*, i32) #1

declare dso_local i32 @FW_GMTX(%struct.firewire_comm*) #1

declare dso_local i32 @FW_GUNLOCK(%struct.firewire_comm*) #1

declare dso_local i64 @fwdma_v_addr(i32*, i64) #1

declare dso_local i32 @uiomove(i32, i64, %struct.uio*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
