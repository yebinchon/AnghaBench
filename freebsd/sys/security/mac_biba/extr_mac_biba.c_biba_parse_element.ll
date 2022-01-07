; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_biba/extr_mac_biba.c_biba_parse_element.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_biba/extr_mac_biba.c_biba_parse_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac_biba_element = type { i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"high\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"hi\00", align 1
@MAC_BIBA_TYPE_HIGH = common dso_local global i32 0, align 4
@MAC_BIBA_TYPE_UNDEF = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"low\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"lo\00", align 1
@MAC_BIBA_TYPE_LOW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"equal\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"eq\00", align 1
@MAC_BIBA_TYPE_EQUAL = common dso_local global i32 0, align 4
@MAC_BIBA_TYPE_GRADE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c":\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@MAC_BIBA_MAX_COMPARTMENTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mac_biba_element*, i8*)* @biba_parse_element to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @biba_parse_element(%struct.mac_biba_element* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mac_biba_element*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.mac_biba_element* %0, %struct.mac_biba_element** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i64 @strcmp(i8* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i8*, i8** %5, align 8
  %15 = call i64 @strcmp(i8* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %13, %2
  %18 = load i32, i32* @MAC_BIBA_TYPE_HIGH, align 4
  %19 = load %struct.mac_biba_element*, %struct.mac_biba_element** %4, align 8
  %20 = getelementptr inbounds %struct.mac_biba_element, %struct.mac_biba_element* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  %21 = load i8*, i8** @MAC_BIBA_TYPE_UNDEF, align 8
  %22 = ptrtoint i8* %21 to i32
  %23 = load %struct.mac_biba_element*, %struct.mac_biba_element** %4, align 8
  %24 = getelementptr inbounds %struct.mac_biba_element, %struct.mac_biba_element* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  br label %130

25:                                               ; preds = %13
  %26 = load i8*, i8** %5, align 8
  %27 = call i64 @strcmp(i8* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i8*, i8** %5, align 8
  %31 = call i64 @strcmp(i8* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %29, %25
  %34 = load i32, i32* @MAC_BIBA_TYPE_LOW, align 4
  %35 = load %struct.mac_biba_element*, %struct.mac_biba_element** %4, align 8
  %36 = getelementptr inbounds %struct.mac_biba_element, %struct.mac_biba_element* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load i8*, i8** @MAC_BIBA_TYPE_UNDEF, align 8
  %38 = ptrtoint i8* %37 to i32
  %39 = load %struct.mac_biba_element*, %struct.mac_biba_element** %4, align 8
  %40 = getelementptr inbounds %struct.mac_biba_element, %struct.mac_biba_element* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  br label %129

41:                                               ; preds = %29
  %42 = load i8*, i8** %5, align 8
  %43 = call i64 @strcmp(i8* %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load i8*, i8** %5, align 8
  %47 = call i64 @strcmp(i8* %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %45, %41
  %50 = load i32, i32* @MAC_BIBA_TYPE_EQUAL, align 4
  %51 = load %struct.mac_biba_element*, %struct.mac_biba_element** %4, align 8
  %52 = getelementptr inbounds %struct.mac_biba_element, %struct.mac_biba_element* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  %53 = load i8*, i8** @MAC_BIBA_TYPE_UNDEF, align 8
  %54 = ptrtoint i8* %53 to i32
  %55 = load %struct.mac_biba_element*, %struct.mac_biba_element** %4, align 8
  %56 = getelementptr inbounds %struct.mac_biba_element, %struct.mac_biba_element* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  br label %128

57:                                               ; preds = %45
  %58 = load i32, i32* @MAC_BIBA_TYPE_GRADE, align 4
  %59 = load %struct.mac_biba_element*, %struct.mac_biba_element** %4, align 8
  %60 = getelementptr inbounds %struct.mac_biba_element, %struct.mac_biba_element* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  %61 = call i8* @strsep(i8** %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i8* %61, i8** %8, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = call i32 @strtol(i8* %62, i8** %7, i32 10)
  store i32 %63, i32* %9, align 4
  %64 = load i8*, i8** %7, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = icmp eq i8* %64, %65
  br i1 %66, label %72, label %67

67:                                               ; preds = %57
  %68 = load i8*, i8** %7, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %67, %57
  %73 = load i32, i32* @EINVAL, align 4
  store i32 %73, i32* %3, align 4
  br label %131

74:                                               ; preds = %67
  %75 = load i32, i32* %9, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %74
  %78 = load i32, i32* %9, align 4
  %79 = icmp sgt i32 %78, 65535
  br i1 %79, label %80, label %82

80:                                               ; preds = %77, %74
  %81 = load i32, i32* @EINVAL, align 4
  store i32 %81, i32* %3, align 4
  br label %131

82:                                               ; preds = %77
  %83 = load i32, i32* %9, align 4
  %84 = load %struct.mac_biba_element*, %struct.mac_biba_element** %4, align 8
  %85 = getelementptr inbounds %struct.mac_biba_element, %struct.mac_biba_element* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  %86 = load i8*, i8** %5, align 8
  %87 = icmp eq i8* %86, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  store i32 0, i32* %3, align 4
  br label %131

89:                                               ; preds = %82
  %90 = load i8*, i8** %5, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  store i32 0, i32* %3, align 4
  br label %131

95:                                               ; preds = %89
  br label %96

96:                                               ; preds = %121, %95
  %97 = call i8* @strsep(i8** %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store i8* %97, i8** %6, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %127

99:                                               ; preds = %96
  %100 = load i8*, i8** %6, align 8
  %101 = call i32 @strtol(i8* %100, i8** %7, i32 10)
  store i32 %101, i32* %9, align 4
  %102 = load i8*, i8** %6, align 8
  %103 = load i8*, i8** %7, align 8
  %104 = icmp eq i8* %102, %103
  br i1 %104, label %110, label %105

105:                                              ; preds = %99
  %106 = load i8*, i8** %7, align 8
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %105, %99
  %111 = load i32, i32* @EINVAL, align 4
  store i32 %111, i32* %3, align 4
  br label %131

112:                                              ; preds = %105
  %113 = load i32, i32* %9, align 4
  %114 = icmp slt i32 %113, 1
  br i1 %114, label %119, label %115

115:                                              ; preds = %112
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* @MAC_BIBA_MAX_COMPARTMENTS, align 4
  %118 = icmp sgt i32 %116, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %115, %112
  %120 = load i32, i32* @EINVAL, align 4
  store i32 %120, i32* %3, align 4
  br label %131

121:                                              ; preds = %115
  %122 = load i32, i32* %9, align 4
  %123 = load %struct.mac_biba_element*, %struct.mac_biba_element** %4, align 8
  %124 = getelementptr inbounds %struct.mac_biba_element, %struct.mac_biba_element* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @MAC_BIBA_BIT_SET(i32 %122, i32 %125)
  br label %96

127:                                              ; preds = %96
  br label %128

128:                                              ; preds = %127, %49
  br label %129

129:                                              ; preds = %128, %33
  br label %130

130:                                              ; preds = %129, %17
  store i32 0, i32* %3, align 4
  br label %131

131:                                              ; preds = %130, %119, %110, %94, %88, %80, %72
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @MAC_BIBA_BIT_SET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
