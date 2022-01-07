; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/fstat/extr_fstat.c_print_shm_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/fstat/extr_fstat.c_print_shm_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.procstat = type { i32 }
%struct.filestat = type { i8*, i32 }
%struct.shmstat = type { i32, i32 }

@_POSIX2_LINE_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"* error\00", align 1
@nflg = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"             \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%o\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c" %-15s\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c" %10s %6ju\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.procstat*, %struct.filestat*)* @print_shm_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_shm_info(%struct.procstat* %0, %struct.filestat* %1) #0 {
  %3 = alloca %struct.procstat*, align 8
  %4 = alloca %struct.filestat*, align 8
  %5 = alloca %struct.shmstat, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [15 x i8], align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.procstat* %0, %struct.procstat** %3, align 8
  store %struct.filestat* %1, %struct.filestat** %4, align 8
  %11 = load i32, i32* @_POSIX2_LINE_MAX, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load %struct.procstat*, %struct.procstat** %3, align 8
  %16 = load %struct.filestat*, %struct.filestat** %4, align 8
  %17 = call i32 @procstat_get_shm_info(%struct.procstat* %15, %struct.filestat* %16, %struct.shmstat* %5, i8* %14)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %10, align 4
  br label %57

22:                                               ; preds = %2
  %23 = load i64, i64* @nflg, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %27 = getelementptr inbounds [15 x i8], [15 x i8]* %8, i64 0, i64 0
  %28 = getelementptr inbounds %struct.shmstat, %struct.shmstat* %5, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @snprintf(i8* %27, i32 15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  br label %48

31:                                               ; preds = %22
  %32 = load %struct.filestat*, %struct.filestat** %4, align 8
  %33 = getelementptr inbounds %struct.filestat, %struct.filestat* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load %struct.filestat*, %struct.filestat** %4, align 8
  %38 = getelementptr inbounds %struct.filestat, %struct.filestat* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  br label %41

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40, %36
  %42 = phi i8* [ %39, %36 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), %40 ]
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %42)
  %44 = getelementptr inbounds %struct.shmstat, %struct.shmstat* %5, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds [15 x i8], [15 x i8]* %8, i64 0, i64 0
  %47 = call i32 @strmode(i32 %45, i8* %46)
  br label %48

48:                                               ; preds = %41, %25
  %49 = getelementptr inbounds [15 x i8], [15 x i8]* %8, i64 0, i64 0
  %50 = getelementptr inbounds %struct.shmstat, %struct.shmstat* %5, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %49, i32 %51)
  %53 = load %struct.filestat*, %struct.filestat** %4, align 8
  %54 = getelementptr inbounds %struct.filestat, %struct.filestat* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @print_access_flags(i32 %55)
  store i32 0, i32* %10, align 4
  br label %57

57:                                               ; preds = %48, %20
  %58 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %58)
  %59 = load i32, i32* %10, align 4
  switch i32 %59, label %61 [
    i32 0, label %60
    i32 1, label %60
  ]

60:                                               ; preds = %57, %57
  ret void

61:                                               ; preds = %57
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @procstat_get_shm_info(%struct.procstat*, %struct.filestat*, %struct.shmstat*, i8*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @strmode(i32, i8*) #2

declare dso_local i32 @print_access_flags(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
