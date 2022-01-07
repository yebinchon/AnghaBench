; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pccbb/extr_pccbb.c_cbb_pcic_alloc_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pccbb/extr_pccbb.c_cbb_pcic_alloc_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.cbb_softc = type { i32 }

@cbb_start_mem = common dso_local global i32 0, align 4
@CBB_MEMALIGN = common dso_local global i32 0, align 4
@RF_ALIGNMENT_MASK = common dso_local global i32 0, align 4
@cbb_start_16_io = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"requested interrupt %jd-%jd,count = %jd not supported by cbb\0A\00", align 1
@RF_SHAREABLE = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.resource* (i32, i32, i32, i32*, i32, i32, i32, i32)* @cbb_pcic_alloc_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.resource* @cbb_pcic_alloc_resource(i32 %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.resource*, align 8
  %19 = alloca %struct.cbb_softc*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store %struct.resource* null, %struct.resource** %18, align 8
  %22 = load i32, i32* %10, align 4
  %23 = call %struct.cbb_softc* @device_get_softc(i32 %22)
  store %struct.cbb_softc* %23, %struct.cbb_softc** %19, align 8
  %24 = load i32, i32* %12, align 4
  switch i32 %24, label %102 [
    i32 128, label %25
    i32 130, label %60
    i32 129, label %73
  ]

25:                                               ; preds = %8
  %26 = load i32, i32* %14, align 4
  %27 = load i32, i32* @cbb_start_mem, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @cbb_start_mem, align 4
  store i32 %30, i32* %14, align 4
  br label %31

31:                                               ; preds = %29, %25
  %32 = load i32, i32* %15, align 4
  %33 = load i32, i32* %14, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* %14, align 4
  store i32 %36, i32* %15, align 4
  br label %37

37:                                               ; preds = %35, %31
  %38 = load i32, i32* %16, align 4
  %39 = load i32, i32* @CBB_MEMALIGN, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* @CBB_MEMALIGN, align 4
  store i32 %42, i32* %20, align 4
  br label %45

43:                                               ; preds = %37
  %44 = load i32, i32* %16, align 4
  store i32 %44, i32* %20, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = load i32, i32* %20, align 4
  %47 = load i32, i32* %17, align 4
  %48 = call i32 @RF_ALIGNMENT(i32 %47)
  %49 = shl i32 1, %48
  %50 = icmp sgt i32 %46, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %45
  %52 = load i32, i32* %17, align 4
  %53 = load i32, i32* @RF_ALIGNMENT_MASK, align 4
  %54 = xor i32 %53, -1
  %55 = and i32 %52, %54
  %56 = load i32, i32* %20, align 4
  %57 = call i32 @rman_make_alignment_flags(i32 %56)
  %58 = or i32 %55, %57
  store i32 %58, i32* %17, align 4
  br label %59

59:                                               ; preds = %51, %45
  br label %102

60:                                               ; preds = %8
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* @cbb_start_16_io, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i32, i32* @cbb_start_16_io, align 4
  store i32 %65, i32* %14, align 4
  br label %66

66:                                               ; preds = %64, %60
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* %14, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i32, i32* %14, align 4
  store i32 %71, i32* %15, align 4
  br label %72

72:                                               ; preds = %70, %66
  br label %102

73:                                               ; preds = %8
  %74 = load %struct.cbb_softc*, %struct.cbb_softc** %19, align 8
  %75 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @rman_get_start(i32 %76)
  store i32 %77, i32* %21, align 4
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* %21, align 4
  %80 = icmp sgt i32 %78, %79
  br i1 %80, label %88, label %81

81:                                               ; preds = %73
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* %21, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %88, label %85

85:                                               ; preds = %81
  %86 = load i32, i32* %16, align 4
  %87 = icmp ne i32 %86, 1
  br i1 %87, label %88, label %94

88:                                               ; preds = %85, %81, %73
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* %14, align 4
  %91 = load i32, i32* %15, align 4
  %92 = load i32, i32* %16, align 4
  %93 = call i32 @device_printf(i32 %89, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %90, i32 %91, i32 %92)
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %148

94:                                               ; preds = %85
  %95 = load i32, i32* @RF_SHAREABLE, align 4
  %96 = load i32, i32* %17, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %17, align 4
  %98 = load %struct.cbb_softc*, %struct.cbb_softc** %19, align 8
  %99 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @rman_get_start(i32 %100)
  store i32 %101, i32* %15, align 4
  store i32 %101, i32* %14, align 4
  br label %102

102:                                              ; preds = %8, %94, %72, %59
  %103 = load i32, i32* %10, align 4
  %104 = call i32 @device_get_parent(i32 %103)
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* %12, align 4
  %107 = load i32*, i32** %13, align 8
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* %15, align 4
  %110 = load i32, i32* %16, align 4
  %111 = load i32, i32* %17, align 4
  %112 = load i32, i32* @RF_ACTIVE, align 4
  %113 = xor i32 %112, -1
  %114 = and i32 %111, %113
  %115 = call %struct.resource* @BUS_ALLOC_RESOURCE(i32 %104, i32 %105, i32 %106, i32* %107, i32 %108, i32 %109, i32 %110, i32 %114)
  store %struct.resource* %115, %struct.resource** %18, align 8
  %116 = load %struct.resource*, %struct.resource** %18, align 8
  %117 = icmp eq %struct.resource* %116, null
  br i1 %117, label %118, label %119

118:                                              ; preds = %102
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %148

119:                                              ; preds = %102
  %120 = load %struct.cbb_softc*, %struct.cbb_softc** %19, align 8
  %121 = load %struct.resource*, %struct.resource** %18, align 8
  %122 = load i32, i32* %12, align 4
  %123 = load i32*, i32** %13, align 8
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @cbb_insert_res(%struct.cbb_softc* %120, %struct.resource* %121, i32 %122, i32 %124)
  %126 = load i32, i32* %17, align 4
  %127 = load i32, i32* @RF_ACTIVE, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %146

130:                                              ; preds = %119
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* %12, align 4
  %133 = load i32*, i32** %13, align 8
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.resource*, %struct.resource** %18, align 8
  %136 = call i64 @bus_activate_resource(i32 %131, i32 %132, i32 %134, %struct.resource* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %130
  %139 = load i32, i32* %11, align 4
  %140 = load i32, i32* %12, align 4
  %141 = load i32*, i32** %13, align 8
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.resource*, %struct.resource** %18, align 8
  %144 = call i32 @bus_release_resource(i32 %139, i32 %140, i32 %142, %struct.resource* %143)
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %148

145:                                              ; preds = %130
  br label %146

146:                                              ; preds = %145, %119
  %147 = load %struct.resource*, %struct.resource** %18, align 8
  store %struct.resource* %147, %struct.resource** %9, align 8
  br label %148

148:                                              ; preds = %146, %138, %118, %88
  %149 = load %struct.resource*, %struct.resource** %9, align 8
  ret %struct.resource* %149
}

declare dso_local %struct.cbb_softc* @device_get_softc(i32) #1

declare dso_local i32 @RF_ALIGNMENT(i32) #1

declare dso_local i32 @rman_make_alignment_flags(i32) #1

declare dso_local i32 @rman_get_start(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32, i32) #1

declare dso_local %struct.resource* @BUS_ALLOC_RESOURCE(i32, i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @cbb_insert_res(%struct.cbb_softc*, %struct.resource*, i32, i32) #1

declare dso_local i64 @bus_activate_resource(i32, i32, i32, %struct.resource*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, %struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
