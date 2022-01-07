; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/isa/extr_orm.c_orm_identify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/isa/extr_orm.c_orm_identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.orm_softc = type { i32, i32*, %struct.resource** }

@IOMEM_START = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"orm\00", align 1
@ISA_ORDER_SENSITIVE = common dso_local global i32 0, align 4
@ORM_ID = common dso_local global i32 0, align 4
@MAX_ROMS = common dso_local global i32 0, align 4
@IOMEM_END = common dso_local global i64 0, align 8
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@IOMEM_STEP = common dso_local global i64 0, align 8
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"ISA Option ROM\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"ISA Option ROMs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @orm_identify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @orm_identify(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.orm_softc*, align 8
  %13 = alloca [3 x i32], align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load i64, i64* @IOMEM_START, align 8
  store i64 %14, i64* %8, align 8
  %15 = call i64 @resource_disabled(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 0)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %189

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @ISA_ORDER_SENSITIVE, align 4
  %21 = call i32 @BUS_ADD_CHILD(i32 %19, i32 %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 -1)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @device_set_driver(i32 %22, i32* %23)
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @ORM_ID, align 4
  %27 = call i32 @isa_set_logicalid(i32 %25, i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @ORM_ID, align 4
  %30 = call i32 @isa_set_vendorid(i32 %28, i32 %29)
  %31 = load i32, i32* %7, align 4
  %32 = call %struct.orm_softc* @device_get_softc(i32 %31)
  store %struct.orm_softc* %32, %struct.orm_softc** %12, align 8
  %33 = load %struct.orm_softc*, %struct.orm_softc** %12, align 8
  %34 = getelementptr inbounds %struct.orm_softc, %struct.orm_softc* %33, i32 0, i32 0
  store i32 0, i32* %34, align 8
  br label %35

35:                                               ; preds = %142, %132, %107, %65, %18
  %36 = load %struct.orm_softc*, %struct.orm_softc** %12, align 8
  %37 = getelementptr inbounds %struct.orm_softc, %struct.orm_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @MAX_ROMS, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* @IOMEM_END, align 8
  %44 = icmp slt i64 %42, %43
  br label %45

45:                                               ; preds = %41, %35
  %46 = phi i1 [ false, %35 ], [ %44, %41 ]
  br i1 %46, label %47, label %168

47:                                               ; preds = %45
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @SYS_RES_MEMORY, align 4
  %50 = load %struct.orm_softc*, %struct.orm_softc** %12, align 8
  %51 = getelementptr inbounds %struct.orm_softc, %struct.orm_softc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* @IOMEM_STEP, align 8
  %55 = call i32 @bus_set_resource(i32 %48, i32 %49, i32 %52, i64 %53, i64 %54)
  %56 = load %struct.orm_softc*, %struct.orm_softc** %12, align 8
  %57 = getelementptr inbounds %struct.orm_softc, %struct.orm_softc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @SYS_RES_MEMORY, align 4
  %61 = load i32, i32* @RF_ACTIVE, align 4
  %62 = call %struct.resource* @bus_alloc_resource_any(i32 %59, i32 %60, i32* %10, i32 %61)
  store %struct.resource* %62, %struct.resource** %9, align 8
  %63 = load %struct.resource*, %struct.resource** %9, align 8
  %64 = icmp eq %struct.resource* %63, null
  br i1 %64, label %65, label %75

65:                                               ; preds = %47
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @SYS_RES_MEMORY, align 4
  %68 = load %struct.orm_softc*, %struct.orm_softc** %12, align 8
  %69 = getelementptr inbounds %struct.orm_softc, %struct.orm_softc* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @bus_delete_resource(i32 %66, i32 %67, i32 %70)
  %72 = load i64, i64* @IOMEM_STEP, align 8
  %73 = load i64, i64* %8, align 8
  %74 = add nsw i64 %73, %72
  store i64 %74, i64* %8, align 8
  br label %35

75:                                               ; preds = %47
  %76 = load %struct.resource*, %struct.resource** %9, align 8
  %77 = call i32 @rman_get_bustag(%struct.resource* %76)
  store i32 %77, i32* %6, align 4
  %78 = load %struct.resource*, %struct.resource** %9, align 8
  %79 = call i32 @rman_get_bushandle(%struct.resource* %78)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %5, align 4
  %82 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %83 = call i32 @bus_space_read_region_1(i32 %80, i32 %81, i32 0, i32* %82, i32 12)
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @SYS_RES_MEMORY, align 4
  %86 = load i32, i32* %10, align 4
  %87 = load %struct.resource*, %struct.resource** %9, align 8
  %88 = call i32 @bus_release_resource(i32 %84, i32 %85, i32 %86, %struct.resource* %87)
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* @SYS_RES_MEMORY, align 4
  %91 = load %struct.orm_softc*, %struct.orm_softc** %12, align 8
  %92 = getelementptr inbounds %struct.orm_softc, %struct.orm_softc* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @bus_delete_resource(i32 %89, i32 %90, i32 %93)
  %95 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 85
  br i1 %97, label %107, label %98

98:                                               ; preds = %75
  %99 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 170
  br i1 %101, label %107, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 2
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, 3
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %102, %98, %75
  %108 = load i64, i64* @IOMEM_STEP, align 8
  %109 = load i64, i64* %8, align 8
  %110 = add nsw i64 %109, %108
  store i64 %110, i64* %8, align 8
  br label %35

111:                                              ; preds = %102
  %112 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 2
  %113 = load i32, i32* %112, align 4
  %114 = shl i32 %113, 9
  %115 = sext i32 %114 to i64
  store i64 %115, i64* %11, align 8
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* @SYS_RES_MEMORY, align 4
  %118 = load %struct.orm_softc*, %struct.orm_softc** %12, align 8
  %119 = getelementptr inbounds %struct.orm_softc, %struct.orm_softc* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i64, i64* %8, align 8
  %122 = load i64, i64* %11, align 8
  %123 = call i32 @bus_set_resource(i32 %116, i32 %117, i32 %120, i64 %121, i64 %122)
  %124 = load %struct.orm_softc*, %struct.orm_softc** %12, align 8
  %125 = getelementptr inbounds %struct.orm_softc, %struct.orm_softc* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  store i32 %126, i32* %10, align 4
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* @SYS_RES_MEMORY, align 4
  %129 = call %struct.resource* @bus_alloc_resource_any(i32 %127, i32 %128, i32* %10, i32 0)
  store %struct.resource* %129, %struct.resource** %9, align 8
  %130 = load %struct.resource*, %struct.resource** %9, align 8
  %131 = icmp eq %struct.resource* %130, null
  br i1 %131, label %132, label %142

132:                                              ; preds = %111
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* @SYS_RES_MEMORY, align 4
  %135 = load %struct.orm_softc*, %struct.orm_softc** %12, align 8
  %136 = getelementptr inbounds %struct.orm_softc, %struct.orm_softc* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @bus_delete_resource(i32 %133, i32 %134, i32 %137)
  %139 = load i64, i64* @IOMEM_STEP, align 8
  %140 = load i64, i64* %8, align 8
  %141 = add nsw i64 %140, %139
  store i64 %141, i64* %8, align 8
  br label %35

142:                                              ; preds = %111
  %143 = load i32, i32* %10, align 4
  %144 = load %struct.orm_softc*, %struct.orm_softc** %12, align 8
  %145 = getelementptr inbounds %struct.orm_softc, %struct.orm_softc* %144, i32 0, i32 1
  %146 = load i32*, i32** %145, align 8
  %147 = load %struct.orm_softc*, %struct.orm_softc** %12, align 8
  %148 = getelementptr inbounds %struct.orm_softc, %struct.orm_softc* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %146, i64 %150
  store i32 %143, i32* %151, align 4
  %152 = load %struct.resource*, %struct.resource** %9, align 8
  %153 = load %struct.orm_softc*, %struct.orm_softc** %12, align 8
  %154 = getelementptr inbounds %struct.orm_softc, %struct.orm_softc* %153, i32 0, i32 2
  %155 = load %struct.resource**, %struct.resource*** %154, align 8
  %156 = load %struct.orm_softc*, %struct.orm_softc** %12, align 8
  %157 = getelementptr inbounds %struct.orm_softc, %struct.orm_softc* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.resource*, %struct.resource** %155, i64 %159
  store %struct.resource* %152, %struct.resource** %160, align 8
  %161 = load %struct.orm_softc*, %struct.orm_softc** %12, align 8
  %162 = getelementptr inbounds %struct.orm_softc, %struct.orm_softc* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %162, align 8
  %165 = load i64, i64* %11, align 8
  %166 = load i64, i64* %8, align 8
  %167 = add nsw i64 %166, %165
  store i64 %167, i64* %8, align 8
  br label %35

168:                                              ; preds = %45
  %169 = load %struct.orm_softc*, %struct.orm_softc** %12, align 8
  %170 = getelementptr inbounds %struct.orm_softc, %struct.orm_softc* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %168
  %174 = load i32, i32* %4, align 4
  %175 = load i32, i32* %7, align 4
  %176 = call i32 @device_delete_child(i32 %174, i32 %175)
  br label %189

177:                                              ; preds = %168
  %178 = load %struct.orm_softc*, %struct.orm_softc** %12, align 8
  %179 = getelementptr inbounds %struct.orm_softc, %struct.orm_softc* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = icmp eq i32 %180, 1
  br i1 %181, label %182, label %185

182:                                              ; preds = %177
  %183 = load i32, i32* %7, align 4
  %184 = call i32 @device_set_desc(i32 %183, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %188

185:                                              ; preds = %177
  %186 = load i32, i32* %7, align 4
  %187 = call i32 @device_set_desc(i32 %186, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %188

188:                                              ; preds = %185, %182
  br label %189

189:                                              ; preds = %17, %188, %173
  ret void
}

declare dso_local i64 @resource_disabled(i8*, i32) #1

declare dso_local i32 @BUS_ADD_CHILD(i32, i32, i8*, i32) #1

declare dso_local i32 @device_set_driver(i32, i32*) #1

declare dso_local i32 @isa_set_logicalid(i32, i32) #1

declare dso_local i32 @isa_set_vendorid(i32, i32) #1

declare dso_local %struct.orm_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_set_resource(i32, i32, i32, i64, i64) #1

declare dso_local %struct.resource* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @bus_delete_resource(i32, i32, i32) #1

declare dso_local i32 @rman_get_bustag(%struct.resource*) #1

declare dso_local i32 @rman_get_bushandle(%struct.resource*) #1

declare dso_local i32 @bus_space_read_region_1(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, %struct.resource*) #1

declare dso_local i32 @device_delete_child(i32, i32) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
