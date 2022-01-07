; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mkuzip/extr_mkuz_insize.c_mkuz_get_insize.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mkuzip/extr_mkuz_insize.c_mkuz_get_insize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mkuz_cfg = type { i32, i32 }
%struct.stat = type { i32, i32, i32 }
%struct.statfs = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"fstat(%s)\00", align 1
@SF_SNAPSHOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"fstatfs(%s)\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"open(%s, O_RDONLY)\00", align 1
@DIOCGMEDIASIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"ioctl(DIOCGMEDIASIZE)\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"%s: not a character device or regular file\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mkuz_get_insize(%struct.mkuz_cfg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mkuz_cfg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.stat, align 4
  %7 = alloca %struct.statfs, align 4
  store %struct.mkuz_cfg* %0, %struct.mkuz_cfg** %3, align 8
  %8 = load %struct.mkuz_cfg*, %struct.mkuz_cfg** %3, align 8
  %9 = getelementptr inbounds %struct.mkuz_cfg, %struct.mkuz_cfg* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @fstat(i32 %10, %struct.stat* %6)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.mkuz_cfg*, %struct.mkuz_cfg** %3, align 8
  %15 = getelementptr inbounds %struct.mkuz_cfg, %struct.mkuz_cfg* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %16)
  store i32 -1, i32* %2, align 4
  br label %92

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @SF_SNAPSHOT, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %60

24:                                               ; preds = %18
  %25 = load %struct.mkuz_cfg*, %struct.mkuz_cfg** %3, align 8
  %26 = getelementptr inbounds %struct.mkuz_cfg, %struct.mkuz_cfg* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @fstatfs(i32 %27, %struct.statfs* %7)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load %struct.mkuz_cfg*, %struct.mkuz_cfg** %3, align 8
  %32 = getelementptr inbounds %struct.mkuz_cfg, %struct.mkuz_cfg* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  store i32 -1, i32* %2, align 4
  br label %92

35:                                               ; preds = %24
  %36 = getelementptr inbounds %struct.statfs, %struct.statfs* %7, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @O_RDONLY, align 4
  %39 = call i32 @open(i32 %37, i32 %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.statfs, %struct.statfs* %7, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  store i32 -1, i32* %2, align 4
  br label %92

46:                                               ; preds = %35
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @DIOCGMEDIASIZE, align 4
  %49 = call i64 @ioctl(i32 %47, i32 %48, i32* %5)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @close(i32 %53)
  store i32 -1, i32* %2, align 4
  br label %92

55:                                               ; preds = %46
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @close(i32 %56)
  %58 = load i32, i32* %5, align 4
  %59 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 1
  store i32 %58, i32* %59, align 4
  br label %89

60:                                               ; preds = %18
  %61 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @S_ISCHR(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %60
  %66 = load %struct.mkuz_cfg*, %struct.mkuz_cfg** %3, align 8
  %67 = getelementptr inbounds %struct.mkuz_cfg, %struct.mkuz_cfg* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @DIOCGMEDIASIZE, align 4
  %70 = call i64 @ioctl(i32 %68, i32 %69, i32* %5)
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  %73 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %92

74:                                               ; preds = %65
  %75 = load i32, i32* %5, align 4
  %76 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 1
  store i32 %75, i32* %76, align 4
  br label %88

77:                                               ; preds = %60
  %78 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @S_ISREG(i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %77
  %83 = load %struct.mkuz_cfg*, %struct.mkuz_cfg** %3, align 8
  %84 = getelementptr inbounds %struct.mkuz_cfg, %struct.mkuz_cfg* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @warnx(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %85)
  store i32 -1, i32* %2, align 4
  br label %92

87:                                               ; preds = %77
  br label %88

88:                                               ; preds = %87, %74
  br label %89

89:                                               ; preds = %88, %55
  %90 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %89, %82, %72, %51, %42, %30, %13
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @warn(i8*, ...) #1

declare dso_local i64 @fstatfs(i32, %struct.statfs*) #1

declare dso_local i32 @open(i32, i32) #1

declare dso_local i64 @ioctl(i32, i32, i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @warnx(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
