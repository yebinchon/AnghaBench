; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwdev.c_fwdev_allocbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwdev.c_fwdev_allocbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firewire_comm = type { i32 }
%struct.fw_xferq = type { i32, i32, i32, i32, %struct.TYPE_4__*, i32, i32*, i32, i32, i64, i32* }
%struct.TYPE_4__ = type { i32, i32* }
%struct.fw_bufspec = type { i32, i32, i32 }

@FWXFERQ_RUNNING = common dso_local global i32 0, align 4
@FWXFERQ_EXTBUF = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@M_FW = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@BUS_DMA_WAITOK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@FWXFERQ_MODEMASK = common dso_local global i32 0, align 4
@FWXFERQ_STREAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.firewire_comm*, %struct.fw_xferq*, %struct.fw_bufspec*)* @fwdev_allocbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fwdev_allocbuf(%struct.firewire_comm* %0, %struct.fw_xferq* %1, %struct.fw_bufspec* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.firewire_comm*, align 8
  %6 = alloca %struct.fw_xferq*, align 8
  %7 = alloca %struct.fw_bufspec*, align 8
  %8 = alloca i32, align 4
  store %struct.firewire_comm* %0, %struct.firewire_comm** %5, align 8
  store %struct.fw_xferq* %1, %struct.fw_xferq** %6, align 8
  store %struct.fw_bufspec* %2, %struct.fw_bufspec** %7, align 8
  %9 = load %struct.fw_xferq*, %struct.fw_xferq** %6, align 8
  %10 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @FWXFERQ_RUNNING, align 4
  %13 = load i32, i32* @FWXFERQ_EXTBUF, align 4
  %14 = or i32 %12, %13
  %15 = and i32 %11, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @EBUSY, align 4
  store i32 %18, i32* %4, align 4
  br label %152

19:                                               ; preds = %3
  %20 = load %struct.fw_bufspec*, %struct.fw_bufspec** %7, align 8
  %21 = getelementptr inbounds %struct.fw_bufspec, %struct.fw_bufspec* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 4, %23
  %25 = trunc i64 %24 to i32
  %26 = load i32, i32* @M_FW, align 4
  %27 = load i32, i32* @M_WAITOK, align 4
  %28 = call %struct.TYPE_4__* @malloc(i32 %25, i32 %26, i32 %27)
  %29 = load %struct.fw_xferq*, %struct.fw_xferq** %6, align 8
  %30 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %29, i32 0, i32 4
  store %struct.TYPE_4__* %28, %struct.TYPE_4__** %30, align 8
  %31 = load %struct.fw_bufspec*, %struct.fw_bufspec** %7, align 8
  %32 = getelementptr inbounds %struct.fw_bufspec, %struct.fw_bufspec* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @roundup2(i32 %33, i32 4)
  %35 = load %struct.fw_bufspec*, %struct.fw_bufspec** %7, align 8
  %36 = getelementptr inbounds %struct.fw_bufspec, %struct.fw_bufspec* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.firewire_comm*, %struct.firewire_comm** %5, align 8
  %38 = load %struct.fw_bufspec*, %struct.fw_bufspec** %7, align 8
  %39 = getelementptr inbounds %struct.fw_bufspec, %struct.fw_bufspec* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.fw_bufspec*, %struct.fw_bufspec** %7, align 8
  %42 = getelementptr inbounds %struct.fw_bufspec, %struct.fw_bufspec* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.fw_bufspec*, %struct.fw_bufspec** %7, align 8
  %45 = getelementptr inbounds %struct.fw_bufspec, %struct.fw_bufspec* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %43, %46
  %48 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %49 = call i32* @fwdma_malloc_multiseg(%struct.firewire_comm* %37, i32 4, i32 %40, i32 %47, i32 %48)
  %50 = load %struct.fw_xferq*, %struct.fw_xferq** %6, align 8
  %51 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %50, i32 0, i32 10
  store i32* %49, i32** %51, align 8
  %52 = load %struct.fw_xferq*, %struct.fw_xferq** %6, align 8
  %53 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %52, i32 0, i32 10
  %54 = load i32*, i32** %53, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %65

56:                                               ; preds = %19
  %57 = load %struct.fw_xferq*, %struct.fw_xferq** %6, align 8
  %58 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %57, i32 0, i32 4
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = load i32, i32* @M_FW, align 4
  %61 = call i32 @free(%struct.TYPE_4__* %59, i32 %60)
  %62 = load %struct.fw_xferq*, %struct.fw_xferq** %6, align 8
  %63 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %62, i32 0, i32 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %63, align 8
  %64 = load i32, i32* @ENOMEM, align 4
  store i32 %64, i32* %4, align 4
  br label %152

65:                                               ; preds = %19
  %66 = load %struct.fw_bufspec*, %struct.fw_bufspec** %7, align 8
  %67 = getelementptr inbounds %struct.fw_bufspec, %struct.fw_bufspec* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.fw_xferq*, %struct.fw_xferq** %6, align 8
  %70 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load %struct.fw_bufspec*, %struct.fw_bufspec** %7, align 8
  %72 = getelementptr inbounds %struct.fw_bufspec, %struct.fw_bufspec* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.fw_xferq*, %struct.fw_xferq** %6, align 8
  %75 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  %76 = load %struct.fw_bufspec*, %struct.fw_bufspec** %7, align 8
  %77 = getelementptr inbounds %struct.fw_bufspec, %struct.fw_bufspec* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 3
  %80 = and i32 %79, -4
  %81 = load %struct.fw_xferq*, %struct.fw_xferq** %6, align 8
  %82 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 4
  %83 = load %struct.fw_xferq*, %struct.fw_xferq** %6, align 8
  %84 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %83, i32 0, i32 9
  store i64 0, i64* %84, align 8
  %85 = load %struct.fw_xferq*, %struct.fw_xferq** %6, align 8
  %86 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %85, i32 0, i32 8
  %87 = call i32 @STAILQ_INIT(i32* %86)
  %88 = load %struct.fw_xferq*, %struct.fw_xferq** %6, align 8
  %89 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %88, i32 0, i32 5
  %90 = call i32 @STAILQ_INIT(i32* %89)
  %91 = load %struct.fw_xferq*, %struct.fw_xferq** %6, align 8
  %92 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %91, i32 0, i32 7
  %93 = call i32 @STAILQ_INIT(i32* %92)
  %94 = load %struct.fw_xferq*, %struct.fw_xferq** %6, align 8
  %95 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %94, i32 0, i32 6
  store i32* null, i32** %95, align 8
  store i32 0, i32* %8, align 4
  br label %96

96:                                               ; preds = %132, %65
  %97 = load i32, i32* %8, align 4
  %98 = load %struct.fw_xferq*, %struct.fw_xferq** %6, align 8
  %99 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp slt i32 %97, %100
  br i1 %101, label %102, label %135

102:                                              ; preds = %96
  %103 = load i32, i32* %8, align 4
  %104 = load %struct.fw_xferq*, %struct.fw_xferq** %6, align 8
  %105 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = mul nsw i32 %103, %106
  %108 = load %struct.fw_xferq*, %struct.fw_xferq** %6, align 8
  %109 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %108, i32 0, i32 4
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  store i32 %107, i32* %114, align 8
  %115 = load %struct.fw_xferq*, %struct.fw_xferq** %6, align 8
  %116 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %115, i32 0, i32 4
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 1
  store i32* null, i32** %121, align 8
  %122 = load %struct.fw_xferq*, %struct.fw_xferq** %6, align 8
  %123 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %122, i32 0, i32 5
  %124 = load %struct.fw_xferq*, %struct.fw_xferq** %6, align 8
  %125 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %124, i32 0, i32 4
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = load i32, i32* %8, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i64 %128
  %130 = load i32, i32* @link, align 4
  %131 = call i32 @STAILQ_INSERT_TAIL(i32* %123, %struct.TYPE_4__* %129, i32 %130)
  br label %132

132:                                              ; preds = %102
  %133 = load i32, i32* %8, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %8, align 4
  br label %96

135:                                              ; preds = %96
  %136 = load i32, i32* @FWXFERQ_MODEMASK, align 4
  %137 = xor i32 %136, -1
  %138 = load %struct.fw_xferq*, %struct.fw_xferq** %6, align 8
  %139 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = and i32 %140, %137
  store i32 %141, i32* %139, align 8
  %142 = load i32, i32* @FWXFERQ_STREAM, align 4
  %143 = load %struct.fw_xferq*, %struct.fw_xferq** %6, align 8
  %144 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = or i32 %145, %142
  store i32 %146, i32* %144, align 8
  %147 = load i32, i32* @FWXFERQ_EXTBUF, align 4
  %148 = load %struct.fw_xferq*, %struct.fw_xferq** %6, align 8
  %149 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = or i32 %150, %147
  store i32 %151, i32* %149, align 8
  store i32 0, i32* %4, align 4
  br label %152

152:                                              ; preds = %135, %56, %17
  %153 = load i32, i32* %4, align 4
  ret i32 %153
}

declare dso_local %struct.TYPE_4__* @malloc(i32, i32, i32) #1

declare dso_local i32 @roundup2(i32, i32) #1

declare dso_local i32* @fwdma_malloc_multiseg(%struct.firewire_comm*, i32, i32, i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
