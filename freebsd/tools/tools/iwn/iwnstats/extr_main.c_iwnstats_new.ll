; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/iwn/iwnstats/extr_main.c_iwnstats_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/iwn/iwnstats/extr_main.c_iwnstats_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwnstats = type { i64 }

@.str = private unnamed_addr constant [8 x i8] c"/dev/%s\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iwnstats* (i8*)* @iwnstats_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iwnstats* @iwnstats_new(i8* %0) #0 {
  %2 = alloca %struct.iwnstats*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.iwnstats*, align 8
  %5 = alloca [128 x i8], align 16
  store i8* %0, i8** %3, align 8
  %6 = call %struct.iwnstats* @calloc(i32 1, i32 8)
  store %struct.iwnstats* %6, %struct.iwnstats** %4, align 8
  %7 = load %struct.iwnstats*, %struct.iwnstats** %4, align 8
  %8 = icmp eq %struct.iwnstats* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store %struct.iwnstats* null, %struct.iwnstats** %2, align 8
  br label %27

10:                                               ; preds = %1
  %11 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @snprintf(i8* %11, i32 128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %12)
  %14 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %15 = load i32, i32* @O_RDWR, align 4
  %16 = call i64 @open(i8* %14, i32 %15)
  %17 = load %struct.iwnstats*, %struct.iwnstats** %4, align 8
  %18 = getelementptr inbounds %struct.iwnstats, %struct.iwnstats* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load %struct.iwnstats*, %struct.iwnstats** %4, align 8
  %20 = getelementptr inbounds %struct.iwnstats, %struct.iwnstats* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %10
  %24 = call i32 @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %10
  %26 = load %struct.iwnstats*, %struct.iwnstats** %4, align 8
  store %struct.iwnstats* %26, %struct.iwnstats** %2, align 8
  br label %27

27:                                               ; preds = %25, %9
  %28 = load %struct.iwnstats*, %struct.iwnstats** %2, align 8
  ret %struct.iwnstats* %28
}

declare dso_local %struct.iwnstats* @calloc(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i64 @open(i8*, i32) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
