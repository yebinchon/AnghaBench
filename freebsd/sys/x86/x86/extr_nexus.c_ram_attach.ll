; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_nexus.c_ram_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_nexus.c_ram_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.bios_smap = type { i64, i64, i64 }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"elf kernel\00", align 1
@ELF_KERN_STR = common dso_local global i8* null, align 8
@MODINFO_METADATA = common dso_local global i32 0, align 4
@MODINFOMD_SMAP = common dso_local global i32 0, align 4
@SMAP_TYPE_MEMORY = common dso_local global i64 0, align 8
@mem_rman = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"ram_attach: resource %d failed set with %d\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"ram_attach: resource %d failed to attach\00", align 1
@dump_avail = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ram_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ram_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.bios_smap*, align 8
  %5 = alloca %struct.bios_smap*, align 8
  %6 = alloca %struct.bios_smap*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %14 = call i32* @preload_search_by_type(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32* %14, i32** %10, align 8
  %15 = load i32*, i32** %10, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i8*, i8** @ELF_KERN_STR, align 8
  %19 = call i32* @preload_search_by_type(i8* %18)
  store i32* %19, i32** %10, align 8
  br label %20

20:                                               ; preds = %17, %1
  %21 = load i32*, i32** %10, align 8
  %22 = load i32, i32* @MODINFO_METADATA, align 4
  %23 = load i32, i32* @MODINFOMD_SMAP, align 4
  %24 = or i32 %22, %23
  %25 = call i64 @preload_search_info(i32* %21, i32 %24)
  %26 = inttoptr i64 %25 to %struct.bios_smap*
  store %struct.bios_smap* %26, %struct.bios_smap** %4, align 8
  %27 = load %struct.bios_smap*, %struct.bios_smap** %4, align 8
  %28 = icmp ne %struct.bios_smap* %27, null
  br i1 %28, label %29, label %115

29:                                               ; preds = %20
  %30 = load %struct.bios_smap*, %struct.bios_smap** %4, align 8
  %31 = bitcast %struct.bios_smap* %30 to i64*
  %32 = getelementptr inbounds i64, i64* %31, i64 -1
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %11, align 8
  %34 = load %struct.bios_smap*, %struct.bios_smap** %4, align 8
  %35 = ptrtoint %struct.bios_smap* %34 to i64
  %36 = load i64, i64* %11, align 8
  %37 = add i64 %35, %36
  %38 = inttoptr i64 %37 to %struct.bios_smap*
  store %struct.bios_smap* %38, %struct.bios_smap** %6, align 8
  store i32 0, i32* %13, align 4
  %39 = load %struct.bios_smap*, %struct.bios_smap** %4, align 8
  store %struct.bios_smap* %39, %struct.bios_smap** %5, align 8
  br label %40

40:                                               ; preds = %111, %29
  %41 = load %struct.bios_smap*, %struct.bios_smap** %5, align 8
  %42 = load %struct.bios_smap*, %struct.bios_smap** %6, align 8
  %43 = icmp ult %struct.bios_smap* %41, %42
  br i1 %43, label %44, label %114

44:                                               ; preds = %40
  %45 = load %struct.bios_smap*, %struct.bios_smap** %5, align 8
  %46 = getelementptr inbounds %struct.bios_smap, %struct.bios_smap* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @SMAP_TYPE_MEMORY, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %55, label %50

50:                                               ; preds = %44
  %51 = load %struct.bios_smap*, %struct.bios_smap** %5, align 8
  %52 = getelementptr inbounds %struct.bios_smap, %struct.bios_smap* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50, %44
  br label %111

56:                                               ; preds = %50
  %57 = load %struct.bios_smap*, %struct.bios_smap** %5, align 8
  %58 = getelementptr inbounds %struct.bios_smap, %struct.bios_smap* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mem_rman, i32 0, i32 0), align 8
  %61 = icmp sgt i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %111

63:                                               ; preds = %56
  %64 = load %struct.bios_smap*, %struct.bios_smap** %5, align 8
  %65 = getelementptr inbounds %struct.bios_smap, %struct.bios_smap* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.bios_smap*, %struct.bios_smap** %5, align 8
  %68 = getelementptr inbounds %struct.bios_smap, %struct.bios_smap* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %66, %69
  %71 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mem_rman, i32 0, i32 0), align 8
  %72 = icmp sgt i64 %70, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %63
  %74 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mem_rman, i32 0, i32 0), align 8
  %75 = load %struct.bios_smap*, %struct.bios_smap** %5, align 8
  %76 = getelementptr inbounds %struct.bios_smap, %struct.bios_smap* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = sub nsw i64 %74, %77
  br label %83

79:                                               ; preds = %63
  %80 = load %struct.bios_smap*, %struct.bios_smap** %5, align 8
  %81 = getelementptr inbounds %struct.bios_smap, %struct.bios_smap* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  br label %83

83:                                               ; preds = %79, %73
  %84 = phi i64 [ %78, %73 ], [ %82, %79 ]
  store i64 %84, i64* %8, align 8
  %85 = load i32, i32* %3, align 4
  %86 = load i32, i32* @SYS_RES_MEMORY, align 4
  %87 = load i32, i32* %13, align 4
  %88 = load %struct.bios_smap*, %struct.bios_smap** %5, align 8
  %89 = getelementptr inbounds %struct.bios_smap, %struct.bios_smap* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* %8, align 8
  %92 = call i32 @bus_set_resource(i32 %85, i32 %86, i32 %87, i64 %90, i64 %91)
  store i32 %92, i32* %12, align 4
  %93 = load i32, i32* %12, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %83
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* %12, align 4
  %98 = call i32 (i8*, i32, ...) @panic(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %95, %83
  %100 = load i32, i32* %3, align 4
  %101 = load i32, i32* @SYS_RES_MEMORY, align 4
  %102 = call %struct.resource* @bus_alloc_resource_any(i32 %100, i32 %101, i32* %13, i32 0)
  store %struct.resource* %102, %struct.resource** %7, align 8
  %103 = load %struct.resource*, %struct.resource** %7, align 8
  %104 = icmp eq %struct.resource* %103, null
  br i1 %104, label %105, label %108

105:                                              ; preds = %99
  %106 = load i32, i32* %13, align 4
  %107 = call i32 (i8*, i32, ...) @panic(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %106)
  br label %108

108:                                              ; preds = %105, %99
  %109 = load i32, i32* %13, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %13, align 4
  br label %111

111:                                              ; preds = %108, %62, %55
  %112 = load %struct.bios_smap*, %struct.bios_smap** %5, align 8
  %113 = getelementptr inbounds %struct.bios_smap, %struct.bios_smap* %112, i32 1
  store %struct.bios_smap* %113, %struct.bios_smap** %5, align 8
  br label %40

114:                                              ; preds = %40
  store i32 0, i32* %2, align 4
  br label %177

115:                                              ; preds = %20
  store i32 0, i32* %13, align 4
  %116 = load i64*, i64** @dump_avail, align 8
  store i64* %116, i64** %9, align 8
  br label %117

117:                                              ; preds = %171, %115
  %118 = load i64*, i64** %9, align 8
  %119 = getelementptr inbounds i64, i64* %118, i64 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %176

122:                                              ; preds = %117
  %123 = load i64*, i64** %9, align 8
  %124 = getelementptr inbounds i64, i64* %123, i64 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mem_rman, i32 0, i32 0), align 8
  %127 = icmp sgt i64 %125, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %122
  br label %176

129:                                              ; preds = %122
  %130 = load i64*, i64** %9, align 8
  %131 = getelementptr inbounds i64, i64* %130, i64 1
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mem_rman, i32 0, i32 0), align 8
  %134 = icmp sgt i64 %132, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %129
  %136 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mem_rman, i32 0, i32 0), align 8
  br label %141

137:                                              ; preds = %129
  %138 = load i64*, i64** %9, align 8
  %139 = getelementptr inbounds i64, i64* %138, i64 1
  %140 = load i64, i64* %139, align 8
  br label %141

141:                                              ; preds = %137, %135
  %142 = phi i64 [ %136, %135 ], [ %140, %137 ]
  %143 = load i64*, i64** %9, align 8
  %144 = getelementptr inbounds i64, i64* %143, i64 0
  %145 = load i64, i64* %144, align 8
  %146 = sub nsw i64 %142, %145
  store i64 %146, i64* %8, align 8
  %147 = load i32, i32* %3, align 4
  %148 = load i32, i32* @SYS_RES_MEMORY, align 4
  %149 = load i32, i32* %13, align 4
  %150 = load i64*, i64** %9, align 8
  %151 = getelementptr inbounds i64, i64* %150, i64 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* %8, align 8
  %154 = call i32 @bus_set_resource(i32 %147, i32 %148, i32 %149, i64 %152, i64 %153)
  store i32 %154, i32* %12, align 4
  %155 = load i32, i32* %12, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %141
  %158 = load i32, i32* %13, align 4
  %159 = load i32, i32* %12, align 4
  %160 = call i32 (i8*, i32, ...) @panic(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %158, i32 %159)
  br label %161

161:                                              ; preds = %157, %141
  %162 = load i32, i32* %3, align 4
  %163 = load i32, i32* @SYS_RES_MEMORY, align 4
  %164 = call %struct.resource* @bus_alloc_resource_any(i32 %162, i32 %163, i32* %13, i32 0)
  store %struct.resource* %164, %struct.resource** %7, align 8
  %165 = load %struct.resource*, %struct.resource** %7, align 8
  %166 = icmp eq %struct.resource* %165, null
  br i1 %166, label %167, label %170

167:                                              ; preds = %161
  %168 = load i32, i32* %13, align 4
  %169 = call i32 (i8*, i32, ...) @panic(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %168)
  br label %170

170:                                              ; preds = %167, %161
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %13, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %13, align 4
  %174 = load i64*, i64** %9, align 8
  %175 = getelementptr inbounds i64, i64* %174, i64 2
  store i64* %175, i64** %9, align 8
  br label %117

176:                                              ; preds = %128, %117
  store i32 0, i32* %2, align 4
  br label %177

177:                                              ; preds = %176, %114
  %178 = load i32, i32* %2, align 4
  ret i32 %178
}

declare dso_local i32* @preload_search_by_type(i8*) #1

declare dso_local i64 @preload_search_info(i32*, i32) #1

declare dso_local i32 @bus_set_resource(i32, i32, i32, i64, i64) #1

declare dso_local i32 @panic(i8*, i32, ...) #1

declare dso_local %struct.resource* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
