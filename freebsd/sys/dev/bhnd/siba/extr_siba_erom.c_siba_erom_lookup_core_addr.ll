; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/siba/extr_siba_erom.c_siba_erom_lookup_core_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/siba/extr_siba_erom.c_siba_erom_lookup_core_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_core_match = type { i32 }
%struct.bhnd_core_info = type { i32, i32 }
%struct.siba_erom = type { i32 }
%struct.siba_core_id = type { i32 }
%struct.siba_admatch = type { i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@SIBA_CFG_SIZE = common dso_local global i32 0, align 4
@BHND_PORT_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"%s%u.%u offset %ju exceeds %s0.0 size %ju\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@BHND_ADDR_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"%s%u.%u offset %ju would overflow %s0.0 addr %ju\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"addrspace %u is unsupported\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"failed to decode address match register value 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.bhnd_core_match*, i32, i64, i64, %struct.bhnd_core_info*, i32*, i32*)* @siba_erom_lookup_core_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siba_erom_lookup_core_addr(i32* %0, %struct.bhnd_core_match* %1, i32 %2, i64 %3, i64 %4, %struct.bhnd_core_info* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.bhnd_core_match*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.bhnd_core_info*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.siba_erom*, align 8
  %19 = alloca %struct.bhnd_core_info, align 4
  %20 = alloca %struct.siba_core_id, align 4
  %21 = alloca %struct.siba_admatch, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store %struct.bhnd_core_match* %1, %struct.bhnd_core_match** %11, align 8
  store i32 %2, i32* %12, align 4
  store i64 %3, i64* %13, align 8
  store i64 %4, i64* %14, align 8
  store %struct.bhnd_core_info* %5, %struct.bhnd_core_info** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = bitcast i32* %31 to %struct.siba_erom*
  store %struct.siba_erom* %32, %struct.siba_erom** %18, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = load %struct.bhnd_core_match*, %struct.bhnd_core_match** %11, align 8
  %35 = call i32 @siba_erom_lookup_core(i32* %33, %struct.bhnd_core_match* %34, %struct.bhnd_core_info* %19)
  store i32 %35, i32* %26, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %8
  %38 = load i32, i32* %26, align 4
  store i32 %38, i32* %9, align 4
  br label %177

39:                                               ; preds = %8
  %40 = load %struct.siba_erom*, %struct.siba_erom** %18, align 8
  %41 = getelementptr inbounds %struct.siba_erom, %struct.siba_erom* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.bhnd_core_info, %struct.bhnd_core_info* %19, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.bhnd_core_info, %struct.bhnd_core_info* %19, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @siba_eio_read_core_id(i32* %41, i32 %43, i32 %45, %struct.siba_core_id* %20)
  store i32 %46, i32* %26, align 4
  %47 = load i32, i32* %26, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %39
  %50 = load i32, i32* %26, align 4
  store i32 %50, i32* %9, align 4
  br label %177

51:                                               ; preds = %39
  %52 = load i32, i32* %12, align 4
  %53 = load i64, i64* %13, align 8
  %54 = call i32 @siba_is_port_valid(%struct.siba_core_id* %20, i32 %52, i64 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* @ENOENT, align 4
  store i32 %57, i32* %9, align 4
  br label %177

58:                                               ; preds = %51
  %59 = load i64, i64* %14, align 8
  %60 = load i32, i32* %12, align 4
  %61 = load i64, i64* %13, align 8
  %62 = call i64 @siba_port_region_count(%struct.siba_core_id* %20, i32 %60, i64 %61)
  %63 = icmp sge i64 %59, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i32, i32* @ENOENT, align 4
  store i32 %65, i32* %9, align 4
  br label %177

66:                                               ; preds = %58
  %67 = load i32, i32* %12, align 4
  %68 = load i64, i64* %13, align 8
  %69 = load i64, i64* %14, align 8
  %70 = call i32 @siba_cfg_index(%struct.siba_core_id* %20, i32 %67, i64 %68, i64 %69, i64* %25)
  store i32 %70, i32* %26, align 4
  %71 = load i32, i32* %26, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %131, label %73

73:                                               ; preds = %66
  %74 = load i64, i64* %25, align 8
  %75 = call i32 @SIBA_CFG_OFFSET(i64 %74)
  store i32 %75, i32* %29, align 4
  %76 = load i32, i32* @SIBA_CFG_SIZE, align 4
  store i32 %76, i32* %30, align 4
  %77 = load i32*, i32** %10, align 8
  %78 = load %struct.bhnd_core_match*, %struct.bhnd_core_match** %11, align 8
  %79 = load i32, i32* @BHND_PORT_DEVICE, align 4
  %80 = call i32 @siba_erom_lookup_core_addr(i32* %77, %struct.bhnd_core_match* %78, i32 %79, i64 0, i64 0, %struct.bhnd_core_info* null, i32* %27, i32* %28)
  store i32 %80, i32* %26, align 4
  %81 = load i32, i32* %26, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %73
  %84 = load i32, i32* %26, align 4
  store i32 %84, i32* %9, align 4
  br label %177

85:                                               ; preds = %73
  %86 = load i32, i32* %28, align 4
  %87 = load i32, i32* %30, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %100

89:                                               ; preds = %85
  %90 = load i32, i32* %12, align 4
  %91 = call i8* @bhnd_port_type_name(i32 %90)
  %92 = load i64, i64* %13, align 8
  %93 = load i64, i64* %14, align 8
  %94 = load i32, i32* %29, align 4
  %95 = load i32, i32* @BHND_PORT_DEVICE, align 4
  %96 = call i8* @bhnd_port_type_name(i32 %95)
  %97 = load i32, i32* %28, align 4
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %91, i64 %92, i64 %93, i32 %94, i8* %96, i32 %97)
  %99 = load i32, i32* @ENXIO, align 4
  store i32 %99, i32* %9, align 4
  br label %177

100:                                              ; preds = %85
  %101 = load i32, i32* @BHND_ADDR_MAX, align 4
  %102 = load i32, i32* %27, align 4
  %103 = sub nsw i32 %101, %102
  %104 = load i32, i32* %29, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %117

106:                                              ; preds = %100
  %107 = load i32, i32* %12, align 4
  %108 = call i8* @bhnd_port_type_name(i32 %107)
  %109 = load i64, i64* %13, align 8
  %110 = load i64, i64* %14, align 8
  %111 = load i32, i32* %29, align 4
  %112 = load i32, i32* @BHND_PORT_DEVICE, align 4
  %113 = call i8* @bhnd_port_type_name(i32 %112)
  %114 = load i32, i32* %27, align 4
  %115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i8* %108, i64 %109, i64 %110, i32 %111, i8* %113, i32 %114)
  %116 = load i32, i32* @ENXIO, align 4
  store i32 %116, i32* %9, align 4
  br label %177

117:                                              ; preds = %100
  %118 = load %struct.bhnd_core_info*, %struct.bhnd_core_info** %15, align 8
  %119 = icmp ne %struct.bhnd_core_info* %118, null
  br i1 %119, label %120, label %124

120:                                              ; preds = %117
  %121 = load %struct.bhnd_core_info*, %struct.bhnd_core_info** %15, align 8
  %122 = bitcast %struct.bhnd_core_info* %121 to i8*
  %123 = bitcast %struct.bhnd_core_info* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %122, i8* align 4 %123, i64 8, i1 false)
  br label %124

124:                                              ; preds = %120, %117
  %125 = load i32, i32* %27, align 4
  %126 = load i32, i32* %29, align 4
  %127 = add nsw i32 %125, %126
  %128 = load i32*, i32** %16, align 8
  store i32 %127, i32* %128, align 4
  %129 = load i32, i32* %30, align 4
  %130 = load i32*, i32** %17, align 8
  store i32 %129, i32* %130, align 4
  store i32 0, i32* %9, align 4
  br label %177

131:                                              ; preds = %66
  %132 = load i32, i32* %12, align 4
  %133 = load i64, i64* %13, align 8
  %134 = load i64, i64* %14, align 8
  %135 = call i32 @siba_addrspace_index(%struct.siba_core_id* %20, i32 %132, i64 %133, i64 %134, i64* %24)
  store i32 %135, i32* %26, align 4
  %136 = load i32, i32* %26, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %131
  %139 = load i32, i32* %26, align 4
  store i32 %139, i32* %9, align 4
  br label %177

140:                                              ; preds = %131
  %141 = load i64, i64* %24, align 8
  %142 = call i64 @siba_admatch_offset(i64 %141)
  store i64 %142, i64* %23, align 8
  %143 = load i64, i64* %23, align 8
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %140
  %146 = load i64, i64* %24, align 8
  %147 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %146)
  %148 = load i32, i32* @ENODEV, align 4
  store i32 %148, i32* %9, align 4
  br label %177

149:                                              ; preds = %140
  %150 = load %struct.siba_erom*, %struct.siba_erom** %18, align 8
  %151 = getelementptr inbounds %struct.siba_erom, %struct.siba_erom* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.bhnd_core_info, %struct.bhnd_core_info* %19, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i64, i64* %23, align 8
  %155 = call i32 @siba_eio_read_4(i32* %151, i32 %153, i64 %154)
  store i32 %155, i32* %22, align 4
  %156 = load i32, i32* %22, align 4
  %157 = call i32 @siba_parse_admatch(i32 %156, %struct.siba_admatch* %21)
  store i32 %157, i32* %26, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %149
  %160 = load i32, i32* %22, align 4
  %161 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %160)
  %162 = load i32, i32* %26, align 4
  store i32 %162, i32* %9, align 4
  br label %177

163:                                              ; preds = %149
  %164 = load %struct.bhnd_core_info*, %struct.bhnd_core_info** %15, align 8
  %165 = icmp ne %struct.bhnd_core_info* %164, null
  br i1 %165, label %166, label %170

166:                                              ; preds = %163
  %167 = load %struct.bhnd_core_info*, %struct.bhnd_core_info** %15, align 8
  %168 = bitcast %struct.bhnd_core_info* %167 to i8*
  %169 = bitcast %struct.bhnd_core_info* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %168, i8* align 4 %169, i64 8, i1 false)
  br label %170

170:                                              ; preds = %166, %163
  %171 = getelementptr inbounds %struct.siba_admatch, %struct.siba_admatch* %21, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load i32*, i32** %16, align 8
  store i32 %172, i32* %173, align 4
  %174 = getelementptr inbounds %struct.siba_admatch, %struct.siba_admatch* %21, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load i32*, i32** %17, align 8
  store i32 %175, i32* %176, align 4
  store i32 0, i32* %9, align 4
  br label %177

177:                                              ; preds = %170, %159, %145, %138, %124, %106, %89, %83, %64, %56, %49, %37
  %178 = load i32, i32* %9, align 4
  ret i32 %178
}

declare dso_local i32 @siba_erom_lookup_core(i32*, %struct.bhnd_core_match*, %struct.bhnd_core_info*) #1

declare dso_local i32 @siba_eio_read_core_id(i32*, i32, i32, %struct.siba_core_id*) #1

declare dso_local i32 @siba_is_port_valid(%struct.siba_core_id*, i32, i64) #1

declare dso_local i64 @siba_port_region_count(%struct.siba_core_id*, i32, i64) #1

declare dso_local i32 @siba_cfg_index(%struct.siba_core_id*, i32, i64, i64, i64*) #1

declare dso_local i32 @SIBA_CFG_OFFSET(i64) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @bhnd_port_type_name(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @siba_addrspace_index(%struct.siba_core_id*, i32, i64, i64, i64*) #1

declare dso_local i64 @siba_admatch_offset(i64) #1

declare dso_local i32 @siba_eio_read_4(i32*, i32, i64) #1

declare dso_local i32 @siba_parse_admatch(i32, %struct.siba_admatch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
