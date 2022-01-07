; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/dpv/extr_dpv.c_operate_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/dpv/extr_dpv.c_operate_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpv_file_node = type { i32, i8* }
%struct.stat = type { i32, i32 }

@fd = common dso_local global i64 0, align 8
@multiple = common dso_local global i64 0, align 8
@rpath = common dso_local global i8* null, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@DPV_STATUS_FAILED = common dso_local global i8* null, align 8
@STDIN_FILENO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"/dev/stdin\00", align 1
@output_type = common dso_local global i32 0, align 4
@buf = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@_SC_PHYS_PAGES = common dso_local global i32 0, align 4
@PHYSPAGES_THRESHOLD = common dso_local global i64 0, align 8
@BUFSIZE_MAX = common dso_local global i32 0, align 4
@MAXPHYS = common dso_local global i32 0, align 4
@bsize = common dso_local global i64 0, align 8
@BUFSIZE_SMALL = common dso_local global i64 0, align 8
@_SC_PAGESIZE = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"Out of memory?!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpv_file_node*, i32)* @operate_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @operate_common(%struct.dpv_file_node* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dpv_file_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.stat, align 4
  store %struct.dpv_file_node* %0, %struct.dpv_file_node** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i64, i64* @fd, align 8
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %9, label %55

9:                                                ; preds = %2
  %10 = load i64, i64* @multiple, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %33

12:                                               ; preds = %9
  %13 = load %struct.dpv_file_node*, %struct.dpv_file_node** %4, align 8
  %14 = getelementptr inbounds %struct.dpv_file_node, %struct.dpv_file_node* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i8*, i8** @rpath, align 8
  %17 = call i64 @realpath(i32 %15, i8* %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %12
  %20 = load i8*, i8** @rpath, align 8
  %21 = load i32, i32* @O_RDONLY, align 4
  %22 = call i64 @open(i8* %20, i32 %21)
  store i64 %22, i64* @fd, align 8
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %19, %12
  %25 = load %struct.dpv_file_node*, %struct.dpv_file_node** %4, align 8
  %26 = getelementptr inbounds %struct.dpv_file_node, %struct.dpv_file_node* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i8*, i8** @DPV_STATUS_FAILED, align 8
  %30 = load %struct.dpv_file_node*, %struct.dpv_file_node** %4, align 8
  %31 = getelementptr inbounds %struct.dpv_file_node, %struct.dpv_file_node* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  store i32 -1, i32* %3, align 4
  br label %113

32:                                               ; preds = %19
  br label %54

33:                                               ; preds = %9
  %34 = load i64, i64* @STDIN_FILENO, align 8
  store i64 %34, i64* @fd, align 8
  %35 = load i64, i64* @fd, align 8
  %36 = call i64 @isatty(i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = load i32, i32* @O_RDONLY, align 4
  %40 = call i64 @open(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  store i64 %40, i64* @fd, align 8
  %41 = load i64, i64* @fd, align 8
  %42 = add nsw i64 %41, -1
  store i64 %42, i64* @fd, align 8
  %43 = trunc i64 %41 to i32
  %44 = call i32 @close(i32 %43)
  br label %45

45:                                               ; preds = %38, %33
  %46 = load i32, i32* @output_type, align 4
  switch i32 %46, label %53 [
    i32 129, label %47
    i32 128, label %50
  ]

47:                                               ; preds = %45
  %48 = load i64, i64* @fd, align 8
  %49 = sub nsw i64 %48, 1
  store i64 %49, i64* @fd, align 8
  br label %53

50:                                               ; preds = %45
  %51 = load i64, i64* @fd, align 8
  %52 = sub nsw i64 %51, 2
  store i64 %52, i64* @fd, align 8
  br label %53

53:                                               ; preds = %45, %50, %47
  br label %54

54:                                               ; preds = %53, %32
  br label %55

55:                                               ; preds = %54, %2
  %56 = load i32*, i32** @buf, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %112

58:                                               ; preds = %55
  %59 = load i32, i32* %5, align 4
  %60 = icmp sge i32 %59, 0
  br i1 %60, label %61, label %97

61:                                               ; preds = %58
  %62 = load i32, i32* %5, align 4
  %63 = call i64 @fstat(i32 %62, %struct.stat* %6)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %61
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  %68 = load i8*, i8** @DPV_STATUS_FAILED, align 8
  %69 = load %struct.dpv_file_node*, %struct.dpv_file_node** %4, align 8
  %70 = getelementptr inbounds %struct.dpv_file_node, %struct.dpv_file_node* %69, i32 0, i32 1
  store i8* %68, i8** %70, align 8
  store i32 -1, i32* %3, align 4
  br label %113

71:                                               ; preds = %61
  %72 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @S_ISREG(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %71
  %77 = load i32, i32* @_SC_PHYS_PAGES, align 4
  %78 = call i64 @sysconf(i32 %77)
  %79 = load i64, i64* @PHYSPAGES_THRESHOLD, align 8
  %80 = icmp sgt i64 %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = load i32, i32* @BUFSIZE_MAX, align 4
  %83 = load i32, i32* @MAXPHYS, align 4
  %84 = mul nsw i32 %83, 8
  %85 = call i64 @MIN(i32 %82, i32 %84)
  store i64 %85, i64* @bsize, align 8
  br label %88

86:                                               ; preds = %76
  %87 = load i64, i64* @BUFSIZE_SMALL, align 8
  store i64 %87, i64* @bsize, align 8
  br label %88

88:                                               ; preds = %86, %81
  br label %96

89:                                               ; preds = %71
  %90 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @_SC_PAGESIZE, align 4
  %93 = call i64 @sysconf(i32 %92)
  %94 = trunc i64 %93 to i32
  %95 = call i64 @MAX(i32 %91, i32 %94)
  store i64 %95, i64* @bsize, align 8
  br label %96

96:                                               ; preds = %89, %88
  br label %102

97:                                               ; preds = %58
  %98 = load i32, i32* @BUFSIZE_MAX, align 4
  %99 = load i32, i32* @MAXPHYS, align 4
  %100 = mul nsw i32 %99, 8
  %101 = call i64 @MIN(i32 %98, i32 %100)
  store i64 %101, i64* @bsize, align 8
  br label %102

102:                                              ; preds = %97, %96
  %103 = load i64, i64* @bsize, align 8
  %104 = add nsw i64 %103, 1
  %105 = call i32* @malloc(i64 %104)
  store i32* %105, i32** @buf, align 8
  %106 = icmp eq i32* %105, null
  br i1 %106, label %107, label %111

107:                                              ; preds = %102
  %108 = call i32 (...) @end_dialog()
  %109 = load i32, i32* @EXIT_FAILURE, align 4
  %110 = call i32 @err(i32 %109, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %111

111:                                              ; preds = %107, %102
  br label %112

112:                                              ; preds = %111, %55
  store i32 0, i32* %3, align 4
  br label %113

113:                                              ; preds = %112, %65, %24
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i64 @realpath(i32, i8*) #1

declare dso_local i64 @open(i8*, i32) #1

declare dso_local i32 @warn(i8*, i32) #1

declare dso_local i64 @isatty(i64) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @sysconf(i32) #1

declare dso_local i64 @MIN(i32, i32) #1

declare dso_local i64 @MAX(i32, i32) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @end_dialog(...) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
