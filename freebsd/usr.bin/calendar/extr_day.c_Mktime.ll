; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/calendar/extr_day.c_Mktime.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/calendar/extr_day.c_Mktime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32 }

@tm0 = common dso_local global %struct.tm zeroinitializer, align 4
@.str = private unnamed_addr constant [9 x i8] c"%d.%d.%d\00", align 1
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @Mktime(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tm, align 4
  %8 = alloca %struct.tm, align 4
  store i8* %0, i8** %2, align 8
  %9 = call i32 @time(i64* %3)
  %10 = call i32 @localtime_r(i64* %3, %struct.tm* %8)
  %11 = bitcast %struct.tm* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast (%struct.tm* @tm0 to i8*), i64 12, i1 false)
  %12 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.tm, %struct.tm* %7, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.tm, %struct.tm* %7, i32 0, i32 1
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.tm, %struct.tm* %7, i32 0, i32 2
  store i32 %19, i32* %20, align 4
  %21 = load i8*, i8** %2, align 8
  %22 = call i32 @sscanf(i8* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %4, i32* %5, i32* %6)
  switch i32 %22, label %39 [
    i32 3, label %23
    i32 2, label %32
    i32 1, label %36
  ]

23:                                               ; preds = %1
  %24 = load i32, i32* %6, align 4
  %25 = icmp sgt i32 %24, 1900
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* %6, align 4
  %28 = sub nsw i32 %27, 1900
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %26, %23
  %30 = load i32, i32* %6, align 4
  %31 = getelementptr inbounds %struct.tm, %struct.tm* %7, i32 0, i32 2
  store i32 %30, i32* %31, align 4
  br label %32

32:                                               ; preds = %1, %29
  %33 = load i32, i32* %5, align 4
  %34 = sub nsw i32 %33, 1
  %35 = getelementptr inbounds %struct.tm, %struct.tm* %7, i32 0, i32 1
  store i32 %34, i32* %35, align 4
  br label %36

36:                                               ; preds = %1, %32
  %37 = load i32, i32* %4, align 4
  %38 = getelementptr inbounds %struct.tm, %struct.tm* %7, i32 0, i32 0
  store i32 %37, i32* %38, align 4
  br label %39

39:                                               ; preds = %36, %1
  %40 = call i64 @mktime(%struct.tm* %7)
  ret i64 %40
}

declare dso_local i32 @time(i64*) #1

declare dso_local i32 @localtime_r(i64*, %struct.tm*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*) #1

declare dso_local i64 @mktime(%struct.tm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
