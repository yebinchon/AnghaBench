; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_ucode.c_ucode_load_bsp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_ucode.c_ucode_load_bsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32 (i32*, i32, i8**, i8**)*, i32* (i32*, i64*)* }
%union.anon = type { [4 x i32] }

@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"unaligned boundary %p\00", align 1
@loaders = common dso_local global %struct.TYPE_4__* null, align 8
@ucode_loader = common dso_local global %struct.TYPE_4__* null, align 8
@MODINFO_TYPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"cpu_microcode\00", align 1
@early_ucode_data = common dso_local global i32* null, align 8
@ucode_data = common dso_local global i32* null, align 8
@ucode_nrev = common dso_local global i8* null, align 8
@ucode_orev = common dso_local global i8* null, align 8
@ucode_error = common dso_local global i64 0, align 8
@NO_ERROR = common dso_local global i64 0, align 8
@NO_MATCH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ucode_load_bsp(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %union.anon, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @PAGE_SIZE, align 8
  %17 = urem i64 %15, %16
  %18 = icmp eq i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = load i64, i64* %3, align 8
  %21 = inttoptr i64 %20 to i8*
  %22 = call i32 @KASSERT(i32 %19, i8* %21)
  %23 = bitcast %union.anon* %4 to [4 x i32]*
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i64 0, i64 0
  %25 = call i32 @do_cpuid(i32 0, i32* %24)
  %26 = bitcast %union.anon* %4 to [4 x i32]*
  %27 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i64 0, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = bitcast %union.anon* %4 to [4 x i32]*
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %29, i64 0, i64 0
  store i32 %28, i32* %30, align 4
  %31 = bitcast %union.anon* %4 to [4 x i32]*
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i64 0, i64 3
  %33 = load i32, i32* %32, align 4
  %34 = bitcast %union.anon* %4 to [4 x i32]*
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* %34, i64 0, i64 1
  store i32 %33, i32* %35, align 4
  %36 = bitcast %union.anon* %4 to [13 x i8]*
  %37 = getelementptr inbounds [13 x i8], [13 x i8]* %36, i64 0, i64 12
  store i8 0, i8* %37, align 4
  store i64 0, i64* %12, align 8
  br label %38

38:                                               ; preds = %58, %1
  %39 = load i64, i64* %12, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @loaders, align 8
  %41 = call i64 @nitems(%struct.TYPE_4__* %40)
  %42 = icmp ult i64 %39, %41
  br i1 %42, label %43, label %61

43:                                               ; preds = %38
  %44 = bitcast %union.anon* %4 to [13 x i8]*
  %45 = getelementptr inbounds [13 x i8], [13 x i8]* %44, i64 0, i64 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @loaders, align 8
  %47 = load i64, i64* %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i64 @strcmp(i8* %45, i8* %50)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %43
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** @loaders, align 8
  %55 = load i64, i64* %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 %55
  store %struct.TYPE_4__* %56, %struct.TYPE_4__** @ucode_loader, align 8
  br label %61

57:                                               ; preds = %43
  br label %58

58:                                               ; preds = %57
  %59 = load i64, i64* %12, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %12, align 8
  br label %38

61:                                               ; preds = %53, %38
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ucode_loader, align 8
  %63 = icmp eq %struct.TYPE_4__* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  store i64 0, i64* %2, align 8
  br label %132

65:                                               ; preds = %61
  store i64 0, i64* %11, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %6, align 8
  br label %66

66:                                               ; preds = %121, %83, %65
  %67 = load i64, i64* %11, align 8
  %68 = call i64 @preload_search_next_name(i64 %67)
  store i64 %68, i64* %11, align 8
  %69 = load i64, i64* %11, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %122

72:                                               ; preds = %66
  %73 = load i64, i64* %11, align 8
  %74 = load i32, i32* @MODINFO_TYPE, align 4
  %75 = call i64 @preload_search_info(i64 %73, i32 %74)
  %76 = inttoptr i64 %75 to i8*
  store i8* %76, i8** %8, align 8
  %77 = load i8*, i8** %8, align 8
  %78 = icmp eq i8* %77, null
  br i1 %78, label %83, label %79

79:                                               ; preds = %72
  %80 = load i8*, i8** %8, align 8
  %81 = call i64 @strcmp(i8* %80, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %79, %72
  br label %66

84:                                               ; preds = %79
  %85 = load i64, i64* %11, align 8
  %86 = call i32* @preload_fetch_addr(i64 %85)
  store i32* %86, i32** %6, align 8
  %87 = load i64, i64* %11, align 8
  %88 = call i64 @preload_fetch_size(i64 %87)
  store i64 %88, i64* %13, align 8
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ucode_loader, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 2
  %91 = load i32* (i32*, i64*)*, i32* (i32*, i64*)** %90, align 8
  %92 = load i32*, i32** %6, align 8
  %93 = call i32* %91(i32* %92, i64* %13)
  store i32* %93, i32** %7, align 8
  %94 = load i32*, i32** %7, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %121

96:                                               ; preds = %84
  %97 = load i64, i64* %3, align 8
  %98 = load i64, i64* %13, align 8
  %99 = call i32* @map_ucode(i64 %97, i64 %98)
  store i32* %99, i32** %5, align 8
  %100 = load i32*, i32** %5, align 8
  %101 = load i32*, i32** %7, align 8
  %102 = load i64, i64* %13, align 8
  %103 = call i32 @memcpy_early(i32* %100, i32* %101, i64 %102)
  %104 = load i32*, i32** %5, align 8
  store i32* %104, i32** %7, align 8
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ucode_loader, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = load i32 (i32*, i32, i8**, i8**)*, i32 (i32*, i32, i8**, i8**)** %106, align 8
  %108 = load i32*, i32** %7, align 8
  %109 = call i32 %107(i32* %108, i32 0, i8** %9, i8** %10)
  store i32 %109, i32* %14, align 4
  %110 = load i32, i32* %14, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %96
  %113 = load i32*, i32** %7, align 8
  store i32* %113, i32** @early_ucode_data, align 8
  store i32* %113, i32** @ucode_data, align 8
  %114 = load i8*, i8** %9, align 8
  store i8* %114, i8** @ucode_nrev, align 8
  %115 = load i8*, i8** %10, align 8
  store i8* %115, i8** @ucode_orev, align 8
  %116 = load i64, i64* %13, align 8
  store i64 %116, i64* %2, align 8
  br label %132

117:                                              ; preds = %96
  %118 = load i64, i64* %3, align 8
  %119 = load i64, i64* %13, align 8
  %120 = call i32 @unmap_ucode(i64 %118, i64 %119)
  br label %121

121:                                              ; preds = %117, %84
  br label %66

122:                                              ; preds = %71
  %123 = load i32*, i32** %6, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %125, label %131

125:                                              ; preds = %122
  %126 = load i64, i64* @ucode_error, align 8
  %127 = load i64, i64* @NO_ERROR, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %125
  %130 = load i64, i64* @NO_MATCH, align 8
  store i64 %130, i64* @ucode_error, align 8
  br label %131

131:                                              ; preds = %129, %125, %122
  store i64 0, i64* %2, align 8
  br label %132

132:                                              ; preds = %131, %112, %64
  %133 = load i64, i64* %2, align 8
  ret i64 %133
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @do_cpuid(i32, i32*) #1

declare dso_local i64 @nitems(%struct.TYPE_4__*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @preload_search_next_name(i64) #1

declare dso_local i64 @preload_search_info(i64, i32) #1

declare dso_local i32* @preload_fetch_addr(i64) #1

declare dso_local i64 @preload_fetch_size(i64) #1

declare dso_local i32* @map_ucode(i64, i64) #1

declare dso_local i32 @memcpy_early(i32*, i32*, i64) #1

declare dso_local i32 @unmap_ucode(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
