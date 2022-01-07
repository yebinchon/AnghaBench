; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rp/extr_rp_isa.c_rp_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rp/extr_rp_isa.c_rp_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32**, i64*, i32*, i32, i32, i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"rpprobe: unit number %d invalid.\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"probing for RocketPort(ISA) unit %d.\0A\00", align 1
@rp_isa_aiop2rid = common dso_local global i32 0, align 4
@rp_isa_aiop2off = common dso_local global i32 0, align 4
@rp_isa_ctlmask = common dso_local global i32 0, align 4
@MAX_AIOPS_PER_BOARD = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"rp_attach: Out of memory.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@rp_controller = common dso_local global %struct.TYPE_8__* null, align 8
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"rp_attach: Resource not available.\0A\00", align 1
@FREQ_DIS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"board%d init failed.\0A\00", align 1
@rp_nisadevs = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"RocketPort ISA\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @rp_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rp_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @isa_get_logicalid(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @ENXIO, align 4
  store i32 %13, i32* %2, align 4
  br label %182

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @SYS_RES_IOPORT, align 4
  %17 = call i64 @bus_get_resource_count(i32 %15, i32 %16, i32 0)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* @ENXIO, align 4
  store i32 %20, i32* %2, align 4
  br label %182

21:                                               ; preds = %14
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @device_get_unit(i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp sge i32 %24, 4
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 (i32, i8*, ...) @device_printf(i32 %27, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @ENXIO, align 4
  store i32 %30, i32* %2, align 4
  br label %182

31:                                               ; preds = %21
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 (i32, i8*, ...) @device_printf(i32 %32, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %3, align 4
  %36 = call %struct.TYPE_8__* @device_get_softc(i32 %35)
  store %struct.TYPE_8__* %36, %struct.TYPE_8__** %7, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %38 = call i32 @bzero(%struct.TYPE_8__* %37, i32 48)
  %39 = load i32, i32* %3, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 7
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @rp_isa_aiop2rid, align 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 6
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* @rp_isa_aiop2off, align 4
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 5
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @rp_isa_ctlmask, align 4
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  %53 = load i32, i32* @MAX_AIOPS_PER_BOARD, align 4
  %54 = sext i32 %53 to i64
  %55 = mul i64 8, %54
  %56 = trunc i64 %55 to i32
  %57 = load i32, i32* @M_DEVBUF, align 4
  %58 = load i32, i32* @M_NOWAIT, align 4
  %59 = load i32, i32* @M_ZERO, align 4
  %60 = or i32 %58, %59
  %61 = call i8* @malloc(i32 %56, i32 %57, i32 %60)
  %62 = bitcast i8* %61 to i64*
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 2
  store i64* %62, i64** %64, align 8
  %65 = load i32, i32* @MAX_AIOPS_PER_BOARD, align 4
  %66 = sext i32 %65 to i64
  %67 = mul i64 8, %66
  %68 = trunc i64 %67 to i32
  %69 = load i32, i32* @M_DEVBUF, align 4
  %70 = load i32, i32* @M_NOWAIT, align 4
  %71 = load i32, i32* @M_ZERO, align 4
  %72 = or i32 %70, %71
  %73 = call i8* @malloc(i32 %68, i32 %69, i32 %72)
  %74 = bitcast i8* %73 to i32**
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  store i32** %74, i32*** %76, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 2
  %79 = load i64*, i64** %78, align 8
  %80 = icmp eq i64* %79, null
  br i1 %80, label %86, label %81

81:                                               ; preds = %31
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = load i32**, i32*** %83, align 8
  %85 = icmp eq i32** %84, null
  br i1 %85, label %86, label %90

86:                                               ; preds = %81, %31
  %87 = load i32, i32* %3, align 4
  %88 = call i32 (i32, i8*, ...) @device_printf(i32 %87, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %89 = load i32, i32* @ENOMEM, align 4
  store i32 %89, i32* %8, align 4
  br label %178

90:                                               ; preds = %81
  %91 = load i32, i32* @M_DEVBUF, align 4
  %92 = load i32, i32* @M_NOWAIT, align 4
  %93 = load i32, i32* @M_ZERO, align 4
  %94 = or i32 %92, %93
  %95 = call i8* @malloc(i32 4, i32 %91, i32 %94)
  %96 = bitcast i8* %95 to i32*
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 3
  store i32* %96, i32** %98, align 8
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 3
  %101 = load i32*, i32** %100, align 8
  %102 = icmp eq i32* %101, null
  br i1 %102, label %103, label %107

103:                                              ; preds = %90
  %104 = load i32, i32* %3, align 4
  %105 = call i32 (i32, i8*, ...) @device_printf(i32 %104, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %106 = load i32, i32* @ENOMEM, align 4
  store i32 %106, i32* %8, align 4
  br label %178

107:                                              ; preds = %90
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 2
  %110 = load i64*, i64** %109, align 8
  %111 = getelementptr inbounds i64, i64* %110, i64 0
  store i64 0, i64* %111, align 8
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** @rp_controller, align 8
  %113 = icmp ne %struct.TYPE_8__* %112, null
  br i1 %113, label %114, label %129

114:                                              ; preds = %107
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** @rp_controller, align 8
  store %struct.TYPE_8__* %115, %struct.TYPE_8__** %5, align 8
  %116 = load i32, i32* %3, align 4
  %117 = load i32, i32* @SYS_RES_IOPORT, align 4
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 2
  %120 = load i64*, i64** %119, align 8
  %121 = getelementptr inbounds i64, i64* %120, i64 0
  %122 = load i32, i32* @RF_ACTIVE, align 4
  %123 = call i8* @bus_alloc_resource_anywhere(i32 %116, i32 %117, i64* %121, i32 64, i32 %122)
  %124 = bitcast i8* %123 to i32*
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 1
  %127 = load i32**, i32*** %126, align 8
  %128 = getelementptr inbounds i32*, i32** %127, i64 0
  store i32* %124, i32** %128, align 8
  br label %144

129:                                              ; preds = %107
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_8__* %130, %struct.TYPE_8__** @rp_controller, align 8
  store %struct.TYPE_8__* %130, %struct.TYPE_8__** %5, align 8
  %131 = load i32, i32* %3, align 4
  %132 = load i32, i32* @SYS_RES_IOPORT, align 4
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 2
  %135 = load i64*, i64** %134, align 8
  %136 = getelementptr inbounds i64, i64* %135, i64 0
  %137 = load i32, i32* @RF_ACTIVE, align 4
  %138 = call i8* @bus_alloc_resource_anywhere(i32 %131, i32 %132, i64* %136, i32 68, i32 %137)
  %139 = bitcast i8* %138 to i32*
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 1
  %142 = load i32**, i32*** %141, align 8
  %143 = getelementptr inbounds i32*, i32** %142, i64 0
  store i32* %139, i32** %143, align 8
  br label %144

144:                                              ; preds = %129, %114
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 1
  %147 = load i32**, i32*** %146, align 8
  %148 = getelementptr inbounds i32*, i32** %147, i64 0
  %149 = load i32*, i32** %148, align 8
  %150 = icmp eq i32* %149, null
  br i1 %150, label %151, label %155

151:                                              ; preds = %144
  %152 = load i32, i32* %3, align 4
  %153 = call i32 (i32, i8*, ...) @device_printf(i32 %152, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %154 = load i32, i32* @ENXIO, align 4
  store i32 %154, i32* %8, align 4
  br label %178

155:                                              ; preds = %144
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %158 = load i32, i32* @MAX_AIOPS_PER_BOARD, align 4
  %159 = load i32, i32* @FREQ_DIS, align 4
  %160 = call i32 @sInitController(%struct.TYPE_8__* %156, %struct.TYPE_8__* %157, i32 %158, i32 0, i32 %159, i32 0)
  store i32 %160, i32* %6, align 4
  %161 = load i32, i32* %6, align 4
  %162 = icmp sle i32 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %155
  %164 = load i32, i32* %3, align 4
  %165 = load i32, i32* %4, align 4
  %166 = call i32 (i32, i8*, ...) @device_printf(i32 %164, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %165)
  %167 = load i32, i32* @ENXIO, align 4
  store i32 %167, i32* %8, align 4
  br label %178

168:                                              ; preds = %155
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** @rp_controller, align 8
  %170 = icmp eq %struct.TYPE_8__* %169, null
  br i1 %170, label %171, label %173

171:                                              ; preds = %168
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_8__* %172, %struct.TYPE_8__** @rp_controller, align 8
  br label %173

173:                                              ; preds = %171, %168
  %174 = load i32, i32* @rp_nisadevs, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* @rp_nisadevs, align 4
  %176 = load i32, i32* %3, align 4
  %177 = call i32 @device_set_desc(i32 %176, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %182

178:                                              ; preds = %163, %151, %103, %86
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %180 = call i32 @rp_isareleaseresource(%struct.TYPE_8__* %179)
  %181 = load i32, i32* %8, align 4
  store i32 %181, i32* %2, align 4
  br label %182

182:                                              ; preds = %178, %173, %26, %19, %12
  %183 = load i32, i32* %2, align 4
  ret i32 %183
}

declare dso_local i64 @isa_get_logicalid(i32) #1

declare dso_local i64 @bus_get_resource_count(i32, i32, i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local %struct.TYPE_8__* @device_get_softc(i32) #1

declare dso_local i32 @bzero(%struct.TYPE_8__*, i32) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i8* @bus_alloc_resource_anywhere(i32, i32, i64*, i32, i32) #1

declare dso_local i32 @sInitController(%struct.TYPE_8__*, %struct.TYPE_8__*, i32, i32, i32, i32) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

declare dso_local i32 @rp_isareleaseresource(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
