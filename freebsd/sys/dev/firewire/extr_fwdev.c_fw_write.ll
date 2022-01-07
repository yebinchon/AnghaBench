; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwdev.c_fw_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwdev.c_fw_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.fw_drv1* }
%struct.fw_drv1 = type { %struct.fw_xferq*, %struct.firewire_comm* }
%struct.fw_xferq = type { i64, i64, i32, %struct.TYPE_7__*, i32, i32*, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.firewire_comm = type { i32 (%struct.firewire_comm*, i32)* }
%struct.uio = type { i32 }
%struct.fw_pkt = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64 }

@EIO = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@FWPRI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"fw_write\00", align 1
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.uio*, i32)* @fw_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fw_write(%struct.cdev* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.fw_drv1*, align 8
  %12 = alloca %struct.fw_pkt*, align 8
  %13 = alloca %struct.firewire_comm*, align 8
  %14 = alloca %struct.fw_xferq*, align 8
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store %struct.uio* %1, %struct.uio** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
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
  br label %173

23:                                               ; preds = %3
  %24 = load %struct.cdev*, %struct.cdev** %5, align 8
  %25 = getelementptr inbounds %struct.cdev, %struct.cdev* %24, i32 0, i32 0
  %26 = load %struct.fw_drv1*, %struct.fw_drv1** %25, align 8
  store %struct.fw_drv1* %26, %struct.fw_drv1** %11, align 8
  %27 = load %struct.fw_drv1*, %struct.fw_drv1** %11, align 8
  %28 = getelementptr inbounds %struct.fw_drv1, %struct.fw_drv1* %27, i32 0, i32 1
  %29 = load %struct.firewire_comm*, %struct.firewire_comm** %28, align 8
  store %struct.firewire_comm* %29, %struct.firewire_comm** %13, align 8
  %30 = load %struct.fw_drv1*, %struct.fw_drv1** %11, align 8
  %31 = getelementptr inbounds %struct.fw_drv1, %struct.fw_drv1* %30, i32 0, i32 0
  %32 = load %struct.fw_xferq*, %struct.fw_xferq** %31, align 8
  store %struct.fw_xferq* %32, %struct.fw_xferq** %14, align 8
  %33 = load %struct.fw_xferq*, %struct.fw_xferq** %14, align 8
  %34 = icmp eq %struct.fw_xferq* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %23
  %36 = load %struct.fw_drv1*, %struct.fw_drv1** %11, align 8
  %37 = load %struct.uio*, %struct.uio** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @fw_write_async(%struct.fw_drv1* %36, %struct.uio* %37, i32 %38)
  store i32 %39, i32* %4, align 4
  br label %173

40:                                               ; preds = %23
  %41 = load %struct.fw_xferq*, %struct.fw_xferq** %14, align 8
  %42 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %41, i32 0, i32 5
  %43 = load i32*, i32** %42, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* @EIO, align 4
  store i32 %46, i32* %4, align 4
  br label %173

47:                                               ; preds = %40
  %48 = load %struct.firewire_comm*, %struct.firewire_comm** %13, align 8
  %49 = call i32 @FW_GLOCK(%struct.firewire_comm* %48)
  br label %50

50:                                               ; preds = %164, %88, %47
  %51 = load %struct.fw_xferq*, %struct.fw_xferq** %14, align 8
  %52 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %51, i32 0, i32 3
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = icmp eq %struct.TYPE_7__* %53, null
  br i1 %54, label %55, label %92

55:                                               ; preds = %50
  %56 = load %struct.fw_xferq*, %struct.fw_xferq** %14, align 8
  %57 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %56, i32 0, i32 6
  %58 = call %struct.TYPE_7__* @STAILQ_FIRST(i32* %57)
  %59 = load %struct.fw_xferq*, %struct.fw_xferq** %14, align 8
  %60 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %59, i32 0, i32 3
  store %struct.TYPE_7__* %58, %struct.TYPE_7__** %60, align 8
  %61 = load %struct.fw_xferq*, %struct.fw_xferq** %14, align 8
  %62 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %61, i32 0, i32 3
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = icmp ne %struct.TYPE_7__* %63, null
  br i1 %64, label %65, label %75

65:                                               ; preds = %55
  %66 = call i32 (...) @splfw()
  store i32 %66, i32* %9, align 4
  %67 = load %struct.fw_xferq*, %struct.fw_xferq** %14, align 8
  %68 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %67, i32 0, i32 6
  %69 = load i32, i32* @link, align 4
  %70 = call i32 @STAILQ_REMOVE_HEAD(i32* %68, i32 %69)
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @splx(i32 %71)
  %73 = load %struct.fw_xferq*, %struct.fw_xferq** %14, align 8
  %74 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %73, i32 0, i32 0
  store i64 0, i64* %74, align 8
  br label %91

75:                                               ; preds = %55
  %76 = load i32, i32* %10, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %75
  store i32 1, i32* %10, align 4
  %79 = load %struct.fw_xferq*, %struct.fw_xferq** %14, align 8
  %80 = load %struct.firewire_comm*, %struct.firewire_comm** %13, align 8
  %81 = call i32 @FW_GMTX(%struct.firewire_comm* %80)
  %82 = load i32, i32* @FWPRI, align 4
  %83 = load i32, i32* @hz, align 4
  %84 = call i32 @msleep(%struct.fw_xferq* %79, i32 %81, i32 %82, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %83)
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %78
  br label %169

88:                                               ; preds = %78
  br label %50

89:                                               ; preds = %75
  %90 = load i32, i32* @EIO, align 4
  store i32 %90, i32* %8, align 4
  br label %169

91:                                               ; preds = %65
  br label %92

92:                                               ; preds = %91, %50
  %93 = load %struct.firewire_comm*, %struct.firewire_comm** %13, align 8
  %94 = call i32 @FW_GUNLOCK(%struct.firewire_comm* %93)
  %95 = load %struct.fw_xferq*, %struct.fw_xferq** %14, align 8
  %96 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %95, i32 0, i32 5
  %97 = load i32*, i32** %96, align 8
  %98 = load %struct.fw_xferq*, %struct.fw_xferq** %14, align 8
  %99 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %98, i32 0, i32 3
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.fw_xferq*, %struct.fw_xferq** %14, align 8
  %104 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %102, %105
  %107 = call i64 @fwdma_v_addr(i32* %97, i64 %106)
  %108 = inttoptr i64 %107 to %struct.fw_pkt*
  store %struct.fw_pkt* %108, %struct.fw_pkt** %12, align 8
  %109 = load %struct.fw_pkt*, %struct.fw_pkt** %12, align 8
  %110 = ptrtoint %struct.fw_pkt* %109 to i32
  %111 = load %struct.uio*, %struct.uio** %6, align 8
  %112 = call i32 @uiomove(i32 %110, i32 4, %struct.uio* %111)
  store i32 %112, i32* %8, align 4
  %113 = load %struct.fw_pkt*, %struct.fw_pkt** %12, align 8
  %114 = getelementptr inbounds %struct.fw_pkt, %struct.fw_pkt* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = trunc i64 %117 to i32
  %119 = load %struct.fw_pkt*, %struct.fw_pkt** %12, align 8
  %120 = getelementptr inbounds %struct.fw_pkt, %struct.fw_pkt* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.uio*, %struct.uio** %6, align 8
  %125 = call i32 @uiomove(i32 %118, i32 %123, %struct.uio* %124)
  store i32 %125, i32* %8, align 4
  %126 = load %struct.fw_xferq*, %struct.fw_xferq** %14, align 8
  %127 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = add nsw i64 %128, 1
  store i64 %129, i64* %127, align 8
  %130 = load %struct.fw_xferq*, %struct.fw_xferq** %14, align 8
  %131 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.fw_xferq*, %struct.fw_xferq** %14, align 8
  %134 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = icmp sge i64 %132, %135
  br i1 %136, label %137, label %158

137:                                              ; preds = %92
  %138 = call i32 (...) @splfw()
  store i32 %138, i32* %9, align 4
  %139 = load %struct.fw_xferq*, %struct.fw_xferq** %14, align 8
  %140 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %139, i32 0, i32 4
  %141 = load %struct.fw_xferq*, %struct.fw_xferq** %14, align 8
  %142 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %141, i32 0, i32 3
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %142, align 8
  %144 = load i32, i32* @link, align 4
  %145 = call i32 @STAILQ_INSERT_TAIL(i32* %140, %struct.TYPE_7__* %143, i32 %144)
  %146 = load i32, i32* %9, align 4
  %147 = call i32 @splx(i32 %146)
  %148 = load %struct.fw_xferq*, %struct.fw_xferq** %14, align 8
  %149 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %148, i32 0, i32 3
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %149, align 8
  %150 = load %struct.firewire_comm*, %struct.firewire_comm** %13, align 8
  %151 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %150, i32 0, i32 0
  %152 = load i32 (%struct.firewire_comm*, i32)*, i32 (%struct.firewire_comm*, i32)** %151, align 8
  %153 = load %struct.firewire_comm*, %struct.firewire_comm** %13, align 8
  %154 = load %struct.fw_xferq*, %struct.fw_xferq** %14, align 8
  %155 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = call i32 %152(%struct.firewire_comm* %153, i32 %156)
  store i32 %157, i32* %8, align 4
  br label %158

158:                                              ; preds = %137, %92
  %159 = load %struct.uio*, %struct.uio** %6, align 8
  %160 = getelementptr inbounds %struct.uio, %struct.uio* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = sext i32 %161 to i64
  %163 = icmp uge i64 %162, 4
  br i1 %163, label %164, label %167

164:                                              ; preds = %158
  store i32 0, i32* %10, align 4
  %165 = load %struct.firewire_comm*, %struct.firewire_comm** %13, align 8
  %166 = call i32 @FW_GLOCK(%struct.firewire_comm* %165)
  br label %50

167:                                              ; preds = %158
  %168 = load i32, i32* %8, align 4
  store i32 %168, i32* %4, align 4
  br label %173

169:                                              ; preds = %89, %87
  %170 = load %struct.firewire_comm*, %struct.firewire_comm** %13, align 8
  %171 = call i32 @FW_GUNLOCK(%struct.firewire_comm* %170)
  %172 = load i32, i32* %8, align 4
  store i32 %172, i32* %4, align 4
  br label %173

173:                                              ; preds = %169, %167, %45, %35, %18
  %174 = load i32, i32* %4, align 4
  ret i32 %174
}

declare dso_local i64 @DEV_FWMEM(%struct.cdev*) #1

declare dso_local i32 @physio(%struct.cdev*, %struct.uio*, i32) #1

declare dso_local i32 @fw_write_async(%struct.fw_drv1*, %struct.uio*, i32) #1

declare dso_local i32 @FW_GLOCK(%struct.firewire_comm*) #1

declare dso_local %struct.TYPE_7__* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @splfw(...) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @splx(i32) #1

declare dso_local i32 @msleep(%struct.fw_xferq*, i32, i32, i8*, i32) #1

declare dso_local i32 @FW_GMTX(%struct.firewire_comm*) #1

declare dso_local i32 @FW_GUNLOCK(%struct.firewire_comm*) #1

declare dso_local i64 @fwdma_v_addr(i32*, i64) #1

declare dso_local i32 @uiomove(i32, i32, %struct.uio*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
