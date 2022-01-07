; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_mss.c_opti_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_mss.c_opti_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mss_info = type { i32, i32, i32, i32, i32, i32, i32, i8*, i8* }

@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"opti_init: invalid MSS base address!\0A\00", align 1
@BD_F_924PNP = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_DRQ = common dso_local global i32 0, align 4
@DV_F_DUAL_DMA = common dso_local global i32 0, align 4
@DV_F_DRQ_MASK = common dso_local global i32 0, align 4
@DV_F_TRUE_MSS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.mss_info*)* @opti_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opti_init(i32 %0, %struct.mss_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.mss_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.mss_info* %1, %struct.mss_info** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @device_get_flags(i32 %10)
  store i32 %11, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %12 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %13 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %12, i32 0, i32 8
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %41, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @SYS_RES_IOPORT, align 4
  %19 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %20 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %23 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @bus_set_resource(i32 %17, i32 %18, i32 %21, i32 %24, i32 9)
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @SYS_RES_IOPORT, align 4
  %28 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %29 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %28, i32 0, i32 0
  %30 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %31 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %34 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 9
  %37 = load i32, i32* @RF_ACTIVE, align 4
  %38 = call i8* @bus_alloc_resource(i32 %26, i32 %27, i32* %29, i32 %32, i32 %36, i32 9, i32 %37)
  %39 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %40 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %39, i32 0, i32 8
  store i8* %38, i8** %40, align 8
  br label %41

41:                                               ; preds = %16, %2
  %42 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %43 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %42, i32 0, i32 8
  %44 = load i8*, i8** %43, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* @ENXIO, align 4
  store i32 %47, i32* %3, align 4
  br label %171

48:                                               ; preds = %41
  %49 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %50 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %49, i32 0, i32 7
  %51 = load i8*, i8** %50, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %62, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @SYS_RES_IOPORT, align 4
  %56 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %57 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %56, i32 0, i32 2
  %58 = load i32, i32* @RF_ACTIVE, align 4
  %59 = call i8* @bus_alloc_resource_anywhere(i32 %54, i32 %55, i32* %57, i32 8, i32 %58)
  %60 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %61 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %60, i32 0, i32 7
  store i8* %59, i8** %61, align 8
  br label %62

62:                                               ; preds = %53, %48
  %63 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %64 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %63, i32 0, i32 7
  %65 = load i8*, i8** %64, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %76, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @SYS_RES_IOPORT, align 4
  %70 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %71 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %70, i32 0, i32 2
  %72 = load i32, i32* @RF_ACTIVE, align 4
  %73 = call i8* @bus_alloc_resource(i32 %68, i32 %69, i32* %71, i32 1328, i32 1335, i32 8, i32 %72)
  %74 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %75 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %74, i32 0, i32 7
  store i8* %73, i8** %75, align 8
  br label %76

76:                                               ; preds = %67, %62
  %77 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %78 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %77, i32 0, i32 7
  %79 = load i8*, i8** %78, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %83, label %81

81:                                               ; preds = %76
  %82 = load i32, i32* @ENXIO, align 4
  store i32 %82, i32* %3, align 4
  br label %171

83:                                               ; preds = %76
  %84 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %85 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %84, i32 0, i32 7
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @rman_get_start(i8* %86)
  switch i32 %87, label %92 [
    i32 1328, label %88
    i32 3712, label %89
    i32 3904, label %90
    i32 1540, label %91
  ]

88:                                               ; preds = %83
  store i32 0, i32* %7, align 4
  br label %95

89:                                               ; preds = %83
  store i32 16, i32* %7, align 4
  br label %95

90:                                               ; preds = %83
  store i32 32, i32* %7, align 4
  br label %95

91:                                               ; preds = %83
  store i32 48, i32* %7, align 4
  br label %95

92:                                               ; preds = %83
  %93 = call i32 @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %94 = load i32, i32* @ENXIO, align 4
  store i32 %94, i32* %3, align 4
  br label %171

95:                                               ; preds = %91, %90, %89, %88
  %96 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %97 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  switch i32 %98, label %127 [
    i32 129, label %99
    i32 128, label %114
  ]

99:                                               ; preds = %95
  %100 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %101 = load i32, i32* %7, align 4
  %102 = or i32 128, %101
  %103 = call i32 @opti_write(%struct.mss_info* %100, i32 1, i32 %102)
  %104 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %105 = call i32 @opti_write(%struct.mss_info* %104, i32 2, i32 0)
  %106 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %107 = call i32 @opti_write(%struct.mss_info* %106, i32 3, i32 240)
  %108 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %109 = call i32 @opti_write(%struct.mss_info* %108, i32 4, i32 240)
  %110 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %111 = call i32 @opti_write(%struct.mss_info* %110, i32 5, i32 0)
  %112 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %113 = call i32 @opti_write(%struct.mss_info* %112, i32 6, i32 2)
  br label %127

114:                                              ; preds = %95
  %115 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %116 = load i32, i32* %7, align 4
  %117 = or i32 0, %116
  %118 = call i32 @opti_write(%struct.mss_info* %115, i32 1, i32 %117)
  %119 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %120 = call i32 @opti_write(%struct.mss_info* %119, i32 3, i32 0)
  %121 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %122 = call i32 @opti_write(%struct.mss_info* %121, i32 4, i32 82)
  %123 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %124 = call i32 @opti_write(%struct.mss_info* %123, i32 5, i32 60)
  %125 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %126 = call i32 @opti_write(%struct.mss_info* %125, i32 6, i32 2)
  br label %127

127:                                              ; preds = %95, %114, %99
  %128 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %129 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @BD_F_924PNP, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %164

134:                                              ; preds = %127
  %135 = load i32, i32* %4, align 4
  %136 = call i32 @isa_get_irq(i32 %135)
  store i32 %136, i32* %8, align 4
  %137 = load i32, i32* %4, align 4
  %138 = call i32 @isa_get_drq(i32 %137)
  store i32 %138, i32* %9, align 4
  %139 = load i32, i32* %4, align 4
  %140 = load i32, i32* @SYS_RES_IRQ, align 4
  %141 = load i32, i32* %8, align 4
  %142 = call i32 @bus_set_resource(i32 %139, i32 %140, i32 0, i32 %141, i32 1)
  %143 = load i32, i32* %4, align 4
  %144 = load i32, i32* @SYS_RES_DRQ, align 4
  %145 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %146 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %9, align 4
  %149 = call i32 @bus_set_resource(i32 %143, i32 %144, i32 %147, i32 %148, i32 1)
  %150 = load i32, i32* %6, align 4
  %151 = load i32, i32* @DV_F_DUAL_DMA, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %163

154:                                              ; preds = %134
  %155 = load i32, i32* %4, align 4
  %156 = load i32, i32* @SYS_RES_DRQ, align 4
  %157 = load i32, i32* %6, align 4
  %158 = load i32, i32* @DV_F_DRQ_MASK, align 4
  %159 = and i32 %157, %158
  %160 = call i32 @bus_set_resource(i32 %155, i32 %156, i32 1, i32 %159, i32 1)
  %161 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %162 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %161, i32 0, i32 6
  store i32 1, i32* %162, align 8
  br label %163

163:                                              ; preds = %154, %134
  br label %164

164:                                              ; preds = %163, %127
  %165 = load i32, i32* %4, align 4
  %166 = load i32, i32* %4, align 4
  %167 = call i32 @device_get_flags(i32 %166)
  %168 = load i32, i32* @DV_F_TRUE_MSS, align 4
  %169 = or i32 %167, %168
  %170 = call i32 @device_set_flags(i32 %165, i32 %169)
  store i32 0, i32* %3, align 4
  br label %171

171:                                              ; preds = %164, %92, %81, %46
  %172 = load i32, i32* %3, align 4
  ret i32 %172
}

declare dso_local i32 @device_get_flags(i32) #1

declare dso_local i32 @bus_set_resource(i32, i32, i32, i32, i32) #1

declare dso_local i8* @bus_alloc_resource(i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i8* @bus_alloc_resource_anywhere(i32, i32, i32*, i32, i32) #1

declare dso_local i32 @rman_get_start(i8*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @opti_write(%struct.mss_info*, i32, i32) #1

declare dso_local i32 @isa_get_irq(i32) #1

declare dso_local i32 @isa_get_drq(i32) #1

declare dso_local i32 @device_set_flags(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
