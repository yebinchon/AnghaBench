; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pmcstudy/extr_pmcstudy.c_process_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pmcstudy/extr_pmcstudy.c_process_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32 }

@command = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Can't process file %s err:%d\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@cnts = common dso_local global %struct.TYPE_2__* null, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"Nothing to do -- no counters built\0A\00", align 1
@verbose = common dso_local global i64 0, align 8
@ncnts = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Counter:%s cpu:%d index:%d\0A\00", align 1
@max_to_collect = common dso_local global i32 0, align 4
@MAX_CPU = common dso_local global i32 0, align 4
@glob_cpu = common dso_local global i32* null, align 8
@cpu_count_out = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @process_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_file(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %7, align 4
  %9 = load i8*, i8** %2, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @command, align 4
  %13 = call i32* @my_popen(i32 %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %7)
  store i32* %13, i32** %3, align 8
  br label %24

14:                                               ; preds = %1
  %15 = load i8*, i8** %2, align 8
  %16 = call i32* @fopen(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %16, i32** %3, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load i8*, i8** %2, align 8
  %21 = load i32, i32* @errno, align 4
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %20, i32 %21)
  br label %125

23:                                               ; preds = %14
  br label %24

24:                                               ; preds = %23, %11
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @build_counters_from_header(i32* %25)
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cnts, align 8
  %28 = icmp eq %struct.TYPE_2__* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %31 = load i32*, i32** %3, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @fclose(i32* %34)
  br label %36

36:                                               ; preds = %33, %29
  br label %125

37:                                               ; preds = %24
  %38 = call i32 (...) @lace_cpus_together()
  %39 = call i32 (...) @print_header()
  %40 = load i64, i64* @verbose, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %66

42:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %62, %42
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @ncnts, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %65

47:                                               ; preds = %43
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cnts, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cnts, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %53, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %47
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %4, align 4
  br label %43

65:                                               ; preds = %43
  br label %66

66:                                               ; preds = %65, %37
  store i32 0, i32* %5, align 4
  store i32 1, i32* %6, align 4
  br label %67

67:                                               ; preds = %114, %66
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %115

70:                                               ; preds = %67
  %71 = load i32*, i32** %3, align 8
  %72 = call i64 @read_a_line(i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %5, align 4
  br label %78

77:                                               ; preds = %70
  br label %115

78:                                               ; preds = %74
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @max_to_collect, align 4
  %81 = icmp sge i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  store i32 0, i32* %6, align 4
  br label %83

83:                                               ; preds = %82, %78
  %84 = load i8*, i8** %2, align 8
  %85 = icmp eq i8* %84, null
  br i1 %85, label %86, label %114

86:                                               ; preds = %83
  store i32 0, i32* %4, align 4
  store i32 0, i32* %8, align 4
  br label %87

87:                                               ; preds = %110, %86
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* @MAX_CPU, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %113

91:                                               ; preds = %87
  %92 = load i32*, i32** @glob_cpu, align 8
  %93 = load i32, i32* %4, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %5, align 4
  %98 = sub nsw i32 %97, 1
  %99 = call i32 @do_expression(i32 %96, i32 %98)
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* @cpu_count_out, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %91
  %106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %113

107:                                              ; preds = %91
  %108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %109

109:                                              ; preds = %107
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %4, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %4, align 4
  br label %87

113:                                              ; preds = %105, %87
  br label %114

114:                                              ; preds = %113, %83
  br label %67

115:                                              ; preds = %77, %67
  %116 = load i8*, i8** %2, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load i32*, i32** %3, align 8
  %120 = call i32 @fclose(i32* %119)
  br label %125

121:                                              ; preds = %115
  %122 = load i32*, i32** %3, align 8
  %123 = load i32, i32* %7, align 4
  %124 = call i32 @my_pclose(i32* %122, i32 %123)
  br label %125

125:                                              ; preds = %19, %36, %121, %118
  ret void
}

declare dso_local i32* @my_popen(i32, i8*, i32*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @build_counters_from_header(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @lace_cpus_together(...) #1

declare dso_local i32 @print_header(...) #1

declare dso_local i64 @read_a_line(i32*) #1

declare dso_local i32 @do_expression(i32, i32) #1

declare dso_local i32 @my_pclose(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
