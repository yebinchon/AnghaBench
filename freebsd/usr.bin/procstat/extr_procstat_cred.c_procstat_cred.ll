; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/procstat/extr_procstat_cred.c_procstat_cred.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/procstat/extr_procstat_cred.c_procstat_cred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.procstat = type { i32 }
%struct.kinfo_proc = type { i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32 }

@procstat_opts = common dso_local global i32 0, align 4
@PS_OPT_NOHEADER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"{T:/%5s %-16s %5s %5s %5s %5s %5s %5s %5s %5s %-15s}\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"PID\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"COMM\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"EUID\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"RUID\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"SVUID\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"EGID\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"RGID\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"SVGID\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"UMASK\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"FLAGS\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"GROUPS\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"{k:process_id/%5d/%d} \00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"{:command/%-16s/%s} \00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"{:uid/%5d} \00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"{:ruid/%5d} \00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"{:svuid/%5d} \00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"{:group/%5d} \00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"{:rgid/%5d} \00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"{:svgid/%5d} \00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"{:umask/%5s} \00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"{:cr_flags/%s}\00", align 1
@CRED_FLAG_CAPMODE = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"{P:     }\00", align 1
@KI_CRF_GRP_OVERFLOW = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [7 x i8] c"groups\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"{D:/%s}{l:groups/%d}\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.28 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @procstat_cred(%struct.procstat* %0, %struct.kinfo_proc* %1) #0 {
  %3 = alloca %struct.procstat*, align 8
  %4 = alloca %struct.kinfo_proc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.procstat* %0, %struct.procstat** %3, align 8
  store %struct.kinfo_proc* %1, %struct.kinfo_proc** %4, align 8
  %8 = load i32, i32* @procstat_opts, align 4
  %9 = load i32, i32* @PS_OPT_NOHEADER, align 4
  %10 = and i32 %8, %9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %2
  %15 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %16 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %15, i32 0, i32 9
  %17 = load i32, i32* %16, align 8
  %18 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i32 %17)
  %19 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %20 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %19, i32 0, i32 8
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i32 %21)
  %23 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %24 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 8
  %26 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i32 %25)
  %27 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %28 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i32 %29)
  %31 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %32 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i32 %33)
  %35 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %36 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 %39)
  %41 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %42 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0), i32 %43)
  %45 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %46 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i32 %47)
  %49 = load %struct.procstat*, %struct.procstat** %3, align 8
  %50 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %51 = call i32 @get_umask(%struct.procstat* %49, %struct.kinfo_proc* %50)
  %52 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i32 %51)
  %53 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %54 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @CRED_FLAG_CAPMODE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0)
  %61 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i8* %60)
  %62 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0))
  store i32* null, i32** %7, align 8
  %63 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %64 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @KI_CRF_GRP_OVERFLOW, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %14
  %70 = load %struct.procstat*, %struct.procstat** %3, align 8
  %71 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %72 = call i32* @procstat_getgroups(%struct.procstat* %70, %struct.kinfo_proc* %71, i32* %6)
  store i32* %72, i32** %7, align 8
  br label %73

73:                                               ; preds = %69, %14
  %74 = load i32*, i32** %7, align 8
  %75 = icmp eq i32* %74, null
  br i1 %75, label %76, label %83

76:                                               ; preds = %73
  %77 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %78 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %6, align 4
  %80 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %81 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  store i32* %82, i32** %7, align 8
  br label %83

83:                                               ; preds = %76, %73
  %84 = call i32 @xo_open_list(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %85

85:                                               ; preds = %100, %83
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp ult i32 %86, %87
  br i1 %88, label %89, label %103

89:                                               ; preds = %85
  %90 = load i32, i32* %5, align 4
  %91 = icmp ugt i32 %90, 0
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.28, i64 0, i64 0)
  %94 = load i32*, i32** %7, align 8
  %95 = load i32, i32* %5, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i64 0, i64 0), i8* %93, i32 %98)
  br label %100

100:                                              ; preds = %89
  %101 = load i32, i32* %5, align 4
  %102 = add i32 %101, 1
  store i32 %102, i32* %5, align 4
  br label %85

103:                                              ; preds = %85
  %104 = load i32*, i32** %7, align 8
  %105 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %106 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = icmp ne i32* %104, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %103
  %110 = load %struct.procstat*, %struct.procstat** %3, align 8
  %111 = load i32*, i32** %7, align 8
  %112 = call i32 @procstat_freegroups(%struct.procstat* %110, i32* %111)
  br label %113

113:                                              ; preds = %109, %103
  %114 = call i32 @xo_close_list(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0))
  %115 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0))
  ret void
}

declare dso_local i32 @xo_emit(i8*, ...) #1

declare dso_local i32 @get_umask(%struct.procstat*, %struct.kinfo_proc*) #1

declare dso_local i32* @procstat_getgroups(%struct.procstat*, %struct.kinfo_proc*, i32*) #1

declare dso_local i32 @xo_open_list(i8*) #1

declare dso_local i32 @procstat_freegroups(%struct.procstat*, i32*) #1

declare dso_local i32 @xo_close_list(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
