; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_psdate.c_parse_datesub.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_psdate.c_parse_datesub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"%d-%b-%y\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%d-%b-%Y\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%d-%m-%y\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%d-%m-%Y\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"%H:%M %d-%b-%y\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"%H:%M %d-%b-%Y\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"%H:%M %d-%m-%y\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"%H:%M %d-%m-%Y\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"%H:%M:%S %d-%b-%y\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"%H:%M:%S %d-%b-%Y\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"%H:%M:%S %d-%m-%y\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"%H:%M:%S %d-%m-%Y\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"%d-%b-%y %H:%M\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"%d-%b-%Y %H:%M\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"%d-%m-%y %H:%M\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"%d-%m-%Y %H:%M\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"%d-%b-%y %H:%M:%S\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"%d-%b-%Y %H:%M:%S\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"%d-%m-%y %H:%M:%S\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"%d-%m-%Y %H:%M:%S\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"%H:%M\09%d-%b-%y\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"%H:%M\09%d-%b-%Y\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"%H:%M\09%d-%m-%y\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"%H:%M\09%d-%m-%Y\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"%H:%M\09%S %d-%b-%y\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"%H:%M\09%S %d-%b-%Y\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"%H:%M\09%S %d-%m-%y\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"%H:%M\09%S %d-%m-%Y\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"%d-%b-%y\09%H:%M\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"%d-%b-%Y\09%H:%M\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"%d-%m-%y\09%H:%M\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"%d-%m-%Y\09%H:%M\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"%d-%b-%y\09%H:%M:%S\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"%d-%b-%Y\09%H:%M:%S\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"%d-%m-%y\09%H:%M:%S\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"%d-%m-%Y\09%H:%M:%S\00", align 1
@__const.parse_datesub.valid_formats = private unnamed_addr constant [37 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.35, i32 0, i32 0), i8* null], align 16
@LC_ALL_MASK = common dso_local global i32 0, align 4
@.str.36 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.37 = private unnamed_addr constant [13 x i8] c"Invalid date\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.tm*)* @parse_datesub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_datesub(i8* %0, %struct.tm* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.tm*, align 8
  %5 = alloca %struct.tm, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca [37 x i8*], align 16
  store i8* %0, i8** %3, align 8
  store %struct.tm* %1, %struct.tm** %4, align 8
  %10 = bitcast [37 x i8*]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([37 x i8*]* @__const.parse_datesub.valid_formats to i8*), i64 296, i1 false)
  %11 = load i32, i32* @LC_ALL_MASK, align 4
  %12 = call i32 @newlocale(i32 %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), i32* null)
  store i32 %12, i32* %6, align 4
  %13 = call i32 @memset(%struct.tm* %5, i32 0, i32 24)
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %63, %2
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [37 x i8*], [37 x i8*]* %9, i64 0, i64 %16
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %66

20:                                               ; preds = %14
  %21 = load i8*, i8** %3, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [37 x i8*], [37 x i8*]* %9, i64 0, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i8* @strptime_l(i8* %21, i8* %25, %struct.tm* %5, i32 %26)
  store i8* %27, i8** %8, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %62

30:                                               ; preds = %20
  %31 = load i8*, i8** %8, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %62

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.tm*, %struct.tm** %4, align 8
  %39 = getelementptr inbounds %struct.tm, %struct.tm* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 4
  %40 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.tm*, %struct.tm** %4, align 8
  %43 = getelementptr inbounds %struct.tm, %struct.tm* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 4
  %44 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.tm*, %struct.tm** %4, align 8
  %47 = getelementptr inbounds %struct.tm, %struct.tm* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  %48 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.tm*, %struct.tm** %4, align 8
  %51 = getelementptr inbounds %struct.tm, %struct.tm* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.tm*, %struct.tm** %4, align 8
  %55 = getelementptr inbounds %struct.tm, %struct.tm* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.tm*, %struct.tm** %4, align 8
  %59 = getelementptr inbounds %struct.tm, %struct.tm* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @freelocale(i32 %60)
  br label %71

62:                                               ; preds = %30, %20
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %14

66:                                               ; preds = %14
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @freelocale(i32 %67)
  %69 = load i32, i32* @EXIT_FAILURE, align 4
  %70 = call i32 @errx(i32 %69, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i64 0, i64 0))
  br label %71

71:                                               ; preds = %66, %35
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @newlocale(i32, i8*, i32*) #2

declare dso_local i32 @memset(%struct.tm*, i32, i32) #2

declare dso_local i8* @strptime_l(i8*, i8*, %struct.tm*, i32) #2

declare dso_local i32 @freelocale(i32) #2

declare dso_local i32 @errx(i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
