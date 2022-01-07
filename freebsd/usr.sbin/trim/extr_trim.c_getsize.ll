; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/trim/extr_trim.c_getsize.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/trim/extr_trim.c_getsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i32 }

@O_RDONLY = common dso_local global i32 0, align 4
@O_DIRECT = common dso_local global i32 0, align 4
@EX_IOERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"fstat failed: %s\00", align 1
@EX_DATAERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [73 x i8] c"invalid type of the file (not regular, directory nor special device): %s\00", align 1
@DIOCGMEDIASIZE = common dso_local global i32 0, align 4
@EX_UNAVAILABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"ioctl(DIOCGMEDIASIZE) failed, probably not a disk: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @getsize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getsize(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.stat, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = load i32, i32* @O_RDONLY, align 4
  %9 = load i32, i32* @O_DIRECT, align 4
  %10 = or i32 %8, %9
  %11 = call i32 @opendev(i8* %7, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i64 @fstat(i32 %12, %struct.stat* %4)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i32, i32* @EX_IOERR, align 4
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @err(i32 %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %17)
  br label %19

19:                                               ; preds = %15, %1
  %20 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @S_ISREG(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @S_ISDIR(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24, %19
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @close(i32 %30)
  %32 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %2, align 4
  br label %61

34:                                               ; preds = %24
  %35 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @S_ISCHR(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @S_ISBLK(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* @EX_DATAERR, align 4
  %46 = load i8*, i8** %3, align 8
  %47 = call i32 @errx(i32 %45, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i8* %46)
  br label %48

48:                                               ; preds = %44, %39, %34
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @DIOCGMEDIASIZE, align 4
  %51 = call i64 @ioctl(i32 %49, i32 %50, i32* %5)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load i32, i32* @EX_UNAVAILABLE, align 4
  %55 = load i8*, i8** %3, align 8
  %56 = call i32 @err(i32 %54, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i8* %55)
  br label %57

57:                                               ; preds = %53, %48
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @close(i32 %58)
  %60 = load i32, i32* %5, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %57, %29
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @opendev(i8*, i32) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @S_ISCHR(i32) #1

declare dso_local i32 @S_ISBLK(i32) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i64 @ioctl(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
