; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_gusc.c_gusisa_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_gusc.c_gusisa_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.sndcard_func = type { i32 }

@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@DV_F_DUAL_DMA = common dso_local global i32 0, align 4
@SYS_RES_DRQ = common dso_local global i32 0, align 4
@DV_F_DRQ_MASK = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SCF_MIDI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"midi\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"xxx: gus pcm not attached, out of memory\0A\00", align 1
@SCF_PCM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"pcm\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Gravis UltraSound MAX\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @gusisa_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gusisa_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca %struct.sndcard_func*, align 8
  store i32 %0, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @isa_get_port(i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @device_get_flags(i32 %16)
  store i32 %17, i32* %11, align 4
  store i32 1, i32* %8, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @SYS_RES_IOPORT, align 4
  %20 = load i32, i32* %7, align 4
  %21 = add nsw i32 %20, 256
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 %22, 263
  %24 = load i32, i32* @RF_ACTIVE, align 4
  %25 = call %struct.resource* @bus_alloc_resource(i32 %18, i32 %19, i32* %8, i32 %21, i32 %23, i32 8, i32 %24)
  store %struct.resource* %25, %struct.resource** %5, align 8
  %26 = load %struct.resource*, %struct.resource** %5, align 8
  %27 = icmp eq %struct.resource* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load i32, i32* @ENXIO, align 4
  store i32 %29, i32* %2, align 4
  br label %187

30:                                               ; preds = %1
  store %struct.resource* null, %struct.resource** %6, align 8
  %31 = load %struct.resource*, %struct.resource** %5, align 8
  %32 = call i32 @port_wr(%struct.resource* %31, i32 3, i32 76)
  %33 = load %struct.resource*, %struct.resource** %5, align 8
  %34 = call i32 @port_wr(%struct.resource* %33, i32 5, i32 0)
  %35 = call i32 @DELAY(i32 30000)
  %36 = load %struct.resource*, %struct.resource** %5, align 8
  %37 = call i32 @port_wr(%struct.resource* %36, i32 3, i32 76)
  %38 = load %struct.resource*, %struct.resource** %5, align 8
  %39 = call i32 @port_wr(%struct.resource* %38, i32 5, i32 1)
  %40 = call i32 @DELAY(i32 30000)
  %41 = call i32 (...) @splhigh()
  store i32 %41, i32* %10, align 4
  %42 = load %struct.resource*, %struct.resource** %5, align 8
  %43 = call i32 @port_wr(%struct.resource* %42, i32 3, i32 67)
  %44 = load %struct.resource*, %struct.resource** %5, align 8
  %45 = call i32 @port_wr(%struct.resource* %44, i32 4, i32 0)
  %46 = load %struct.resource*, %struct.resource** %5, align 8
  %47 = call i32 @port_wr(%struct.resource* %46, i32 5, i32 0)
  %48 = load %struct.resource*, %struct.resource** %5, align 8
  %49 = call i32 @port_wr(%struct.resource* %48, i32 3, i32 68)
  %50 = load %struct.resource*, %struct.resource** %5, align 8
  %51 = call i32 @port_wr(%struct.resource* %50, i32 4, i32 0)
  %52 = load %struct.resource*, %struct.resource** %5, align 8
  %53 = call i32 @port_wr(%struct.resource* %52, i32 7, i32 85)
  %54 = load %struct.resource*, %struct.resource** %5, align 8
  %55 = call i32 @port_wr(%struct.resource* %54, i32 3, i32 67)
  %56 = load %struct.resource*, %struct.resource** %5, align 8
  %57 = call i32 @port_wr(%struct.resource* %56, i32 4, i32 0)
  %58 = load %struct.resource*, %struct.resource** %5, align 8
  %59 = call i32 @port_wr(%struct.resource* %58, i32 5, i32 0)
  %60 = load %struct.resource*, %struct.resource** %5, align 8
  %61 = call i32 @port_wr(%struct.resource* %60, i32 3, i32 68)
  %62 = load %struct.resource*, %struct.resource** %5, align 8
  %63 = call i32 @port_wr(%struct.resource* %62, i32 4, i32 0)
  %64 = load %struct.resource*, %struct.resource** %5, align 8
  %65 = call zeroext i8 @port_rd(%struct.resource* %64, i32 7)
  store i8 %65, i8* %12, align 1
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @splx(i32 %66)
  %68 = load i8, i8* %12, align 1
  %69 = zext i8 %68 to i32
  %70 = icmp ne i32 %69, 85
  br i1 %70, label %71, label %72

71:                                               ; preds = %30
  br label %180

72:                                               ; preds = %30
  store i32 0, i32* %9, align 4
  %73 = load i32, i32* %3, align 4
  %74 = load i32, i32* @SYS_RES_IOPORT, align 4
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @RF_ACTIVE, align 4
  %78 = call %struct.resource* @bus_alloc_resource(i32 %73, i32 %74, i32* %9, i32 %75, i32 %76, i32 1, i32 %77)
  store %struct.resource* %78, %struct.resource** %6, align 8
  %79 = load %struct.resource*, %struct.resource** %6, align 8
  %80 = icmp eq %struct.resource* %79, null
  br i1 %80, label %81, label %82

81:                                               ; preds = %72
  br label %180

82:                                               ; preds = %72
  %83 = call i32 (...) @splhigh()
  store i32 %83, i32* %10, align 4
  %84 = load %struct.resource*, %struct.resource** %6, align 8
  %85 = call i32 @port_wr(%struct.resource* %84, i32 15, i32 32)
  %86 = load %struct.resource*, %struct.resource** %6, align 8
  %87 = call zeroext i8 @port_rd(%struct.resource* %86, i32 15)
  store i8 %87, i8* %12, align 1
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @splx(i32 %88)
  %90 = load i8, i8* %12, align 1
  %91 = zext i8 %90 to i32
  %92 = icmp eq i32 %91, 255
  br i1 %92, label %98, label %93

93:                                               ; preds = %82
  %94 = load i8, i8* %12, align 1
  %95 = zext i8 %94 to i32
  %96 = and i32 %95, 6
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %93, %82
  store i8 0, i8* %12, align 1
  br label %107

99:                                               ; preds = %93
  %100 = load %struct.resource*, %struct.resource** %6, align 8
  %101 = call zeroext i8 @port_rd(%struct.resource* %100, i32 1286)
  store i8 %101, i8* %12, align 1
  %102 = load i8, i8* %12, align 1
  %103 = zext i8 %102 to i32
  %104 = icmp eq i32 %103, 255
  br i1 %104, label %105, label %106

105:                                              ; preds = %99
  store i8 0, i8* %12, align 1
  br label %106

106:                                              ; preds = %105, %99
  br label %107

107:                                              ; preds = %106, %98
  %108 = load i32, i32* %3, align 4
  %109 = load i32, i32* @SYS_RES_IOPORT, align 4
  %110 = load i32, i32* %9, align 4
  %111 = load %struct.resource*, %struct.resource** %6, align 8
  %112 = call i32 @bus_release_resource(i32 %108, i32 %109, i32 %110, %struct.resource* %111)
  %113 = load i32, i32* %3, align 4
  %114 = load i32, i32* @SYS_RES_IOPORT, align 4
  %115 = load i32, i32* %8, align 4
  %116 = load %struct.resource*, %struct.resource** %5, align 8
  %117 = call i32 @bus_release_resource(i32 %113, i32 %114, i32 %115, %struct.resource* %116)
  %118 = load i8, i8* %12, align 1
  %119 = zext i8 %118 to i32
  %120 = icmp sge i32 %119, 10
  br i1 %120, label %121, label %178

121:                                              ; preds = %107
  %122 = load i32, i32* %3, align 4
  %123 = load i32, i32* @SYS_RES_IOPORT, align 4
  %124 = load i32, i32* %7, align 4
  %125 = add nsw i32 %124, 268
  %126 = call i32 @bus_set_resource(i32 %122, i32 %123, i32 2, i32 %125, i32 8)
  %127 = load i32, i32* %11, align 4
  %128 = load i32, i32* @DV_F_DUAL_DMA, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %121
  %132 = load i32, i32* %3, align 4
  %133 = load i32, i32* @SYS_RES_DRQ, align 4
  %134 = load i32, i32* %11, align 4
  %135 = load i32, i32* @DV_F_DRQ_MASK, align 4
  %136 = and i32 %134, %135
  %137 = call i32 @bus_set_resource(i32 %132, i32 %133, i32 1, i32 %136, i32 1)
  br label %138

138:                                              ; preds = %131, %121
  %139 = load i32, i32* @M_DEVBUF, align 4
  %140 = load i32, i32* @M_NOWAIT, align 4
  %141 = load i32, i32* @M_ZERO, align 4
  %142 = or i32 %140, %141
  %143 = call %struct.sndcard_func* @malloc(i32 4, i32 %139, i32 %142)
  store %struct.sndcard_func* %143, %struct.sndcard_func** %13, align 8
  %144 = load %struct.sndcard_func*, %struct.sndcard_func** %13, align 8
  %145 = icmp eq %struct.sndcard_func* %144, null
  br i1 %145, label %146, label %148

146:                                              ; preds = %138
  %147 = load i32, i32* @ENOMEM, align 4
  store i32 %147, i32* %2, align 4
  br label %187

148:                                              ; preds = %138
  %149 = load i32, i32* @SCF_MIDI, align 4
  %150 = load %struct.sndcard_func*, %struct.sndcard_func** %13, align 8
  %151 = getelementptr inbounds %struct.sndcard_func, %struct.sndcard_func* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 4
  %152 = load i32, i32* %3, align 4
  %153 = call i32 @device_add_child(i32 %152, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 -1)
  store i32 %153, i32* %4, align 4
  %154 = load i32, i32* %4, align 4
  %155 = load %struct.sndcard_func*, %struct.sndcard_func** %13, align 8
  %156 = call i32 @device_set_ivars(i32 %154, %struct.sndcard_func* %155)
  %157 = load i32, i32* @M_DEVBUF, align 4
  %158 = load i32, i32* @M_NOWAIT, align 4
  %159 = load i32, i32* @M_ZERO, align 4
  %160 = or i32 %158, %159
  %161 = call %struct.sndcard_func* @malloc(i32 4, i32 %157, i32 %160)
  store %struct.sndcard_func* %161, %struct.sndcard_func** %13, align 8
  %162 = load %struct.sndcard_func*, %struct.sndcard_func** %13, align 8
  %163 = icmp eq %struct.sndcard_func* %162, null
  br i1 %163, label %164, label %166

164:                                              ; preds = %148
  %165 = call i32 @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %175

166:                                              ; preds = %148
  %167 = load i32, i32* @SCF_PCM, align 4
  %168 = load %struct.sndcard_func*, %struct.sndcard_func** %13, align 8
  %169 = getelementptr inbounds %struct.sndcard_func, %struct.sndcard_func* %168, i32 0, i32 0
  store i32 %167, i32* %169, align 4
  %170 = load i32, i32* %3, align 4
  %171 = call i32 @device_add_child(i32 %170, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 -1)
  store i32 %171, i32* %4, align 4
  %172 = load i32, i32* %4, align 4
  %173 = load %struct.sndcard_func*, %struct.sndcard_func** %13, align 8
  %174 = call i32 @device_set_ivars(i32 %172, %struct.sndcard_func* %173)
  br label %175

175:                                              ; preds = %166, %164
  %176 = load i32, i32* %3, align 4
  %177 = call i32 @device_set_desc(i32 %176, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %187

178:                                              ; preds = %107
  %179 = load i32, i32* @ENXIO, align 4
  store i32 %179, i32* %2, align 4
  br label %187

180:                                              ; preds = %81, %71
  %181 = load i32, i32* %3, align 4
  %182 = load i32, i32* @SYS_RES_IOPORT, align 4
  %183 = load i32, i32* %8, align 4
  %184 = load %struct.resource*, %struct.resource** %5, align 8
  %185 = call i32 @bus_release_resource(i32 %181, i32 %182, i32 %183, %struct.resource* %184)
  %186 = load i32, i32* @ENXIO, align 4
  store i32 %186, i32* %2, align 4
  br label %187

187:                                              ; preds = %180, %178, %175, %146, %28
  %188 = load i32, i32* %2, align 4
  ret i32 %188
}

declare dso_local i32 @isa_get_port(i32) #1

declare dso_local i32 @device_get_flags(i32) #1

declare dso_local %struct.resource* @bus_alloc_resource(i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @port_wr(%struct.resource*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @splhigh(...) #1

declare dso_local zeroext i8 @port_rd(%struct.resource*, i32) #1

declare dso_local i32 @splx(i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, %struct.resource*) #1

declare dso_local i32 @bus_set_resource(i32, i32, i32, i32, i32) #1

declare dso_local %struct.sndcard_func* @malloc(i32, i32, i32) #1

declare dso_local i32 @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @device_set_ivars(i32, %struct.sndcard_func*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
