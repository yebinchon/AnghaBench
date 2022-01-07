; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pty/extr_pty.c_pty_clone.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pty/extr_pty.c_pty_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i32 }
%struct.cdev = type { i32 }
%struct.make_dev_args = type { i32, i32, i32, i32, i32* }

@.str = private unnamed_addr constant [4 x i8] c"pty\00", align 1
@MAKEDEV_CHECKNAME = common dso_local global i32 0, align 4
@MAKEDEV_REF = common dso_local global i32 0, align 4
@ptydev_cdevsw = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_WHEEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ucred*, i8*, i32, %struct.cdev**)* @pty_clone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pty_clone(i8* %0, %struct.ucred* %1, i8* %2, i32 %3, %struct.cdev** %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ucred*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.cdev**, align 8
  %11 = alloca %struct.make_dev_args, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.ucred* %1, %struct.ucred** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.cdev** %4, %struct.cdev*** %10, align 8
  %13 = load %struct.cdev**, %struct.cdev*** %10, align 8
  %14 = load %struct.cdev*, %struct.cdev** %13, align 8
  %15 = icmp ne %struct.cdev* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  br label %94

17:                                               ; preds = %5
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 5
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = load i8*, i8** %8, align 8
  %22 = call i64 @bcmp(i8* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20, %17
  br label %94

25:                                               ; preds = %20
  %26 = load i8*, i8** %8, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 3
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp sge i32 %29, 108
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load i8*, i8** %8, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 3
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp sle i32 %35, 115
  br i1 %36, label %50, label %37

37:                                               ; preds = %31, %25
  %38 = load i8*, i8** %8, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 3
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp sge i32 %41, 76
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load i8*, i8** %8, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 3
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp sle i32 %47, 83
  br i1 %48, label %50, label %49

49:                                               ; preds = %43, %37
  br label %94

50:                                               ; preds = %43, %31
  %51 = load i8*, i8** %8, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 4
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp sge i32 %54, 48
  br i1 %55, label %56, label %62

56:                                               ; preds = %50
  %57 = load i8*, i8** %8, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 4
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp sle i32 %60, 57
  br i1 %61, label %75, label %62

62:                                               ; preds = %56, %50
  %63 = load i8*, i8** %8, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 4
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp sge i32 %66, 97
  br i1 %67, label %68, label %74

68:                                               ; preds = %62
  %69 = load i8*, i8** %8, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 4
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp sle i32 %72, 118
  br i1 %73, label %75, label %74

74:                                               ; preds = %68, %62
  br label %94

75:                                               ; preds = %68, %56
  %76 = call i32 @make_dev_args_init(%struct.make_dev_args* %11)
  %77 = load i32, i32* @MAKEDEV_CHECKNAME, align 4
  %78 = load i32, i32* @MAKEDEV_REF, align 4
  %79 = or i32 %77, %78
  %80 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %11, i32 0, i32 0
  store i32 %79, i32* %80, align 8
  %81 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %11, i32 0, i32 4
  store i32* @ptydev_cdevsw, i32** %81, align 8
  %82 = load i32, i32* @UID_ROOT, align 4
  %83 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %11, i32 0, i32 3
  store i32 %82, i32* %83, align 4
  %84 = load i32, i32* @GID_WHEEL, align 4
  %85 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %11, i32 0, i32 2
  store i32 %84, i32* %85, align 8
  %86 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %11, i32 0, i32 1
  store i32 438, i32* %86, align 4
  %87 = load %struct.cdev**, %struct.cdev*** %10, align 8
  %88 = load i8*, i8** %8, align 8
  %89 = call i32 @make_dev_s(%struct.make_dev_args* %11, %struct.cdev** %87, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %88)
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %12, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %75
  %93 = load %struct.cdev**, %struct.cdev*** %10, align 8
  store %struct.cdev* null, %struct.cdev** %93, align 8
  br label %94

94:                                               ; preds = %16, %24, %49, %74, %92, %75
  ret void
}

declare dso_local i64 @bcmp(i8*, i8*, i32) #1

declare dso_local i32 @make_dev_args_init(%struct.make_dev_args*) #1

declare dso_local i32 @make_dev_s(%struct.make_dev_args*, %struct.cdev**, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
