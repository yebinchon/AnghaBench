; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mpsutil/extr_mps_slot.c_slot_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mpsutil/extr_mps_slot.c_slot_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"Incorrect number of arguments\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Invalid argument '%s', expecting 'status'\00", align 1
@errno = common dso_local global i32 0, align 4
@UINT16_MAX = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c"Invalid enclosure handle argument '%s'\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Invalid slot argument '%s'\00", align 1
@UINT32_MAX = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [29 x i8] c"Invalid status argument '%s'\00", align 1
@mps_unit = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"mps_open\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"Failed to set status\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Successfully set slot status\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @slot_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slot_set(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 5
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %3, align 4
  br label %130

19:                                               ; preds = %2
  %20 = load i8**, i8*** %5, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 1
  %22 = load i8*, i8** %21, align 8
  %23 = call i64 @strcmp(i8* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 1
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i8* %28)
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* %3, align 4
  br label %130

31:                                               ; preds = %19
  store i32 0, i32* @errno, align 4
  %32 = load i8**, i8*** %5, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 2
  %34 = load i8*, i8** %33, align 8
  %35 = call i64 @strtol(i8* %34, i8** %6, i32 0)
  store i64 %35, i64* %8, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %31
  %41 = load i32, i32* @errno, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %40
  %44 = load i64, i64* %8, align 8
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %43
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* @UINT16_MAX, align 8
  %49 = icmp sgt i64 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %46, %43, %40, %31
  %51 = load i8**, i8*** %5, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 2
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* %53)
  %55 = load i32, i32* @EINVAL, align 4
  store i32 %55, i32* %3, align 4
  br label %130

56:                                               ; preds = %46
  %57 = load i64, i64* %8, align 8
  store i64 %57, i64* %12, align 8
  store i32 0, i32* @errno, align 4
  %58 = load i8**, i8*** %5, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 3
  %60 = load i8*, i8** %59, align 8
  %61 = call i64 @strtol(i8* %60, i8** %6, i32 0)
  store i64 %61, i64* %8, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %76, label %66

66:                                               ; preds = %56
  %67 = load i32, i32* @errno, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %66
  %70 = load i64, i64* %8, align 8
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %69
  %73 = load i64, i64* %8, align 8
  %74 = load i64, i64* @UINT16_MAX, align 8
  %75 = icmp sgt i64 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %72, %69, %66, %56
  %77 = load i8**, i8*** %5, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i64 3
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %79)
  %81 = load i32, i32* @EINVAL, align 4
  store i32 %81, i32* %3, align 4
  br label %130

82:                                               ; preds = %72
  %83 = load i64, i64* %8, align 8
  store i64 %83, i64* %13, align 8
  store i32 0, i32* @errno, align 4
  %84 = load i8**, i8*** %5, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i64 4
  %86 = load i8*, i8** %85, align 8
  %87 = call i64 @strtoul(i8* %86, i8** %6, i32 0)
  store i64 %87, i64* %7, align 8
  %88 = load i8*, i8** %6, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %99, label %92

92:                                               ; preds = %82
  %93 = load i32, i32* @errno, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %92
  %96 = load i64, i64* %7, align 8
  %97 = load i64, i64* @UINT32_MAX, align 8
  %98 = icmp ugt i64 %96, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %95, %92, %82
  %100 = load i8**, i8*** %5, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i64 4
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i8* %102)
  %104 = load i32, i32* @EINVAL, align 4
  store i32 %104, i32* %3, align 4
  br label %130

105:                                              ; preds = %95
  %106 = load i64, i64* %7, align 8
  store i64 %106, i64* %11, align 8
  %107 = load i32, i32* @mps_unit, align 4
  %108 = call i32 @mps_open(i32 %107)
  store i32 %108, i32* %10, align 4
  %109 = load i32, i32* %10, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %105
  %112 = load i32, i32* @errno, align 4
  store i32 %112, i32* %9, align 4
  %113 = call i32 @warn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %114 = load i32, i32* %9, align 4
  store i32 %114, i32* %3, align 4
  br label %130

115:                                              ; preds = %105
  %116 = load i32, i32* %10, align 4
  %117 = load i64, i64* %12, align 8
  %118 = load i64, i64* %13, align 8
  %119 = load i64, i64* %11, align 8
  %120 = call i64 @mps_set_slot_status(i32 %116, i64 %117, i64 %118, i64 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %115
  %123 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %124 = load i32, i32* %10, align 4
  %125 = call i32 @close(i32 %124)
  store i32 1, i32* %3, align 4
  br label %130

126:                                              ; preds = %115
  %127 = load i32, i32* %10, align 4
  %128 = call i32 @close(i32 %127)
  %129 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %130

130:                                              ; preds = %126, %122, %111, %99, %76, %50, %25, %16
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @mps_open(i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i64 @mps_set_slot_status(i32, i64, i64, i64) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
