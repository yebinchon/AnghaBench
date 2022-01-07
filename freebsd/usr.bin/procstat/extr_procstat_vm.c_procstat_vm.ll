; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/procstat/extr_procstat_vm.c_procstat_vm.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/procstat/extr_procstat_vm.c_procstat_vm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.procstat = type { i32 }
%struct.kinfo_proc = type { i8* }
%struct.kinfo_vmentry = type { i32, i8*, i8*, i8*, i8*, i32, i32, i8*, i64, i64 }

@procstat_opts = common dso_local global i32 0, align 4
@PS_OPT_NOHEADER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"{T:/%5s %*s %*s %3s %4s %4s %3s %3s %-5s %-2s %-s}\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"PID\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"START\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"END\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"PRT\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"RES\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"PRES\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"REF\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"SHD\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"FLAG\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"TP\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"PATH\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"{ek:process_id/%d}\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"vm\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"{dk:process_id/%5d} \00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"{d:kve_start/%#*jx} \00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"{d:kve_end/%#*jx} \00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"{e:kve_start/%#jx}\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"{e:kve_end/%#jx}\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"{d:read/%s}\00", align 1
@KVME_PROT_READ = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"{d:write/%s}\00", align 1
@KVME_PROT_WRITE = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"{d:exec/%s} \00", align 1
@KVME_PROT_EXEC = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"kve_protection\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"{en:read/%s}\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"{en:write/%s}\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"{en:exec/%s}\00", align 1
@.str.32 = private unnamed_addr constant [24 x i8] c"{:kve_resident/%4d/%d} \00", align 1
@.str.33 = private unnamed_addr constant [32 x i8] c"{:kve_private_resident/%4d/%d} \00", align 1
@.str.34 = private unnamed_addr constant [25 x i8] c"{:kve_ref_count/%3d/%d} \00", align 1
@.str.35 = private unnamed_addr constant [28 x i8] c"{:kve_shadow_count/%3d/%d} \00", align 1
@.str.36 = private unnamed_addr constant [23 x i8] c"{d:copy_on_write/%-1s}\00", align 1
@KVME_FLAG_COW = common dso_local global i32 0, align 4
@.str.37 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.38 = private unnamed_addr constant [19 x i8] c"{d:need_copy/%-1s}\00", align 1
@KVME_FLAG_NEEDS_COPY = common dso_local global i32 0, align 4
@.str.39 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.40 = private unnamed_addr constant [21 x i8] c"{d:super_pages/%-1s}\00", align 1
@KVME_FLAG_SUPER = common dso_local global i32 0, align 4
@.str.41 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.42 = private unnamed_addr constant [20 x i8] c"{d:grows_down/%-1s}\00", align 1
@KVME_FLAG_GROWS_UP = common dso_local global i32 0, align 4
@.str.43 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@KVME_FLAG_GROWS_DOWN = common dso_local global i32 0, align 4
@.str.44 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.45 = private unnamed_addr constant [16 x i8] c"{d:wired/%-1s} \00", align 1
@KVME_FLAG_USER_WIRED = common dso_local global i32 0, align 4
@.str.46 = private unnamed_addr constant [2 x i8] c"W\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"kve_flags\00", align 1
@.str.48 = private unnamed_addr constant [22 x i8] c"{en:copy_on_write/%s}\00", align 1
@.str.49 = private unnamed_addr constant [19 x i8] c"{en:needs_copy/%s}\00", align 1
@.str.50 = private unnamed_addr constant [20 x i8] c"{en:super_pages/%s}\00", align 1
@.str.51 = private unnamed_addr constant [17 x i8] c"{en:grows_up/%s}\00", align 1
@.str.52 = private unnamed_addr constant [19 x i8] c"{en:grows_down/%s}\00", align 1
@.str.53 = private unnamed_addr constant [14 x i8] c"{en:wired/%s}\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"df\00", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.58 = private unnamed_addr constant [3 x i8] c"vn\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"vnode\00", align 1
@.str.60 = private unnamed_addr constant [3 x i8] c"sw\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"swap\00", align 1
@.str.62 = private unnamed_addr constant [3 x i8] c"dv\00", align 1
@.str.63 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.64 = private unnamed_addr constant [3 x i8] c"ph\00", align 1
@.str.65 = private unnamed_addr constant [9 x i8] c"physical\00", align 1
@.str.66 = private unnamed_addr constant [3 x i8] c"dd\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"dead\00", align 1
@.str.68 = private unnamed_addr constant [3 x i8] c"sg\00", align 1
@.str.69 = private unnamed_addr constant [15 x i8] c"scatter/gather\00", align 1
@.str.70 = private unnamed_addr constant [3 x i8] c"md\00", align 1
@.str.71 = private unnamed_addr constant [15 x i8] c"managed_device\00", align 1
@.str.72 = private unnamed_addr constant [3 x i8] c"??\00", align 1
@.str.73 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.74 = private unnamed_addr constant [19 x i8] c"{d:kve_type/%-2s} \00", align 1
@.str.75 = private unnamed_addr constant [16 x i8] c"{e:kve_type/%s}\00", align 1
@.str.76 = private unnamed_addr constant [20 x i8] c"{:kve_path/%-s/%s}\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @procstat_vm(%struct.procstat* %0, %struct.kinfo_proc* %1) #0 {
  %3 = alloca %struct.procstat*, align 8
  %4 = alloca %struct.kinfo_proc*, align 8
  %5 = alloca %struct.kinfo_vmentry*, align 8
  %6 = alloca %struct.kinfo_vmentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.procstat* %0, %struct.procstat** %3, align 8
  store %struct.kinfo_proc* %1, %struct.kinfo_proc** %4, align 8
  store i32 18, i32* %7, align 4
  %12 = load i32, i32* @procstat_opts, align 4
  %13 = load i32, i32* @PS_OPT_NOHEADER, align 4
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  br label %20

20:                                               ; preds = %16, %2
  %21 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %22 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i8* %23)
  %25 = load %struct.procstat*, %struct.procstat** %3, align 8
  %26 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %27 = call %struct.kinfo_vmentry* @procstat_getvmmap(%struct.procstat* %25, %struct.kinfo_proc* %26, i32* %9)
  store %struct.kinfo_vmentry* %27, %struct.kinfo_vmentry** %5, align 8
  %28 = load %struct.kinfo_vmentry*, %struct.kinfo_vmentry** %5, align 8
  %29 = icmp eq %struct.kinfo_vmentry* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  br label %283

31:                                               ; preds = %20
  %32 = call i32 @xo_open_list(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %33

33:                                               ; preds = %276, %31
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %279

37:                                               ; preds = %33
  %38 = call i32 @xo_open_instance(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  %39 = load %struct.kinfo_vmentry*, %struct.kinfo_vmentry** %5, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.kinfo_vmentry, %struct.kinfo_vmentry* %39, i64 %41
  store %struct.kinfo_vmentry* %42, %struct.kinfo_vmentry** %6, align 8
  %43 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %44 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i8* %45)
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.kinfo_vmentry*, %struct.kinfo_vmentry** %6, align 8
  %49 = getelementptr inbounds %struct.kinfo_vmentry, %struct.kinfo_vmentry* %48, i32 0, i32 9
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to i8*
  %52 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i32 %47, i8* %51)
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.kinfo_vmentry*, %struct.kinfo_vmentry** %6, align 8
  %55 = getelementptr inbounds %struct.kinfo_vmentry, %struct.kinfo_vmentry* %54, i32 0, i32 8
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to i8*
  %58 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0), i32 %53, i8* %57)
  %59 = load %struct.kinfo_vmentry*, %struct.kinfo_vmentry** %6, align 8
  %60 = getelementptr inbounds %struct.kinfo_vmentry, %struct.kinfo_vmentry* %59, i32 0, i32 9
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to i8*
  %63 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0), i8* %62)
  %64 = load %struct.kinfo_vmentry*, %struct.kinfo_vmentry** %6, align 8
  %65 = getelementptr inbounds %struct.kinfo_vmentry, %struct.kinfo_vmentry* %64, i32 0, i32 8
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to i8*
  %68 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0), i8* %67)
  %69 = load %struct.kinfo_vmentry*, %struct.kinfo_vmentry** %6, align 8
  %70 = getelementptr inbounds %struct.kinfo_vmentry, %struct.kinfo_vmentry* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @KVME_PROT_READ, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0)
  %77 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0), i8* %76)
  %78 = load %struct.kinfo_vmentry*, %struct.kinfo_vmentry** %6, align 8
  %79 = getelementptr inbounds %struct.kinfo_vmentry, %struct.kinfo_vmentry* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @KVME_PROT_WRITE, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0)
  %86 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0), i8* %85)
  %87 = load %struct.kinfo_vmentry*, %struct.kinfo_vmentry** %6, align 8
  %88 = getelementptr inbounds %struct.kinfo_vmentry, %struct.kinfo_vmentry* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @KVME_PROT_EXEC, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0)
  %95 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0), i8* %94)
  %96 = call i32 @xo_open_container(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i64 0, i64 0))
  %97 = load %struct.kinfo_vmentry*, %struct.kinfo_vmentry** %6, align 8
  %98 = getelementptr inbounds %struct.kinfo_vmentry, %struct.kinfo_vmentry* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @KVME_PROT_READ, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0)
  %105 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i64 0, i64 0), i8* %104)
  %106 = load %struct.kinfo_vmentry*, %struct.kinfo_vmentry** %6, align 8
  %107 = getelementptr inbounds %struct.kinfo_vmentry, %struct.kinfo_vmentry* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @KVME_PROT_WRITE, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  %112 = zext i1 %111 to i64
  %113 = select i1 %111, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0)
  %114 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i64 0, i64 0), i8* %113)
  %115 = load %struct.kinfo_vmentry*, %struct.kinfo_vmentry** %6, align 8
  %116 = getelementptr inbounds %struct.kinfo_vmentry, %struct.kinfo_vmentry* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @KVME_PROT_EXEC, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  %121 = zext i1 %120 to i64
  %122 = select i1 %120, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0)
  %123 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i64 0, i64 0), i8* %122)
  %124 = call i32 @xo_close_container(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i64 0, i64 0))
  %125 = load %struct.kinfo_vmentry*, %struct.kinfo_vmentry** %6, align 8
  %126 = getelementptr inbounds %struct.kinfo_vmentry, %struct.kinfo_vmentry* %125, i32 0, i32 1
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.32, i64 0, i64 0), i8* %127)
  %129 = load %struct.kinfo_vmentry*, %struct.kinfo_vmentry** %6, align 8
  %130 = getelementptr inbounds %struct.kinfo_vmentry, %struct.kinfo_vmentry* %129, i32 0, i32 2
  %131 = load i8*, i8** %130, align 8
  %132 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.33, i64 0, i64 0), i8* %131)
  %133 = load %struct.kinfo_vmentry*, %struct.kinfo_vmentry** %6, align 8
  %134 = getelementptr inbounds %struct.kinfo_vmentry, %struct.kinfo_vmentry* %133, i32 0, i32 3
  %135 = load i8*, i8** %134, align 8
  %136 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.34, i64 0, i64 0), i8* %135)
  %137 = load %struct.kinfo_vmentry*, %struct.kinfo_vmentry** %6, align 8
  %138 = getelementptr inbounds %struct.kinfo_vmentry, %struct.kinfo_vmentry* %137, i32 0, i32 4
  %139 = load i8*, i8** %138, align 8
  %140 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.35, i64 0, i64 0), i8* %139)
  %141 = load %struct.kinfo_vmentry*, %struct.kinfo_vmentry** %6, align 8
  %142 = getelementptr inbounds %struct.kinfo_vmentry, %struct.kinfo_vmentry* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @KVME_FLAG_COW, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  %147 = zext i1 %146 to i64
  %148 = select i1 %146, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0)
  %149 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.36, i64 0, i64 0), i8* %148)
  %150 = load %struct.kinfo_vmentry*, %struct.kinfo_vmentry** %6, align 8
  %151 = getelementptr inbounds %struct.kinfo_vmentry, %struct.kinfo_vmentry* %150, i32 0, i32 5
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @KVME_FLAG_NEEDS_COPY, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  %156 = zext i1 %155 to i64
  %157 = select i1 %155, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0)
  %158 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.38, i64 0, i64 0), i8* %157)
  %159 = load %struct.kinfo_vmentry*, %struct.kinfo_vmentry** %6, align 8
  %160 = getelementptr inbounds %struct.kinfo_vmentry, %struct.kinfo_vmentry* %159, i32 0, i32 5
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @KVME_FLAG_SUPER, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  %165 = zext i1 %164 to i64
  %166 = select i1 %164, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0)
  %167 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.40, i64 0, i64 0), i8* %166)
  %168 = load %struct.kinfo_vmentry*, %struct.kinfo_vmentry** %6, align 8
  %169 = getelementptr inbounds %struct.kinfo_vmentry, %struct.kinfo_vmentry* %168, i32 0, i32 5
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @KVME_FLAG_GROWS_UP, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %37
  br label %184

175:                                              ; preds = %37
  %176 = load %struct.kinfo_vmentry*, %struct.kinfo_vmentry** %6, align 8
  %177 = getelementptr inbounds %struct.kinfo_vmentry, %struct.kinfo_vmentry* %176, i32 0, i32 5
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @KVME_FLAG_GROWS_DOWN, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  %182 = zext i1 %181 to i64
  %183 = select i1 %181, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0)
  br label %184

184:                                              ; preds = %175, %174
  %185 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0), %174 ], [ %183, %175 ]
  %186 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.42, i64 0, i64 0), i8* %185)
  %187 = load %struct.kinfo_vmentry*, %struct.kinfo_vmentry** %6, align 8
  %188 = getelementptr inbounds %struct.kinfo_vmentry, %struct.kinfo_vmentry* %187, i32 0, i32 5
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @KVME_FLAG_USER_WIRED, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  %193 = zext i1 %192 to i64
  %194 = select i1 %192, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0)
  %195 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.45, i64 0, i64 0), i8* %194)
  %196 = call i32 @xo_open_container(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i64 0, i64 0))
  %197 = load %struct.kinfo_vmentry*, %struct.kinfo_vmentry** %6, align 8
  %198 = getelementptr inbounds %struct.kinfo_vmentry, %struct.kinfo_vmentry* %197, i32 0, i32 5
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* @KVME_FLAG_COW, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  %203 = zext i1 %202 to i64
  %204 = select i1 %202, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0)
  %205 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.48, i64 0, i64 0), i8* %204)
  %206 = load %struct.kinfo_vmentry*, %struct.kinfo_vmentry** %6, align 8
  %207 = getelementptr inbounds %struct.kinfo_vmentry, %struct.kinfo_vmentry* %206, i32 0, i32 5
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* @KVME_FLAG_NEEDS_COPY, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  %212 = zext i1 %211 to i64
  %213 = select i1 %211, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0)
  %214 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.49, i64 0, i64 0), i8* %213)
  %215 = load %struct.kinfo_vmentry*, %struct.kinfo_vmentry** %6, align 8
  %216 = getelementptr inbounds %struct.kinfo_vmentry, %struct.kinfo_vmentry* %215, i32 0, i32 5
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* @KVME_FLAG_SUPER, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  %221 = zext i1 %220 to i64
  %222 = select i1 %220, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0)
  %223 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.50, i64 0, i64 0), i8* %222)
  %224 = load %struct.kinfo_vmentry*, %struct.kinfo_vmentry** %6, align 8
  %225 = getelementptr inbounds %struct.kinfo_vmentry, %struct.kinfo_vmentry* %224, i32 0, i32 5
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* @KVME_FLAG_GROWS_UP, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  %230 = zext i1 %229 to i64
  %231 = select i1 %229, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0)
  %232 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.51, i64 0, i64 0), i8* %231)
  %233 = load %struct.kinfo_vmentry*, %struct.kinfo_vmentry** %6, align 8
  %234 = getelementptr inbounds %struct.kinfo_vmentry, %struct.kinfo_vmentry* %233, i32 0, i32 5
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* @KVME_FLAG_GROWS_DOWN, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  %239 = zext i1 %238 to i64
  %240 = select i1 %238, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0)
  %241 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.52, i64 0, i64 0), i8* %240)
  %242 = load %struct.kinfo_vmentry*, %struct.kinfo_vmentry** %6, align 8
  %243 = getelementptr inbounds %struct.kinfo_vmentry, %struct.kinfo_vmentry* %242, i32 0, i32 5
  %244 = load i32, i32* %243, align 8
  %245 = load i32, i32* @KVME_FLAG_USER_WIRED, align 4
  %246 = and i32 %244, %245
  %247 = icmp ne i32 %246, 0
  %248 = zext i1 %247 to i64
  %249 = select i1 %247, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0)
  %250 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.53, i64 0, i64 0), i8* %249)
  %251 = call i32 @xo_close_container(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i64 0, i64 0))
  %252 = load %struct.kinfo_vmentry*, %struct.kinfo_vmentry** %6, align 8
  %253 = getelementptr inbounds %struct.kinfo_vmentry, %struct.kinfo_vmentry* %252, i32 0, i32 6
  %254 = load i32, i32* %253, align 4
  switch i32 %254, label %265 [
    i32 133, label %255
    i32 136, label %256
    i32 128, label %257
    i32 130, label %258
    i32 135, label %259
    i32 132, label %260
    i32 137, label %261
    i32 131, label %262
    i32 134, label %263
    i32 129, label %264
  ]

255:                                              ; preds = %184
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i64 0, i64 0), i8** %10, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i64 0, i64 0), i8** %11, align 8
  br label %266

256:                                              ; preds = %184
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i64 0, i64 0), i8** %10, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.57, i64 0, i64 0), i8** %11, align 8
  br label %266

257:                                              ; preds = %184
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.58, i64 0, i64 0), i8** %10, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.59, i64 0, i64 0), i8** %11, align 8
  br label %266

258:                                              ; preds = %184
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.60, i64 0, i64 0), i8** %10, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i64 0, i64 0), i8** %11, align 8
  br label %266

259:                                              ; preds = %184
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i64 0, i64 0), i8** %10, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.63, i64 0, i64 0), i8** %11, align 8
  br label %266

260:                                              ; preds = %184
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.64, i64 0, i64 0), i8** %10, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.65, i64 0, i64 0), i8** %11, align 8
  br label %266

261:                                              ; preds = %184
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.66, i64 0, i64 0), i8** %10, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.67, i64 0, i64 0), i8** %11, align 8
  br label %266

262:                                              ; preds = %184
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.68, i64 0, i64 0), i8** %10, align 8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.69, i64 0, i64 0), i8** %11, align 8
  br label %266

263:                                              ; preds = %184
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.70, i64 0, i64 0), i8** %10, align 8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.71, i64 0, i64 0), i8** %11, align 8
  br label %266

264:                                              ; preds = %184
  br label %265

265:                                              ; preds = %184, %264
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.72, i64 0, i64 0), i8** %10, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.73, i64 0, i64 0), i8** %11, align 8
  br label %266

266:                                              ; preds = %265, %263, %262, %261, %260, %259, %258, %257, %256, %255
  %267 = load i8*, i8** %10, align 8
  %268 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.74, i64 0, i64 0), i8* %267)
  %269 = load i8*, i8** %11, align 8
  %270 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.75, i64 0, i64 0), i8* %269)
  %271 = load %struct.kinfo_vmentry*, %struct.kinfo_vmentry** %6, align 8
  %272 = getelementptr inbounds %struct.kinfo_vmentry, %struct.kinfo_vmentry* %271, i32 0, i32 7
  %273 = load i8*, i8** %272, align 8
  %274 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.76, i64 0, i64 0), i8* %273)
  %275 = call i32 @xo_close_instance(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  br label %276

276:                                              ; preds = %266
  %277 = load i32, i32* %8, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %8, align 4
  br label %33

279:                                              ; preds = %33
  %280 = call i32 @xo_close_list(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  %281 = load %struct.kinfo_vmentry*, %struct.kinfo_vmentry** %5, align 8
  %282 = call i32 @free(%struct.kinfo_vmentry* %281)
  br label %283

283:                                              ; preds = %279, %30
  ret void
}

declare dso_local i32 @xo_emit(i8*, ...) #1

declare dso_local %struct.kinfo_vmentry* @procstat_getvmmap(%struct.procstat*, %struct.kinfo_proc*, i32*) #1

declare dso_local i32 @xo_open_list(i8*) #1

declare dso_local i32 @xo_open_instance(i8*) #1

declare dso_local i32 @xo_open_container(i8*) #1

declare dso_local i32 @xo_close_container(i8*) #1

declare dso_local i32 @xo_close_instance(i8*) #1

declare dso_local i32 @xo_close_list(i8*) #1

declare dso_local i32 @free(%struct.kinfo_vmentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
