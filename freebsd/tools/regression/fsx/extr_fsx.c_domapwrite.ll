; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/fsx/extr_fsx.c_domapwrite.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/fsx/extr_fsx.c_domapwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@writebdy = common dso_local global i32 0, align 4
@quiet = common dso_local global i32 0, align 4
@testcalls = common dso_local global i32 0, align 4
@simulatedopcount = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"skipping zero size write\0A\00", align 1
@OP_SKIPPED = common dso_local global i32 0, align 4
@OP_MAPWRITE = common dso_local global i32 0, align 4
@file_size = common dso_local global i32 0, align 4
@original_buf = common dso_local global i32 0, align 4
@good_buf = common dso_local global i64 0, align 8
@lite = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"Lite file size bug in fsx!\00", align 1
@progressinterval = common dso_local global i32 0, align 4
@debug = common dso_local global i64 0, align 8
@monitorstart = common dso_local global i32 0, align 4
@monitorend = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"%lu mapwrite\090x%x thru\090x%x\09(0x%x bytes)\0A\00", align 1
@fd = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"domapwrite: ftruncate\00", align 1
@page_mask = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_FILE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [17 x i8] c"domapwrite: mmap\00", align 1
@mapped_msync = common dso_local global i64 0, align 8
@MS_SYNC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"domapwrite: msync\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"Write\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"domapwrite: munmap\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @domapwrite(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @writebdy, align 4
  %11 = urem i32 %9, %10
  %12 = load i32, i32* %3, align 4
  %13 = sub i32 %12, %11
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %2
  %17 = load i32, i32* @quiet, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* @testcalls, align 4
  %21 = load i32, i32* @simulatedopcount, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = call i32 (i8*, ...) @prt(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %19, %16
  %26 = load i32, i32* @OP_SKIPPED, align 4
  %27 = load i32, i32* @OP_MAPWRITE, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @log4(i32 %26, i32 %27, i32 %28, i32 %29)
  br label %186

31:                                               ; preds = %2
  %32 = load i32, i32* @file_size, align 4
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* @OP_MAPWRITE, align 4
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @log4(i32 %33, i32 %34, i32 %35, i32 0)
  %37 = load i32, i32* @original_buf, align 4
  %38 = load i64, i64* @good_buf, align 8
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @gendata(i32 %37, i64 %38, i32 %39, i32 %40)
  %42 = load i32, i32* @file_size, align 4
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* %4, align 4
  %45 = add i32 %43, %44
  %46 = icmp ult i32 %42, %45
  br i1 %46, label %47, label %70

47:                                               ; preds = %31
  %48 = load i32, i32* @file_size, align 4
  %49 = load i32, i32* %3, align 4
  %50 = icmp ult i32 %48, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %47
  %52 = load i64, i64* @good_buf, align 8
  %53 = load i32, i32* @file_size, align 4
  %54 = zext i32 %53 to i64
  %55 = add nsw i64 %52, %54
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @file_size, align 4
  %58 = sub i32 %56, %57
  %59 = call i32 @memset(i64 %55, i8 signext 0, i32 %58)
  br label %60

60:                                               ; preds = %51, %47
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* %4, align 4
  %63 = add i32 %61, %62
  store i32 %63, i32* @file_size, align 4
  %64 = load i64, i64* @lite, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = call i32 @warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %68 = call i32 @report_failure(i32 200)
  br label %69

69:                                               ; preds = %66, %60
  br label %70

70:                                               ; preds = %69, %31
  %71 = load i32, i32* @testcalls, align 4
  %72 = load i32, i32* @simulatedopcount, align 4
  %73 = icmp sle i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  br label %186

75:                                               ; preds = %70
  %76 = load i32, i32* @quiet, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %114, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* @progressinterval, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %78
  %82 = load i32, i32* @testcalls, align 4
  %83 = load i32, i32* @progressinterval, align 4
  %84 = srem i32 %82, %83
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %105, label %86

86:                                               ; preds = %81, %78
  %87 = load i64, i64* @debug, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %114

89:                                               ; preds = %86
  %90 = load i32, i32* @monitorstart, align 4
  %91 = icmp eq i32 %90, -1
  br i1 %91, label %105, label %92

92:                                               ; preds = %89
  %93 = load i32, i32* %3, align 4
  %94 = load i32, i32* %4, align 4
  %95 = add i32 %93, %94
  %96 = load i32, i32* @monitorstart, align 4
  %97 = icmp ugt i32 %95, %96
  br i1 %97, label %98, label %114

98:                                               ; preds = %92
  %99 = load i32, i32* @monitorend, align 4
  %100 = icmp eq i32 %99, -1
  br i1 %100, label %105, label %101

101:                                              ; preds = %98
  %102 = load i32, i32* %3, align 4
  %103 = load i32, i32* @monitorend, align 4
  %104 = icmp ule i32 %102, %103
  br i1 %104, label %105, label %114

105:                                              ; preds = %101, %98, %89, %81
  %106 = load i32, i32* @testcalls, align 4
  %107 = load i32, i32* %3, align 4
  %108 = load i32, i32* %3, align 4
  %109 = load i32, i32* %4, align 4
  %110 = add i32 %108, %109
  %111 = sub i32 %110, 1
  %112 = load i32, i32* %4, align 4
  %113 = call i32 (i8*, ...) @prt(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %106, i32 %107, i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %105, %101, %92, %86, %75
  %115 = load i32, i32* @file_size, align 4
  %116 = load i32, i32* %7, align 4
  %117 = icmp ugt i32 %115, %116
  br i1 %117, label %118, label %127

118:                                              ; preds = %114
  %119 = load i32, i32* @fd, align 4
  %120 = load i32, i32* @file_size, align 4
  %121 = call i32 @ftruncate(i32 %119, i32 %120)
  %122 = icmp eq i32 %121, -1
  br i1 %122, label %123, label %126

123:                                              ; preds = %118
  %124 = call i32 @prterr(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %125 = call i32 @exit(i32 201) #3
  unreachable

126:                                              ; preds = %118
  br label %127

127:                                              ; preds = %126, %114
  %128 = load i32, i32* %3, align 4
  %129 = load i32, i32* @page_mask, align 4
  %130 = and i32 %128, %129
  store i32 %130, i32* %5, align 4
  %131 = load i32, i32* %5, align 4
  %132 = load i32, i32* %4, align 4
  %133 = add i32 %131, %132
  store i32 %133, i32* %6, align 4
  %134 = load i32, i32* %6, align 4
  %135 = load i32, i32* @PROT_READ, align 4
  %136 = load i32, i32* @PROT_WRITE, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* @MAP_FILE, align 4
  %139 = load i32, i32* @MAP_SHARED, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* @fd, align 4
  %142 = load i32, i32* %3, align 4
  %143 = load i32, i32* %5, align 4
  %144 = sub i32 %142, %143
  %145 = call i64 @mmap(i32 0, i32 %134, i32 %137, i32 %140, i32 %141, i32 %144)
  %146 = inttoptr i64 %145 to i8*
  store i8* %146, i8** %8, align 8
  %147 = load i8*, i8** @MAP_FAILED, align 8
  %148 = icmp eq i8* %146, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %127
  %150 = call i32 @prterr(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %151 = call i32 @report_failure(i32 202)
  br label %152

152:                                              ; preds = %149, %127
  %153 = load i8*, i8** %8, align 8
  %154 = load i32, i32* %5, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds i8, i8* %153, i64 %155
  %157 = load i64, i64* @good_buf, align 8
  %158 = load i32, i32* %3, align 4
  %159 = zext i32 %158 to i64
  %160 = add nsw i64 %157, %159
  %161 = load i32, i32* %4, align 4
  %162 = call i32 @memcpy(i8* %156, i64 %160, i32 %161)
  %163 = load i64, i64* @mapped_msync, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %174

165:                                              ; preds = %152
  %166 = load i8*, i8** %8, align 8
  %167 = load i32, i32* %6, align 4
  %168 = load i32, i32* @MS_SYNC, align 4
  %169 = call i64 @msync(i8* %166, i32 %167, i32 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %165
  %172 = call i32 @prterr(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %173 = call i32 @report_failure(i32 203)
  br label %174

174:                                              ; preds = %171, %165, %152
  %175 = load i32, i32* %3, align 4
  %176 = load i8*, i8** %8, align 8
  %177 = load i32, i32* %4, align 4
  %178 = call i32 @check_eofpage(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %175, i8* %176, i32 %177)
  %179 = load i8*, i8** %8, align 8
  %180 = load i32, i32* %6, align 4
  %181 = call i64 @munmap(i8* %179, i32 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %174
  %184 = call i32 @prterr(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %185 = call i32 @report_failure(i32 204)
  br label %186

186:                                              ; preds = %25, %74, %183, %174
  ret void
}

declare dso_local i32 @prt(i8*, ...) #1

declare dso_local i32 @log4(i32, i32, i32, i32) #1

declare dso_local i32 @gendata(i32, i64, i32, i32) #1

declare dso_local i32 @memset(i64, i8 signext, i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @report_failure(i32) #1

declare dso_local i32 @ftruncate(i32, i32) #1

declare dso_local i32 @prterr(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @mmap(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i64, i32) #1

declare dso_local i64 @msync(i8*, i32, i32) #1

declare dso_local i32 @check_eofpage(i8*, i32, i8*, i32) #1

declare dso_local i64 @munmap(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
