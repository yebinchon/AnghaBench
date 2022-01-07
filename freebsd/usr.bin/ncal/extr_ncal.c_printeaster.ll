; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/ncal/extr_ncal.c_printeaster.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/ncal/extr_ncal.c_printeaster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i64 }
%struct.tm = type { i32, i64, i64 }

@MAX_WIDTH = common dso_local global i32 0, align 4
@printeaster.d_first = internal global i32 -1, align 4
@D_MD_ORDER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%e %B %Y\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%B %e %Y\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @printeaster to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @printeaster(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__, align 8
  %8 = alloca %struct.tm, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* @MAX_WIDTH, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %9, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %10, align 8
  %15 = load i32, i32* @printeaster.d_first, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %3
  %18 = load i32, i32* @D_MD_ORDER, align 4
  %19 = call i8* @nl_langinfo(i32 %18)
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 100
  %23 = zext i1 %22 to i32
  store i32 %23, i32* @printeaster.d_first, align 4
  br label %24

24:                                               ; preds = %17, %3
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %25, 1583
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 1, i32* %6, align 4
  br label %28

28:                                               ; preds = %27, %24
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %28
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @easteroj(i32 %35, %struct.TYPE_5__* %7)
  br label %40

37:                                               ; preds = %31
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @easterog(i32 %38, %struct.TYPE_5__* %7)
  br label %40

40:                                               ; preds = %37, %34
  br label %44

41:                                               ; preds = %28
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @easterg(i32 %42, %struct.TYPE_5__* %7)
  br label %44

44:                                               ; preds = %41, %40
  %45 = call i32 @memset(%struct.tm* %8, i32 0, i32 24)
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %47, 1900
  %49 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 2
  store i64 %48, i64* %49, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %51, 1
  %53 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 1
  store i64 %52, i64* %53, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 0
  store i32 %55, i32* %56, align 8
  %57 = trunc i64 %12 to i32
  %58 = load i32, i32* @printeaster.d_first, align 4
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0)
  %62 = call i32 @strftime(i8* %14, i32 %57, i8* %61, %struct.tm* %8)
  %63 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %14)
  %64 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %64)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @nl_langinfo(i32) #2

declare dso_local i32 @easteroj(i32, %struct.TYPE_5__*) #2

declare dso_local i32 @easterog(i32, %struct.TYPE_5__*) #2

declare dso_local i32 @easterg(i32, %struct.TYPE_5__*) #2

declare dso_local i32 @memset(%struct.tm*, i32, i32) #2

declare dso_local i32 @strftime(i8*, i32, i8*, %struct.tm*) #2

declare dso_local i32 @printf(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
