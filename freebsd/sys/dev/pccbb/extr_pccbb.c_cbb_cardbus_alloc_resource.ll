; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pccbb/extr_pccbb.c_cbb_cardbus_alloc_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pccbb/extr_pccbb.c_cbb_cardbus_alloc_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.cbb_softc = type { i32 }

@.str = private unnamed_addr constant [62 x i8] c"requested interrupt %jd-%jd,count = %jd not supported by cbb\0A\00", align 1
@RF_SHAREABLE = common dso_local global i32 0, align 4
@cbb_start_32_io = common dso_local global i32 0, align 4
@RF_ALIGNMENT_MASK = common dso_local global i32 0, align 4
@cbb_start_mem = common dso_local global i32 0, align 4
@CBB_MEMALIGN = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"cbb alloc res fail type %d rid %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.resource* (i32, i32, i32, i32*, i32, i32, i32, i32)* @cbb_cardbus_alloc_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.resource* @cbb_cardbus_alloc_resource(i32 %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.cbb_softc*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.resource*, align 8
  %21 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %22 = load i32, i32* %10, align 4
  %23 = call %struct.cbb_softc* @device_get_softc(i32 %22)
  store %struct.cbb_softc* %23, %struct.cbb_softc** %18, align 8
  %24 = load i32, i32* %12, align 4
  switch i32 %24, label %113 [
    i32 129, label %25
    i32 130, label %51
    i32 128, label %78
  ]

25:                                               ; preds = %8
  %26 = load %struct.cbb_softc*, %struct.cbb_softc** %18, align 8
  %27 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @rman_get_start(i32 %28)
  store i32 %29, i32* %19, align 4
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* %19, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %40, label %33

33:                                               ; preds = %25
  %34 = load i32, i32* %15, align 4
  %35 = load i32, i32* %19, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %16, align 4
  %39 = icmp ne i32 %38, 1
  br i1 %39, label %40, label %46

40:                                               ; preds = %37, %33, %25
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* %15, align 4
  %44 = load i32, i32* %16, align 4
  %45 = call i32 @device_printf(i32 %41, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43, i32 %44)
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %163

46:                                               ; preds = %37
  %47 = load i32, i32* %19, align 4
  store i32 %47, i32* %15, align 4
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* @RF_SHAREABLE, align 4
  %49 = load i32, i32* %17, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %17, align 4
  br label %113

51:                                               ; preds = %8
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* @cbb_start_32_io, align 4
  %54 = icmp sle i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i32, i32* @cbb_start_32_io, align 4
  store i32 %56, i32* %14, align 4
  br label %57

57:                                               ; preds = %55, %51
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* %14, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i32, i32* %14, align 4
  store i32 %62, i32* %15, align 4
  br label %63

63:                                               ; preds = %61, %57
  %64 = load i32, i32* %16, align 4
  %65 = load i32, i32* %17, align 4
  %66 = call i32 @RF_ALIGNMENT(i32 %65)
  %67 = shl i32 1, %66
  %68 = icmp sgt i32 %64, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %63
  %70 = load i32, i32* %17, align 4
  %71 = load i32, i32* @RF_ALIGNMENT_MASK, align 4
  %72 = xor i32 %71, -1
  %73 = and i32 %70, %72
  %74 = load i32, i32* %16, align 4
  %75 = call i32 @rman_make_alignment_flags(i32 %74)
  %76 = or i32 %73, %75
  store i32 %76, i32* %17, align 4
  br label %77

77:                                               ; preds = %69, %63
  br label %113

78:                                               ; preds = %8
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* @cbb_start_mem, align 4
  %81 = icmp sle i32 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = load i32, i32* @cbb_start_mem, align 4
  store i32 %83, i32* %14, align 4
  br label %84

84:                                               ; preds = %82, %78
  %85 = load i32, i32* %15, align 4
  %86 = load i32, i32* %14, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = load i32, i32* %14, align 4
  store i32 %89, i32* %15, align 4
  br label %90

90:                                               ; preds = %88, %84
  %91 = load i32, i32* %16, align 4
  %92 = load i32, i32* @CBB_MEMALIGN, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = load i32, i32* @CBB_MEMALIGN, align 4
  store i32 %95, i32* %21, align 4
  br label %98

96:                                               ; preds = %90
  %97 = load i32, i32* %16, align 4
  store i32 %97, i32* %21, align 4
  br label %98

98:                                               ; preds = %96, %94
  %99 = load i32, i32* %21, align 4
  %100 = load i32, i32* %17, align 4
  %101 = call i32 @RF_ALIGNMENT(i32 %100)
  %102 = shl i32 1, %101
  %103 = icmp sgt i32 %99, %102
  br i1 %103, label %104, label %112

104:                                              ; preds = %98
  %105 = load i32, i32* %17, align 4
  %106 = load i32, i32* @RF_ALIGNMENT_MASK, align 4
  %107 = xor i32 %106, -1
  %108 = and i32 %105, %107
  %109 = load i32, i32* %21, align 4
  %110 = call i32 @rman_make_alignment_flags(i32 %109)
  %111 = or i32 %108, %110
  store i32 %111, i32* %17, align 4
  br label %112

112:                                              ; preds = %104, %98
  br label %113

113:                                              ; preds = %8, %112, %77, %46
  %114 = load i32, i32* %10, align 4
  %115 = call i32 @device_get_parent(i32 %114)
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* %12, align 4
  %118 = load i32*, i32** %13, align 8
  %119 = load i32, i32* %14, align 4
  %120 = load i32, i32* %15, align 4
  %121 = load i32, i32* %16, align 4
  %122 = load i32, i32* %17, align 4
  %123 = load i32, i32* @RF_ACTIVE, align 4
  %124 = xor i32 %123, -1
  %125 = and i32 %122, %124
  %126 = call %struct.resource* @BUS_ALLOC_RESOURCE(i32 %115, i32 %116, i32 %117, i32* %118, i32 %119, i32 %120, i32 %121, i32 %125)
  store %struct.resource* %126, %struct.resource** %20, align 8
  %127 = load %struct.resource*, %struct.resource** %20, align 8
  %128 = icmp eq %struct.resource* %127, null
  br i1 %128, label %129, label %134

129:                                              ; preds = %113
  %130 = load i32, i32* %12, align 4
  %131 = load i32*, i32** %13, align 8
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %130, i32 %132)
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %163

134:                                              ; preds = %113
  %135 = load %struct.cbb_softc*, %struct.cbb_softc** %18, align 8
  %136 = load %struct.resource*, %struct.resource** %20, align 8
  %137 = load i32, i32* %12, align 4
  %138 = load i32*, i32** %13, align 8
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @cbb_insert_res(%struct.cbb_softc* %135, %struct.resource* %136, i32 %137, i32 %139)
  %141 = load i32, i32* %17, align 4
  %142 = load i32, i32* @RF_ACTIVE, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %161

145:                                              ; preds = %134
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* %12, align 4
  %148 = load i32*, i32** %13, align 8
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.resource*, %struct.resource** %20, align 8
  %151 = call i64 @bus_activate_resource(i32 %146, i32 %147, i32 %149, %struct.resource* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %145
  %154 = load i32, i32* %11, align 4
  %155 = load i32, i32* %12, align 4
  %156 = load i32*, i32** %13, align 8
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.resource*, %struct.resource** %20, align 8
  %159 = call i32 @bus_release_resource(i32 %154, i32 %155, i32 %157, %struct.resource* %158)
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %163

160:                                              ; preds = %145
  br label %161

161:                                              ; preds = %160, %134
  %162 = load %struct.resource*, %struct.resource** %20, align 8
  store %struct.resource* %162, %struct.resource** %9, align 8
  br label %163

163:                                              ; preds = %161, %153, %129, %40
  %164 = load %struct.resource*, %struct.resource** %9, align 8
  ret %struct.resource* %164
}

declare dso_local %struct.cbb_softc* @device_get_softc(i32) #1

declare dso_local i32 @rman_get_start(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @RF_ALIGNMENT(i32) #1

declare dso_local i32 @rman_make_alignment_flags(i32) #1

declare dso_local %struct.resource* @BUS_ALLOC_RESOURCE(i32, i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

declare dso_local i32 @cbb_insert_res(%struct.cbb_softc*, %struct.resource*, i32, i32) #1

declare dso_local i64 @bus_activate_resource(i32, i32, i32, %struct.resource*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, %struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
