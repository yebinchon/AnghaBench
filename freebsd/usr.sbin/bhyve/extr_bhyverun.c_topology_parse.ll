; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_bhyverun.c_topology_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_bhyverun.c_topology_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%i%n\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"cpus=%i%n\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"sockets=%i%n\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"cores=%i%n\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"threads=%i%n\00", align 1
@UINT16_MAX = common dso_local global i32 0, align 4
@guest_ncpus = common dso_local global i32 0, align 4
@sockets = common dso_local global i32 0, align 4
@cores = common dso_local global i32 0, align 4
@threads = common dso_local global i32 0, align 4
@m = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @topology_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @topology_parse(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 1, i32* %5, align 4
  store i32 1, i32* %7, align 4
  store i32 1, i32* %8, align 4
  store i32 1, i32* %9, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %15 = load i8*, i8** %3, align 8
  %16 = call i8* @strdup(i8* %15)
  store i8* %16, i8** %12, align 8
  %17 = load i8*, i8** %12, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %134

20:                                               ; preds = %1
  br label %21

21:                                               ; preds = %75, %60, %20
  %22 = call i8* @strsep(i8** %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %22, i8** %11, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %76

24:                                               ; preds = %21
  %25 = load i8*, i8** %11, align 8
  %26 = call i32 @sscanf(i8* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %10, i32* %6)
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %7, align 4
  store i32 1, i32* %13, align 4
  br label %66

30:                                               ; preds = %24
  %31 = load i8*, i8** %11, align 8
  %32 = call i32 @sscanf(i8* %31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32* %10, i32* %6)
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %7, align 4
  store i32 1, i32* %13, align 4
  br label %65

36:                                               ; preds = %30
  %37 = load i8*, i8** %11, align 8
  %38 = call i32 @sscanf(i8* %37, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32* %10, i32* %6)
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %8, align 4
  store i32 1, i32* %14, align 4
  br label %64

42:                                               ; preds = %36
  %43 = load i8*, i8** %11, align 8
  %44 = call i32 @sscanf(i8* %43, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32* %10, i32* %6)
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %63

48:                                               ; preds = %42
  %49 = load i8*, i8** %11, align 8
  %50 = call i32 @sscanf(i8* %49, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32* %10, i32* %6)
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %9, align 4
  store i32 1, i32* %14, align 4
  br label %62

54:                                               ; preds = %48
  %55 = load i8*, i8** %11, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 0
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %21

61:                                               ; preds = %54
  br label %134

62:                                               ; preds = %52
  br label %63

63:                                               ; preds = %62, %46
  br label %64

64:                                               ; preds = %63, %40
  br label %65

65:                                               ; preds = %64, %34
  br label %66

66:                                               ; preds = %65, %28
  %67 = load i8*, i8** %11, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  br label %134

75:                                               ; preds = %66
  br label %21

76:                                               ; preds = %21
  %77 = load i8*, i8** %12, align 8
  %78 = call i32 @free(i8* %77)
  store i8* null, i8** %12, align 8
  %79 = load i32, i32* %7, align 4
  %80 = icmp slt i32 %79, 1
  br i1 %80, label %106, label %81

81:                                               ; preds = %76
  %82 = load i32, i32* %8, align 4
  %83 = icmp slt i32 %82, 1
  br i1 %83, label %106, label %84

84:                                               ; preds = %81
  %85 = load i32, i32* %5, align 4
  %86 = icmp slt i32 %85, 1
  br i1 %86, label %106, label %87

87:                                               ; preds = %84
  %88 = load i32, i32* %9, align 4
  %89 = icmp slt i32 %88, 1
  br i1 %89, label %106, label %90

90:                                               ; preds = %87
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @UINT16_MAX, align 4
  %93 = icmp sgt i32 %91, %92
  br i1 %93, label %106, label %94

94:                                               ; preds = %90
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* @UINT16_MAX, align 4
  %97 = icmp sgt i32 %95, %96
  br i1 %97, label %106, label %98

98:                                               ; preds = %94
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* @UINT16_MAX, align 4
  %101 = icmp sgt i32 %99, %100
  br i1 %101, label %106, label %102

102:                                              ; preds = %98
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* @UINT16_MAX, align 4
  %105 = icmp sgt i32 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %102, %98, %94, %90, %87, %84, %81, %76
  store i32 -1, i32* %2, align 4
  br label %137

107:                                              ; preds = %102
  %108 = load i32, i32* %14, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %107
  %111 = load i32, i32* %7, align 4
  store i32 %111, i32* %8, align 4
  br label %112

112:                                              ; preds = %110, %107
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* %5, align 4
  %115 = mul nsw i32 %113, %114
  %116 = load i32, i32* %9, align 4
  %117 = mul nsw i32 %115, %116
  store i32 %117, i32* %4, align 4
  %118 = load i32, i32* %4, align 4
  %119 = load i32, i32* @UINT16_MAX, align 4
  %120 = icmp sgt i32 %118, %119
  br i1 %120, label %128, label %121

121:                                              ; preds = %112
  %122 = load i32, i32* %13, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %121
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* %4, align 4
  %127 = icmp ne i32 %125, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %124, %112
  store i32 -1, i32* %2, align 4
  br label %137

129:                                              ; preds = %124, %121
  %130 = load i32, i32* %4, align 4
  store i32 %130, i32* @guest_ncpus, align 4
  %131 = load i32, i32* %8, align 4
  store i32 %131, i32* @sockets, align 4
  %132 = load i32, i32* %5, align 4
  store i32 %132, i32* @cores, align 4
  %133 = load i32, i32* %9, align 4
  store i32 %133, i32* @threads, align 4
  store i32 0, i32* %2, align 4
  br label %137

134:                                              ; preds = %74, %61, %19
  %135 = load i8*, i8** %12, align 8
  %136 = call i32 @free(i8* %135)
  store i32 -1, i32* %2, align 4
  br label %137

137:                                              ; preds = %134, %129, %128, %106
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
