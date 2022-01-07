; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_shm.c_shm_fill_kinfo_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_shm.c_shm_fill_kinfo_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8* }
%struct.shmfd = type { i32, i8*, i32 }
%struct.kinfo_file = type { i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@shm_dict_lock = common dso_local global i32 0, align 4
@SA_LOCKED = common dso_local global i32 0, align 4
@KF_TYPE_SHM = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_10__* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shmfd*, %struct.kinfo_file*, i32)* @shm_fill_kinfo_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shm_fill_kinfo_locked(%struct.shmfd* %0, %struct.kinfo_file* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.shmfd*, align 8
  %6 = alloca %struct.kinfo_file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.shmfd* %0, %struct.shmfd** %5, align 8
  store %struct.kinfo_file* %1, %struct.kinfo_file** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @SA_LOCKED, align 4
  %13 = call i32 @sx_assert(i32* @shm_dict_lock, i32 %12)
  %14 = load i32, i32* @KF_TYPE_SHM, align 4
  %15 = load %struct.kinfo_file*, %struct.kinfo_file** %6, align 8
  %16 = getelementptr inbounds %struct.kinfo_file, %struct.kinfo_file* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @S_IFREG, align 4
  %18 = load %struct.shmfd*, %struct.shmfd** %5, align 8
  %19 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = or i32 %17, %20
  %22 = load %struct.kinfo_file*, %struct.kinfo_file** %6, align 8
  %23 = getelementptr inbounds %struct.kinfo_file, %struct.kinfo_file* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  store i32 %21, i32* %25, align 4
  %26 = load %struct.shmfd*, %struct.shmfd** %5, align 8
  %27 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.kinfo_file*, %struct.kinfo_file** %6, align 8
  %30 = getelementptr inbounds %struct.kinfo_file, %struct.kinfo_file* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  store i32 %28, i32* %32, align 4
  %33 = load %struct.shmfd*, %struct.shmfd** %5, align 8
  %34 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %96

37:                                               ; preds = %3
  %38 = load %struct.shmfd*, %struct.shmfd** %5, align 8
  %39 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %95

42:                                               ; preds = %37
  %43 = load %struct.shmfd*, %struct.shmfd** %5, align 8
  %44 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %8, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** @curthread, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  store i8* %52, i8** %9, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = call i64 @strcmp(i8* %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %89

56:                                               ; preds = %42
  %57 = load i8*, i8** %9, align 8
  %58 = call i64 @strlen(i8* %57)
  store i64 %58, i64* %10, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = load i64, i64* %10, align 8
  %62 = call i64 @strncmp(i8* %59, i8* %60, i64 %61)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %56
  %65 = load i8*, i8** %8, align 8
  %66 = load i64, i64* %10, align 8
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 47
  br label %71

71:                                               ; preds = %64, %56
  %72 = phi i1 [ false, %56 ], [ %70, %64 ]
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load i32, i32* %11, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* @EPERM, align 4
  store i32 %80, i32* %4, align 4
  br label %97

81:                                               ; preds = %76, %71
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = load i64, i64* %10, align 8
  %86 = load i8*, i8** %8, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 %85
  store i8* %87, i8** %8, align 8
  br label %88

88:                                               ; preds = %84, %81
  br label %89

89:                                               ; preds = %88, %42
  %90 = load %struct.kinfo_file*, %struct.kinfo_file** %6, align 8
  %91 = getelementptr inbounds %struct.kinfo_file, %struct.kinfo_file* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i8*, i8** %8, align 8
  %94 = call i32 @strlcpy(i32 %92, i8* %93, i32 4)
  br label %95

95:                                               ; preds = %89, %37
  br label %96

96:                                               ; preds = %95, %3
  store i32 0, i32* %4, align 4
  br label %97

97:                                               ; preds = %96, %79
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
