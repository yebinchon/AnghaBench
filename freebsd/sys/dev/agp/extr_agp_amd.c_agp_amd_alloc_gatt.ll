; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_amd.c_agp_amd_alloc_gatt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_amd.c_agp_amd_alloc_gatt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_amd_gatt = type { i32, i32*, i8*, i8*, i8* }

@AGP_PAGE_SHIFT = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"allocating GATT for aperture of size %dM\0A\00", align 1
@M_AGP = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@VM_MEMATTR_WRITE_COMBINING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"allocation failed\0A\00", align 1
@AGP_PAGE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"failed to allocate page directory\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"gatt -> ag_pdir %#lx\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"allocating GATT for %d AGP page entries\0A\00", align 1
@AGP_AMD751_APBASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.agp_amd_gatt* (i32)* @agp_amd_alloc_gatt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.agp_amd_gatt* @agp_amd_alloc_gatt(i32 %0) #0 {
  %2 = alloca %struct.agp_amd_gatt*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.agp_amd_gatt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @AGP_GET_APERTURE(i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @AGP_PAGE_SHIFT, align 4
  %16 = ashr i32 %14, %15
  store i32 %16, i32* %5, align 4
  %17 = load i64, i64* @bootverbose, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* %4, align 4
  %22 = sdiv i32 %21, 1048576
  %23 = call i32 (i32, i8*, ...) @device_printf(i32 %20, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %19, %1
  %25 = load i32, i32* @M_AGP, align 4
  %26 = load i32, i32* @M_NOWAIT, align 4
  %27 = call %struct.agp_amd_gatt* @malloc(i32 40, i32 %25, i32 %26)
  store %struct.agp_amd_gatt* %27, %struct.agp_amd_gatt** %6, align 8
  %28 = load %struct.agp_amd_gatt*, %struct.agp_amd_gatt** %6, align 8
  %29 = icmp ne %struct.agp_amd_gatt* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  store %struct.agp_amd_gatt* null, %struct.agp_amd_gatt** %2, align 8
  br label %178

31:                                               ; preds = %24
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.agp_amd_gatt*, %struct.agp_amd_gatt** %6, align 8
  %34 = getelementptr inbounds %struct.agp_amd_gatt, %struct.agp_amd_gatt* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 4
  %38 = trunc i64 %37 to i32
  %39 = load i32, i32* @M_NOWAIT, align 4
  %40 = load i32, i32* @M_ZERO, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @VM_MEMATTR_WRITE_COMBINING, align 4
  %43 = call i64 @kmem_alloc_attr(i32 %38, i32 %41, i32 0, i32 -1, i32 %42)
  %44 = inttoptr i64 %43 to i8*
  %45 = load %struct.agp_amd_gatt*, %struct.agp_amd_gatt** %6, align 8
  %46 = getelementptr inbounds %struct.agp_amd_gatt, %struct.agp_amd_gatt* %45, i32 0, i32 2
  store i8* %44, i8** %46, align 8
  %47 = load %struct.agp_amd_gatt*, %struct.agp_amd_gatt** %6, align 8
  %48 = getelementptr inbounds %struct.agp_amd_gatt, %struct.agp_amd_gatt* %47, i32 0, i32 2
  %49 = load i8*, i8** %48, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %61, label %51

51:                                               ; preds = %31
  %52 = load i64, i64* @bootverbose, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32, i32* %3, align 4
  %56 = call i32 (i32, i8*, ...) @device_printf(i32 %55, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %57

57:                                               ; preds = %54, %51
  %58 = load %struct.agp_amd_gatt*, %struct.agp_amd_gatt** %6, align 8
  %59 = load i32, i32* @M_AGP, align 4
  %60 = call i32 @free(%struct.agp_amd_gatt* %58, i32 %59)
  store %struct.agp_amd_gatt* null, %struct.agp_amd_gatt** %2, align 8
  br label %178

61:                                               ; preds = %31
  %62 = load i32, i32* @AGP_PAGE_SIZE, align 4
  %63 = load i32, i32* @M_NOWAIT, align 4
  %64 = load i32, i32* @M_ZERO, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @VM_MEMATTR_WRITE_COMBINING, align 4
  %67 = call i64 @kmem_alloc_attr(i32 %62, i32 %65, i32 0, i32 -1, i32 %66)
  %68 = inttoptr i64 %67 to i8*
  %69 = bitcast i8* %68 to i32*
  %70 = load %struct.agp_amd_gatt*, %struct.agp_amd_gatt** %6, align 8
  %71 = getelementptr inbounds %struct.agp_amd_gatt, %struct.agp_amd_gatt* %70, i32 0, i32 1
  store i32* %69, i32** %71, align 8
  %72 = load %struct.agp_amd_gatt*, %struct.agp_amd_gatt** %6, align 8
  %73 = getelementptr inbounds %struct.agp_amd_gatt, %struct.agp_amd_gatt* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %95, label %76

76:                                               ; preds = %61
  %77 = load i64, i64* @bootverbose, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32, i32* %3, align 4
  %81 = call i32 (i32, i8*, ...) @device_printf(i32 %80, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %82

82:                                               ; preds = %79, %76
  %83 = load %struct.agp_amd_gatt*, %struct.agp_amd_gatt** %6, align 8
  %84 = getelementptr inbounds %struct.agp_amd_gatt, %struct.agp_amd_gatt* %83, i32 0, i32 2
  %85 = load i8*, i8** %84, align 8
  %86 = ptrtoint i8* %85 to i32
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = mul i64 %88, 4
  %90 = trunc i64 %89 to i32
  %91 = call i32 @kmem_free(i32 %86, i32 %90)
  %92 = load %struct.agp_amd_gatt*, %struct.agp_amd_gatt** %6, align 8
  %93 = load i32, i32* @M_AGP, align 4
  %94 = call i32 @free(%struct.agp_amd_gatt* %92, i32 %93)
  store %struct.agp_amd_gatt* null, %struct.agp_amd_gatt** %2, align 8
  br label %178

95:                                               ; preds = %61
  %96 = load %struct.agp_amd_gatt*, %struct.agp_amd_gatt** %6, align 8
  %97 = getelementptr inbounds %struct.agp_amd_gatt, %struct.agp_amd_gatt* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = ptrtoint i32* %98 to i32
  %100 = call i8* @vtophys(i32 %99)
  %101 = load %struct.agp_amd_gatt*, %struct.agp_amd_gatt** %6, align 8
  %102 = getelementptr inbounds %struct.agp_amd_gatt, %struct.agp_amd_gatt* %101, i32 0, i32 4
  store i8* %100, i8** %102, align 8
  %103 = load i64, i64* @bootverbose, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %95
  %106 = load i32, i32* %3, align 4
  %107 = load %struct.agp_amd_gatt*, %struct.agp_amd_gatt** %6, align 8
  %108 = getelementptr inbounds %struct.agp_amd_gatt, %struct.agp_amd_gatt* %107, i32 0, i32 4
  %109 = load i8*, i8** %108, align 8
  %110 = ptrtoint i8* %109 to i32
  %111 = call i32 (i32, i8*, ...) @device_printf(i32 %106, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %110)
  br label %112

112:                                              ; preds = %105, %95
  %113 = load i32, i32* %5, align 4
  %114 = load %struct.agp_amd_gatt*, %struct.agp_amd_gatt** %6, align 8
  %115 = getelementptr inbounds %struct.agp_amd_gatt, %struct.agp_amd_gatt* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  %116 = load i64, i64* @bootverbose, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %112
  %119 = load i32, i32* %3, align 4
  %120 = load %struct.agp_amd_gatt*, %struct.agp_amd_gatt** %6, align 8
  %121 = getelementptr inbounds %struct.agp_amd_gatt, %struct.agp_amd_gatt* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 (i32, i8*, ...) @device_printf(i32 %119, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %122)
  br label %124

124:                                              ; preds = %118, %112
  %125 = load %struct.agp_amd_gatt*, %struct.agp_amd_gatt** %6, align 8
  %126 = getelementptr inbounds %struct.agp_amd_gatt, %struct.agp_amd_gatt* %125, i32 0, i32 2
  %127 = load i8*, i8** %126, align 8
  %128 = ptrtoint i8* %127 to i32
  %129 = call i8* @vtophys(i32 %128)
  %130 = load %struct.agp_amd_gatt*, %struct.agp_amd_gatt** %6, align 8
  %131 = getelementptr inbounds %struct.agp_amd_gatt, %struct.agp_amd_gatt* %130, i32 0, i32 3
  store i8* %129, i8** %131, align 8
  %132 = load i32, i32* %3, align 4
  %133 = load i32, i32* @AGP_AMD751_APBASE, align 4
  %134 = call i32 @pci_read_config(i32 %132, i32 %133, i32 4)
  %135 = ashr i32 %134, 22
  store i32 %135, i32* %9, align 4
  %136 = load i32, i32* %5, align 4
  %137 = sext i32 %136 to i64
  %138 = mul i64 %137, 4
  %139 = load i32, i32* @AGP_PAGE_SIZE, align 4
  %140 = sext i32 %139 to i64
  %141 = add i64 %138, %140
  %142 = sub i64 %141, 1
  %143 = load i32, i32* @AGP_PAGE_SHIFT, align 4
  %144 = zext i32 %143 to i64
  %145 = lshr i64 %142, %144
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %147

147:                                              ; preds = %173, %124
  %148 = load i32, i32* %7, align 4
  %149 = load i32, i32* %8, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %176

151:                                              ; preds = %147
  %152 = load %struct.agp_amd_gatt*, %struct.agp_amd_gatt** %6, align 8
  %153 = getelementptr inbounds %struct.agp_amd_gatt, %struct.agp_amd_gatt* %152, i32 0, i32 2
  %154 = load i8*, i8** %153, align 8
  %155 = ptrtoint i8* %154 to i32
  %156 = load i32, i32* %7, align 4
  %157 = load i32, i32* @AGP_PAGE_SIZE, align 4
  %158 = mul nsw i32 %156, %157
  %159 = add nsw i32 %155, %158
  store i32 %159, i32* %10, align 4
  %160 = load i32, i32* %10, align 4
  %161 = call i8* @vtophys(i32 %160)
  %162 = ptrtoint i8* %161 to i32
  store i32 %162, i32* %11, align 4
  %163 = load i32, i32* %11, align 4
  %164 = or i32 %163, 1
  %165 = load %struct.agp_amd_gatt*, %struct.agp_amd_gatt** %6, align 8
  %166 = getelementptr inbounds %struct.agp_amd_gatt, %struct.agp_amd_gatt* %165, i32 0, i32 1
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %7, align 4
  %169 = load i32, i32* %9, align 4
  %170 = add nsw i32 %168, %169
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %167, i64 %171
  store i32 %164, i32* %172, align 4
  br label %173

173:                                              ; preds = %151
  %174 = load i32, i32* %7, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %7, align 4
  br label %147

176:                                              ; preds = %147
  %177 = load %struct.agp_amd_gatt*, %struct.agp_amd_gatt** %6, align 8
  store %struct.agp_amd_gatt* %177, %struct.agp_amd_gatt** %2, align 8
  br label %178

178:                                              ; preds = %176, %82, %57, %30
  %179 = load %struct.agp_amd_gatt*, %struct.agp_amd_gatt** %2, align 8
  ret %struct.agp_amd_gatt* %179
}

declare dso_local i32 @AGP_GET_APERTURE(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local %struct.agp_amd_gatt* @malloc(i32, i32, i32) #1

declare dso_local i64 @kmem_alloc_attr(i32, i32, i32, i32, i32) #1

declare dso_local i32 @free(%struct.agp_amd_gatt*, i32) #1

declare dso_local i32 @kmem_free(i32, i32) #1

declare dso_local i8* @vtophys(i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
