; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvdimm/extr_nvdimm_spa.c_nvdimm_spa_dev_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvdimm/extr_nvdimm_spa.c_nvdimm_spa_dev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvdimm_spa_dev = type { i32*, i32, i32*, i32, i32, i32*, i32 }
%struct.make_dev_args = type { i32, i32, i32, %struct.nvdimm_spa_dev*, i32, i32, i32*, i32* }
%struct.sglist = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"NVDIMM %s cannot map into KVA, error %d\0A\00", align 1
@M_WAITOK = common dso_local global i32 0, align 4
@OBJT_SG = common dso_local global i32 0, align 4
@VM_PROT_ALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"NVDIMM %s failed to alloc vm object\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"NVDIMM %s failed to init sglist, error %d\00", align 1
@MAKEDEV_WAITOK = common dso_local global i32 0, align 4
@MAKEDEV_CHECKNAME = common dso_local global i32 0, align 4
@spa_cdevsw = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_OPERATOR = common dso_local global i32 0, align 4
@M_NVDIMM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"nvdimm_%s\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"NVDIMM %s cannot create devfs node, error %d\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvdimm_spa_dev_init(%struct.nvdimm_spa_dev* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.nvdimm_spa_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.make_dev_args, align 8
  %8 = alloca %struct.sglist*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nvdimm_spa_dev* %0, %struct.nvdimm_spa_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.nvdimm_spa_dev*, %struct.nvdimm_spa_dev** %4, align 8
  %13 = getelementptr inbounds %struct.nvdimm_spa_dev, %struct.nvdimm_spa_dev* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.nvdimm_spa_dev*, %struct.nvdimm_spa_dev** %4, align 8
  %16 = getelementptr inbounds %struct.nvdimm_spa_dev, %struct.nvdimm_spa_dev* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.nvdimm_spa_dev*, %struct.nvdimm_spa_dev** %4, align 8
  %19 = getelementptr inbounds %struct.nvdimm_spa_dev, %struct.nvdimm_spa_dev* %18, i32 0, i32 5
  %20 = load %struct.nvdimm_spa_dev*, %struct.nvdimm_spa_dev** %4, align 8
  %21 = getelementptr inbounds %struct.nvdimm_spa_dev, %struct.nvdimm_spa_dev* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @pmap_large_map(i32 %14, i32 %17, i32** %19, i32 %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %3
  %27 = load i8*, i8** %5, align 8
  %28 = load i32, i32* %11, align 4
  %29 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %27, i32 %28)
  %30 = load %struct.nvdimm_spa_dev*, %struct.nvdimm_spa_dev** %4, align 8
  %31 = getelementptr inbounds %struct.nvdimm_spa_dev, %struct.nvdimm_spa_dev* %30, i32 0, i32 5
  store i32* null, i32** %31, align 8
  br label %32

32:                                               ; preds = %26, %3
  %33 = load i32, i32* @M_WAITOK, align 4
  %34 = call %struct.sglist* @sglist_alloc(i32 1, i32 %33)
  store %struct.sglist* %34, %struct.sglist** %8, align 8
  %35 = load %struct.sglist*, %struct.sglist** %8, align 8
  %36 = load %struct.nvdimm_spa_dev*, %struct.nvdimm_spa_dev** %4, align 8
  %37 = getelementptr inbounds %struct.nvdimm_spa_dev, %struct.nvdimm_spa_dev* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.nvdimm_spa_dev*, %struct.nvdimm_spa_dev** %4, align 8
  %40 = getelementptr inbounds %struct.nvdimm_spa_dev, %struct.nvdimm_spa_dev* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @sglist_append_phys(%struct.sglist* %35, i32 %38, i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %65

45:                                               ; preds = %32
  %46 = load i32, i32* @OBJT_SG, align 4
  %47 = load %struct.sglist*, %struct.sglist** %8, align 8
  %48 = load %struct.nvdimm_spa_dev*, %struct.nvdimm_spa_dev** %4, align 8
  %49 = getelementptr inbounds %struct.nvdimm_spa_dev, %struct.nvdimm_spa_dev* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @VM_PROT_ALL, align 4
  %52 = call i32* @vm_pager_allocate(i32 %46, %struct.sglist* %47, i32 %50, i32 %51, i32 0, i32* null)
  %53 = load %struct.nvdimm_spa_dev*, %struct.nvdimm_spa_dev** %4, align 8
  %54 = getelementptr inbounds %struct.nvdimm_spa_dev, %struct.nvdimm_spa_dev* %53, i32 0, i32 2
  store i32* %52, i32** %54, align 8
  %55 = load %struct.nvdimm_spa_dev*, %struct.nvdimm_spa_dev** %4, align 8
  %56 = getelementptr inbounds %struct.nvdimm_spa_dev, %struct.nvdimm_spa_dev* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %45
  %60 = load i8*, i8** %5, align 8
  %61 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %60)
  %62 = load %struct.sglist*, %struct.sglist** %8, align 8
  %63 = call i32 @sglist_free(%struct.sglist* %62)
  br label %64

64:                                               ; preds = %59, %45
  br label %71

65:                                               ; preds = %32
  %66 = load i8*, i8** %5, align 8
  %67 = load i32, i32* %10, align 4
  %68 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i8* %66, i32 %67)
  %69 = load %struct.sglist*, %struct.sglist** %8, align 8
  %70 = call i32 @sglist_free(%struct.sglist* %69)
  br label %71

71:                                               ; preds = %65, %64
  %72 = call i32 @make_dev_args_init(%struct.make_dev_args* %7)
  %73 = load i32, i32* @MAKEDEV_WAITOK, align 4
  %74 = load i32, i32* @MAKEDEV_CHECKNAME, align 4
  %75 = or i32 %73, %74
  %76 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %7, i32 0, i32 0
  store i32 %75, i32* %76, align 8
  %77 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %7, i32 0, i32 7
  store i32* @spa_cdevsw, i32** %77, align 8
  %78 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %7, i32 0, i32 6
  store i32* null, i32** %78, align 8
  %79 = load i32, i32* @UID_ROOT, align 4
  %80 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %7, i32 0, i32 5
  store i32 %79, i32* %80, align 4
  %81 = load i32, i32* @GID_OPERATOR, align 4
  %82 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %7, i32 0, i32 4
  store i32 %81, i32* %82, align 8
  %83 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %7, i32 0, i32 1
  store i32 432, i32* %83, align 4
  %84 = load %struct.nvdimm_spa_dev*, %struct.nvdimm_spa_dev** %4, align 8
  %85 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %7, i32 0, i32 3
  store %struct.nvdimm_spa_dev* %84, %struct.nvdimm_spa_dev** %85, align 8
  %86 = load i32, i32* %6, align 4
  %87 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %7, i32 0, i32 2
  store i32 %86, i32* %87, align 8
  %88 = load i32, i32* @M_NVDIMM, align 4
  %89 = load i8*, i8** %5, align 8
  %90 = call i32 @asprintf(i8** %9, i32 %88, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %89)
  %91 = load %struct.nvdimm_spa_dev*, %struct.nvdimm_spa_dev** %4, align 8
  %92 = getelementptr inbounds %struct.nvdimm_spa_dev, %struct.nvdimm_spa_dev* %91, i32 0, i32 1
  %93 = load i8*, i8** %9, align 8
  %94 = call i32 @make_dev_s(%struct.make_dev_args* %7, i32* %92, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %93)
  store i32 %94, i32* %10, align 4
  %95 = load i8*, i8** %9, align 8
  %96 = load i32, i32* @M_NVDIMM, align 4
  %97 = call i32 @free(i8* %95, i32 %96)
  %98 = load i32, i32* %10, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %71
  %101 = load i8*, i8** %5, align 8
  %102 = load i32, i32* %10, align 4
  %103 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i8* %101, i32 %102)
  %104 = load i32, i32* %11, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %100
  %107 = load i32, i32* %10, align 4
  store i32 %107, i32* %11, align 4
  br label %108

108:                                              ; preds = %106, %100
  br label %109

109:                                              ; preds = %108, %71
  %110 = load %struct.nvdimm_spa_dev*, %struct.nvdimm_spa_dev** %4, align 8
  %111 = load i8*, i8** %5, align 8
  %112 = call i32* @nvdimm_spa_g_create(%struct.nvdimm_spa_dev* %110, i8* %111)
  %113 = load %struct.nvdimm_spa_dev*, %struct.nvdimm_spa_dev** %4, align 8
  %114 = getelementptr inbounds %struct.nvdimm_spa_dev, %struct.nvdimm_spa_dev* %113, i32 0, i32 0
  store i32* %112, i32** %114, align 8
  %115 = load %struct.nvdimm_spa_dev*, %struct.nvdimm_spa_dev** %4, align 8
  %116 = getelementptr inbounds %struct.nvdimm_spa_dev, %struct.nvdimm_spa_dev* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = icmp eq i32* %117, null
  br i1 %118, label %119, label %124

119:                                              ; preds = %109
  %120 = load i32, i32* %11, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %119
  %123 = load i32, i32* @ENXIO, align 4
  store i32 %123, i32* %11, align 4
  br label %124

124:                                              ; preds = %122, %119, %109
  %125 = load i32, i32* %11, align 4
  ret i32 %125
}

declare dso_local i32 @pmap_large_map(i32, i32, i32**, i32) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local %struct.sglist* @sglist_alloc(i32, i32) #1

declare dso_local i32 @sglist_append_phys(%struct.sglist*, i32, i32) #1

declare dso_local i32* @vm_pager_allocate(i32, %struct.sglist*, i32, i32, i32, i32*) #1

declare dso_local i32 @sglist_free(%struct.sglist*) #1

declare dso_local i32 @make_dev_args_init(%struct.make_dev_args*) #1

declare dso_local i32 @asprintf(i8**, i32, i8*, i8*) #1

declare dso_local i32 @make_dev_s(%struct.make_dev_args*, i32*, i8*, i8*) #1

declare dso_local i32 @free(i8*, i32) #1

declare dso_local i32* @nvdimm_spa_g_create(%struct.nvdimm_spa_dev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
