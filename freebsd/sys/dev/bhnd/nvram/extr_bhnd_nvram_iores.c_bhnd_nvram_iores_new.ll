; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_iores.c_bhnd_nvram_iores_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_iores.c_bhnd_nvram_iores_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_nvram_io = type { i32* }
%struct.bhnd_resource = type { i32 }
%struct.bhnd_nvram_iores = type { i32, %struct.bhnd_nvram_io, i64, i64, %struct.bhnd_resource* }

@.str = private unnamed_addr constant [22 x i8] c"invalid bus width %u\0A\00", align 1
@SIZE_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"offset %#jx+%#jx exceeds SIZE_MAX\0A\00", align 1
@BUS_SPACE_MAXSIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [44 x i8] c"offset %#jx+%#jx exceeds BUS_SPACE_MAXSIZE\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"base address %#jx+%#jx not aligned to bus width %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"size %#jx not aligned to bus width %u\0A\00", align 1
@M_BHND_NVRAM = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@bhnd_nvram_iores_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bhnd_nvram_io* @bhnd_nvram_iores_new(%struct.bhnd_resource* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.bhnd_nvram_io*, align 8
  %6 = alloca %struct.bhnd_resource*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.bhnd_nvram_iores*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.bhnd_resource* %0, %struct.bhnd_resource** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  switch i32 %13, label %15 [
    i32 1, label %14
    i32 2, label %14
    i32 4, label %14
  ]

14:                                               ; preds = %4, %4, %4
  br label %18

15:                                               ; preds = %4
  %16 = load i32, i32* %9, align 4
  %17 = call i32 (i8*, i32, ...) @BHND_NV_LOG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %16)
  store %struct.bhnd_nvram_io* null, %struct.bhnd_nvram_io** %5, align 8
  br label %116

18:                                               ; preds = %14
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* @SIZE_MAX, align 8
  %21 = icmp sgt i64 %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @SIZE_MAX, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %22, %18
  %27 = load i64, i64* %7, align 8
  %28 = trunc i64 %27 to i32
  %29 = load i64, i64* %7, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i32 (i8*, i32, ...) @BHND_NV_LOG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %28, i32 %30)
  store %struct.bhnd_nvram_io* null, %struct.bhnd_nvram_io** %5, align 8
  br label %116

32:                                               ; preds = %22
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* @BUS_SPACE_MAXSIZE, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* @BUS_SPACE_MAXSIZE, align 8
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %36, %32
  %41 = load i64, i64* %7, align 8
  %42 = trunc i64 %41 to i32
  %43 = load i64, i64* %7, align 8
  %44 = trunc i64 %43 to i32
  %45 = call i32 (i8*, i32, ...) @BHND_NV_LOG(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %42, i32 %44)
  store %struct.bhnd_nvram_io* null, %struct.bhnd_nvram_io** %5, align 8
  br label %116

46:                                               ; preds = %36
  %47 = load %struct.bhnd_resource*, %struct.bhnd_resource** %6, align 8
  %48 = getelementptr inbounds %struct.bhnd_resource, %struct.bhnd_resource* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @rman_get_size(i32 %49)
  store i64 %50, i64* %12, align 8
  %51 = load %struct.bhnd_resource*, %struct.bhnd_resource** %6, align 8
  %52 = getelementptr inbounds %struct.bhnd_resource, %struct.bhnd_resource* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @rman_get_start(i32 %53)
  store i64 %54, i64* %11, align 8
  %55 = load i64, i64* %12, align 8
  %56 = load i64, i64* %7, align 8
  %57 = icmp slt i64 %55, %56
  br i1 %57, label %68, label %58

58:                                               ; preds = %46
  %59 = load i64, i64* %12, align 8
  %60 = load i64, i64* %8, align 8
  %61 = icmp slt i64 %59, %60
  br i1 %61, label %68, label %62

62:                                               ; preds = %58
  %63 = load i64, i64* %12, align 8
  %64 = load i64, i64* %8, align 8
  %65 = sub nsw i64 %63, %64
  %66 = load i64, i64* %7, align 8
  %67 = icmp slt i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %62, %58, %46
  store %struct.bhnd_nvram_io* null, %struct.bhnd_nvram_io** %5, align 8
  br label %116

69:                                               ; preds = %62
  %70 = load i64, i64* %11, align 8
  %71 = load i64, i64* %7, align 8
  %72 = add nsw i64 %70, %71
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = srem i64 %72, %74
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %69
  %78 = load i64, i64* %11, align 8
  %79 = trunc i64 %78 to i32
  %80 = load i64, i64* %7, align 8
  %81 = trunc i64 %80 to i32
  %82 = load i32, i32* %9, align 4
  %83 = call i32 (i8*, i32, ...) @BHND_NV_LOG(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %79, i32 %81, i32 %82)
  store %struct.bhnd_nvram_io* null, %struct.bhnd_nvram_io** %5, align 8
  br label %116

84:                                               ; preds = %69
  %85 = load i64, i64* %8, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = srem i64 %85, %87
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %84
  %91 = load i64, i64* %8, align 8
  %92 = trunc i64 %91 to i32
  %93 = load i32, i32* %9, align 4
  %94 = call i32 (i8*, i32, ...) @BHND_NV_LOG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %92, i32 %93)
  store %struct.bhnd_nvram_io* null, %struct.bhnd_nvram_io** %5, align 8
  br label %116

95:                                               ; preds = %84
  %96 = load i32, i32* @M_BHND_NVRAM, align 4
  %97 = load i32, i32* @M_WAITOK, align 4
  %98 = call %struct.bhnd_nvram_iores* @malloc(i32 40, i32 %96, i32 %97)
  store %struct.bhnd_nvram_iores* %98, %struct.bhnd_nvram_iores** %10, align 8
  %99 = load %struct.bhnd_nvram_iores*, %struct.bhnd_nvram_iores** %10, align 8
  %100 = getelementptr inbounds %struct.bhnd_nvram_iores, %struct.bhnd_nvram_iores* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.bhnd_nvram_io, %struct.bhnd_nvram_io* %100, i32 0, i32 0
  store i32* @bhnd_nvram_iores_ops, i32** %101, align 8
  %102 = load %struct.bhnd_resource*, %struct.bhnd_resource** %6, align 8
  %103 = load %struct.bhnd_nvram_iores*, %struct.bhnd_nvram_iores** %10, align 8
  %104 = getelementptr inbounds %struct.bhnd_nvram_iores, %struct.bhnd_nvram_iores* %103, i32 0, i32 4
  store %struct.bhnd_resource* %102, %struct.bhnd_resource** %104, align 8
  %105 = load i64, i64* %7, align 8
  %106 = load %struct.bhnd_nvram_iores*, %struct.bhnd_nvram_iores** %10, align 8
  %107 = getelementptr inbounds %struct.bhnd_nvram_iores, %struct.bhnd_nvram_iores* %106, i32 0, i32 3
  store i64 %105, i64* %107, align 8
  %108 = load i64, i64* %8, align 8
  %109 = load %struct.bhnd_nvram_iores*, %struct.bhnd_nvram_iores** %10, align 8
  %110 = getelementptr inbounds %struct.bhnd_nvram_iores, %struct.bhnd_nvram_iores* %109, i32 0, i32 2
  store i64 %108, i64* %110, align 8
  %111 = load i32, i32* %9, align 4
  %112 = load %struct.bhnd_nvram_iores*, %struct.bhnd_nvram_iores** %10, align 8
  %113 = getelementptr inbounds %struct.bhnd_nvram_iores, %struct.bhnd_nvram_iores* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  %114 = load %struct.bhnd_nvram_iores*, %struct.bhnd_nvram_iores** %10, align 8
  %115 = getelementptr inbounds %struct.bhnd_nvram_iores, %struct.bhnd_nvram_iores* %114, i32 0, i32 1
  store %struct.bhnd_nvram_io* %115, %struct.bhnd_nvram_io** %5, align 8
  br label %116

116:                                              ; preds = %95, %90, %77, %68, %40, %26, %15
  %117 = load %struct.bhnd_nvram_io*, %struct.bhnd_nvram_io** %5, align 8
  ret %struct.bhnd_nvram_io* %117
}

declare dso_local i32 @BHND_NV_LOG(i8*, i32, ...) #1

declare dso_local i64 @rman_get_size(i32) #1

declare dso_local i64 @rman_get_start(i32) #1

declare dso_local %struct.bhnd_nvram_iores* @malloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
