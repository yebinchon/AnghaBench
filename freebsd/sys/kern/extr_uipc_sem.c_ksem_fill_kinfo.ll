; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_sem.c_ksem_fill_kinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_sem.c_ksem_fill_kinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8* }
%struct.file = type { %struct.ksem* }
%struct.ksem = type { i32, i8*, i32 }
%struct.kinfo_file = type { i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.filedesc = type { i32 }

@KF_TYPE_SEM = common dso_local global i32 0, align 4
@sem_lock = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@ksem_dict_lock = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_10__* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.kinfo_file*, %struct.filedesc*)* @ksem_fill_kinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ksem_fill_kinfo(%struct.file* %0, %struct.kinfo_file* %1, %struct.filedesc* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.kinfo_file*, align 8
  %6 = alloca %struct.filedesc*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ksem*, align 8
  %10 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.kinfo_file* %1, %struct.kinfo_file** %5, align 8
  store %struct.filedesc* %2, %struct.filedesc** %6, align 8
  %11 = load i32, i32* @KF_TYPE_SEM, align 4
  %12 = load %struct.kinfo_file*, %struct.kinfo_file** %5, align 8
  %13 = getelementptr inbounds %struct.kinfo_file, %struct.kinfo_file* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 4
  %14 = load %struct.file*, %struct.file** %4, align 8
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 0
  %16 = load %struct.ksem*, %struct.ksem** %15, align 8
  store %struct.ksem* %16, %struct.ksem** %9, align 8
  %17 = call i32 @mtx_lock(i32* @sem_lock)
  %18 = load %struct.ksem*, %struct.ksem** %9, align 8
  %19 = getelementptr inbounds %struct.ksem, %struct.ksem* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.kinfo_file*, %struct.kinfo_file** %5, align 8
  %22 = getelementptr inbounds %struct.kinfo_file, %struct.kinfo_file* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  store i32 %20, i32* %24, align 4
  %25 = load i32, i32* @S_IFREG, align 4
  %26 = load %struct.ksem*, %struct.ksem** %9, align 8
  %27 = getelementptr inbounds %struct.ksem, %struct.ksem* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = or i32 %25, %28
  %30 = load %struct.kinfo_file*, %struct.kinfo_file** %5, align 8
  %31 = getelementptr inbounds %struct.kinfo_file, %struct.kinfo_file* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  store i32 %29, i32* %33, align 4
  %34 = call i32 @mtx_unlock(i32* @sem_lock)
  %35 = load %struct.ksem*, %struct.ksem** %9, align 8
  %36 = getelementptr inbounds %struct.ksem, %struct.ksem* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %87

39:                                               ; preds = %3
  %40 = call i32 @sx_slock(i32* @ksem_dict_lock)
  %41 = load %struct.ksem*, %struct.ksem** %9, align 8
  %42 = getelementptr inbounds %struct.ksem, %struct.ksem* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %85

45:                                               ; preds = %39
  %46 = load %struct.ksem*, %struct.ksem** %9, align 8
  %47 = getelementptr inbounds %struct.ksem, %struct.ksem* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %7, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** @curthread, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  store i8* %55, i8** %8, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = call i64 @strcmp(i8* %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %79

59:                                               ; preds = %45
  %60 = load i8*, i8** %8, align 8
  %61 = call i64 @strlen(i8* %60)
  store i64 %61, i64* %10, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = load i64, i64* %10, align 8
  %65 = call i64 @strncmp(i8* %62, i8* %63, i64 %64)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %59
  %68 = load i8*, i8** %7, align 8
  %69 = load i64, i64* %10, align 8
  %70 = getelementptr inbounds i8, i8* %68, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 47
  br i1 %73, label %74, label %78

74:                                               ; preds = %67
  %75 = load i64, i64* %10, align 8
  %76 = load i8*, i8** %7, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 %75
  store i8* %77, i8** %7, align 8
  br label %78

78:                                               ; preds = %74, %67, %59
  br label %79

79:                                               ; preds = %78, %45
  %80 = load %struct.kinfo_file*, %struct.kinfo_file** %5, align 8
  %81 = getelementptr inbounds %struct.kinfo_file, %struct.kinfo_file* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i8*, i8** %7, align 8
  %84 = call i32 @strlcpy(i32 %82, i8* %83, i32 4)
  br label %85

85:                                               ; preds = %79, %39
  %86 = call i32 @sx_sunlock(i32* @ksem_dict_lock)
  br label %87

87:                                               ; preds = %85, %3
  ret i32 0
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @sx_slock(i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @sx_sunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
