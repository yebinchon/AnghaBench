; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ofwdump/extr_ofw_util.c_ofw_finddevice.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ofwdump/extr_ofw_util.c_ofw_finddevice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofiocdesc = type { i8*, i64, i32*, i64, i32 }

@OFIOCFINDDEVICE = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@EX_UNAVAILABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Node '%s' not found\00", align 1
@EX_IOERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"ioctl(..., OFIOCFINDDEVICE, ...) failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ofw_finddevice(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ofiocdesc, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = getelementptr inbounds %struct.ofiocdesc, %struct.ofiocdesc* %5, i32 0, i32 1
  store i64 0, i64* %6, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i32 @strlen(i8* %7)
  %9 = getelementptr inbounds %struct.ofiocdesc, %struct.ofiocdesc* %5, i32 0, i32 4
  store i32 %8, i32* %9, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = getelementptr inbounds %struct.ofiocdesc, %struct.ofiocdesc* %5, i32 0, i32 0
  store i8* %10, i8** %11, align 8
  %12 = getelementptr inbounds %struct.ofiocdesc, %struct.ofiocdesc* %5, i32 0, i32 3
  store i64 0, i64* %12, align 8
  %13 = getelementptr inbounds %struct.ofiocdesc, %struct.ofiocdesc* %5, i32 0, i32 2
  store i32* null, i32** %13, align 8
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @OFIOCFINDDEVICE, align 4
  %16 = call i32 @ioctl(i32 %14, i32 %15, %struct.ofiocdesc* %5)
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %30

18:                                               ; preds = %2
  %19 = load i64, i64* @errno, align 8
  %20 = load i64, i64* @ENOENT, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i32, i32* @EX_UNAVAILABLE, align 4
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 (i32, i8*, ...) @err(i32 %23, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %24)
  br label %29

26:                                               ; preds = %18
  %27 = load i32, i32* @EX_IOERR, align 4
  %28 = call i32 (i32, i8*, ...) @err(i32 %27, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %22
  br label %30

30:                                               ; preds = %29, %2
  %31 = getelementptr inbounds %struct.ofiocdesc, %struct.ofiocdesc* %5, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  ret i64 %32
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ioctl(i32, i32, %struct.ofiocdesc*) #1

declare dso_local i32 @err(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
