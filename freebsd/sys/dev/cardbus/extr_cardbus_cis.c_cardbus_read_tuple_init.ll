; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cardbus/extr_cardbus_cis.c_cardbus_read_tuple_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cardbus/extr_cardbus_cis.c_cardbus_read_tuple_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }

@PCIM_CIS_ASI_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"CIS in PCI config space\0A\00", align 1
@CIS_CONFIG_SPACE = common dso_local global %struct.resource* null, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"CIS in BAR %#x\0A\00", align 1
@PCIR_BIOS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"CIS in option rom\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Unable to read CIS: Unknown space: %d\0A\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"Unable to allocate resource to read CIS.\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"CIS Mapped to %#jx\0A\00", align 1
@PCIM_CIS_ROM_MASK = common dso_local global i32 0, align 4
@CARDBUS_EXROM_SIGNATURE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"Bad header in rom %d: [%x] %04x\0A\00", align 1
@CARDBUS_EXROM_DATA_PTR = common dso_local global i32 0, align 4
@CARDBUS_EXROM_DATA_IMAGE_LENGTH = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [70 x i8] c"Warning, size of Option ROM image %d is 0 bytes, assuming 512 bytes.\0A\00", align 1
@CARDBUS_EXROM_DATA_INDICATOR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [31 x i8] c"Cannot find CIS in Option ROM\0A\00", align 1
@PCIM_CIS_ADDR_MASK = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [19 x i8] c"CIS offset is %#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.resource* (i32, i32, i32*, i32*)* @cardbus_read_tuple_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.resource* @cardbus_read_tuple_init(i32 %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.resource*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @PCIM_CIS_ASI_MASK, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  switch i32 %22, label %41 [
    i32 129, label %23
    i32 135, label %27
    i32 134, label %27
    i32 133, label %27
    i32 132, label %27
    i32 131, label %27
    i32 130, label %27
    i32 128, label %36
  ]

23:                                               ; preds = %4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @DEVPRINTF(i32 ptrtoint ([25 x i8]* @.str to i32))
  %26 = load %struct.resource*, %struct.resource** @CIS_CONFIG_SPACE, align 8
  store %struct.resource* %26, %struct.resource** %5, align 8
  br label %165

27:                                               ; preds = %4, %4, %4, %4, %4, %4
  %28 = load i32, i32* %11, align 4
  %29 = sub nsw i32 %28, 135
  %30 = call i32 @PCIR_BAR(i32 %29)
  %31 = load i32*, i32** %9, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @DEVPRINTF(i32 %34)
  br label %45

36:                                               ; preds = %4
  %37 = load i32, i32* @PCIR_BIOS, align 4
  %38 = load i32*, i32** %9, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @DEVPRINTF(i32 ptrtoint ([19 x i8]* @.str.2 to i32))
  br label %45

41:                                               ; preds = %4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %11, align 4
  %44 = call i32 (i32, i8*, ...) @device_printf(i32 %42, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %43)
  store %struct.resource* null, %struct.resource** %5, align 8
  br label %165

45:                                               ; preds = %36, %27
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @SYS_RES_MEMORY, align 4
  %48 = load i32*, i32** %9, align 8
  %49 = call i32 @rman_make_alignment_flags(i32 4096)
  %50 = load i32, i32* @RF_ACTIVE, align 4
  %51 = or i32 %49, %50
  %52 = call %struct.resource* @bus_alloc_resource_any(i32 %46, i32 %47, i32* %48, i32 %51)
  store %struct.resource* %52, %struct.resource** %10, align 8
  %53 = load %struct.resource*, %struct.resource** %10, align 8
  %54 = icmp eq %struct.resource* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %45
  %56 = load i32, i32* %6, align 4
  %57 = call i32 (i32, i8*, ...) @device_printf(i32 %56, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  store %struct.resource* null, %struct.resource** %5, align 8
  br label %165

58:                                               ; preds = %45
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.resource*, %struct.resource** %10, align 8
  %61 = call i32 @rman_get_start(%struct.resource* %60)
  %62 = call i32 @DEVPRINTF(i32 %61)
  %63 = load i32, i32* %11, align 4
  %64 = icmp eq i32 %63, 128
  br i1 %64, label %65, label %153

65:                                               ; preds = %58
  store i32 0, i32* %13, align 4
  store i32 0, i32* %16, align 4
  %66 = load i32*, i32** %8, align 8
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @PCIM_CIS_ROM_MASK, align 4
  %69 = and i32 %67, %68
  %70 = ashr i32 %69, 28
  store i32 %70, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %71

71:                                               ; preds = %142, %65
  %72 = load %struct.resource*, %struct.resource** %10, align 8
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* @CARDBUS_EXROM_SIGNATURE, align 4
  %75 = add nsw i32 %73, %74
  %76 = call i32 @bus_read_2(%struct.resource* %72, i32 %75)
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* %15, align 4
  %78 = icmp ne i32 %77, 43605
  br i1 %78, label %79, label %94

79:                                               ; preds = %71
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %16, align 4
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* @CARDBUS_EXROM_SIGNATURE, align 4
  %84 = add nsw i32 %82, %83
  %85 = load i32, i32* %15, align 4
  %86 = call i32 (i32, i8*, ...) @device_printf(i32 %80, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %81, i32 %84, i32 %85)
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* %7, align 4
  %89 = load i32*, i32** %9, align 8
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.resource*, %struct.resource** %10, align 8
  %92 = call i32 @cardbus_read_tuple_finish(i32 %87, i32 %88, i32 %90, %struct.resource* %91)
  %93 = load i32*, i32** %9, align 8
  store i32 0, i32* %93, align 4
  store %struct.resource* null, %struct.resource** %5, align 8
  br label %165

94:                                               ; preds = %71
  %95 = load i32, i32* %16, align 4
  %96 = load i32, i32* %17, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  br label %145

99:                                               ; preds = %94
  %100 = load i32, i32* %13, align 4
  %101 = load %struct.resource*, %struct.resource** %10, align 8
  %102 = load i32, i32* %13, align 4
  %103 = load i32, i32* @CARDBUS_EXROM_DATA_PTR, align 4
  %104 = add nsw i32 %102, %103
  %105 = call i32 @bus_read_2(%struct.resource* %101, i32 %104)
  %106 = add nsw i32 %100, %105
  store i32 %106, i32* %14, align 4
  %107 = load %struct.resource*, %struct.resource** %10, align 8
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* @CARDBUS_EXROM_DATA_IMAGE_LENGTH, align 4
  %110 = add nsw i32 %108, %109
  %111 = call i32 @bus_read_2(%struct.resource* %107, i32 %110)
  store i32 %111, i32* %12, align 4
  %112 = load i32, i32* %12, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %99
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* %16, align 4
  %117 = call i32 (i32, i8*, ...) @device_printf(i32 %115, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.7, i64 0, i64 0), i32 %116)
  store i32 1, i32* %12, align 4
  br label %118

118:                                              ; preds = %114, %99
  %119 = load i32, i32* %12, align 4
  %120 = shl i32 %119, 9
  store i32 %120, i32* %12, align 4
  %121 = load %struct.resource*, %struct.resource** %10, align 8
  %122 = load i32, i32* %14, align 4
  %123 = load i32, i32* @CARDBUS_EXROM_DATA_INDICATOR, align 4
  %124 = add nsw i32 %122, %123
  %125 = call i32 @bus_read_1(%struct.resource* %121, i32 %124)
  %126 = and i32 %125, 128
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %138

128:                                              ; preds = %118
  %129 = load i32, i32* %6, align 4
  %130 = call i32 (i32, i8*, ...) @device_printf(i32 %129, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  %131 = load i32, i32* %6, align 4
  %132 = load i32, i32* %7, align 4
  %133 = load i32*, i32** %9, align 8
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.resource*, %struct.resource** %10, align 8
  %136 = call i32 @cardbus_read_tuple_finish(i32 %131, i32 %132, i32 %134, %struct.resource* %135)
  %137 = load i32*, i32** %9, align 8
  store i32 0, i32* %137, align 4
  store %struct.resource* null, %struct.resource** %5, align 8
  br label %165

138:                                              ; preds = %118
  %139 = load i32, i32* %12, align 4
  %140 = load i32, i32* %13, align 4
  %141 = add nsw i32 %140, %139
  store i32 %141, i32* %13, align 4
  br label %142

142:                                              ; preds = %138
  %143 = load i32, i32* %16, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %16, align 4
  br label %71

145:                                              ; preds = %98
  %146 = load i32, i32* %13, align 4
  %147 = load i32*, i32** %8, align 8
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @PCIM_CIS_ADDR_MASK, align 4
  %150 = and i32 %148, %149
  %151 = add nsw i32 %146, %150
  %152 = load i32*, i32** %8, align 8
  store i32 %151, i32* %152, align 4
  br label %159

153:                                              ; preds = %58
  %154 = load i32*, i32** %8, align 8
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @PCIM_CIS_ADDR_MASK, align 4
  %157 = and i32 %155, %156
  %158 = load i32*, i32** %8, align 8
  store i32 %157, i32* %158, align 4
  br label %159

159:                                              ; preds = %153, %145
  %160 = load i32, i32* %6, align 4
  %161 = load i32*, i32** %8, align 8
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @DEVPRINTF(i32 %162)
  %164 = load %struct.resource*, %struct.resource** %10, align 8
  store %struct.resource* %164, %struct.resource** %5, align 8
  br label %165

165:                                              ; preds = %159, %128, %79, %55, %41, %23
  %166 = load %struct.resource*, %struct.resource** %5, align 8
  ret %struct.resource* %166
}

declare dso_local i32 @DEVPRINTF(i32) #1

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local %struct.resource* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @rman_make_alignment_flags(i32) #1

declare dso_local i32 @rman_get_start(%struct.resource*) #1

declare dso_local i32 @bus_read_2(%struct.resource*, i32) #1

declare dso_local i32 @cardbus_read_tuple_finish(i32, i32, i32, %struct.resource*) #1

declare dso_local i32 @bus_read_1(%struct.resource*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
