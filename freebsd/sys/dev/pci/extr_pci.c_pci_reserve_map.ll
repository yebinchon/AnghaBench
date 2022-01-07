; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_reserve_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_reserve_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.pci_devinfo = type { i32, %struct.resource_list }
%struct.resource_list = type { i32 }
%struct.pci_map = type { i32, i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [73 x i8] c"child %s requested type %d for rid %#x, but the BAR says it is an memio\0A\00", align 1
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [74 x i8] c"child %s requested type %d for rid %#x, but the BAR says it is an ioport\0A\00", align 1
@RF_ALIGNMENT_MASK = common dso_local global i32 0, align 4
@PCIM_BAR_MEM_PREFETCH = common dso_local global i32 0, align 4
@RF_PREFETCHABLE = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"%#jx bytes of rid %#x res %d failed (%#jx, %#jx).\0A\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"Lazy allocation of %#jx bytes rid %#x type %d at %#jx\0A\00", align 1
@PCIR_COMMAND = common dso_local global i32 0, align 4
@PCIM_CMD_MEMEN = common dso_local global i32 0, align 4
@PCIM_CMD_PORTEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.resource* (i32, i32, i32, i32*, i32, i32, i32, i32, i32)* @pci_reserve_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.resource* @pci_reserve_map(i32 %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.pci_devinfo*, align 8
  %20 = alloca %struct.resource_list*, align 8
  %21 = alloca %struct.resource*, align 8
  %22 = alloca %struct.pci_map*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %27 = load i32, i32* %11, align 4
  %28 = call %struct.pci_devinfo* @device_get_ivars(i32 %27)
  store %struct.pci_devinfo* %28, %struct.pci_devinfo** %19, align 8
  %29 = load %struct.pci_devinfo*, %struct.pci_devinfo** %19, align 8
  %30 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %29, i32 0, i32 1
  store %struct.resource_list* %30, %struct.resource_list** %20, align 8
  store %struct.resource* null, %struct.resource** %21, align 8
  %31 = load i32, i32* %11, align 4
  %32 = load i32*, i32** %13, align 8
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @pci_ea_is_enabled(i32 %31, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %9
  br label %233

37:                                               ; preds = %9
  %38 = load i32, i32* %11, align 4
  %39 = load i32*, i32** %13, align 8
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.pci_map* @pci_find_bar(i32 %38, i32 %40)
  store %struct.pci_map* %41, %struct.pci_map** %22, align 8
  %42 = load %struct.pci_map*, %struct.pci_map** %22, align 8
  %43 = icmp ne %struct.pci_map* %42, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %37
  %45 = load %struct.pci_map*, %struct.pci_map** %22, align 8
  %46 = getelementptr inbounds %struct.pci_map, %struct.pci_map* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %26, align 4
  %48 = load %struct.pci_map*, %struct.pci_map** %22, align 8
  %49 = getelementptr inbounds %struct.pci_map, %struct.pci_map* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %24, align 4
  br label %79

51:                                               ; preds = %37
  %52 = load i32, i32* %11, align 4
  %53 = load i32*, i32** %13, align 8
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @pci_read_bar(i32 %52, i32 %54, i32* %24, i32* %25, i32* null)
  %56 = load %struct.pci_devinfo*, %struct.pci_devinfo** %19, align 8
  %57 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %56, i32 0, i32 0
  %58 = load i32*, i32** %13, align 8
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @PCIR_IS_BIOS(i32* %57, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %51
  %63 = load i32, i32* %25, align 4
  %64 = call i32 @pci_romsize(i32 %63)
  store i32 %64, i32* %26, align 4
  br label %68

65:                                               ; preds = %51
  %66 = load i32, i32* %25, align 4
  %67 = call i32 @pci_mapsize(i32 %66)
  store i32 %67, i32* %26, align 4
  br label %68

68:                                               ; preds = %65, %62
  %69 = load i32, i32* %26, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  br label %233

72:                                               ; preds = %68
  %73 = load i32, i32* %11, align 4
  %74 = load i32*, i32** %13, align 8
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %24, align 4
  %77 = load i32, i32* %26, align 4
  %78 = call %struct.pci_map* @pci_add_bar(i32 %73, i32 %75, i32 %76, i32 %77)
  store %struct.pci_map* %78, %struct.pci_map** %22, align 8
  br label %79

79:                                               ; preds = %72, %44
  %80 = load i32, i32* %24, align 4
  %81 = call i64 @PCI_BAR_MEM(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %90, label %83

83:                                               ; preds = %79
  %84 = load %struct.pci_devinfo*, %struct.pci_devinfo** %19, align 8
  %85 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %84, i32 0, i32 0
  %86 = load i32*, i32** %13, align 8
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @PCIR_IS_BIOS(i32* %85, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %107

90:                                               ; preds = %83, %79
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* @SYS_RES_MEMORY, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %106

94:                                               ; preds = %90
  %95 = load i64, i64* @bootverbose, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %94
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %11, align 4
  %100 = call i32 @device_get_nameunit(i32 %99)
  %101 = load i32, i32* %12, align 4
  %102 = load i32*, i32** %13, align 8
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (i32, i8*, i32, i32, i32, ...) @device_printf(i32 %98, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %100, i32 %101, i32 %103)
  br label %105

105:                                              ; preds = %97, %94
  br label %233

106:                                              ; preds = %90
  br label %124

107:                                              ; preds = %83
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* @SYS_RES_IOPORT, align 4
  %110 = icmp ne i32 %108, %109
  br i1 %110, label %111, label %123

111:                                              ; preds = %107
  %112 = load i64, i64* @bootverbose, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %111
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* %11, align 4
  %117 = call i32 @device_get_nameunit(i32 %116)
  %118 = load i32, i32* %12, align 4
  %119 = load i32*, i32** %13, align 8
  %120 = load i32, i32* %119, align 4
  %121 = call i32 (i32, i8*, i32, i32, i32, ...) @device_printf(i32 %115, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 %117, i32 %118, i32 %120)
  br label %122

122:                                              ; preds = %114, %111
  br label %233

123:                                              ; preds = %107
  br label %124

124:                                              ; preds = %123, %106
  %125 = load i32, i32* %26, align 4
  %126 = shl i32 1, %125
  %127 = load i32, i32* %17, align 4
  %128 = mul nsw i32 %126, %127
  store i32 %128, i32* %16, align 4
  %129 = load i32, i32* %18, align 4
  %130 = call i32 @RF_ALIGNMENT(i32 %129)
  %131 = load i32, i32* %26, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %141

133:                                              ; preds = %124
  %134 = load i32, i32* %18, align 4
  %135 = load i32, i32* @RF_ALIGNMENT_MASK, align 4
  %136 = xor i32 %135, -1
  %137 = and i32 %134, %136
  %138 = load i32, i32* %26, align 4
  %139 = call i32 @RF_ALIGNMENT_LOG2(i32 %138)
  %140 = or i32 %137, %139
  store i32 %140, i32* %18, align 4
  br label %141

141:                                              ; preds = %133, %124
  %142 = load i32, i32* %24, align 4
  %143 = call i64 @PCI_BAR_MEM(i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %154

145:                                              ; preds = %141
  %146 = load i32, i32* %24, align 4
  %147 = load i32, i32* @PCIM_BAR_MEM_PREFETCH, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %145
  %151 = load i32, i32* @RF_PREFETCHABLE, align 4
  %152 = load i32, i32* %18, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %18, align 4
  br label %154

154:                                              ; preds = %150, %145, %141
  %155 = load %struct.resource_list*, %struct.resource_list** %20, align 8
  %156 = load i32, i32* %12, align 4
  %157 = load i32*, i32** %13, align 8
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %14, align 4
  %160 = load i32, i32* %15, align 4
  %161 = load i32, i32* %16, align 4
  %162 = call i32 @resource_list_add(%struct.resource_list* %155, i32 %156, i32 %158, i32 %159, i32 %160, i32 %161)
  %163 = load %struct.resource_list*, %struct.resource_list** %20, align 8
  %164 = load i32, i32* %10, align 4
  %165 = load i32, i32* %11, align 4
  %166 = load i32, i32* %12, align 4
  %167 = load i32*, i32** %13, align 8
  %168 = load i32, i32* %14, align 4
  %169 = load i32, i32* %15, align 4
  %170 = load i32, i32* %16, align 4
  %171 = load i32, i32* %18, align 4
  %172 = load i32, i32* @RF_ACTIVE, align 4
  %173 = xor i32 %172, -1
  %174 = and i32 %171, %173
  %175 = call %struct.resource* @resource_list_reserve(%struct.resource_list* %163, i32 %164, i32 %165, i32 %166, i32* %167, i32 %168, i32 %169, i32 %170, i32 %174)
  store %struct.resource* %175, %struct.resource** %21, align 8
  %176 = load %struct.resource*, %struct.resource** %21, align 8
  %177 = icmp eq %struct.resource* %176, null
  br i1 %177, label %178, label %192

178:                                              ; preds = %154
  %179 = load %struct.resource_list*, %struct.resource_list** %20, align 8
  %180 = load i32, i32* %12, align 4
  %181 = load i32*, i32** %13, align 8
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @resource_list_delete(%struct.resource_list* %179, i32 %180, i32 %182)
  %184 = load i32, i32* %11, align 4
  %185 = load i32, i32* %16, align 4
  %186 = load i32*, i32** %13, align 8
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* %12, align 4
  %189 = load i32, i32* %14, align 4
  %190 = load i32, i32* %15, align 4
  %191 = call i32 (i32, i8*, i32, i32, i32, ...) @device_printf(i32 %184, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %185, i32 %187, i32 %188, i32 %189, i32 %190)
  br label %233

192:                                              ; preds = %154
  %193 = load i64, i64* @bootverbose, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %204

195:                                              ; preds = %192
  %196 = load i32, i32* %11, align 4
  %197 = load i32, i32* %16, align 4
  %198 = load i32*, i32** %13, align 8
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* %12, align 4
  %201 = load %struct.resource*, %struct.resource** %21, align 8
  %202 = call i32 @rman_get_start(%struct.resource* %201)
  %203 = call i32 (i32, i8*, i32, i32, i32, ...) @device_printf(i32 %196, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i32 %197, i32 %199, i32 %200, i32 %202)
  br label %204

204:                                              ; preds = %195, %192
  %205 = load i32, i32* %11, align 4
  %206 = load i32, i32* @PCIR_COMMAND, align 4
  %207 = call i32 @pci_read_config(i32 %205, i32 %206, i32 2)
  store i32 %207, i32* %23, align 4
  %208 = load i32, i32* %11, align 4
  %209 = load i32, i32* @PCIR_COMMAND, align 4
  %210 = load i32, i32* %23, align 4
  %211 = load i32, i32* %24, align 4
  %212 = call i64 @PCI_BAR_MEM(i32 %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %216

214:                                              ; preds = %204
  %215 = load i32, i32* @PCIM_CMD_MEMEN, align 4
  br label %218

216:                                              ; preds = %204
  %217 = load i32, i32* @PCIM_CMD_PORTEN, align 4
  br label %218

218:                                              ; preds = %216, %214
  %219 = phi i32 [ %215, %214 ], [ %217, %216 ]
  %220 = xor i32 %219, -1
  %221 = and i32 %210, %220
  %222 = call i32 @pci_write_config(i32 %208, i32 %209, i32 %221, i32 2)
  %223 = load %struct.resource*, %struct.resource** %21, align 8
  %224 = call i32 @rman_get_start(%struct.resource* %223)
  store i32 %224, i32* %24, align 4
  %225 = load i32, i32* %11, align 4
  %226 = load %struct.pci_map*, %struct.pci_map** %22, align 8
  %227 = load i32, i32* %24, align 4
  %228 = call i32 @pci_write_bar(i32 %225, %struct.pci_map* %226, i32 %227)
  %229 = load i32, i32* %11, align 4
  %230 = load i32, i32* @PCIR_COMMAND, align 4
  %231 = load i32, i32* %23, align 4
  %232 = call i32 @pci_write_config(i32 %229, i32 %230, i32 %231, i32 2)
  br label %233

233:                                              ; preds = %218, %178, %122, %105, %71, %36
  %234 = load %struct.resource*, %struct.resource** %21, align 8
  ret %struct.resource* %234
}

declare dso_local %struct.pci_devinfo* @device_get_ivars(i32) #1

declare dso_local i64 @pci_ea_is_enabled(i32, i32) #1

declare dso_local %struct.pci_map* @pci_find_bar(i32, i32) #1

declare dso_local i32 @pci_read_bar(i32, i32, i32*, i32*, i32*) #1

declare dso_local i64 @PCIR_IS_BIOS(i32*, i32) #1

declare dso_local i32 @pci_romsize(i32) #1

declare dso_local i32 @pci_mapsize(i32) #1

declare dso_local %struct.pci_map* @pci_add_bar(i32, i32, i32, i32) #1

declare dso_local i64 @PCI_BAR_MEM(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @RF_ALIGNMENT(i32) #1

declare dso_local i32 @RF_ALIGNMENT_LOG2(i32) #1

declare dso_local i32 @resource_list_add(%struct.resource_list*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.resource* @resource_list_reserve(%struct.resource_list*, i32, i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @resource_list_delete(%struct.resource_list*, i32, i32) #1

declare dso_local i32 @rman_get_start(%struct.resource*) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i32 @pci_write_bar(i32, %struct.pci_map*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
