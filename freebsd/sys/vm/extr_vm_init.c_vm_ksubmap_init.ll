; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_init.c_vm_ksubmap_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_init.c_vm_ksubmap_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kva_md_info = type { i8*, i8*, i8*, i8* }

@physmem = common dso_local global i32 0, align 4
@kernel_map = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"startup: no room for tables\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"startup: table size inconsistency\00", align 1
@nbuf = common dso_local global i64 0, align 8
@BKVASIZE = common dso_local global i64 0, align 8
@bio_transient_maxcnt = common dso_local global i64 0, align 8
@MAXPHYS = common dso_local global i64 0, align 8
@buffer_arena = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"buffer arena\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@mp_ncpus = common dso_local global i32 0, align 4
@transient_arena = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"transient arena\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Clean map calculation incorrect\00", align 1
@exec_map_entries = common dso_local global i32 0, align 4
@PATH_MAX = common dso_local global i64 0, align 8
@ARG_MAX = common dso_local global i64 0, align 8
@exec_map_entry_size = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@exec_map = common dso_local global i8* null, align 8
@maxpipekva = common dso_local global i32 0, align 4
@pipe_map = common dso_local global i8* null, align 8
@M_NOWAIT = common dso_local global i32 0, align 4
@VM_MEMATTR_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_ksubmap_init(%struct.kva_md_info* %0) #0 {
  %2 = alloca %struct.kva_md_info*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.kva_md_info* %0, %struct.kva_md_info** %2, align 8
  store i64 0, i64* %5, align 8
  store i8* null, i8** %3, align 8
  br label %9

9:                                                ; preds = %36, %1
  %10 = load i8*, i8** %3, align 8
  %11 = ptrtoint i8* %10 to i64
  store i64 %11, i64* %4, align 8
  %12 = load i32, i32* @physmem, align 4
  %13 = load i32, i32* @kernel_map, align 4
  %14 = call i64 @vm_map_max(i32 %13)
  %15 = load i32, i32* @kernel_map, align 4
  %16 = call i64 @vm_map_min(i32 %15)
  %17 = sub nsw i64 %14, %16
  %18 = call i32 @btoc(i64 %17)
  %19 = call i64 @lmin(i32 %12, i32 %18)
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* %6, align 8
  %22 = call i64 @kern_vfs_bio_buffer_alloc(i64 %20, i64 %21)
  store i64 %22, i64* %4, align 8
  %23 = load i8*, i8** %3, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %37

25:                                               ; preds = %9
  %26 = load i64, i64* %4, align 8
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* %5, align 8
  %28 = load i32, i32* @M_ZERO, align 4
  %29 = load i32, i32* @M_WAITOK, align 4
  %30 = or i32 %28, %29
  %31 = call i8* @kmem_malloc(i64 %27, i32 %30)
  store i8* %31, i8** %3, align 8
  %32 = load i8*, i8** %3, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = call i32 @panic(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %25
  br label %9

37:                                               ; preds = %9
  %38 = load i64, i64* %4, align 8
  %39 = inttoptr i64 %38 to i8*
  %40 = load i8*, i8** %3, align 8
  %41 = ptrtoint i8* %39 to i64
  %42 = ptrtoint i8* %40 to i64
  %43 = sub i64 %41, %42
  %44 = load i64, i64* %5, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = call i32 @panic(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %37
  %49 = load i64, i64* @nbuf, align 8
  %50 = load i64, i64* @BKVASIZE, align 8
  %51 = mul nsw i64 %49, %50
  %52 = load i64, i64* @bio_transient_maxcnt, align 8
  %53 = load i64, i64* @MAXPHYS, align 8
  %54 = mul nsw i64 %52, %53
  %55 = add nsw i64 %51, %54
  store i64 %55, i64* %5, align 8
  %56 = load i64, i64* %5, align 8
  %57 = call i8* @kva_alloc(i64 %56)
  store i8* %57, i8** %3, align 8
  %58 = load %struct.kva_md_info*, %struct.kva_md_info** %2, align 8
  %59 = getelementptr inbounds %struct.kva_md_info, %struct.kva_md_info* %58, i32 0, i32 0
  store i8* %57, i8** %59, align 8
  %60 = load i8*, i8** %3, align 8
  %61 = load i64, i64* %5, align 8
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  %63 = load %struct.kva_md_info*, %struct.kva_md_info** %2, align 8
  %64 = getelementptr inbounds %struct.kva_md_info, %struct.kva_md_info* %63, i32 0, i32 1
  store i8* %62, i8** %64, align 8
  %65 = load i64, i64* @nbuf, align 8
  %66 = load i64, i64* @BKVASIZE, align 8
  %67 = mul nsw i64 %65, %66
  store i64 %67, i64* %5, align 8
  %68 = load i8*, i8** %3, align 8
  %69 = load %struct.kva_md_info*, %struct.kva_md_info** %2, align 8
  %70 = getelementptr inbounds %struct.kva_md_info, %struct.kva_md_info* %69, i32 0, i32 2
  store i8* %68, i8** %70, align 8
  %71 = load %struct.kva_md_info*, %struct.kva_md_info** %2, align 8
  %72 = getelementptr inbounds %struct.kva_md_info, %struct.kva_md_info* %71, i32 0, i32 2
  %73 = load i8*, i8** %72, align 8
  %74 = load i64, i64* %5, align 8
  %75 = getelementptr inbounds i8, i8* %73, i64 %74
  %76 = load %struct.kva_md_info*, %struct.kva_md_info** %2, align 8
  %77 = getelementptr inbounds %struct.kva_md_info, %struct.kva_md_info* %76, i32 0, i32 3
  store i8* %75, i8** %77, align 8
  %78 = load i32, i32* @buffer_arena, align 4
  %79 = load %struct.kva_md_info*, %struct.kva_md_info** %2, align 8
  %80 = getelementptr inbounds %struct.kva_md_info, %struct.kva_md_info* %79, i32 0, i32 2
  %81 = load i8*, i8** %80, align 8
  %82 = load i64, i64* %5, align 8
  %83 = load i32, i32* @PAGE_SIZE, align 4
  %84 = load i32, i32* @mp_ncpus, align 4
  %85 = icmp sgt i32 %84, 4
  br i1 %85, label %86, label %89

86:                                               ; preds = %48
  %87 = load i64, i64* @BKVASIZE, align 8
  %88 = mul nsw i64 %87, 8
  br label %90

89:                                               ; preds = %48
  br label %90

90:                                               ; preds = %89, %86
  %91 = phi i64 [ %88, %86 ], [ 0, %89 ]
  %92 = call i32 @vmem_init(i32 %78, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %81, i64 %82, i32 %83, i64 %91, i32 0)
  %93 = load i64, i64* %5, align 8
  %94 = load i8*, i8** %3, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 %93
  store i8* %95, i8** %3, align 8
  %96 = load i64, i64* @bio_transient_maxcnt, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %110

98:                                               ; preds = %90
  %99 = load i64, i64* @bio_transient_maxcnt, align 8
  %100 = load i64, i64* @MAXPHYS, align 8
  %101 = mul nsw i64 %99, %100
  store i64 %101, i64* %5, align 8
  %102 = load i32, i32* @transient_arena, align 4
  %103 = load i8*, i8** %3, align 8
  %104 = load i64, i64* %5, align 8
  %105 = load i32, i32* @PAGE_SIZE, align 4
  %106 = call i32 @vmem_init(i32 %102, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %103, i64 %104, i32 %105, i64 0, i32 0)
  %107 = load i64, i64* %5, align 8
  %108 = load i8*, i8** %3, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 %107
  store i8* %109, i8** %3, align 8
  br label %110

110:                                              ; preds = %98, %90
  %111 = load i8*, i8** %3, align 8
  %112 = load %struct.kva_md_info*, %struct.kva_md_info** %2, align 8
  %113 = getelementptr inbounds %struct.kva_md_info, %struct.kva_md_info* %112, i32 0, i32 1
  %114 = load i8*, i8** %113, align 8
  %115 = icmp ne i8* %111, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %110
  %117 = call i32 @panic(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %118

118:                                              ; preds = %116, %110
  %119 = load i32, i32* @mp_ncpus, align 4
  %120 = mul nsw i32 8, %119
  store i32 %120, i32* @exec_map_entries, align 4
  %121 = load i64, i64* @PATH_MAX, align 8
  %122 = load i64, i64* @ARG_MAX, align 8
  %123 = add nsw i64 %121, %122
  %124 = call i32 @round_page(i64 %123)
  store i32 %124, i32* @exec_map_entry_size, align 4
  %125 = load i32, i32* @kernel_map, align 4
  %126 = load i32, i32* @exec_map_entries, align 4
  %127 = load i32, i32* @exec_map_entry_size, align 4
  %128 = mul nsw i32 %126, %127
  %129 = load i32, i32* @PAGE_SIZE, align 4
  %130 = mul nsw i32 64, %129
  %131 = add nsw i32 %128, %130
  %132 = load i32, i32* @FALSE, align 4
  %133 = call i8* @kmem_suballoc(i32 %125, i8** %7, i8** %8, i32 %131, i32 %132)
  store i8* %133, i8** @exec_map, align 8
  %134 = load i32, i32* @kernel_map, align 4
  %135 = load i32, i32* @maxpipekva, align 4
  %136 = load i32, i32* @FALSE, align 4
  %137 = call i8* @kmem_suballoc(i32 %134, i8** %7, i8** %8, i32 %135, i32 %136)
  store i8* %137, i8** @pipe_map, align 8
  ret void
}

declare dso_local i64 @lmin(i32, i32) #1

declare dso_local i32 @btoc(i64) #1

declare dso_local i64 @vm_map_max(i32) #1

declare dso_local i64 @vm_map_min(i32) #1

declare dso_local i64 @kern_vfs_bio_buffer_alloc(i64, i64) #1

declare dso_local i8* @kmem_malloc(i64, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i8* @kva_alloc(i64) #1

declare dso_local i32 @vmem_init(i32, i8*, i8*, i64, i32, i64, i32) #1

declare dso_local i32 @round_page(i64) #1

declare dso_local i8* @kmem_suballoc(i32, i8**, i8**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
