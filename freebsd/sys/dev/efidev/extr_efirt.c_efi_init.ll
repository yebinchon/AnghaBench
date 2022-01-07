; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/efidev/extr_efirt.c_efi_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/efidev/extr_efirt.c_efi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efi_systbl = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.efi_cfgtbl = type { i32 }
%struct.efi_rt = type { i64 }
%struct.efi_map_header = type { i32, i32 }
%struct.efi_md = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"efi.rt.disabled\00", align 1
@efi_lock = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"efi\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@efi_systbl_phys = common dso_local global i64 0, align 8
@bootverbose = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"EFI systbl not available\0A\00", align 1
@efi_systbl = common dso_local global %struct.efi_systbl* null, align 8
@EFI_SYSTBL_SIG = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"EFI systbl signature invalid\0A\00", align 1
@efi_cfgtbl = common dso_local global %struct.efi_cfgtbl* null, align 8
@.str.4 = private unnamed_addr constant [33 x i8] c"EFI config table is not present\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"elf kernel\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"elf64 kernel\00", align 1
@MODINFO_METADATA = common dso_local global i32 0, align 4
@MODINFOMD_EFI_MAP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"EFI map is not present\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [31 x i8] c"EFI cannot create runtime map\0A\00", align 1
@efi_runtime = common dso_local global %struct.efi_rt* null, align 8
@.str.9 = private unnamed_addr constant [43 x i8] c"EFI runtime services table is not present\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [51 x i8] c"EFI runtime services table has an invalid pointer\0A\00", align 1
@shutdown_final = common dso_local global i32 0, align 4
@efi_shutdown_final = common dso_local global i32 0, align 4
@SHUTDOWN_PRI_LAST = common dso_local global i64 0, align 8
@efi_shutdown_tag = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @efi_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efi_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.efi_map_header*, align 8
  %3 = alloca %struct.efi_md*, align 8
  %4 = alloca %struct.efi_rt*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %8, align 4
  %9 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %8)
  %10 = load i32, i32* %8, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %13

12:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %175

13:                                               ; preds = %0
  %14 = load i32, i32* @MTX_DEF, align 4
  %15 = call i32 @mtx_init(i32* @efi_lock, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %14)
  %16 = load i64, i64* @efi_systbl_phys, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load i64, i64* @bootverbose, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %18
  store i32 0, i32* %1, align 4
  br label %175

24:                                               ; preds = %13
  %25 = load i64, i64* @efi_systbl_phys, align 8
  %26 = call i64 @efi_phys_to_kva(i64 %25)
  %27 = inttoptr i64 %26 to %struct.efi_systbl*
  store %struct.efi_systbl* %27, %struct.efi_systbl** @efi_systbl, align 8
  %28 = load %struct.efi_systbl*, %struct.efi_systbl** @efi_systbl, align 8
  %29 = icmp eq %struct.efi_systbl* %28, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %24
  %31 = load %struct.efi_systbl*, %struct.efi_systbl** @efi_systbl, align 8
  %32 = getelementptr inbounds %struct.efi_systbl, %struct.efi_systbl* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @EFI_SYSTBL_SIG, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %30, %24
  store %struct.efi_systbl* null, %struct.efi_systbl** @efi_systbl, align 8
  %38 = load i64, i64* @bootverbose, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %37
  store i32 0, i32* %1, align 4
  br label %175

43:                                               ; preds = %30
  %44 = load %struct.efi_systbl*, %struct.efi_systbl** @efi_systbl, align 8
  %45 = getelementptr inbounds %struct.efi_systbl, %struct.efi_systbl* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %54

49:                                               ; preds = %43
  %50 = load %struct.efi_systbl*, %struct.efi_systbl** @efi_systbl, align 8
  %51 = getelementptr inbounds %struct.efi_systbl, %struct.efi_systbl* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to %struct.efi_cfgtbl*
  br label %54

54:                                               ; preds = %49, %48
  %55 = phi %struct.efi_cfgtbl* [ null, %48 ], [ %53, %49 ]
  store %struct.efi_cfgtbl* %55, %struct.efi_cfgtbl** @efi_cfgtbl, align 8
  %56 = load %struct.efi_cfgtbl*, %struct.efi_cfgtbl** @efi_cfgtbl, align 8
  %57 = icmp eq %struct.efi_cfgtbl* %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = load i64, i64* @bootverbose, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %58
  br label %64

64:                                               ; preds = %63, %54
  %65 = call i32* @preload_search_by_type(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  store i32* %65, i32** %5, align 8
  %66 = load i32*, i32** %5, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = call i32* @preload_search_by_type(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  store i32* %69, i32** %5, align 8
  br label %70

70:                                               ; preds = %68, %64
  %71 = load i32*, i32** %5, align 8
  %72 = load i32, i32* @MODINFO_METADATA, align 4
  %73 = load i32, i32* @MODINFOMD_EFI_MAP, align 4
  %74 = or i32 %72, %73
  %75 = call i64 @preload_search_info(i32* %71, i32 %74)
  %76 = inttoptr i64 %75 to %struct.efi_map_header*
  store %struct.efi_map_header* %76, %struct.efi_map_header** %2, align 8
  %77 = load %struct.efi_map_header*, %struct.efi_map_header** %2, align 8
  %78 = icmp eq %struct.efi_map_header* %77, null
  br i1 %78, label %79, label %85

79:                                               ; preds = %70
  %80 = load i64, i64* @bootverbose, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  br label %84

84:                                               ; preds = %82, %79
  store i32 0, i32* %1, align 4
  br label %175

85:                                               ; preds = %70
  store i64 16, i64* %6, align 8
  %86 = load %struct.efi_map_header*, %struct.efi_map_header** %2, align 8
  %87 = bitcast %struct.efi_map_header* %86 to i32*
  %88 = load i64, i64* %6, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  %90 = bitcast i32* %89 to %struct.efi_md*
  store %struct.efi_md* %90, %struct.efi_md** %3, align 8
  %91 = load %struct.efi_map_header*, %struct.efi_map_header** %2, align 8
  %92 = getelementptr inbounds %struct.efi_map_header, %struct.efi_map_header* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %85
  %96 = load i32, i32* @ENOMEM, align 4
  store i32 %96, i32* %1, align 4
  br label %175

97:                                               ; preds = %85
  %98 = load %struct.efi_map_header*, %struct.efi_map_header** %2, align 8
  %99 = getelementptr inbounds %struct.efi_map_header, %struct.efi_map_header* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.efi_map_header*, %struct.efi_map_header** %2, align 8
  %102 = getelementptr inbounds %struct.efi_map_header, %struct.efi_map_header* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = sdiv i32 %100, %103
  store i32 %104, i32* %7, align 4
  %105 = load %struct.efi_md*, %struct.efi_md** %3, align 8
  %106 = load i32, i32* %7, align 4
  %107 = load %struct.efi_map_header*, %struct.efi_map_header** %2, align 8
  %108 = getelementptr inbounds %struct.efi_map_header, %struct.efi_map_header* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @efi_create_1t1_map(%struct.efi_md* %105, i32 %106, i32 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %119, label %112

112:                                              ; preds = %97
  %113 = load i64, i64* @bootverbose, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %112
  %116 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  br label %117

117:                                              ; preds = %115, %112
  %118 = load i32, i32* @ENOMEM, align 4
  store i32 %118, i32* %1, align 4
  br label %175

119:                                              ; preds = %97
  %120 = load %struct.efi_systbl*, %struct.efi_systbl** @efi_systbl, align 8
  %121 = getelementptr inbounds %struct.efi_systbl, %struct.efi_systbl* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %119
  br label %130

125:                                              ; preds = %119
  %126 = load %struct.efi_systbl*, %struct.efi_systbl** @efi_systbl, align 8
  %127 = getelementptr inbounds %struct.efi_systbl, %struct.efi_systbl* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = inttoptr i64 %128 to %struct.efi_rt*
  br label %130

130:                                              ; preds = %125, %124
  %131 = phi %struct.efi_rt* [ null, %124 ], [ %129, %125 ]
  store %struct.efi_rt* %131, %struct.efi_rt** @efi_runtime, align 8
  %132 = load %struct.efi_rt*, %struct.efi_rt** @efi_runtime, align 8
  %133 = icmp eq %struct.efi_rt* %132, null
  br i1 %133, label %134, label %142

134:                                              ; preds = %130
  %135 = load i64, i64* @bootverbose, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %134
  %138 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0))
  br label %139

139:                                              ; preds = %137, %134
  %140 = call i32 (...) @efi_destroy_1t1_map()
  %141 = load i32, i32* @ENXIO, align 4
  store i32 %141, i32* %1, align 4
  br label %175

142:                                              ; preds = %130
  %143 = load %struct.efi_rt*, %struct.efi_rt** @efi_runtime, align 8
  %144 = ptrtoint %struct.efi_rt* %143 to i64
  %145 = call i64 @efi_phys_to_kva(i64 %144)
  %146 = inttoptr i64 %145 to %struct.efi_rt*
  store %struct.efi_rt* %146, %struct.efi_rt** %4, align 8
  %147 = load %struct.efi_rt*, %struct.efi_rt** %4, align 8
  %148 = icmp eq %struct.efi_rt* %147, null
  br i1 %148, label %161, label %149

149:                                              ; preds = %142
  %150 = load %struct.efi_md*, %struct.efi_md** %3, align 8
  %151 = load i32, i32* %7, align 4
  %152 = load %struct.efi_map_header*, %struct.efi_map_header** %2, align 8
  %153 = getelementptr inbounds %struct.efi_map_header, %struct.efi_map_header* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.efi_rt*, %struct.efi_rt** %4, align 8
  %156 = getelementptr inbounds %struct.efi_rt, %struct.efi_rt* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = trunc i64 %157 to i32
  %159 = call i32 @efi_is_in_map(%struct.efi_md* %150, i32 %151, i32 %154, i32 %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %169, label %161

161:                                              ; preds = %149, %142
  %162 = load i64, i64* @bootverbose, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %161
  %165 = call i32 @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.10, i64 0, i64 0))
  br label %166

166:                                              ; preds = %164, %161
  store %struct.efi_rt* null, %struct.efi_rt** @efi_runtime, align 8
  %167 = call i32 (...) @efi_destroy_1t1_map()
  %168 = load i32, i32* @ENXIO, align 4
  store i32 %168, i32* %1, align 4
  br label %175

169:                                              ; preds = %149
  %170 = load i32, i32* @shutdown_final, align 4
  %171 = load i32, i32* @efi_shutdown_final, align 4
  %172 = load i64, i64* @SHUTDOWN_PRI_LAST, align 8
  %173 = sub nsw i64 %172, 1
  %174 = call i32 @EVENTHANDLER_REGISTER(i32 %170, i32 %171, i32* null, i64 %173)
  store i32 %174, i32* @efi_shutdown_tag, align 4
  store i32 0, i32* %1, align 4
  br label %175

175:                                              ; preds = %169, %166, %139, %117, %95, %84, %42, %23, %12
  %176 = load i32, i32* %1, align 4
  ret i32 %176
}

declare dso_local i32 @TUNABLE_INT_FETCH(i8*, i32*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @efi_phys_to_kva(i64) #1

declare dso_local i32* @preload_search_by_type(i8*) #1

declare dso_local i64 @preload_search_info(i32*, i32) #1

declare dso_local i32 @efi_create_1t1_map(%struct.efi_md*, i32, i32) #1

declare dso_local i32 @efi_destroy_1t1_map(...) #1

declare dso_local i32 @efi_is_in_map(%struct.efi_md*, i32, i32, i32) #1

declare dso_local i32 @EVENTHANDLER_REGISTER(i32, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
