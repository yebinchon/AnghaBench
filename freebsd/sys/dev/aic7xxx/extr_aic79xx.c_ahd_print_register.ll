; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx.c_ahd_print_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx.c_ahd_print_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%s[0x%x]\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c":(\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c") \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ahd_print_register(%struct.TYPE_3__* %0, i64 %1, i8* %2, i64 %3, i64 %4, i64* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %9, align 8
  store i64 %1, i64* %10, align 8
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64* %5, i64** %14, align 8
  store i64 %6, i64* %15, align 8
  %20 = load i64*, i64** %14, align 8
  %21 = icmp eq i64* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %7
  store i64 0, i64* %18, align 8
  store i64* %18, i64** %14, align 8
  br label %23

23:                                               ; preds = %22, %7
  %24 = load i64*, i64** %14, align 8
  %25 = icmp ne i64* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %23
  %27 = load i64*, i64** %14, align 8
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %15, align 8
  %30 = icmp sge i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %33 = load i64*, i64** %14, align 8
  store i64 0, i64* %33, align 8
  br label %34

34:                                               ; preds = %31, %26, %23
  %35 = load i8*, i8** %11, align 8
  %36 = load i64, i64* %13, align 8
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %35, i64 %36)
  store i32 %37, i32* %16, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %39 = icmp eq %struct.TYPE_3__* %38, null
  br i1 %39, label %40, label %50

40:                                               ; preds = %34
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i32, i32* %16, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* %16, align 4
  %44 = load i32, i32* %16, align 4
  %45 = sext i32 %44 to i64
  %46 = load i64*, i64** %14, align 8
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, %45
  store i64 %48, i64* %46, align 8
  %49 = load i32, i32* %16, align 4
  store i32 %49, i32* %8, align 4
  br label %143

50:                                               ; preds = %34
  store i64 0, i64* %17, align 8
  br label %51

51:                                               ; preds = %124, %50
  %52 = load i64, i64* %17, align 8
  %53 = icmp ne i64 %52, 255
  br i1 %53, label %54, label %125

54:                                               ; preds = %51
  store i32 0, i32* %19, align 4
  br label %55

55:                                               ; preds = %115, %54
  %56 = load i32, i32* %19, align 4
  %57 = sext i32 %56 to i64
  %58 = load i64, i64* %10, align 8
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %60, label %118

60:                                               ; preds = %55
  %61 = load i64, i64* %13, align 8
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %63 = load i32, i32* %19, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = and i64 %61, %67
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %70 = load i32, i32* %19, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %68, %74
  br i1 %75, label %92, label %76

76:                                               ; preds = %60
  %77 = load i64, i64* %17, align 8
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %79 = load i32, i32* %19, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = and i64 %77, %83
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %86 = load i32, i32* %19, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %84, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %76, %60
  br label %115

93:                                               ; preds = %76
  %94 = load i64, i64* %17, align 8
  %95 = icmp eq i64 %94, 0
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %99 = load i32, i32* %19, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %97, i32 %103)
  %105 = load i32, i32* %16, align 4
  %106 = add nsw i32 %105, %104
  store i32 %106, i32* %16, align 4
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %108 = load i32, i32* %19, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* %17, align 8
  %114 = or i64 %113, %112
  store i64 %114, i64* %17, align 8
  br label %118

115:                                              ; preds = %92
  %116 = load i32, i32* %19, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %19, align 4
  br label %55

118:                                              ; preds = %93, %55
  %119 = load i32, i32* %19, align 4
  %120 = sext i32 %119 to i64
  %121 = load i64, i64* %10, align 8
  %122 = icmp sge i64 %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  br label %125

124:                                              ; preds = %118
  br label %51

125:                                              ; preds = %123, %51
  %126 = load i64, i64* %17, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %125
  %129 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %130 = load i32, i32* %16, align 4
  %131 = add nsw i32 %130, %129
  store i32 %131, i32* %16, align 4
  br label %136

132:                                              ; preds = %125
  %133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %134 = load i32, i32* %16, align 4
  %135 = add nsw i32 %134, %133
  store i32 %135, i32* %16, align 4
  br label %136

136:                                              ; preds = %132, %128
  %137 = load i32, i32* %16, align 4
  %138 = sext i32 %137 to i64
  %139 = load i64*, i64** %14, align 8
  %140 = load i64, i64* %139, align 8
  %141 = add nsw i64 %140, %138
  store i64 %141, i64* %139, align 8
  %142 = load i32, i32* %16, align 4
  store i32 %142, i32* %8, align 4
  br label %143

143:                                              ; preds = %136, %40
  %144 = load i32, i32* %8, align 4
  ret i32 %144
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
