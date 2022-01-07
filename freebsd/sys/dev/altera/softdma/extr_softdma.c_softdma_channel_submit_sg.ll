; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/altera/softdma/extr_softdma.c_softdma_channel_submit_sg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/altera/softdma/extr_softdma.c_softdma_channel_submit_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdma_channel = type { i64 }
%struct.xdma_sglist = type { i64, i32, i32, i32, i32, i64 }
%struct.softdma_channel = type { i64, i32, i32, %struct.softdma_desc* }
%struct.softdma_desc = type { i32, i32, i64, i32, i32, i64, i64, i64, i32, i32 }
%struct.softdma_softc = type { i32 }

@XDMA_MEM_TO_DEV = common dso_local global i64 0, align 8
@CONTROL_GEN_SOP = common dso_local global i32 0, align 4
@CONTROL_GEN_EOP = common dso_local global i32 0, align 4
@CONTROL_OWN = common dso_local global i32 0, align 4
@A_ONCHIP_FIFO_MEM_CORE_STATUS_REG_INT_ENABLE = common dso_local global i32 0, align 4
@SOFTDMA_RX_EVENTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.xdma_channel*, %struct.xdma_sglist*, i32)* @softdma_channel_submit_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @softdma_channel_submit_sg(i32 %0, %struct.xdma_channel* %1, %struct.xdma_sglist* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.xdma_channel*, align 8
  %8 = alloca %struct.xdma_sglist*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.softdma_channel*, align 8
  %11 = alloca %struct.softdma_desc*, align 8
  %12 = alloca %struct.softdma_softc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.xdma_channel* %1, %struct.xdma_channel** %7, align 8
  store %struct.xdma_sglist* %2, %struct.xdma_sglist** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call %struct.softdma_softc* @device_get_softc(i32 %18)
  store %struct.softdma_softc* %19, %struct.softdma_softc** %12, align 8
  %20 = load %struct.xdma_channel*, %struct.xdma_channel** %7, align 8
  %21 = getelementptr inbounds %struct.xdma_channel, %struct.xdma_channel* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.softdma_channel*
  store %struct.softdma_channel* %23, %struct.softdma_channel** %10, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %17, align 4
  br label %24

24:                                               ; preds = %155, %4
  %25 = load i32, i32* %17, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %158

28:                                               ; preds = %24
  %29 = load %struct.xdma_sglist*, %struct.xdma_sglist** %8, align 8
  %30 = load i32, i32* %17, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.xdma_sglist, %struct.xdma_sglist* %29, i64 %31
  %33 = getelementptr inbounds %struct.xdma_sglist, %struct.xdma_sglist* %32, i32 0, i32 5
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %16, align 4
  %36 = load %struct.softdma_channel*, %struct.softdma_channel** %10, align 8
  %37 = getelementptr inbounds %struct.softdma_channel, %struct.softdma_channel* %36, i32 0, i32 3
  %38 = load %struct.softdma_desc*, %struct.softdma_desc** %37, align 8
  %39 = load %struct.softdma_channel*, %struct.softdma_channel** %10, align 8
  %40 = getelementptr inbounds %struct.softdma_channel, %struct.softdma_channel* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.softdma_desc, %struct.softdma_desc* %38, i64 %41
  store %struct.softdma_desc* %42, %struct.softdma_desc** %11, align 8
  %43 = load %struct.xdma_sglist*, %struct.xdma_sglist** %8, align 8
  %44 = load i32, i32* %17, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.xdma_sglist, %struct.xdma_sglist* %43, i64 %45
  %47 = getelementptr inbounds %struct.xdma_sglist, %struct.xdma_sglist* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.softdma_desc*, %struct.softdma_desc** %11, align 8
  %50 = getelementptr inbounds %struct.softdma_desc, %struct.softdma_desc* %49, i32 0, i32 9
  store i32 %48, i32* %50, align 4
  %51 = load %struct.xdma_sglist*, %struct.xdma_sglist** %8, align 8
  %52 = load i32, i32* %17, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.xdma_sglist, %struct.xdma_sglist* %51, i64 %53
  %55 = getelementptr inbounds %struct.xdma_sglist, %struct.xdma_sglist* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.softdma_desc*, %struct.softdma_desc** %11, align 8
  %58 = getelementptr inbounds %struct.softdma_desc, %struct.softdma_desc* %57, i32 0, i32 8
  store i32 %56, i32* %58, align 8
  %59 = load %struct.xdma_sglist*, %struct.xdma_sglist** %8, align 8
  %60 = load i32, i32* %17, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.xdma_sglist, %struct.xdma_sglist* %59, i64 %61
  %63 = getelementptr inbounds %struct.xdma_sglist, %struct.xdma_sglist* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @XDMA_MEM_TO_DEV, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %28
  %68 = load %struct.softdma_desc*, %struct.softdma_desc** %11, align 8
  %69 = getelementptr inbounds %struct.softdma_desc, %struct.softdma_desc* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  %70 = load %struct.softdma_desc*, %struct.softdma_desc** %11, align 8
  %71 = getelementptr inbounds %struct.softdma_desc, %struct.softdma_desc* %70, i32 0, i32 1
  store i32 0, i32* %71, align 4
  br label %77

72:                                               ; preds = %28
  %73 = load %struct.softdma_desc*, %struct.softdma_desc** %11, align 8
  %74 = getelementptr inbounds %struct.softdma_desc, %struct.softdma_desc* %73, i32 0, i32 0
  store i32 0, i32* %74, align 8
  %75 = load %struct.softdma_desc*, %struct.softdma_desc** %11, align 8
  %76 = getelementptr inbounds %struct.softdma_desc, %struct.softdma_desc* %75, i32 0, i32 1
  store i32 1, i32* %76, align 4
  br label %77

77:                                               ; preds = %72, %67
  %78 = load %struct.xdma_sglist*, %struct.xdma_sglist** %8, align 8
  %79 = load i32, i32* %17, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.xdma_sglist, %struct.xdma_sglist* %78, i64 %80
  %82 = getelementptr inbounds %struct.xdma_sglist, %struct.xdma_sglist* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.softdma_desc*, %struct.softdma_desc** %11, align 8
  %85 = getelementptr inbounds %struct.softdma_desc, %struct.softdma_desc* %84, i32 0, i32 2
  store i64 %83, i64* %85, align 8
  %86 = load %struct.xdma_sglist*, %struct.xdma_sglist** %8, align 8
  %87 = load i32, i32* %17, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.xdma_sglist, %struct.xdma_sglist* %86, i64 %88
  %90 = getelementptr inbounds %struct.xdma_sglist, %struct.xdma_sglist* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %14, align 4
  %93 = load i32, i32* %16, align 4
  %94 = load %struct.softdma_desc*, %struct.softdma_desc** %11, align 8
  %95 = getelementptr inbounds %struct.softdma_desc, %struct.softdma_desc* %94, i32 0, i32 3
  store i32 %93, i32* %95, align 8
  %96 = load %struct.softdma_desc*, %struct.softdma_desc** %11, align 8
  %97 = getelementptr inbounds %struct.softdma_desc, %struct.softdma_desc* %96, i32 0, i32 7
  store i64 0, i64* %97, align 8
  %98 = load %struct.softdma_desc*, %struct.softdma_desc** %11, align 8
  %99 = getelementptr inbounds %struct.softdma_desc, %struct.softdma_desc* %98, i32 0, i32 6
  store i64 0, i64* %99, align 8
  %100 = load %struct.softdma_desc*, %struct.softdma_desc** %11, align 8
  %101 = getelementptr inbounds %struct.softdma_desc, %struct.softdma_desc* %100, i32 0, i32 5
  store i64 0, i64* %101, align 8
  %102 = load %struct.softdma_desc*, %struct.softdma_desc** %11, align 8
  %103 = getelementptr inbounds %struct.softdma_desc, %struct.softdma_desc* %102, i32 0, i32 4
  store i32 0, i32* %103, align 4
  %104 = load %struct.xdma_sglist*, %struct.xdma_sglist** %8, align 8
  %105 = load i32, i32* %17, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.xdma_sglist, %struct.xdma_sglist* %104, i64 %106
  %108 = getelementptr inbounds %struct.xdma_sglist, %struct.xdma_sglist* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = icmp eq i32 %109, 1
  br i1 %110, label %111, label %117

111:                                              ; preds = %77
  %112 = load i32, i32* @CONTROL_GEN_SOP, align 4
  %113 = load %struct.softdma_desc*, %struct.softdma_desc** %11, align 8
  %114 = getelementptr inbounds %struct.softdma_desc, %struct.softdma_desc* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 4
  br label %117

117:                                              ; preds = %111, %77
  %118 = load %struct.xdma_sglist*, %struct.xdma_sglist** %8, align 8
  %119 = load i32, i32* %17, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.xdma_sglist, %struct.xdma_sglist* %118, i64 %120
  %122 = getelementptr inbounds %struct.xdma_sglist, %struct.xdma_sglist* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = icmp eq i32 %123, 1
  br i1 %124, label %125, label %131

125:                                              ; preds = %117
  %126 = load i32, i32* @CONTROL_GEN_EOP, align 4
  %127 = load %struct.softdma_desc*, %struct.softdma_desc** %11, align 8
  %128 = getelementptr inbounds %struct.softdma_desc, %struct.softdma_desc* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 4
  %130 = or i32 %129, %126
  store i32 %130, i32* %128, align 4
  br label %131

131:                                              ; preds = %125, %117
  %132 = load %struct.softdma_channel*, %struct.softdma_channel** %10, align 8
  %133 = getelementptr inbounds %struct.softdma_channel, %struct.softdma_channel* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %15, align 4
  %136 = load %struct.softdma_channel*, %struct.softdma_channel** %10, align 8
  %137 = load %struct.softdma_channel*, %struct.softdma_channel** %10, align 8
  %138 = getelementptr inbounds %struct.softdma_channel, %struct.softdma_channel* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = trunc i64 %139 to i32
  %141 = call i32 @softdma_next_desc(%struct.softdma_channel* %136, i32 %140)
  %142 = sext i32 %141 to i64
  %143 = load %struct.softdma_channel*, %struct.softdma_channel** %10, align 8
  %144 = getelementptr inbounds %struct.softdma_channel, %struct.softdma_channel* %143, i32 0, i32 0
  store i64 %142, i64* %144, align 8
  %145 = load %struct.softdma_channel*, %struct.softdma_channel** %10, align 8
  %146 = getelementptr inbounds %struct.softdma_channel, %struct.softdma_channel* %145, i32 0, i32 2
  %147 = call i32 @atomic_add_int(i32* %146, i32 1)
  %148 = load i32, i32* @CONTROL_OWN, align 4
  %149 = load %struct.softdma_desc*, %struct.softdma_desc** %11, align 8
  %150 = getelementptr inbounds %struct.softdma_desc, %struct.softdma_desc* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 4
  %152 = or i32 %151, %148
  store i32 %152, i32* %150, align 4
  %153 = load i32, i32* %13, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %13, align 4
  br label %155

155:                                              ; preds = %131
  %156 = load i32, i32* %17, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %17, align 4
  br label %24

158:                                              ; preds = %24
  %159 = load i32, i32* %13, align 4
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %158
  store i32 0, i32* %5, align 4
  br label %178

162:                                              ; preds = %158
  %163 = load i32, i32* %14, align 4
  %164 = sext i32 %163 to i64
  %165 = load i64, i64* @XDMA_MEM_TO_DEV, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %172

167:                                              ; preds = %162
  %168 = load %struct.softdma_channel*, %struct.softdma_channel** %10, align 8
  %169 = getelementptr inbounds %struct.softdma_channel, %struct.softdma_channel* %168, i32 0, i32 1
  store i32 1, i32* %169, align 8
  %170 = load %struct.softdma_channel*, %struct.softdma_channel** %10, align 8
  %171 = call i32 @wakeup(%struct.softdma_channel* %170)
  br label %177

172:                                              ; preds = %162
  %173 = load %struct.softdma_softc*, %struct.softdma_softc** %12, align 8
  %174 = load i32, i32* @A_ONCHIP_FIFO_MEM_CORE_STATUS_REG_INT_ENABLE, align 4
  %175 = load i32, i32* @SOFTDMA_RX_EVENTS, align 4
  %176 = call i32 @softdma_memc_write(%struct.softdma_softc* %173, i32 %174, i32 %175)
  br label %177

177:                                              ; preds = %172, %167
  store i32 0, i32* %5, align 4
  br label %178

178:                                              ; preds = %177, %161
  %179 = load i32, i32* %5, align 4
  ret i32 %179
}

declare dso_local %struct.softdma_softc* @device_get_softc(i32) #1

declare dso_local i32 @softdma_next_desc(%struct.softdma_channel*, i32) #1

declare dso_local i32 @atomic_add_int(i32*, i32) #1

declare dso_local i32 @wakeup(%struct.softdma_channel*) #1

declare dso_local i32 @softdma_memc_write(%struct.softdma_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
