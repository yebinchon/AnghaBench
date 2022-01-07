; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_atkbdc_isa.c_atkbdc_isa_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_atkbdc_isa.c_atkbdc_isa_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }

@atkbdc_ids = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Keyboard controller (i8042)\00", align 1
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@IO_KBD = common dso_local global i64 0, align 8
@KBD_STATUS_PORT = common dso_local global i64 0, align 8
@RF_ACTIVE = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"AT keyboard controller not found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @atkbdc_isa_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atkbdc_isa_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @device_get_parent(i32 %14)
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @atkbdc_ids, align 4
  %18 = call i64 @ISA_PNP_PROBE(i32 %15, i32 %16, i32 %17)
  %19 = load i64, i64* @ENXIO, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i64, i64* @ENXIO, align 8
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %2, align 4
  br label %152

24:                                               ; preds = %1
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @device_set_desc(i32 %25, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @device_quiet(i32 %27)
  store i32 0, i32* %9, align 4
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @SYS_RES_IOPORT, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i64 @bus_get_resource(i32 %29, i32 %30, i32 %31, i64* %6, i64* %7)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %24
  %35 = load i64, i64* @ENXIO, align 8
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %2, align 4
  br label %152

37:                                               ; preds = %24
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* @IO_KBD, align 8
  %40 = load i64, i64* @KBD_STATUS_PORT, align 8
  %41 = add nsw i64 %39, %40
  %42 = icmp eq i64 %38, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load i64, i64* @IO_KBD, align 8
  store i64 %44, i64* %6, align 8
  %45 = load i64, i64* %7, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %7, align 8
  br label %47

47:                                               ; preds = %43, %37
  %48 = load i64, i64* %7, align 8
  %49 = icmp sgt i64 %48, 1
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @SYS_RES_IOPORT, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i64, i64* %6, align 8
  %55 = call i32 @bus_set_resource(i32 %51, i32 %52, i32 %53, i64 %54, i32 1)
  br label %56

56:                                               ; preds = %50, %47
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* @SYS_RES_IOPORT, align 4
  %59 = load i32, i32* @RF_ACTIVE, align 4
  %60 = call %struct.resource* @bus_alloc_resource_any(i32 %57, i32 %58, i32* %9, i32 %59)
  store %struct.resource* %60, %struct.resource** %4, align 8
  %61 = load %struct.resource*, %struct.resource** %4, align 8
  %62 = icmp eq %struct.resource* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load i64, i64* @ENXIO, align 8
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %2, align 4
  br label %152

66:                                               ; preds = %56
  store i32 1, i32* %9, align 4
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* @SYS_RES_IOPORT, align 4
  %69 = load i32, i32* %9, align 4
  %70 = call i64 @bus_get_resource(i32 %67, i32 %68, i32 %69, i64* null, i64* null)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %66
  %73 = load i32, i32* %3, align 4
  %74 = load i32, i32* @SYS_RES_IOPORT, align 4
  %75 = load i64, i64* %6, align 8
  %76 = load i64, i64* @KBD_STATUS_PORT, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @bus_set_resource(i32 %73, i32 %74, i32 1, i64 %77, i32 1)
  br label %79

79:                                               ; preds = %72, %66
  %80 = load i32, i32* %3, align 4
  %81 = load i32, i32* @SYS_RES_IOPORT, align 4
  %82 = load i32, i32* @RF_ACTIVE, align 4
  %83 = call %struct.resource* @bus_alloc_resource_any(i32 %80, i32 %81, i32* %9, i32 %82)
  store %struct.resource* %83, %struct.resource** %5, align 8
  %84 = load %struct.resource*, %struct.resource** %5, align 8
  %85 = icmp eq %struct.resource* %84, null
  br i1 %85, label %86, label %93

86:                                               ; preds = %79
  %87 = load i32, i32* %3, align 4
  %88 = load i32, i32* @SYS_RES_IOPORT, align 4
  %89 = load %struct.resource*, %struct.resource** %4, align 8
  %90 = call i32 @bus_release_resource(i32 %87, i32 %88, i32 0, %struct.resource* %89)
  %91 = load i64, i64* @ENXIO, align 8
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %2, align 4
  br label %152

93:                                               ; preds = %79
  %94 = load %struct.resource*, %struct.resource** %4, align 8
  %95 = call i32 @rman_get_bustag(%struct.resource* %94)
  store i32 %95, i32* %10, align 4
  %96 = load %struct.resource*, %struct.resource** %5, align 8
  %97 = call i32 @rman_get_bushandle(%struct.resource* %96)
  store i32 %97, i32* %11, align 4
  %98 = call i32 (...) @intr_disable()
  store i32 %98, i32* %13, align 4
  store volatile i32 0, i32* %12, align 4
  br label %99

99:                                               ; preds = %110, %93
  %100 = load volatile i32, i32* %12, align 4
  %101 = icmp ne i32 %100, 65535
  br i1 %101, label %102, label %113

102:                                              ; preds = %99
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* %11, align 4
  %105 = call i32 @bus_space_read_1(i32 %103, i32 %104, i32 0)
  %106 = and i32 %105, 2
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %102
  br label %113

109:                                              ; preds = %102
  br label %110

110:                                              ; preds = %109
  %111 = load volatile i32, i32* %12, align 4
  %112 = add nsw i32 %111, 1
  store volatile i32 %112, i32* %12, align 4
  br label %99

113:                                              ; preds = %108, %99
  %114 = load i32, i32* %13, align 4
  %115 = call i32 @intr_restore(i32 %114)
  %116 = load volatile i32, i32* %12, align 4
  %117 = icmp eq i32 %116, 65535
  br i1 %117, label %118, label %135

118:                                              ; preds = %113
  %119 = load i32, i32* %3, align 4
  %120 = load i32, i32* @SYS_RES_IOPORT, align 4
  %121 = load %struct.resource*, %struct.resource** %4, align 8
  %122 = call i32 @bus_release_resource(i32 %119, i32 %120, i32 0, %struct.resource* %121)
  %123 = load i32, i32* %3, align 4
  %124 = load i32, i32* @SYS_RES_IOPORT, align 4
  %125 = load %struct.resource*, %struct.resource** %5, align 8
  %126 = call i32 @bus_release_resource(i32 %123, i32 %124, i32 1, %struct.resource* %125)
  %127 = load i64, i64* @bootverbose, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %118
  %130 = load i32, i32* %3, align 4
  %131 = call i32 @device_printf(i32 %130, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %132

132:                                              ; preds = %129, %118
  %133 = load i64, i64* @ENXIO, align 8
  %134 = trunc i64 %133 to i32
  store i32 %134, i32* %2, align 4
  br label %152

135:                                              ; preds = %113
  %136 = load i32, i32* %3, align 4
  %137 = call i32 @device_verbose(i32 %136)
  %138 = load i32, i32* %3, align 4
  %139 = call i32 @device_get_unit(i32 %138)
  %140 = load %struct.resource*, %struct.resource** %4, align 8
  %141 = load %struct.resource*, %struct.resource** %5, align 8
  %142 = call i32 @atkbdc_probe_unit(i32 %139, %struct.resource* %140, %struct.resource* %141)
  store i32 %142, i32* %8, align 4
  %143 = load i32, i32* %3, align 4
  %144 = load i32, i32* @SYS_RES_IOPORT, align 4
  %145 = load %struct.resource*, %struct.resource** %4, align 8
  %146 = call i32 @bus_release_resource(i32 %143, i32 %144, i32 0, %struct.resource* %145)
  %147 = load i32, i32* %3, align 4
  %148 = load i32, i32* @SYS_RES_IOPORT, align 4
  %149 = load %struct.resource*, %struct.resource** %5, align 8
  %150 = call i32 @bus_release_resource(i32 %147, i32 %148, i32 1, %struct.resource* %149)
  %151 = load i32, i32* %8, align 4
  store i32 %151, i32* %2, align 4
  br label %152

152:                                              ; preds = %135, %132, %86, %63, %34, %21
  %153 = load i32, i32* %2, align 4
  ret i32 %153
}

declare dso_local i64 @ISA_PNP_PROBE(i32, i32, i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

declare dso_local i32 @device_quiet(i32) #1

declare dso_local i64 @bus_get_resource(i32, i32, i32, i64*, i64*) #1

declare dso_local i32 @bus_set_resource(i32, i32, i32, i64, i32) #1

declare dso_local %struct.resource* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, %struct.resource*) #1

declare dso_local i32 @rman_get_bustag(%struct.resource*) #1

declare dso_local i32 @rman_get_bushandle(%struct.resource*) #1

declare dso_local i32 @intr_disable(...) #1

declare dso_local i32 @bus_space_read_1(i32, i32, i32) #1

declare dso_local i32 @intr_restore(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @device_verbose(i32) #1

declare dso_local i32 @atkbdc_probe_unit(i32, %struct.resource*, %struct.resource*) #1

declare dso_local i32 @device_get_unit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
