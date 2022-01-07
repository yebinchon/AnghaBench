; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/lsvfs/extr_lsvfs.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/lsvfs/extr_lsvfs.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xvfsconf = type { i8*, i8*, i8*, i32 }

@HDRFMT = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"Filesystem\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"Num\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Refs\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Flags\00", align 1
@DASHES = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@FMT = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [29 x i8] c"VFS %s unknown or not loaded\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"vfs.conflist\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"sysctl(vfs.conflist)\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.xvfsconf, align 8
  %10 = alloca %struct.xvfsconf*, align 8
  %11 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  %12 = load i32, i32* %4, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %4, align 4
  %14 = load i8**, i8*** %5, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i32 1
  store i8** %15, i8*** %5, align 8
  %16 = load i8*, i8** @HDRFMT, align 8
  %17 = call i32 @printf(i8* %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %18 = load i32, i32* @DASHES, align 4
  %19 = load i32, i32* @stdout, align 4
  %20 = call i32 @fputs(i32 %18, i32 %19)
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %57

23:                                               ; preds = %2
  br label %24

24:                                               ; preds = %51, %23
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %56

27:                                               ; preds = %24
  %28 = load i8**, i8*** %5, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = call i64 @getvfsbyname(i8* %29, %struct.xvfsconf* %9)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %27
  %33 = load i8*, i8** @FMT, align 8
  %34 = getelementptr inbounds %struct.xvfsconf, %struct.xvfsconf* %9, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds %struct.xvfsconf, %struct.xvfsconf* %9, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds %struct.xvfsconf, %struct.xvfsconf* %9, i32 0, i32 2
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr inbounds %struct.xvfsconf, %struct.xvfsconf* %9, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = call i8* @fmt_flags(i32 %41)
  %43 = call i32 @printf(i8* %33, i8* %35, i8* %37, i8* %39, i8* %42)
  br label %50

44:                                               ; preds = %27
  %45 = load i8**, i8*** %5, align 8
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @warnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %46)
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %44, %32
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %4, align 4
  %54 = load i8**, i8*** %5, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i32 1
  store i8** %55, i8*** %5, align 8
  br label %24

56:                                               ; preds = %24
  br label %117

57:                                               ; preds = %2
  %58 = call i64 @sysctlbyname(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), %struct.xvfsconf* null, i64* %11, i32* null, i32 0)
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = call i32 @err(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %57
  %63 = load i64, i64* %11, align 8
  %64 = call %struct.xvfsconf* @malloc(i64 %63)
  store %struct.xvfsconf* %64, %struct.xvfsconf** %10, align 8
  %65 = load %struct.xvfsconf*, %struct.xvfsconf** %10, align 8
  %66 = icmp eq %struct.xvfsconf* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = call i32 @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  br label %69

69:                                               ; preds = %67, %62
  %70 = load %struct.xvfsconf*, %struct.xvfsconf** %10, align 8
  %71 = call i64 @sysctlbyname(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), %struct.xvfsconf* %70, i64* %11, i32* null, i32 0)
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = call i32 @err(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  br label %75

75:                                               ; preds = %73, %69
  %76 = load i64, i64* %11, align 8
  %77 = udiv i64 %76, 32
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %79

79:                                               ; preds = %111, %75
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %114

83:                                               ; preds = %79
  %84 = load i8*, i8** @FMT, align 8
  %85 = load %struct.xvfsconf*, %struct.xvfsconf** %10, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.xvfsconf, %struct.xvfsconf* %85, i64 %87
  %89 = getelementptr inbounds %struct.xvfsconf, %struct.xvfsconf* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = load %struct.xvfsconf*, %struct.xvfsconf** %10, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.xvfsconf, %struct.xvfsconf* %91, i64 %93
  %95 = getelementptr inbounds %struct.xvfsconf, %struct.xvfsconf* %94, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  %97 = load %struct.xvfsconf*, %struct.xvfsconf** %10, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.xvfsconf, %struct.xvfsconf* %97, i64 %99
  %101 = getelementptr inbounds %struct.xvfsconf, %struct.xvfsconf* %100, i32 0, i32 2
  %102 = load i8*, i8** %101, align 8
  %103 = load %struct.xvfsconf*, %struct.xvfsconf** %10, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.xvfsconf, %struct.xvfsconf* %103, i64 %105
  %107 = getelementptr inbounds %struct.xvfsconf, %struct.xvfsconf* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = call i8* @fmt_flags(i32 %108)
  %110 = call i32 @printf(i8* %84, i8* %90, i8* %96, i8* %102, i8* %109)
  br label %111

111:                                              ; preds = %83
  %112 = load i32, i32* %8, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %8, align 4
  br label %79

114:                                              ; preds = %79
  %115 = load %struct.xvfsconf*, %struct.xvfsconf** %10, align 8
  %116 = call i32 @free(%struct.xvfsconf* %115)
  br label %117

117:                                              ; preds = %114, %56
  %118 = load i32, i32* %7, align 4
  ret i32 %118
}

declare dso_local i32 @printf(i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @fputs(i32, i32) #1

declare dso_local i64 @getvfsbyname(i8*, %struct.xvfsconf*) #1

declare dso_local i8* @fmt_flags(i32) #1

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i64 @sysctlbyname(i8*, %struct.xvfsconf*, i64*, i32*, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local %struct.xvfsconf* @malloc(i64) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @free(%struct.xvfsconf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
