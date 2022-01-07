; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_mss.c_mss_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_mss.c_mss_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mss_info = type { i32, i32, i64, i8*, i64, i64 }

@ENXIO = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"mss_probe: no address given, try 0x%x\0A\00", align 1
@DV_F_TRUE_MSS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"MSS\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"I/O addr inactive (%x), try pseudo_mss\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"No MSS signature detected on port 0x%jx (0x%x)\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"MSS: Bad IRQ %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"MSS: Bad DMA %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"MSS: Can't use DMA0 with a 8 bit card/slot\0A\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"MSS: Can't use IRQ%d with a 8 bit card/slot\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mss_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mss_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mss_info*, align 8
  store i32 %0, i32* %3, align 4
  %12 = load i32, i32* @ENXIO, align 4
  store i32 %12, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i64 @isa_get_logicalid(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @ENXIO, align 4
  store i32 %17, i32* %2, align 4
  br label %176

18:                                               ; preds = %1
  %19 = load i32, i32* @M_DEVBUF, align 4
  %20 = load i32, i32* @M_NOWAIT, align 4
  %21 = load i32, i32* @M_ZERO, align 4
  %22 = or i32 %20, %21
  %23 = call i64 @malloc(i32 40, i32 %19, i32 %22)
  %24 = inttoptr i64 %23 to %struct.mss_info*
  store %struct.mss_info* %24, %struct.mss_info** %11, align 8
  %25 = load %struct.mss_info*, %struct.mss_info** %11, align 8
  %26 = icmp ne %struct.mss_info* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %18
  %28 = load i32, i32* @ENXIO, align 4
  store i32 %28, i32* %2, align 4
  br label %176

29:                                               ; preds = %18
  %30 = load %struct.mss_info*, %struct.mss_info** %11, align 8
  %31 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %30, i32 0, i32 2
  store i64 0, i64* %31, align 8
  %32 = load %struct.mss_info*, %struct.mss_info** %11, align 8
  %33 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %32, i32 0, i32 0
  store i32 -1, i32* %33, align 8
  %34 = load %struct.mss_info*, %struct.mss_info** %11, align 8
  %35 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %34, i32 0, i32 5
  store i64 0, i64* %35, align 8
  %36 = load %struct.mss_info*, %struct.mss_info** %11, align 8
  %37 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %36, i32 0, i32 4
  store i64 0, i64* %37, align 8
  %38 = load %struct.mss_info*, %struct.mss_info** %11, align 8
  %39 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %38, i32 0, i32 1
  store i32 -1, i32* %39, align 4
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @SYS_RES_IOPORT, align 4
  %42 = load %struct.mss_info*, %struct.mss_info** %11, align 8
  %43 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %42, i32 0, i32 2
  %44 = load i32, i32* @RF_ACTIVE, align 4
  %45 = call i8* @bus_alloc_resource_anywhere(i32 %40, i32 %41, i64* %43, i32 8, i32 %44)
  %46 = load %struct.mss_info*, %struct.mss_info** %11, align 8
  %47 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %46, i32 0, i32 3
  store i8* %45, i8** %47, align 8
  %48 = load %struct.mss_info*, %struct.mss_info** %11, align 8
  %49 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %48, i32 0, i32 3
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %71, label %52

52:                                               ; preds = %29
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 1328)
  %54 = call i32 @BVDDB(i32 %53)
  %55 = load %struct.mss_info*, %struct.mss_info** %11, align 8
  %56 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %55, i32 0, i32 2
  store i64 0, i64* %56, align 8
  store i32 1, i32* %10, align 4
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* @SYS_RES_IOPORT, align 4
  %59 = load %struct.mss_info*, %struct.mss_info** %11, align 8
  %60 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @bus_set_resource(i32 %57, i32 %58, i64 %61, i32 1328, i32 8)
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* @SYS_RES_IOPORT, align 4
  %65 = load %struct.mss_info*, %struct.mss_info** %11, align 8
  %66 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %65, i32 0, i32 2
  %67 = load i32, i32* @RF_ACTIVE, align 4
  %68 = call i8* @bus_alloc_resource_anywhere(i32 %63, i32 %64, i64* %66, i32 8, i32 %67)
  %69 = load %struct.mss_info*, %struct.mss_info** %11, align 8
  %70 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %69, i32 0, i32 3
  store i8* %68, i8** %70, align 8
  br label %71

71:                                               ; preds = %52, %29
  %72 = load %struct.mss_info*, %struct.mss_info** %11, align 8
  %73 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %72, i32 0, i32 3
  %74 = load i8*, i8** %73, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %71
  br label %171

77:                                               ; preds = %71
  %78 = load i32, i32* %3, align 4
  %79 = call i32 @device_get_flags(i32 %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %3, align 4
  %81 = call i32 @isa_get_irq(i32 %80)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %3, align 4
  %83 = call i32 @isa_get_drq(i32 %82)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %3, align 4
  %85 = call i32 @device_get_flags(i32 %84)
  %86 = load i32, i32* @DV_F_TRUE_MSS, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %77
  br label %167

90:                                               ; preds = %77
  %91 = load i32, i32* %3, align 4
  %92 = call i32 @device_set_desc(i32 %91, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %93 = load %struct.mss_info*, %struct.mss_info** %11, align 8
  %94 = call i32 @io_rd(%struct.mss_info* %93, i32 3)
  store i32 %94, i32* %4, align 4
  store i32 %94, i32* %5, align 4
  %95 = load i32, i32* %4, align 4
  %96 = icmp eq i32 %95, 255
  br i1 %96, label %97, label %107

97:                                               ; preds = %90
  %98 = load i32, i32* %4, align 4
  %99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %98)
  %100 = call i32 @BVDDB(i32 %99)
  %101 = load i32, i32* %3, align 4
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* @DV_F_TRUE_MSS, align 4
  %104 = xor i32 %103, -1
  %105 = and i32 %102, %104
  %106 = call i32 @device_set_flags(i32 %101, i32 %105)
  br label %167

107:                                              ; preds = %90
  %108 = load i32, i32* %4, align 4
  %109 = and i32 %108, 63
  store i32 %109, i32* %4, align 4
  %110 = load i32, i32* %4, align 4
  %111 = icmp eq i32 %110, 4
  br i1 %111, label %129, label %112

112:                                              ; preds = %107
  %113 = load i32, i32* %4, align 4
  %114 = icmp eq i32 %113, 15
  br i1 %114, label %129, label %115

115:                                              ; preds = %112
  %116 = load i32, i32* %4, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %129, label %118

118:                                              ; preds = %115
  %119 = load i32, i32* %4, align 4
  %120 = icmp eq i32 %119, 5
  br i1 %120, label %129, label %121

121:                                              ; preds = %118
  %122 = load %struct.mss_info*, %struct.mss_info** %11, align 8
  %123 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %122, i32 0, i32 3
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 @rman_get_start(i8* %124)
  %126 = load i32, i32* %5, align 4
  %127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %125, i32 %126)
  %128 = call i32 @BVDDB(i32 %127)
  br label %171

129:                                              ; preds = %118, %115, %112, %107
  %130 = load i32, i32* %7, align 4
  %131 = icmp sgt i32 %130, 11
  br i1 %131, label %132, label %135

132:                                              ; preds = %129
  %133 = load i32, i32* %7, align 4
  %134 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %133)
  br label %171

135:                                              ; preds = %129
  %136 = load i32, i32* %8, align 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %147, label %138

138:                                              ; preds = %135
  %139 = load i32, i32* %8, align 4
  %140 = icmp eq i32 %139, 1
  br i1 %140, label %147, label %141

141:                                              ; preds = %138
  %142 = load i32, i32* %8, align 4
  %143 = icmp eq i32 %142, 3
  br i1 %143, label %147, label %144

144:                                              ; preds = %141
  %145 = load i32, i32* %8, align 4
  %146 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %145)
  br label %171

147:                                              ; preds = %141, %138, %135
  %148 = load i32, i32* %5, align 4
  %149 = and i32 %148, 128
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %166

151:                                              ; preds = %147
  %152 = load i32, i32* %8, align 4
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %151
  %155 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  br label %171

156:                                              ; preds = %151
  %157 = load i32, i32* %7, align 4
  %158 = icmp eq i32 %157, 7
  br i1 %158, label %165, label %159

159:                                              ; preds = %156
  %160 = load i32, i32* %7, align 4
  %161 = icmp eq i32 %160, 9
  br i1 %161, label %165, label %162

162:                                              ; preds = %159
  %163 = load i32, i32* %7, align 4
  %164 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i32 %163)
  br label %171

165:                                              ; preds = %159, %156
  br label %166

166:                                              ; preds = %165, %147
  br label %167

167:                                              ; preds = %166, %97, %89
  %168 = load i32, i32* %3, align 4
  %169 = load %struct.mss_info*, %struct.mss_info** %11, align 8
  %170 = call i32 @mss_detect(i32 %168, %struct.mss_info* %169)
  store i32 %170, i32* %9, align 4
  br label %171

171:                                              ; preds = %167, %162, %154, %144, %132, %121, %76
  %172 = load %struct.mss_info*, %struct.mss_info** %11, align 8
  %173 = load i32, i32* %3, align 4
  %174 = call i32 @mss_release_resources(%struct.mss_info* %172, i32 %173)
  %175 = load i32, i32* %9, align 4
  store i32 %175, i32* %2, align 4
  br label %176

176:                                              ; preds = %171, %27, %16
  %177 = load i32, i32* %2, align 4
  ret i32 %177
}

declare dso_local i64 @isa_get_logicalid(i32) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i8* @bus_alloc_resource_anywhere(i32, i32, i64*, i32, i32) #1

declare dso_local i32 @BVDDB(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @bus_set_resource(i32, i32, i64, i32, i32) #1

declare dso_local i32 @device_get_flags(i32) #1

declare dso_local i32 @isa_get_irq(i32) #1

declare dso_local i32 @isa_get_drq(i32) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

declare dso_local i32 @io_rd(%struct.mss_info*, i32) #1

declare dso_local i32 @device_set_flags(i32, i32) #1

declare dso_local i32 @rman_get_start(i8*) #1

declare dso_local i32 @mss_detect(i32, %struct.mss_info*) #1

declare dso_local i32 @mss_release_resources(%struct.mss_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
