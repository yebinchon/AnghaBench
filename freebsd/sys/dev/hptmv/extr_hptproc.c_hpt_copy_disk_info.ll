; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hptmv/extr_hptproc.c_hpt_copy_disk_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hptmv/extr_hptproc.c_hpt_copy_disk_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32, i32, %struct.TYPE_11__*, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"Disabled\00", align 1
@VD_SPARE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"Spare   \00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Normal  \00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Channel %d  %s  %5dMB  %s %s\0A\00", align 1
@MAX_ARRAY_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_12__*, i64)* @hpt_copy_disk_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hpt_copy_disk_info(i32* %0, %struct.TYPE_12__* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [32 x i8], align 16
  %8 = alloca [16 x i8], align 16
  %9 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = call i32 @get_disk_name(i8* %10, %struct.TYPE_13__* %13)
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  br label %31

22:                                               ; preds = %3
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @VD_SPARE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %30

29:                                               ; preds = %22
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  br label %30

30:                                               ; preds = %29, %28
  br label %31

31:                                               ; preds = %30, %21
  %32 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  store i8 0, i8* %32, align 16
  %33 = load i32*, i32** %4, align 8
  %34 = load i64, i64* %6, align 8
  %35 = add nsw i64 %34, 1
  %36 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = ashr i32 %39, 11
  %41 = load i8*, i8** %9, align 8
  %42 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %43 = call i32 @hpt_copy_info(i32* %33, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i64 %35, i8* %36, i32 %40, i8* %41, i8* %42)
  ret void
}

declare dso_local i32 @get_disk_name(i8*, %struct.TYPE_13__*) #1

declare dso_local i32 @hpt_copy_info(i32*, i8*, i64, i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
