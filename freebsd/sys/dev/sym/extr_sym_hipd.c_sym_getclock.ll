; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_getclock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_getclock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8, i8, i32, i32, i32 }

@FE_C10 = common dso_local global i32 0, align 4
@DBLEN = common dso_local global i8 0, align 1
@DBLSEL = common dso_local global i8 0, align 1
@sym_verbose = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s: clock multiplier found\0A\00", align 1
@nc_stest1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"%s: chip clock is %uKHz\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"%s: clock multiplier assumed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32)* @sym_getclock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym_getclock(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i8, i8* %9, align 4
  store i8 %10, i8* %5, align 1
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = load i8, i8* %12, align 1
  store i8 %13, i8* %6, align 1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @FE_C10, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %4, align 4
  %25 = mul nsw i32 40000, %24
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 4
  br label %144

28:                                               ; preds = %2
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 3
  store i32 1, i32* %30, align 4
  store i32 40000, i32* %7, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp sgt i32 %31, 1
  br i1 %32, label %33, label %59

33:                                               ; preds = %28
  %34 = load i8, i8* %6, align 1
  %35 = zext i8 %34 to i32
  %36 = load i8, i8* @DBLEN, align 1
  %37 = zext i8 %36 to i32
  %38 = load i8, i8* @DBLSEL, align 1
  %39 = zext i8 %38 to i32
  %40 = add nsw i32 %37, %39
  %41 = and i32 %35, %40
  %42 = load i8, i8* @DBLEN, align 1
  %43 = zext i8 %42 to i32
  %44 = load i8, i8* @DBLSEL, align 1
  %45 = zext i8 %44 to i32
  %46 = add nsw i32 %43, %45
  %47 = icmp eq i32 %41, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %33
  %49 = load i32, i32* @sym_verbose, align 4
  %50 = icmp sge i32 %49, 2
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %53 = call i8* @sym_name(%struct.TYPE_5__* %52)
  %54 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %53)
  br label %55

55:                                               ; preds = %51, %48
  %56 = load i32, i32* %4, align 4
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 4
  br label %59

59:                                               ; preds = %55, %33, %28
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %75, label %65

65:                                               ; preds = %59
  %66 = load i8, i8* %5, align 1
  %67 = zext i8 %66 to i32
  %68 = and i32 %67, 7
  %69 = icmp slt i32 %68, 3
  br i1 %69, label %75, label %70

70:                                               ; preds = %65
  %71 = load i8, i8* %5, align 1
  %72 = zext i8 %71 to i32
  %73 = and i32 %72, 1
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %115, label %75

75:                                               ; preds = %70, %65, %59
  %76 = load i32, i32* @nc_stest1, align 4
  %77 = call i32 @OUTB(i32 %76, i32 0)
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %79 = call i32 @sym_getfreq(%struct.TYPE_5__* %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* @sym_verbose, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %75
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %84 = call i8* @sym_name(%struct.TYPE_5__* %83)
  %85 = load i32, i32* %7, align 4
  %86 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %84, i32 %85)
  br label %87

87:                                               ; preds = %82, %75
  %88 = load i32, i32* %7, align 4
  %89 = icmp ult i32 %88, 45000
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  store i32 40000, i32* %7, align 4
  br label %97

91:                                               ; preds = %87
  %92 = load i32, i32* %7, align 4
  %93 = icmp ult i32 %92, 55000
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  store i32 50000, i32* %7, align 4
  br label %96

95:                                               ; preds = %91
  store i32 80000, i32* %7, align 4
  br label %96

96:                                               ; preds = %95, %94
  br label %97

97:                                               ; preds = %96, %90
  %98 = load i32, i32* %7, align 4
  %99 = icmp ult i32 %98, 80000
  br i1 %99, label %100, label %114

100:                                              ; preds = %97
  %101 = load i32, i32* %4, align 4
  %102 = icmp sgt i32 %101, 1
  br i1 %102, label %103, label %114

103:                                              ; preds = %100
  %104 = load i32, i32* @sym_verbose, align 4
  %105 = icmp sge i32 %104, 2
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %108 = call i8* @sym_name(%struct.TYPE_5__* %107)
  %109 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %108)
  br label %110

110:                                              ; preds = %106, %103
  %111 = load i32, i32* %4, align 4
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 3
  store i32 %111, i32* %113, align 4
  br label %114

114:                                              ; preds = %110, %100, %97
  br label %135

115:                                              ; preds = %70
  %116 = load i8, i8* %5, align 1
  %117 = zext i8 %116 to i32
  %118 = and i32 %117, 7
  %119 = icmp eq i32 %118, 3
  br i1 %119, label %120, label %121

120:                                              ; preds = %115
  store i32 40000, i32* %7, align 4
  br label %129

121:                                              ; preds = %115
  %122 = load i8, i8* %5, align 1
  %123 = zext i8 %122 to i32
  %124 = and i32 %123, 7
  %125 = icmp eq i32 %124, 5
  br i1 %125, label %126, label %127

126:                                              ; preds = %121
  store i32 80000, i32* %7, align 4
  br label %128

127:                                              ; preds = %121
  store i32 160000, i32* %7, align 4
  br label %128

128:                                              ; preds = %127, %126
  br label %129

129:                                              ; preds = %128, %120
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %7, align 4
  %134 = udiv i32 %133, %132
  store i32 %134, i32* %7, align 4
  br label %135

135:                                              ; preds = %129, %114
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %7, align 4
  %140 = mul i32 %139, %138
  store i32 %140, i32* %7, align 4
  %141 = load i32, i32* %7, align 4
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 4
  store i32 %141, i32* %143, align 4
  br label %144

144:                                              ; preds = %135, %20
  ret void
}

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i8* @sym_name(%struct.TYPE_5__*) #1

declare dso_local i32 @OUTB(i32, i32) #1

declare dso_local i32 @sym_getfreq(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
