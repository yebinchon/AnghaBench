; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mlx5tool/extr_mlx5tool.c_parse_pci_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mlx5tool/extr_mlx5tool.c_parse_pci_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_tool_addr = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [25 x i8] c"no pci address specified\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"pci\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"invalid pci address %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.mlx5_tool_addr*)* @parse_pci_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_pci_addr(i8* %0, %struct.mlx5_tool_addr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mlx5_tool_addr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [4 x i64], align 16
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.mlx5_tool_addr* %1, %struct.mlx5_tool_addr** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %111

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = call i64 @strncmp(i8* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %108

17:                                               ; preds = %13
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 3
  store i8* %19, i8** %4, align 8
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %45, %17
  %21 = load i8*, i8** %4, align 8
  %22 = load i8, i8* %21, align 1
  %23 = call i64 @isdigit(i8 signext %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %26, 4
  br label %28

28:                                               ; preds = %25, %20
  %29 = phi i1 [ false, %20 ], [ %27, %25 ]
  br i1 %29, label %30, label %46

30:                                               ; preds = %28
  %31 = load i8*, i8** %4, align 8
  %32 = call i64 @strtoul(i8* %31, i8** %6, i32 10)
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %8, align 4
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 %35
  store i64 %32, i64* %36, align 8
  %37 = load i8*, i8** %6, align 8
  store i8* %37, i8** %4, align 8
  %38 = load i8*, i8** %4, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 58
  br i1 %41, label %42, label %45

42:                                               ; preds = %30
  %43 = load i8*, i8** %4, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %4, align 8
  br label %45

45:                                               ; preds = %42, %30
  br label %20

46:                                               ; preds = %28
  %47 = load i32, i32* %8, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %107

49:                                               ; preds = %46
  %50 = load i8*, i8** %4, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %107

54:                                               ; preds = %49
  %55 = load i32, i32* %8, align 4
  %56 = icmp sgt i32 %55, 2
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 %60
  %62 = load i64, i64* %61, align 8
  br label %64

63:                                               ; preds = %54
  br label %64

64:                                               ; preds = %63, %57
  %65 = phi i64 [ %62, %57 ], [ 0, %63 ]
  %66 = load %struct.mlx5_tool_addr*, %struct.mlx5_tool_addr** %5, align 8
  %67 = getelementptr inbounds %struct.mlx5_tool_addr, %struct.mlx5_tool_addr* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  %68 = load i32, i32* %8, align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %64
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 %73
  %75 = load i64, i64* %74, align 8
  br label %77

76:                                               ; preds = %64
  br label %77

77:                                               ; preds = %76, %70
  %78 = phi i64 [ %75, %70 ], [ 0, %76 ]
  %79 = load %struct.mlx5_tool_addr*, %struct.mlx5_tool_addr** %5, align 8
  %80 = getelementptr inbounds %struct.mlx5_tool_addr, %struct.mlx5_tool_addr* %79, i32 0, i32 1
  store i64 %78, i64* %80, align 8
  %81 = load i32, i32* %8, align 4
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %77
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 %86
  %88 = load i64, i64* %87, align 8
  br label %90

89:                                               ; preds = %77
  br label %90

90:                                               ; preds = %89, %83
  %91 = phi i64 [ %88, %83 ], [ 0, %89 ]
  %92 = load %struct.mlx5_tool_addr*, %struct.mlx5_tool_addr** %5, align 8
  %93 = getelementptr inbounds %struct.mlx5_tool_addr, %struct.mlx5_tool_addr* %92, i32 0, i32 2
  store i64 %91, i64* %93, align 8
  %94 = load i32, i32* %8, align 4
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %90
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 %99
  %101 = load i64, i64* %100, align 8
  br label %103

102:                                              ; preds = %90
  br label %103

103:                                              ; preds = %102, %96
  %104 = phi i64 [ %101, %96 ], [ 0, %102 ]
  %105 = load %struct.mlx5_tool_addr*, %struct.mlx5_tool_addr** %5, align 8
  %106 = getelementptr inbounds %struct.mlx5_tool_addr, %struct.mlx5_tool_addr* %105, i32 0, i32 3
  store i64 %104, i64* %106, align 8
  store i32 0, i32* %3, align 4
  br label %111

107:                                              ; preds = %49, %46
  br label %108

108:                                              ; preds = %107, %13
  %109 = load i8*, i8** %4, align 8
  %110 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %109)
  store i32 1, i32* %3, align 4
  br label %111

111:                                              ; preds = %108, %103, %11
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
