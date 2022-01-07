; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_lomac/extr_mac_lomac.c_lomac_parse_element.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_lomac/extr_mac_lomac.c_lomac_parse_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac_lomac_element = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"high\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"hi\00", align 1
@MAC_LOMAC_TYPE_HIGH = common dso_local global i32 0, align 4
@MAC_LOMAC_TYPE_UNDEF = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"low\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"lo\00", align 1
@MAC_LOMAC_TYPE_LOW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"equal\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"eq\00", align 1
@MAC_LOMAC_TYPE_EQUAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MAC_LOMAC_TYPE_GRADE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mac_lomac_element*, i8*)* @lomac_parse_element to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lomac_parse_element(%struct.mac_lomac_element* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mac_lomac_element*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.mac_lomac_element* %0, %struct.mac_lomac_element** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i64 @strcmp(i8* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = call i64 @strcmp(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %12, %2
  %17 = load i32, i32* @MAC_LOMAC_TYPE_HIGH, align 4
  %18 = load %struct.mac_lomac_element*, %struct.mac_lomac_element** %4, align 8
  %19 = getelementptr inbounds %struct.mac_lomac_element, %struct.mac_lomac_element* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load i8*, i8** @MAC_LOMAC_TYPE_UNDEF, align 8
  %21 = ptrtoint i8* %20 to i32
  %22 = load %struct.mac_lomac_element*, %struct.mac_lomac_element** %4, align 8
  %23 = getelementptr inbounds %struct.mac_lomac_element, %struct.mac_lomac_element* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  br label %87

24:                                               ; preds = %12
  %25 = load i8*, i8** %5, align 8
  %26 = call i64 @strcmp(i8* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i8*, i8** %5, align 8
  %30 = call i64 @strcmp(i8* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %28, %24
  %33 = load i32, i32* @MAC_LOMAC_TYPE_LOW, align 4
  %34 = load %struct.mac_lomac_element*, %struct.mac_lomac_element** %4, align 8
  %35 = getelementptr inbounds %struct.mac_lomac_element, %struct.mac_lomac_element* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load i8*, i8** @MAC_LOMAC_TYPE_UNDEF, align 8
  %37 = ptrtoint i8* %36 to i32
  %38 = load %struct.mac_lomac_element*, %struct.mac_lomac_element** %4, align 8
  %39 = getelementptr inbounds %struct.mac_lomac_element, %struct.mac_lomac_element* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  br label %86

40:                                               ; preds = %28
  %41 = load i8*, i8** %5, align 8
  %42 = call i64 @strcmp(i8* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load i8*, i8** %5, align 8
  %46 = call i64 @strcmp(i8* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %44, %40
  %49 = load i32, i32* @MAC_LOMAC_TYPE_EQUAL, align 4
  %50 = load %struct.mac_lomac_element*, %struct.mac_lomac_element** %4, align 8
  %51 = getelementptr inbounds %struct.mac_lomac_element, %struct.mac_lomac_element* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load i8*, i8** @MAC_LOMAC_TYPE_UNDEF, align 8
  %53 = ptrtoint i8* %52 to i32
  %54 = load %struct.mac_lomac_element*, %struct.mac_lomac_element** %4, align 8
  %55 = getelementptr inbounds %struct.mac_lomac_element, %struct.mac_lomac_element* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  br label %85

56:                                               ; preds = %44
  %57 = load i8*, i8** %5, align 8
  store i8* %57, i8** %6, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = call i32 @strtol(i8* %58, i8** %7, i32 10)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %56
  %63 = load i32, i32* %8, align 4
  %64 = icmp sgt i32 %63, 65535
  br i1 %64, label %65, label %67

65:                                               ; preds = %62, %56
  %66 = load i32, i32* @EINVAL, align 4
  store i32 %66, i32* %3, align 4
  br label %88

67:                                               ; preds = %62
  %68 = load i32, i32* @MAC_LOMAC_TYPE_GRADE, align 4
  %69 = load %struct.mac_lomac_element*, %struct.mac_lomac_element** %4, align 8
  %70 = getelementptr inbounds %struct.mac_lomac_element, %struct.mac_lomac_element* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.mac_lomac_element*, %struct.mac_lomac_element** %4, align 8
  %73 = getelementptr inbounds %struct.mac_lomac_element, %struct.mac_lomac_element* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  %74 = load i8*, i8** %7, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = icmp eq i8* %74, %75
  br i1 %76, label %82, label %77

77:                                               ; preds = %67
  %78 = load i8*, i8** %7, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %77, %67
  %83 = load i32, i32* @EINVAL, align 4
  store i32 %83, i32* %3, align 4
  br label %88

84:                                               ; preds = %77
  br label %85

85:                                               ; preds = %84, %48
  br label %86

86:                                               ; preds = %85, %32
  br label %87

87:                                               ; preds = %86, %16
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %87, %82, %65
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
