; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_uuid.c_parse_uuid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_uuid.c_parse_uuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uuid = type { i32, i32, i32, i32, i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"%8x-%4x-%4x-%2x%2x-%2x%2x%2x%2x%2x%2x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_uuid(i8* %0, %struct.uuid* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.uuid*, align 8
  %6 = alloca [11 x i32], align 16
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.uuid* %1, %struct.uuid** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.uuid*, %struct.uuid** %5, align 8
  %14 = call i32 @bzero(%struct.uuid* %13, i32 32)
  store i32 0, i32* %3, align 4
  br label %117

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @strlen(i8* %16)
  %18 = icmp ne i32 %17, 36
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %3, align 4
  br label %117

21:                                               ; preds = %15
  %22 = load i8*, i8** %4, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 45
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @EINVAL, align 4
  store i32 %28, i32* %3, align 4
  br label %117

29:                                               ; preds = %21
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds [11 x i32], [11 x i32]* %6, i64 0, i64 0
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = getelementptr inbounds [11 x i32], [11 x i32]* %6, i64 0, i64 0
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = getelementptr inbounds [11 x i32], [11 x i32]* %6, i64 0, i64 0
  %36 = getelementptr inbounds i32, i32* %35, i64 2
  %37 = getelementptr inbounds [11 x i32], [11 x i32]* %6, i64 0, i64 0
  %38 = getelementptr inbounds i32, i32* %37, i64 3
  %39 = getelementptr inbounds [11 x i32], [11 x i32]* %6, i64 0, i64 0
  %40 = getelementptr inbounds i32, i32* %39, i64 4
  %41 = getelementptr inbounds [11 x i32], [11 x i32]* %6, i64 0, i64 0
  %42 = getelementptr inbounds i32, i32* %41, i64 5
  %43 = getelementptr inbounds [11 x i32], [11 x i32]* %6, i64 0, i64 0
  %44 = getelementptr inbounds i32, i32* %43, i64 6
  %45 = getelementptr inbounds [11 x i32], [11 x i32]* %6, i64 0, i64 0
  %46 = getelementptr inbounds i32, i32* %45, i64 7
  %47 = getelementptr inbounds [11 x i32], [11 x i32]* %6, i64 0, i64 0
  %48 = getelementptr inbounds i32, i32* %47, i64 8
  %49 = getelementptr inbounds [11 x i32], [11 x i32]* %6, i64 0, i64 0
  %50 = getelementptr inbounds i32, i32* %49, i64 9
  %51 = getelementptr inbounds [11 x i32], [11 x i32]* %6, i64 0, i64 0
  %52 = getelementptr inbounds i32, i32* %51, i64 10
  %53 = call i32 @sscanf(i8* %30, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32* %32, i32* %34, i32* %36, i32* %38, i32* %40, i32* %42, i32* %44, i32* %46, i32* %48, i32* %50, i32* %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 11
  br i1 %55, label %56, label %58

56:                                               ; preds = %29
  %57 = load i32, i32* @EINVAL, align 4
  store i32 %57, i32* %3, align 4
  br label %117

58:                                               ; preds = %29
  %59 = getelementptr inbounds [11 x i32], [11 x i32]* %6, i64 0, i64 0
  %60 = load i32, i32* %59, align 16
  %61 = load %struct.uuid*, %struct.uuid** %5, align 8
  %62 = getelementptr inbounds %struct.uuid, %struct.uuid* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = getelementptr inbounds [11 x i32], [11 x i32]* %6, i64 0, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.uuid*, %struct.uuid** %5, align 8
  %66 = getelementptr inbounds %struct.uuid, %struct.uuid* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = getelementptr inbounds [11 x i32], [11 x i32]* %6, i64 0, i64 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.uuid*, %struct.uuid** %5, align 8
  %70 = getelementptr inbounds %struct.uuid, %struct.uuid* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = getelementptr inbounds [11 x i32], [11 x i32]* %6, i64 0, i64 3
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.uuid*, %struct.uuid** %5, align 8
  %74 = getelementptr inbounds %struct.uuid, %struct.uuid* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 4
  %75 = getelementptr inbounds [11 x i32], [11 x i32]* %6, i64 0, i64 4
  %76 = load i32, i32* %75, align 16
  %77 = load %struct.uuid*, %struct.uuid** %5, align 8
  %78 = getelementptr inbounds %struct.uuid, %struct.uuid* %77, i32 0, i32 4
  store i32 %76, i32* %78, align 8
  store i32 0, i32* %7, align 4
  br label %79

79:                                               ; preds = %94, %58
  %80 = load i32, i32* %7, align 4
  %81 = icmp slt i32 %80, 6
  br i1 %81, label %82, label %97

82:                                               ; preds = %79
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %83, 5
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [11 x i32], [11 x i32]* %6, i64 0, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.uuid*, %struct.uuid** %5, align 8
  %89 = getelementptr inbounds %struct.uuid, %struct.uuid* %88, i32 0, i32 5
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  store i32 %87, i32* %93, align 4
  br label %94

94:                                               ; preds = %82
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %7, align 4
  br label %79

97:                                               ; preds = %79
  %98 = getelementptr inbounds [11 x i32], [11 x i32]* %6, i64 0, i64 3
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, 128
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %114

102:                                              ; preds = %97
  %103 = getelementptr inbounds [11 x i32], [11 x i32]* %6, i64 0, i64 3
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, 192
  %106 = icmp ne i32 %105, 128
  br i1 %106, label %107, label %114

107:                                              ; preds = %102
  %108 = getelementptr inbounds [11 x i32], [11 x i32]* %6, i64 0, i64 3
  %109 = load i32, i32* %108, align 4
  %110 = and i32 %109, 224
  %111 = icmp ne i32 %110, 192
  br i1 %111, label %112, label %114

112:                                              ; preds = %107
  %113 = load i32, i32* @EINVAL, align 4
  br label %115

114:                                              ; preds = %107, %102, %97
  br label %115

115:                                              ; preds = %114, %112
  %116 = phi i32 [ %113, %112 ], [ 0, %114 ]
  store i32 %116, i32* %3, align 4
  br label %117

117:                                              ; preds = %115, %56, %27, %19, %12
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i32 @bzero(%struct.uuid*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
