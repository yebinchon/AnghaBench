; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/fsx/extr_fsx.c_domapread.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/fsx/extr_fsx.c_domapread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@readbdy = common dso_local global i32 0, align 4
@quiet = common dso_local global i32 0, align 4
@testcalls = common dso_local global i32 0, align 4
@simulatedopcount = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"skipping zero size read\0A\00", align 1
@OP_SKIPPED = common dso_local global i32 0, align 4
@OP_MAPREAD = common dso_local global i32 0, align 4
@file_size = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"skipping seek/read past end of file\0A\00", align 1
@progressinterval = common dso_local global i32 0, align 4
@debug = common dso_local global i64 0, align 8
@monitorstart = common dso_local global i32 0, align 4
@monitorend = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"%lu mapread\090x%x thru\090x%x\09(0x%x bytes)\0A\00", align 1
@page_mask = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@MAP_FILE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@fd = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"domapread: mmap\00", align 1
@temp_buf = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"Read\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"domapread: munmap\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @domapread(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @readbdy, align 4
  %10 = urem i32 %8, %9
  %11 = load i32, i32* %3, align 4
  %12 = sub i32 %11, %10
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %2
  %16 = load i32, i32* @quiet, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* @testcalls, align 4
  %20 = load i32, i32* @simulatedopcount, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = call i32 (i8*, ...) @prt(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %18, %15
  %25 = load i32, i32* @OP_SKIPPED, align 4
  %26 = load i32, i32* @OP_MAPREAD, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @log4(i32 %25, i32 %26, i32 %27, i32 %28)
  br label %144

30:                                               ; preds = %2
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %3, align 4
  %33 = add i32 %31, %32
  %34 = load i32, i32* @file_size, align 4
  %35 = icmp ugt i32 %33, %34
  br i1 %35, label %36, label %51

36:                                               ; preds = %30
  %37 = load i32, i32* @quiet, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* @testcalls, align 4
  %41 = load i32, i32* @simulatedopcount, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = call i32 (i8*, ...) @prt(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %39, %36
  %46 = load i32, i32* @OP_SKIPPED, align 4
  %47 = load i32, i32* @OP_MAPREAD, align 4
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @log4(i32 %46, i32 %47, i32 %48, i32 %49)
  br label %144

51:                                               ; preds = %30
  %52 = load i32, i32* @OP_MAPREAD, align 4
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @log4(i32 %52, i32 %53, i32 %54, i32 0)
  %56 = load i32, i32* @testcalls, align 4
  %57 = load i32, i32* @simulatedopcount, align 4
  %58 = icmp sle i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  br label %144

60:                                               ; preds = %51
  %61 = load i32, i32* @quiet, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %99, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* @progressinterval, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = load i32, i32* @testcalls, align 4
  %68 = load i32, i32* @progressinterval, align 4
  %69 = srem i32 %67, %68
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %90, label %71

71:                                               ; preds = %66, %63
  %72 = load i64, i64* @debug, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %99

74:                                               ; preds = %71
  %75 = load i32, i32* @monitorstart, align 4
  %76 = icmp eq i32 %75, -1
  br i1 %76, label %90, label %77

77:                                               ; preds = %74
  %78 = load i32, i32* %3, align 4
  %79 = load i32, i32* %4, align 4
  %80 = add i32 %78, %79
  %81 = load i32, i32* @monitorstart, align 4
  %82 = icmp ugt i32 %80, %81
  br i1 %82, label %83, label %99

83:                                               ; preds = %77
  %84 = load i32, i32* @monitorend, align 4
  %85 = icmp eq i32 %84, -1
  br i1 %85, label %90, label %86

86:                                               ; preds = %83
  %87 = load i32, i32* %3, align 4
  %88 = load i32, i32* @monitorend, align 4
  %89 = icmp ule i32 %87, %88
  br i1 %89, label %90, label %99

90:                                               ; preds = %86, %83, %74, %66
  %91 = load i32, i32* @testcalls, align 4
  %92 = load i32, i32* %3, align 4
  %93 = load i32, i32* %3, align 4
  %94 = load i32, i32* %4, align 4
  %95 = add i32 %93, %94
  %96 = sub i32 %95, 1
  %97 = load i32, i32* %4, align 4
  %98 = call i32 (i8*, ...) @prt(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %91, i32 %92, i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %90, %86, %77, %71, %60
  %100 = load i32, i32* %3, align 4
  %101 = load i32, i32* @page_mask, align 4
  %102 = and i32 %100, %101
  store i32 %102, i32* %5, align 4
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* %4, align 4
  %105 = add i32 %103, %104
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* @PROT_READ, align 4
  %108 = load i32, i32* @MAP_FILE, align 4
  %109 = load i32, i32* @MAP_SHARED, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @fd, align 4
  %112 = load i32, i32* %3, align 4
  %113 = load i32, i32* %5, align 4
  %114 = sub i32 %112, %113
  %115 = call i64 @mmap(i32 0, i32 %106, i32 %107, i32 %110, i32 %111, i32 %114)
  %116 = inttoptr i64 %115 to i8*
  store i8* %116, i8** %7, align 8
  %117 = icmp eq i8* %116, inttoptr (i64 -1 to i8*)
  br i1 %117, label %118, label %121

118:                                              ; preds = %99
  %119 = call i32 @prterr(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %120 = call i32 @report_failure(i32 190)
  br label %121

121:                                              ; preds = %118, %99
  %122 = load i32, i32* @temp_buf, align 4
  %123 = load i8*, i8** %7, align 8
  %124 = load i32, i32* %5, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %123, i64 %125
  %127 = load i32, i32* %4, align 4
  %128 = call i32 @memcpy(i32 %122, i8* %126, i32 %127)
  %129 = load i32, i32* %3, align 4
  %130 = load i8*, i8** %7, align 8
  %131 = load i32, i32* %4, align 4
  %132 = call i32 @check_eofpage(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %129, i8* %130, i32 %131)
  %133 = load i8*, i8** %7, align 8
  %134 = load i32, i32* %6, align 4
  %135 = call i64 @munmap(i8* %133, i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %121
  %138 = call i32 @prterr(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %139 = call i32 @report_failure(i32 191)
  br label %140

140:                                              ; preds = %137, %121
  %141 = load i32, i32* %3, align 4
  %142 = load i32, i32* %4, align 4
  %143 = call i32 @check_buffers(i32 %141, i32 %142)
  br label %144

144:                                              ; preds = %140, %59, %45, %24
  ret void
}

declare dso_local i32 @prt(i8*, ...) #1

declare dso_local i32 @log4(i32, i32, i32, i32) #1

declare dso_local i64 @mmap(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @prterr(i8*) #1

declare dso_local i32 @report_failure(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @check_eofpage(i8*, i32, i8*, i32) #1

declare dso_local i64 @munmap(i8*, i32) #1

declare dso_local i32 @check_buffers(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
