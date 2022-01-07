; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/procstat/extr_procstat_auxv.c_procstat_auxv.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/procstat/extr_procstat_auxv.c_procstat_auxv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.procstat = type { i32 }
%struct.kinfo_proc = type { i32, i8* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@procstat_auxv.prefix = internal global [256 x i8] zeroinitializer, align 16
@procstat_opts = common dso_local global i32 0, align 4
@PS_OPT_NOHEADER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"{T:/%5s %-16s %-16s %-16s}\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"PID\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"COMM\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"AUXV\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"VALUE\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"%5d %-16s\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"{e:process_id/%5d/%d}{e:command/%-16s/%s}\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"{dw:/%s}{Lw:/%-16s/%s}{:AT_EXECFD/%ld}\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"AT_EXECFD\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"{dw:/%s}{Lw:/%-16s/%s}{:AT_PHDR/%p}\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"AT_PHDR\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"{dw:/%s}{Lw:/%-16s/%s}{:AT_PHENT/%ld}\0A\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"AT_PHENT\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"{dw:/%s}{Lw:/%-16s/%s}{:AT_PHNUM/%ld}\0A\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"AT_PHNUM\00", align 1
@.str.15 = private unnamed_addr constant [40 x i8] c"{dw:/%s}{Lw:/%-16s/%s}{:AT_PAGESZ/%ld}\0A\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"AT_PAGESZ\00", align 1
@.str.17 = private unnamed_addr constant [37 x i8] c"{dw:/%s}{Lw:/%-16s/%s}{:AT_BASE/%p}\0A\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"AT_BASE\00", align 1
@.str.19 = private unnamed_addr constant [40 x i8] c"{dw:/%s}{Lw:/%-16s/%s}{:AT_FLAGS/%#lx}\0A\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"AT_FLAGS\00", align 1
@.str.21 = private unnamed_addr constant [38 x i8] c"{dw:/%s}{Lw:/%-16s/%s}{:AT_ENTRY/%p}\0A\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"AT_ENTRY\00", align 1
@.str.23 = private unnamed_addr constant [40 x i8] c"{dw:/%s}{Lw:/%-16s/%s}{:AT_NOTELF/%ld}\0A\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"AT_NOTELF\00", align 1
@.str.25 = private unnamed_addr constant [37 x i8] c"{dw:/%s}{Lw:/%-16s/%s}{:AT_UID/%ld}\0A\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"AT_UID\00", align 1
@.str.27 = private unnamed_addr constant [38 x i8] c"{dw:/%s}{Lw:/%-16s/%s}{:AT_EUID/%ld}\0A\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"AT_EUID\00", align 1
@.str.29 = private unnamed_addr constant [37 x i8] c"{dw:/%s}{Lw:/%-16s/%s}{:AT_GID/%ld}\0A\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"AT_GID\00", align 1
@.str.31 = private unnamed_addr constant [38 x i8] c"{dw:/%s}{Lw:/%-16s/%s}{:AT_EGID/%ld}\0A\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"AT_EGID\00", align 1
@.str.33 = private unnamed_addr constant [41 x i8] c"{dw:/%s}{Lw:/%-16s/%s}{:AT_EXECPATH/%p}\0A\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"AT_EXECPATH\00", align 1
@.str.35 = private unnamed_addr constant [39 x i8] c"{dw:/%s}{Lw:/%-16s/%s}{:AT_CANARY/%p}\0A\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"AT_CANARY\00", align 1
@.str.37 = private unnamed_addr constant [43 x i8] c"{dw:/%s}{Lw:/%-16s/%s}{:AT_CANARYLEN/%ld}\0A\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"AT_CANARYLEN\00", align 1
@.str.39 = private unnamed_addr constant [43 x i8] c"{dw:/%s}{Lw:/%-16s/%s}{:AT_OSRELDATE/%ld}\0A\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"AT_OSRELDATE\00", align 1
@.str.41 = private unnamed_addr constant [39 x i8] c"{dw:/%s}{Lw:/%-16s/%s}{:AT_NCPUS/%ld}\0A\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"AT_NCPUS\00", align 1
@.str.43 = private unnamed_addr constant [42 x i8] c"{dw:/%s}{Lw:/%-16s/%s}{:AT_PAGESIZES/%p}\0A\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"AT_PAGESIZES\00", align 1
@.str.45 = private unnamed_addr constant [46 x i8] c"{dw:/%s}{Lw:/%-16s/%s}{:AT_PAGESIZESLEN/%ld}\0A\00", align 1
@.str.46 = private unnamed_addr constant [16 x i8] c"AT_PAGESIZESLEN\00", align 1
@VM_PROT_EXECUTE = common dso_local global i32 0, align 4
@.str.47 = private unnamed_addr constant [42 x i8] c"{dw:/%s}{Lw:/%-16s/%s}{:AT_STACKPROT/%s}\0A\00", align 1
@.str.48 = private unnamed_addr constant [13 x i8] c"AT_STACKPROT\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"EXECUTABLE\00", align 1
@.str.50 = private unnamed_addr constant [14 x i8] c"NONEXECUTABLE\00", align 1
@.str.51 = private unnamed_addr constant [41 x i8] c"{dw:/%s}{Lw:/%-16s/%s}{:AT_TIMEKEEP/%p}\0A\00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c"AT_TIMEKEEP\00", align 1
@.str.53 = private unnamed_addr constant [44 x i8] c"{dw:/%s}{Lw:/%-16s/%s}{:AT_EHDRFLAGS/%#lx}\0A\00", align 1
@.str.54 = private unnamed_addr constant [13 x i8] c"AT_EHDRFLAGS\00", align 1
@.str.55 = private unnamed_addr constant [40 x i8] c"{dw:/%s}{Lw:/%-16s/%s}{:AT_HWCAP/%#lx}\0A\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c"AT_HWCAP\00", align 1
@.str.57 = private unnamed_addr constant [41 x i8] c"{dw:/%s}{Lw:/%-16s/%s}{:AT_HWCAP2/%#lx}\0A\00", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c"AT_HWCAP2\00", align 1
@.str.59 = private unnamed_addr constant [40 x i8] c"{dw:/%s}{Lw:/%16ld/%ld}{:UNKNOWN/%#lx}\0A\00", align 1
@.str.60 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @procstat_auxv(%struct.procstat* %0, %struct.kinfo_proc* %1) #0 {
  %3 = alloca %struct.procstat*, align 8
  %4 = alloca %struct.kinfo_proc*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.procstat* %0, %struct.procstat** %3, align 8
  store %struct.kinfo_proc* %1, %struct.kinfo_proc** %4, align 8
  %8 = load i32, i32* @procstat_opts, align 4
  %9 = load i32, i32* @PS_OPT_NOHEADER, align 4
  %10 = and i32 %8, %9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %2
  %15 = load %struct.procstat*, %struct.procstat** %3, align 8
  %16 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %17 = call %struct.TYPE_6__* @procstat_getauxv(%struct.procstat* %15, %struct.kinfo_proc* %16, i64* %6)
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %5, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %19 = icmp eq %struct.TYPE_6__* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %290

21:                                               ; preds = %14
  %22 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %23 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %26 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @snprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @procstat_auxv.prefix, i64 0, i64 0), i32 256, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %24, i8* %27)
  %29 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %30 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %33 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i32 %31, i8* %34)
  store i64 0, i64* %7, align 8
  br label %36

36:                                               ; preds = %282, %21
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* %6, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %285

40:                                               ; preds = %36
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %42 = load i64, i64* %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %268 [
    i32 138, label %46
    i32 141, label %47
    i32 147, label %48
    i32 133, label %57
    i32 132, label %65
    i32 131, label %74
    i32 134, label %83
    i32 154, label %92
    i32 145, label %100
    i32 149, label %108
    i32 139, label %116
    i32 128, label %125
    i32 148, label %134
    i32 144, label %143
    i32 151, label %152
    i32 146, label %161
    i32 153, label %169
    i32 152, label %177
    i32 137, label %186
    i32 140, label %195
    i32 136, label %204
    i32 135, label %212
    i32 130, label %221
    i32 129, label %236
    i32 150, label %244
    i32 143, label %252
    i32 142, label %260
  ]

46:                                               ; preds = %40
  br label %290

47:                                               ; preds = %40
  br label %281

48:                                               ; preds = %40
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %50 = load i64, i64* %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @procstat_auxv.prefix, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i64 %55)
  br label %281

57:                                               ; preds = %40
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %59 = load i64, i64* %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @procstat_auxv.prefix, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32 %63)
  br label %281

65:                                               ; preds = %40
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %67 = load i64, i64* %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @procstat_auxv.prefix, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i64 %72)
  br label %281

74:                                               ; preds = %40
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %76 = load i64, i64* %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @procstat_auxv.prefix, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i64 %81)
  br label %281

83:                                               ; preds = %40
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %85 = load i64, i64* %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @procstat_auxv.prefix, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i64 %90)
  br label %281

92:                                               ; preds = %40
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %94 = load i64, i64* %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @procstat_auxv.prefix, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), i32 %98)
  br label %281

100:                                              ; preds = %40
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %102 = load i64, i64* %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @procstat_auxv.prefix, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0), i32 %106)
  br label %281

108:                                              ; preds = %40
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %110 = load i64, i64* %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @procstat_auxv.prefix, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0), i32 %114)
  br label %281

116:                                              ; preds = %40
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %118 = load i64, i64* %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = sext i32 %122 to i64
  %124 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @procstat_auxv.prefix, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0), i64 %123)
  br label %281

125:                                              ; preds = %40
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %127 = load i64, i64* %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = sext i32 %131 to i64
  %133 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @procstat_auxv.prefix, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0), i64 %132)
  br label %281

134:                                              ; preds = %40
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %136 = load i64, i64* %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = sext i32 %140 to i64
  %142 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @procstat_auxv.prefix, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0), i64 %141)
  br label %281

143:                                              ; preds = %40
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %145 = load i64, i64* %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = sext i32 %149 to i64
  %151 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @procstat_auxv.prefix, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0), i64 %150)
  br label %281

152:                                              ; preds = %40
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %154 = load i64, i64* %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = sext i32 %158 to i64
  %160 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @procstat_auxv.prefix, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i64 0, i64 0), i64 %159)
  br label %281

161:                                              ; preds = %40
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %163 = load i64, i64* %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @procstat_auxv.prefix, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i64 0, i64 0), i32 %167)
  br label %281

169:                                              ; preds = %40
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %171 = load i64, i64* %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @procstat_auxv.prefix, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i64 0, i64 0), i32 %175)
  br label %281

177:                                              ; preds = %40
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %179 = load i64, i64* %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = sext i32 %183 to i64
  %185 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @procstat_auxv.prefix, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i64 0, i64 0), i64 %184)
  br label %281

186:                                              ; preds = %40
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %188 = load i64, i64* %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = sext i32 %192 to i64
  %194 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @procstat_auxv.prefix, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.40, i64 0, i64 0), i64 %193)
  br label %281

195:                                              ; preds = %40
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %197 = load i64, i64* %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = sext i32 %201 to i64
  %203 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.41, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @procstat_auxv.prefix, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i64 0, i64 0), i64 %202)
  br label %281

204:                                              ; preds = %40
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %206 = load i64, i64* %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @procstat_auxv.prefix, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.44, i64 0, i64 0), i32 %210)
  br label %281

212:                                              ; preds = %40
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %214 = load i64, i64* %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = sext i32 %218 to i64
  %220 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.45, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @procstat_auxv.prefix, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.46, i64 0, i64 0), i64 %219)
  br label %281

221:                                              ; preds = %40
  %222 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %223 = load i64, i64* %7, align 8
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* @VM_PROT_EXECUTE, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %221
  %232 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.47, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @procstat_auxv.prefix, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.48, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.49, i64 0, i64 0))
  br label %235

233:                                              ; preds = %221
  %234 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.47, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @procstat_auxv.prefix, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.48, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.50, i64 0, i64 0))
  br label %235

235:                                              ; preds = %233, %231
  br label %281

236:                                              ; preds = %40
  %237 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %238 = load i64, i64* %7, align 8
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i64 %238
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.51, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @procstat_auxv.prefix, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.52, i64 0, i64 0), i32 %242)
  br label %281

244:                                              ; preds = %40
  %245 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %246 = load i64, i64* %7, align 8
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i32 0, i32 1
  %249 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.53, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @procstat_auxv.prefix, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.54, i64 0, i64 0), i32 %250)
  br label %281

252:                                              ; preds = %40
  %253 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %254 = load i64, i64* %7, align 8
  %255 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %253, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.55, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @procstat_auxv.prefix, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.56, i64 0, i64 0), i32 %258)
  br label %281

260:                                              ; preds = %40
  %261 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %262 = load i64, i64* %7, align 8
  %263 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %261, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %263, i32 0, i32 1
  %265 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.57, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @procstat_auxv.prefix, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.58, i64 0, i64 0), i32 %266)
  br label %281

268:                                              ; preds = %40
  %269 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %270 = load i64, i64* %7, align 8
  %271 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %269, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %275 = load i64, i64* %7, align 8
  %276 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %274, i64 %275
  %277 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %276, i32 0, i32 1
  %278 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.59, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @procstat_auxv.prefix, i64 0, i64 0), i32 %273, i32 %279)
  br label %281

281:                                              ; preds = %268, %260, %252, %244, %236, %235, %212, %204, %195, %186, %177, %169, %161, %152, %143, %134, %125, %116, %108, %100, %92, %83, %74, %65, %57, %48, %47
  br label %282

282:                                              ; preds = %281
  %283 = load i64, i64* %7, align 8
  %284 = add i64 %283, 1
  store i64 %284, i64* %7, align 8
  br label %36

285:                                              ; preds = %36
  %286 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0))
  %287 = load %struct.procstat*, %struct.procstat** %3, align 8
  %288 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %289 = call i32 @procstat_freeauxv(%struct.procstat* %287, %struct.TYPE_6__* %288)
  br label %290

290:                                              ; preds = %285, %46, %20
  ret void
}

declare dso_local i32 @xo_emit(i8*, ...) #1

declare dso_local %struct.TYPE_6__* @procstat_getauxv(%struct.procstat*, %struct.kinfo_proc*, i64*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i8*) #1

declare dso_local i32 @procstat_freeauxv(%struct.procstat*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
