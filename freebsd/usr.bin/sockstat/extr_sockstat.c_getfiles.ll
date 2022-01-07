; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sockstat/extr_sockstat.c_getfiles.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sockstat/extr_sockstat.c_getfiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@xfiles = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"malloc()\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"kern.file\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"sysctlbyname()\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"realloc()\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"struct xfile size mismatch\00", align 1
@nxfiles = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @getfiles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getfiles() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 4, i64* %1, align 8
  store i64 4, i64* %2, align 8
  %3 = load i64, i64* %1, align 8
  %4 = call %struct.TYPE_6__* @malloc(i64 %3)
  store %struct.TYPE_6__* %4, %struct.TYPE_6__** @xfiles, align 8
  %5 = icmp eq %struct.TYPE_6__* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %8

8:                                                ; preds = %6, %0
  br label %9

9:                                                ; preds = %32, %8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** @xfiles, align 8
  %11 = call i32 @sysctlbyname(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_6__* %10, i64* %1, i32 0, i32 0)
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %33

13:                                               ; preds = %9
  %14 = load i64, i64* @errno, align 8
  %15 = load i64, i64* @ENOMEM, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load i64, i64* %1, align 8
  %19 = load i64, i64* %2, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17, %13
  %22 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %17
  %24 = load i64, i64* %1, align 8
  %25 = mul i64 %24, 2
  store i64 %25, i64* %1, align 8
  store i64 %25, i64* %2, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** @xfiles, align 8
  %27 = load i64, i64* %1, align 8
  %28 = call %struct.TYPE_6__* @realloc(%struct.TYPE_6__* %26, i64 %27)
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** @xfiles, align 8
  %29 = icmp eq %struct.TYPE_6__* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = call i32 @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %23
  br label %9

33:                                               ; preds = %9
  %34 = load i64, i64* %1, align 8
  %35 = icmp ugt i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %33
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** @xfiles, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = icmp ne i64 %40, 4
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = call i32 @errx(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %36, %33
  %45 = load i64, i64* %1, align 8
  %46 = udiv i64 %45, 4
  store i64 %46, i64* @nxfiles, align 8
  ret void
}

declare dso_local %struct.TYPE_6__* @malloc(i64) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @sysctlbyname(i8*, %struct.TYPE_6__*, i64*, i32, i32) #1

declare dso_local %struct.TYPE_6__* @realloc(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @errx(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
