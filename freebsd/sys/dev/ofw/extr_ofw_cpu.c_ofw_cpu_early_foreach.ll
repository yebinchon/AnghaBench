; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_ofw_cpu.c_ofw_cpu_early_foreach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_ofw_cpu.c_ofw_cpu_early_foreach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"/cpus\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"#address-cells\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"device_type\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"okay\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"enable-method\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"reg\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ofw_cpu_early_foreach(i64 (i32, i32, i32, i32*)* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64 (i32, i32, i32, i32*)*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca [16 x i8], align 16
  %11 = alloca [16 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i64 (i32, i32, i32, i32*)* %0, i64 (i32, i32, i32, i32*)** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %16 = call i32 @OF_finddevice(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %116

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @OF_getencprop(i32 %21, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32* %8, i32 4)
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 -1, i32* %3, align 4
  br label %116

25:                                               ; preds = %20
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @OF_child(i32 %26)
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %103, %25
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %107

31:                                               ; preds = %28
  %32 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %33 = call i32 @memset(i8* %32, i32 0, i32 16)
  %34 = load i32, i32* %7, align 4
  %35 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %36 = call i32 @OF_getprop(i32 %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %35, i32 15)
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* %15, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %103

40:                                               ; preds = %31
  %41 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %42 = call i64 @strcmp(i8* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %103

45:                                               ; preds = %40
  %46 = load i32, i32* %13, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %13, align 4
  %48 = load i64, i64* %5, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %73

50:                                               ; preds = %45
  %51 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  store i8 0, i8* %51, align 16
  %52 = load i32, i32* %7, align 4
  %53 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %54 = call i32 @OF_getprop(i32 %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %53, i32 16)
  %55 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %56 = load i8, i8* %55, align 16
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %50
  %60 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %61 = call i64 @strcmp(i8* %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %59
  %64 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %65 = call i64 @strcmp(i8* %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %63
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @OF_hasprop(i32 %68, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %67
  br label %103

72:                                               ; preds = %67, %63, %59, %50
  br label %73

73:                                               ; preds = %72, %45
  %74 = load i32, i32* %7, align 4
  %75 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = mul i64 %77, 4
  %79 = trunc i64 %78 to i32
  %80 = call i32 @OF_getencprop(i32 %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32* %75, i32 %79)
  store i32 %80, i32* %15, align 4
  %81 = load i32, i32* %15, align 4
  %82 = sext i32 %81 to i64
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = mul i64 %84, 4
  %86 = icmp ne i64 %82, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %73
  br label %103

88:                                               ; preds = %73
  %89 = load i64 (i32, i32, i32, i32*)*, i64 (i32, i32, i32, i32*)** %4, align 8
  %90 = icmp eq i64 (i32, i32, i32, i32*)* %89, null
  br i1 %90, label %99, label %91

91:                                               ; preds = %88
  %92 = load i64 (i32, i32, i32, i32*)*, i64 (i32, i32, i32, i32*)** %4, align 8
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* %8, align 4
  %96 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %97 = call i64 %92(i32 %93, i32 %94, i32 %95, i32* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %91, %88
  %100 = load i32, i32* %14, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %14, align 4
  br label %102

102:                                              ; preds = %99, %91
  br label %103

103:                                              ; preds = %102, %87, %71, %44, %39
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @OF_peer(i32 %104)
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* %13, align 4
  store i32 %106, i32* %12, align 4
  br label %28

107:                                              ; preds = %28
  %108 = load i64, i64* %5, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %107
  %111 = load i32, i32* %14, align 4
  br label %114

112:                                              ; preds = %107
  %113 = load i32, i32* %12, align 4
  br label %114

114:                                              ; preds = %112, %110
  %115 = phi i32 [ %111, %110 ], [ %113, %112 ]
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %114, %24, %19
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i32 @OF_finddevice(i8*) #1

declare dso_local i32 @OF_getencprop(i32, i8*, i32*, i32) #1

declare dso_local i32 @OF_child(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @OF_getprop(i32, i8*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @OF_hasprop(i32, i8*) #1

declare dso_local i32 @OF_peer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
