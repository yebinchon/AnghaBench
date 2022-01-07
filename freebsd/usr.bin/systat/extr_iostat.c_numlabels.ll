; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_iostat.c_numlabels.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_iostat.c_numlabels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32, i64 }

@num_devices = common dso_local global i32 0, align 4
@dev_select = common dso_local global %struct.TYPE_2__* null, align 8
@wnd = common dso_local global i32 0, align 4
@INSET = common dso_local global i32 0, align 4
@linesperregion = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"  KB/t tps  MB/s \00", align 1
@COLWIDTH = common dso_local global i32 0, align 4
@DRIVESPERLINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @numlabels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @numlabels(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [10 x i8], align 1
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %24, %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @num_devices, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %27

12:                                               ; preds = %8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dev_select, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %12
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %20, %12
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %3, align 4
  br label %8

27:                                               ; preds = %8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @wnd, align 4
  %30 = call i32 @getmaxx(i32 %29)
  %31 = sub nsw i32 %30, 1
  %32 = load i32, i32* @INSET, align 4
  %33 = sub nsw i32 %31, %32
  %34 = sdiv i32 %33, 17
  %35 = call i32 @howmany(i32 %28, i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* @wnd, align 4
  %37 = call i32 @getmaxy(i32 %36)
  %38 = sub nsw i32 %37, 1
  %39 = load i32, i32* %2, align 4
  %40 = sub nsw i32 %38, %39
  %41 = load i32, i32* %5, align 4
  %42 = sub nsw i32 %40, %41
  %43 = load i32, i32* %5, align 4
  %44 = sdiv i32 %42, %43
  store i32 %44, i32* @linesperregion, align 4
  %45 = load i32, i32* @linesperregion, align 4
  %46 = icmp slt i32 %45, 3
  br i1 %46, label %47, label %48

47:                                               ; preds = %27
  store i32 3, i32* @linesperregion, align 4
  br label %48

48:                                               ; preds = %47, %27
  %49 = load i32, i32* @INSET, align 4
  store i32 %49, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %116, %48
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @num_devices, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %119

54:                                               ; preds = %50
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dev_select, align 8
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %115

62:                                               ; preds = %54
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, 17
  %65 = load i32, i32* @wnd, align 4
  %66 = call i32 @getmaxx(i32 %65)
  %67 = sub nsw i32 %66, 1
  %68 = load i32, i32* @INSET, align 4
  %69 = sub nsw i32 %67, %68
  %70 = icmp sge i32 %64, %69
  br i1 %70, label %71, label %87

71:                                               ; preds = %62
  %72 = load i32, i32* @INSET, align 4
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* @linesperregion, align 4
  %74 = add nsw i32 %73, 1
  %75 = load i32, i32* %2, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %2, align 4
  %77 = load i32, i32* %2, align 4
  %78 = load i32, i32* @wnd, align 4
  %79 = call i32 @getmaxy(i32 %78)
  %80 = sub nsw i32 %79, 1
  %81 = load i32, i32* @linesperregion, align 4
  %82 = add nsw i32 %81, 1
  %83 = sub nsw i32 %80, %82
  %84 = icmp sgt i32 %77, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %71
  br label %119

86:                                               ; preds = %71
  br label %87

87:                                               ; preds = %86, %62
  %88 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dev_select, align 8
  %90 = load i32, i32* %3, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dev_select, align 8
  %96 = load i32, i32* %3, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @sprintf(i8* %88, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %94, i32 %100)
  %102 = load i32, i32* @wnd, align 4
  %103 = load i32, i32* %2, align 4
  %104 = load i32, i32* %4, align 4
  %105 = add nsw i32 %104, 4
  %106 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %107 = call i32 @mvwaddstr(i32 %102, i32 %103, i32 %105, i8* %106)
  %108 = load i32, i32* @wnd, align 4
  %109 = load i32, i32* %2, align 4
  %110 = add nsw i32 %109, 1
  %111 = load i32, i32* %4, align 4
  %112 = call i32 @mvwaddstr(i32 %108, i32 %110, i32 %111, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %113 = load i32, i32* %4, align 4
  %114 = add nsw i32 %113, 17
  store i32 %114, i32* %4, align 4
  br label %115

115:                                              ; preds = %87, %54
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %3, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %3, align 4
  br label %50

119:                                              ; preds = %85, %50
  %120 = load i32, i32* %4, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %119
  %123 = load i32, i32* @linesperregion, align 4
  %124 = add nsw i32 %123, 1
  %125 = load i32, i32* %2, align 4
  %126 = add nsw i32 %125, %124
  store i32 %126, i32* %2, align 4
  br label %127

127:                                              ; preds = %122, %119
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local i32 @howmany(i32, i32) #1

declare dso_local i32 @getmaxx(i32) #1

declare dso_local i32 @getmaxy(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32) #1

declare dso_local i32 @mvwaddstr(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
