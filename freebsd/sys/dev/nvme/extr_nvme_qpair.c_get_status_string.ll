; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_qpair.c_get_status_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_qpair.c_get_status_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_status_string = type { i32, i8* }

@generic_status = common dso_local global %struct.nvme_status_string* null, align 8
@command_specific_status = common dso_local global %struct.nvme_status_string* null, align 8
@media_error_status = common dso_local global %struct.nvme_status_string* null, align 8
@path_related_status = common dso_local global %struct.nvme_status_string* null, align 8
@.str = private unnamed_addr constant [16 x i8] c"VENDOR SPECIFIC\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"RESERVED\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32)* @get_status_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_status_string(i32 %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvme_status_string*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %17 [
    i32 131, label %8
    i32 132, label %10
    i32 130, label %12
    i32 129, label %14
    i32 128, label %16
  ]

8:                                                ; preds = %2
  %9 = load %struct.nvme_status_string*, %struct.nvme_status_string** @generic_status, align 8
  store %struct.nvme_status_string* %9, %struct.nvme_status_string** %6, align 8
  br label %18

10:                                               ; preds = %2
  %11 = load %struct.nvme_status_string*, %struct.nvme_status_string** @command_specific_status, align 8
  store %struct.nvme_status_string* %11, %struct.nvme_status_string** %6, align 8
  br label %18

12:                                               ; preds = %2
  %13 = load %struct.nvme_status_string*, %struct.nvme_status_string** @media_error_status, align 8
  store %struct.nvme_status_string* %13, %struct.nvme_status_string** %6, align 8
  br label %18

14:                                               ; preds = %2
  %15 = load %struct.nvme_status_string*, %struct.nvme_status_string** @path_related_status, align 8
  store %struct.nvme_status_string* %15, %struct.nvme_status_string** %6, align 8
  br label %18

16:                                               ; preds = %2
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %41

17:                                               ; preds = %2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %41

18:                                               ; preds = %14, %12, %10, %8
  br label %19

19:                                               ; preds = %34, %18
  %20 = load %struct.nvme_status_string*, %struct.nvme_status_string** %6, align 8
  %21 = getelementptr inbounds %struct.nvme_status_string, %struct.nvme_status_string* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 65535
  br i1 %23, label %24, label %37

24:                                               ; preds = %19
  %25 = load %struct.nvme_status_string*, %struct.nvme_status_string** %6, align 8
  %26 = getelementptr inbounds %struct.nvme_status_string, %struct.nvme_status_string* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load %struct.nvme_status_string*, %struct.nvme_status_string** %6, align 8
  %32 = getelementptr inbounds %struct.nvme_status_string, %struct.nvme_status_string* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %3, align 8
  br label %41

34:                                               ; preds = %24
  %35 = load %struct.nvme_status_string*, %struct.nvme_status_string** %6, align 8
  %36 = getelementptr inbounds %struct.nvme_status_string, %struct.nvme_status_string* %35, i32 1
  store %struct.nvme_status_string* %36, %struct.nvme_status_string** %6, align 8
  br label %19

37:                                               ; preds = %19
  %38 = load %struct.nvme_status_string*, %struct.nvme_status_string** %6, align 8
  %39 = getelementptr inbounds %struct.nvme_status_string, %struct.nvme_status_string* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %3, align 8
  br label %41

41:                                               ; preds = %37, %30, %17, %16
  %42 = load i8*, i8** %3, align 8
  ret i8* %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
