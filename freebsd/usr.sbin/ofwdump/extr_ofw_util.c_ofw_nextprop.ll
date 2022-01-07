; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ofwdump/extr_ofw_util.c_ofw_nextprop.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ofwdump/extr_ofw_util.c_ofw_nextprop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofiocdesc = type { i8*, i32, i8*, i32, i32 }

@OFIOCNEXTPROP = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@EX_IOERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"ioctl(..., OFIOCNEXTPROP, ...) failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ofw_nextprop(i32 %0, i32 %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ofiocdesc, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* %8, align 4
  %14 = getelementptr inbounds %struct.ofiocdesc, %struct.ofiocdesc* %12, i32 0, i32 4
  store i32 %13, i32* %14, align 4
  %15 = load i8*, i8** %9, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = load i8*, i8** %9, align 8
  %19 = call i32 @strlen(i8* %18)
  br label %21

20:                                               ; preds = %5
  br label %21

21:                                               ; preds = %20, %17
  %22 = phi i32 [ %19, %17 ], [ 0, %20 ]
  %23 = getelementptr inbounds %struct.ofiocdesc, %struct.ofiocdesc* %12, i32 0, i32 3
  store i32 %22, i32* %23, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = getelementptr inbounds %struct.ofiocdesc, %struct.ofiocdesc* %12, i32 0, i32 0
  store i8* %24, i8** %25, align 8
  %26 = load i32, i32* %11, align 4
  %27 = getelementptr inbounds %struct.ofiocdesc, %struct.ofiocdesc* %12, i32 0, i32 1
  store i32 %26, i32* %27, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = getelementptr inbounds %struct.ofiocdesc, %struct.ofiocdesc* %12, i32 0, i32 2
  store i8* %28, i8** %29, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @OFIOCNEXTPROP, align 4
  %32 = call i32 @ioctl(i32 %30, i32 %31, %struct.ofiocdesc* %12)
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %43

34:                                               ; preds = %21
  %35 = load i64, i64* @errno, align 8
  %36 = load i64, i64* @ENOENT, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i32 0, i32* %6, align 4
  br label %46

39:                                               ; preds = %34
  %40 = load i32, i32* @EX_IOERR, align 4
  %41 = call i32 @err(i32 %40, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %39
  br label %43

43:                                               ; preds = %42, %21
  %44 = getelementptr inbounds %struct.ofiocdesc, %struct.ofiocdesc* %12, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %43, %38
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ioctl(i32, i32, %struct.ofiocdesc*) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
