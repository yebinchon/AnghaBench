; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/fstat/extr_fstat.c_print_pts_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/fstat/extr_fstat.c_print_pts_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.procstat = type { i32 }
%struct.filestat = type { i32 }
%struct.ptsstat = type { i8*, i64 }

@_POSIX2_LINE_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"* error\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"* pseudo-terminal master \00", align 1
@nflg = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"%#10jx\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%10s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.procstat*, %struct.filestat*)* @print_pts_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_pts_info(%struct.procstat* %0, %struct.filestat* %1) #0 {
  %3 = alloca %struct.procstat*, align 8
  %4 = alloca %struct.filestat*, align 8
  %5 = alloca %struct.ptsstat, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.procstat* %0, %struct.procstat** %3, align 8
  store %struct.filestat* %1, %struct.filestat** %4, align 8
  %10 = load i32, i32* @_POSIX2_LINE_MAX, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load %struct.procstat*, %struct.procstat** %3, align 8
  %15 = load %struct.filestat*, %struct.filestat** %4, align 8
  %16 = call i32 @procstat_get_pts_info(%struct.procstat* %14, %struct.filestat* %15, %struct.ptsstat* %5, i8* %13)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %44

21:                                               ; preds = %2
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i64, i64* @nflg, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.ptsstat, %struct.ptsstat* %5, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load i8, i8* %27, align 1
  %29 = icmp ne i8 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %25, %21
  %31 = getelementptr inbounds %struct.ptsstat, %struct.ptsstat* %5, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i8*
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %33)
  br label %39

35:                                               ; preds = %25
  %36 = getelementptr inbounds %struct.ptsstat, %struct.ptsstat* %5, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %37)
  br label %39

39:                                               ; preds = %35, %30
  %40 = load %struct.filestat*, %struct.filestat** %4, align 8
  %41 = getelementptr inbounds %struct.filestat, %struct.filestat* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @print_access_flags(i32 %42)
  store i32 0, i32* %9, align 4
  br label %44

44:                                               ; preds = %39, %19
  %45 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %45)
  %46 = load i32, i32* %9, align 4
  switch i32 %46, label %48 [
    i32 0, label %47
    i32 1, label %47
  ]

47:                                               ; preds = %44, %44
  ret void

48:                                               ; preds = %44
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @procstat_get_pts_info(%struct.procstat*, %struct.filestat*, %struct.ptsstat*, i8*) #2

declare dso_local i32 @printf(i8*, ...) #2

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
