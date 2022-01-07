; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_filter.c_ParseIcmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_filter.c_ParseIcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filterent = type { i32, i8*, i8* }

@OP_NONE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"src\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"eq\00", align 1
@LogWARN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"ParseIcmp: type is expected.\0A\00", align 1
@OP_EQ = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"ParseIcmp: bad icmp syntax.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, %struct.filterent*)* @ParseIcmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ParseIcmp(i32 %0, i8** %1, %struct.filterent* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca %struct.filterent*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store %struct.filterent* %2, %struct.filterent** %7, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %52 [
    i32 0, label %11
    i32 3, label %17
  ]

11:                                               ; preds = %3
  %12 = load i8*, i8** @OP_NONE, align 8
  %13 = load %struct.filterent*, %struct.filterent** %7, align 8
  %14 = getelementptr inbounds %struct.filterent, %struct.filterent* %13, i32 0, i32 1
  store i8* %12, i8** %14, align 8
  %15 = load %struct.filterent*, %struct.filterent** %7, align 8
  %16 = getelementptr inbounds %struct.filterent, %struct.filterent* %15, i32 0, i32 2
  store i8* %12, i8** %16, align 8
  br label %55

17:                                               ; preds = %3
  %18 = load i8**, i8*** %6, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %51, label %22

22:                                               ; preds = %17
  %23 = load i8**, i8*** %6, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 1
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %51, label %28

28:                                               ; preds = %22
  %29 = load i8**, i8*** %6, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 2
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @strtol(i8* %31, i8** %9, i32 0)
  store i32 %32, i32* %8, align 4
  %33 = load i8*, i8** %9, align 8
  %34 = load i8**, i8*** %6, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 2
  %36 = load i8*, i8** %35, align 8
  %37 = icmp eq i8* %33, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %28
  %39 = load i32, i32* @LogWARN, align 4
  %40 = call i32 @log_Printf(i32 %39, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %56

41:                                               ; preds = %28
  %42 = load i8*, i8** @OP_EQ, align 8
  %43 = load %struct.filterent*, %struct.filterent** %7, align 8
  %44 = getelementptr inbounds %struct.filterent, %struct.filterent* %43, i32 0, i32 2
  store i8* %42, i8** %44, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.filterent*, %struct.filterent** %7, align 8
  %47 = getelementptr inbounds %struct.filterent, %struct.filterent* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load i8*, i8** @OP_NONE, align 8
  %49 = load %struct.filterent*, %struct.filterent** %7, align 8
  %50 = getelementptr inbounds %struct.filterent, %struct.filterent* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  br label %51

51:                                               ; preds = %41, %22, %17
  br label %55

52:                                               ; preds = %3
  %53 = load i32, i32* @LogWARN, align 4
  %54 = call i32 @log_Printf(i32 %53, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %56

55:                                               ; preds = %51, %11
  store i32 1, i32* %4, align 4
  br label %56

56:                                               ; preds = %55, %52, %38
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @log_Printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
