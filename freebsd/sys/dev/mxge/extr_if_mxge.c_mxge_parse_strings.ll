; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mxge/extr_if_mxge.c_mxge_parse_strings.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mxge/extr_if_mxge.c_mxge_parse_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32, i32, i32* }

@.str = private unnamed_addr constant [5 x i8] c"MAC=\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"PC=\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"SN=\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"SN2=\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"failed to parse eeprom_strings\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @mxge_parse_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxge_parse_strings(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %105, %1
  %13 = load i8*, i8** %4, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %106

17:                                               ; preds = %12
  %18 = load i8*, i8** %4, align 8
  %19 = call i64 @strncmp(i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %55

21:                                               ; preds = %17
  %22 = load i8*, i8** %4, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 4
  store i8* %23, i8** %4, align 8
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %53, %21
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @strtoul(i8* %25, i8** %8, i32 16)
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 4
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  store i32 %26, i32* %32, align 4
  %33 = load i8*, i8** %8, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = ptrtoint i8* %33 to i64
  %36 = ptrtoint i8* %34 to i64
  %37 = sub i64 %35, %36
  %38 = icmp ne i64 %37, 2
  br i1 %38, label %39, label %40

39:                                               ; preds = %24
  br label %111

40:                                               ; preds = %24
  %41 = load i8*, i8** %8, align 8
  store i8* %41, i8** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  %44 = icmp eq i32 %43, 6
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %54

46:                                               ; preds = %40
  %47 = load i8*, i8** %4, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %4, align 8
  %49 = load i8, i8* %47, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 58
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %111

53:                                               ; preds = %46
  br label %24

54:                                               ; preds = %45
  store i32 1, i32* %6, align 4
  br label %97

55:                                               ; preds = %17
  %56 = load i8*, i8** %4, align 8
  %57 = call i64 @strncmp(i8* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %55
  %60 = load i8*, i8** %4, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 3
  store i8* %61, i8** %4, align 8
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = load i8*, i8** %4, align 8
  %66 = call i32 @strlcpy(i32 %64, i8* %65, i32 4)
  br label %96

67:                                               ; preds = %55
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %82, label %70

70:                                               ; preds = %67
  %71 = load i8*, i8** %4, align 8
  %72 = call i64 @strncmp(i8* %71, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %70
  %75 = load i8*, i8** %4, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 3
  store i8* %76, i8** %4, align 8
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load i8*, i8** %4, align 8
  %81 = call i32 @strlcpy(i32 %79, i8* %80, i32 4)
  br label %95

82:                                               ; preds = %70, %67
  %83 = load i8*, i8** %4, align 8
  %84 = call i64 @strncmp(i8* %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %82
  %87 = load i8*, i8** %4, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 4
  store i8* %88, i8** %4, align 8
  store i32 1, i32* %7, align 4
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load i8*, i8** %4, align 8
  %93 = call i32 @strlcpy(i32 %91, i8* %92, i32 4)
  br label %94

94:                                               ; preds = %86, %82
  br label %95

95:                                               ; preds = %94, %74
  br label %96

96:                                               ; preds = %95, %59
  br label %97

97:                                               ; preds = %96, %54
  br label %98

98:                                               ; preds = %104, %97
  %99 = load i8*, i8** %4, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %4, align 8
  %101 = load i8, i8* %99, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  br label %98

105:                                              ; preds = %98
  br label %12

106:                                              ; preds = %12
  %107 = load i32, i32* %6, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  store i32 0, i32* %2, align 4
  br label %117

110:                                              ; preds = %106
  br label %111

111:                                              ; preds = %110, %52, %39
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @device_printf(i32 %114, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %116 = load i32, i32* @ENXIO, align 4
  store i32 %116, i32* %2, align 4
  br label %117

117:                                              ; preds = %111, %109
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
