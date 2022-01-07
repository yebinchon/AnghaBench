; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/vmstat/extr_vmstat.c_printhdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/vmstat/extr_vmstat.c_printhdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32* }

@num_selected = common dso_local global i32 0, align 4
@maxshowdevs = common dso_local global i64 0, align 8
@hflag = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c" {T:procs}    {T:memory}    {T:/page%*s}\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"{T:procs}     {T:memory}       {T:/page%*s}\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"   {T:/disks %*s}  \00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"   {T:disks}\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c" {T:faults}      \00", align 1
@Pflag = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [16 x i8] c"  {T:/cpu%d}   \00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c" {T:cpu}\0A\00", align 1
@.str.9 = private unnamed_addr constant [91 x i8] c" {T:r}  {T:b}  {T:w}  {T:avm}  {T:fre}  {T:flt}  {T:re}  {T:pi}  {T:po}   {T:fr}   {T:sr} \00", align 1
@.str.10 = private unnamed_addr constant [95 x i8] c"{T:r} {T:b} {T:w}     {T:avm}     {T:fre}  {T:flt}  {T:re}  {T:pi}  {T:po}    {T:fr}   {T:sr} \00", align 1
@num_devices = common dso_local global i32 0, align 4
@dev_select = common dso_local global %struct.TYPE_2__* null, align 8
@.str.11 = private unnamed_addr constant [13 x i8] c"{T:/%c%c%d} \00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"  {T:in}   {T:sy}   {T:cs}\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c" {T:us} {T:sy} {T:id}\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c" {T:us} {T:sy} {T:id}\0A\00", align 1
@wresized = common dso_local global i64 0, align 8
@winlines = common dso_local global i32 0, align 4
@hdrcnt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64)* @printhdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @printhdr(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %7 = load i32, i32* @num_selected, align 4
  %8 = load i64, i64* @maxshowdevs, align 8
  %9 = call i32 @MIN(i32 %7, i64 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i64, i64* @hflag, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 19, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %16

14:                                               ; preds = %2
  %15 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 19, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %12
  %17 = load i32, i32* %6, align 4
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load i32, i32* %6, align 4
  %21 = mul nsw i32 %20, 4
  %22 = sub nsw i32 %21, 7
  %23 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %22, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %30

24:                                               ; preds = %16
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %24
  br label %30

30:                                               ; preds = %29, %19
  %31 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %32 = load i64, i64* @Pflag, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %55

34:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %50, %34
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %3, align 4
  %38 = icmp sle i32 %36, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %35
  %40 = load i64, i64* %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = zext i32 %41 to i64
  %43 = shl i64 1, %42
  %44 = and i64 %40, %43
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load i32, i32* %5, align 4
  %48 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %46, %39
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %35

53:                                               ; preds = %35
  %54 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %57

55:                                               ; preds = %30
  %56 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %53
  %58 = load i64, i64* @hflag, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.9, i64 0, i64 0))
  br label %64

62:                                               ; preds = %57
  %63 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.10, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %60
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %111, %64
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @num_devices, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %114

69:                                               ; preds = %65
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dev_select, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %110

77:                                               ; preds = %69
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dev_select, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @maxshowdevs, align 8
  %85 = icmp sle i64 %83, %84
  br i1 %85, label %86, label %110

86:                                               ; preds = %77
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dev_select, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dev_select, align 8
  %96 = load i32, i32* %5, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dev_select, align 8
  %104 = load i32, i32* %5, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i32 %94, i32 %102, i32 %108)
  br label %110

110:                                              ; preds = %86, %77, %69
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %5, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %5, align 4
  br label %65

114:                                              ; preds = %65
  %115 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0))
  %116 = load i64, i64* @Pflag, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %138

118:                                              ; preds = %114
  store i32 0, i32* %5, align 4
  br label %119

119:                                              ; preds = %133, %118
  %120 = load i32, i32* %5, align 4
  %121 = load i32, i32* %3, align 4
  %122 = icmp sle i32 %120, %121
  br i1 %122, label %123, label %136

123:                                              ; preds = %119
  %124 = load i64, i64* %4, align 8
  %125 = load i32, i32* %5, align 4
  %126 = zext i32 %125 to i64
  %127 = shl i64 1, %126
  %128 = and i64 %124, %127
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %123
  %131 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0))
  br label %132

132:                                              ; preds = %130, %123
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %5, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %5, align 4
  br label %119

136:                                              ; preds = %119
  %137 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %140

138:                                              ; preds = %114
  %139 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0))
  br label %140

140:                                              ; preds = %138, %136
  %141 = load i64, i64* @wresized, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %140
  %144 = call i32 (...) @doresize()
  br label %145

145:                                              ; preds = %143, %140
  %146 = load i32, i32* @winlines, align 4
  store i32 %146, i32* @hdrcnt, align 4
  ret void
}

declare dso_local i32 @MIN(i32, i64) #1

declare dso_local i32 @xo_emit(i8*, ...) #1

declare dso_local i32 @doresize(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
