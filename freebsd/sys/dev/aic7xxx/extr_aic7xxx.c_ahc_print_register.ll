; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_print_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_print_register.c"
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
define dso_local i32 @ahc_print_register(%struct.TYPE_3__* %0, i64 %1, i8* %2, i64 %3, i64 %4, i64* %5, i64 %6) #0 {
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
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %15, align 8
  %27 = icmp sge i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %30 = load i64*, i64** %14, align 8
  store i64 0, i64* %30, align 8
  br label %31

31:                                               ; preds = %28, %23
  %32 = load i8*, i8** %11, align 8
  %33 = load i64, i64* %13, align 8
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %32, i64 %33)
  store i32 %34, i32* %16, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %36 = icmp eq %struct.TYPE_3__* %35, null
  br i1 %36, label %37, label %47

37:                                               ; preds = %31
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %39 = load i32, i32* %16, align 4
  %40 = add nsw i32 %39, %38
  store i32 %40, i32* %16, align 4
  %41 = load i32, i32* %16, align 4
  %42 = sext i32 %41 to i64
  %43 = load i64*, i64** %14, align 8
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, %42
  store i64 %45, i64* %43, align 8
  %46 = load i32, i32* %16, align 4
  store i32 %46, i32* %8, align 4
  br label %144

47:                                               ; preds = %31
  store i64 0, i64* %17, align 8
  br label %48

48:                                               ; preds = %121, %47
  %49 = load i64, i64* %17, align 8
  %50 = icmp ne i64 %49, 255
  br i1 %50, label %51, label %122

51:                                               ; preds = %48
  store i32 0, i32* %19, align 4
  br label %52

52:                                               ; preds = %112, %51
  %53 = load i32, i32* %19, align 4
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* %10, align 8
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %57, label %115

57:                                               ; preds = %52
  %58 = load i64, i64* %13, align 8
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %60 = load i32, i32* %19, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = and i64 %58, %64
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %67 = load i32, i32* %19, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %65, %71
  br i1 %72, label %89, label %73

73:                                               ; preds = %57
  %74 = load i64, i64* %17, align 8
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %76 = load i32, i32* %19, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = and i64 %74, %80
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %83 = load i32, i32* %19, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %81, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %73, %57
  br label %112

90:                                               ; preds = %73
  %91 = load i64, i64* %17, align 8
  %92 = icmp eq i64 %91, 0
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %96 = load i32, i32* %19, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %94, i32 %100)
  %102 = load i32, i32* %16, align 4
  %103 = add nsw i32 %102, %101
  store i32 %103, i32* %16, align 4
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %105 = load i32, i32* %19, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* %17, align 8
  %111 = or i64 %110, %109
  store i64 %111, i64* %17, align 8
  br label %115

112:                                              ; preds = %89
  %113 = load i32, i32* %19, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %19, align 4
  br label %52

115:                                              ; preds = %90, %52
  %116 = load i32, i32* %19, align 4
  %117 = sext i32 %116 to i64
  %118 = load i64, i64* %10, align 8
  %119 = icmp sge i64 %117, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %115
  br label %122

121:                                              ; preds = %115
  br label %48

122:                                              ; preds = %120, %48
  %123 = load i64, i64* %17, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %122
  %126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %127 = load i32, i32* %16, align 4
  %128 = add nsw i32 %127, %126
  store i32 %128, i32* %16, align 4
  br label %133

129:                                              ; preds = %122
  %130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %131 = load i32, i32* %16, align 4
  %132 = add nsw i32 %131, %130
  store i32 %132, i32* %16, align 4
  br label %133

133:                                              ; preds = %129, %125
  %134 = load i64*, i64** %14, align 8
  %135 = icmp ne i64* %134, null
  br i1 %135, label %136, label %142

136:                                              ; preds = %133
  %137 = load i32, i32* %16, align 4
  %138 = sext i32 %137 to i64
  %139 = load i64*, i64** %14, align 8
  %140 = load i64, i64* %139, align 8
  %141 = add nsw i64 %140, %138
  store i64 %141, i64* %139, align 8
  br label %142

142:                                              ; preds = %136, %133
  %143 = load i32, i32* %16, align 4
  store i32 %143, i32* %8, align 4
  br label %144

144:                                              ; preds = %142, %37
  %145 = load i32, i32* %8, align 4
  ret i32 %145
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
