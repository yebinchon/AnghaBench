; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyvectl/extr_bhyvectl.c_show_memseg.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyvectl/extr_bhyvectl.c_show_memseg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }

@SPECNAMELEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"ID  Length      Name\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"%-4d\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@HN_AUTOSCALE = common dso_local global i32 0, align 4
@HN_NOSPACE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"%-12s\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"sysmem\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmctx*)* @show_memseg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_memseg(%struct.vmctx* %0) #0 {
  %2 = alloca %struct.vmctx*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [8 x i8], align 1
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vmctx* %0, %struct.vmctx** %2, align 8
  %9 = load i32, i32* @SPECNAMELEN, align 4
  %10 = add nsw i32 %9, 1
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %3, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %4, align 8
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %56, %1
  br label %16

16:                                               ; preds = %15
  %17 = load %struct.vmctx*, %struct.vmctx** %2, align 8
  %18 = load i32, i32* %8, align 4
  %19 = trunc i64 %11 to i32
  %20 = call i32 @vm_get_memseg(%struct.vmctx* %17, i32 %18, i64* %6, i8* %13, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %16
  %24 = load i64, i64* @errno, align 8
  %25 = load i64, i64* @EINVAL, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %30

28:                                               ; preds = %23
  %29 = load i32, i32* %7, align 4
  br label %30

30:                                               ; preds = %28, %27
  %31 = phi i32 [ 0, %27 ], [ %29, %28 ]
  %32 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %32)
  ret i32 %31

33:                                               ; preds = %16
  %34 = load i64, i64* %6, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %56

36:                                               ; preds = %33
  %37 = load i32, i32* %8, align 4
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  %40 = load i64, i64* %6, align 8
  %41 = load i32, i32* @HN_AUTOSCALE, align 4
  %42 = load i32, i32* @HN_NOSPACE, align 4
  %43 = call i32 @humanize_number(i8* %39, i32 8, i64 %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %41, i32 %42)
  %44 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %44)
  %46 = getelementptr inbounds i8, i8* %13, i64 0
  %47 = load i8, i8* %46, align 16
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %36
  br label %52

51:                                               ; preds = %36
  br label %52

52:                                               ; preds = %51, %50
  %53 = phi i8* [ %13, %50 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), %51 ]
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %53)
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %56

56:                                               ; preds = %52, %33
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %15
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @vm_get_memseg(%struct.vmctx*, i32, i64*, i8*, i32) #2

declare dso_local i32 @humanize_number(i8*, i32, i64, i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
