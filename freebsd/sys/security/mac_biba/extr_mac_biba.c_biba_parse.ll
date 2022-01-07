; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_biba/extr_mac_biba.c_biba_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_biba/extr_mac_biba.c_biba_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac_biba = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"biba_parse: range mismatch\00", align 1
@MAC_BIBA_FLAG_EFFECTIVE = common dso_local global i32 0, align 4
@MAC_BIBA_FLAG_RANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mac_biba*, i8*)* @biba_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @biba_parse(%struct.mac_biba* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mac_biba*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.mac_biba* %0, %struct.mac_biba** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = call i8* @strsep(i8** %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %10, i8** %8, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i8* null, i8** %8, align 8
  br label %16

16:                                               ; preds = %15, %2
  %17 = load i8*, i8** %5, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %39

19:                                               ; preds = %16
  %20 = call i8* @strsep(i8** %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %20, i8** %7, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %3, align 4
  br label %112

25:                                               ; preds = %19
  %26 = call i8* @strsep(i8** %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i8* %26, i8** %6, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* %3, align 4
  br label %112

31:                                               ; preds = %25
  %32 = load i8*, i8** %5, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @EINVAL, align 4
  store i32 %37, i32* %3, align 4
  br label %112

38:                                               ; preds = %31
  br label %40

39:                                               ; preds = %16
  store i8* null, i8** %7, align 8
  store i8* null, i8** %6, align 8
  br label %40

40:                                               ; preds = %39, %38
  %41 = load i8*, i8** %7, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i8*, i8** %6, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %54, label %46

46:                                               ; preds = %43, %40
  %47 = load i8*, i8** %7, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i8*, i8** %6, align 8
  %51 = icmp eq i8* %50, null
  br label %52

52:                                               ; preds = %49, %46
  %53 = phi i1 [ false, %46 ], [ %51, %49 ]
  br label %54

54:                                               ; preds = %52, %43
  %55 = phi i1 [ true, %43 ], [ %53, %52 ]
  %56 = zext i1 %55 to i32
  %57 = call i32 @KASSERT(i32 %56, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %58 = load %struct.mac_biba*, %struct.mac_biba** %4, align 8
  %59 = call i32 @bzero(%struct.mac_biba* %58, i32 16)
  %60 = load i8*, i8** %8, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %77

62:                                               ; preds = %54
  %63 = load %struct.mac_biba*, %struct.mac_biba** %4, align 8
  %64 = getelementptr inbounds %struct.mac_biba, %struct.mac_biba* %63, i32 0, i32 3
  %65 = load i8*, i8** %8, align 8
  %66 = call i32 @biba_parse_element(i32* %64, i8* %65)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = load i32, i32* %9, align 4
  store i32 %70, i32* %3, align 4
  br label %112

71:                                               ; preds = %62
  %72 = load i32, i32* @MAC_BIBA_FLAG_EFFECTIVE, align 4
  %73 = load %struct.mac_biba*, %struct.mac_biba** %4, align 8
  %74 = getelementptr inbounds %struct.mac_biba, %struct.mac_biba* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %71, %54
  %78 = load i8*, i8** %7, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %104

80:                                               ; preds = %77
  %81 = load %struct.mac_biba*, %struct.mac_biba** %4, align 8
  %82 = getelementptr inbounds %struct.mac_biba, %struct.mac_biba* %81, i32 0, i32 2
  %83 = load i8*, i8** %7, align 8
  %84 = call i32 @biba_parse_element(i32* %82, i8* %83)
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %80
  %88 = load i32, i32* %9, align 4
  store i32 %88, i32* %3, align 4
  br label %112

89:                                               ; preds = %80
  %90 = load %struct.mac_biba*, %struct.mac_biba** %4, align 8
  %91 = getelementptr inbounds %struct.mac_biba, %struct.mac_biba* %90, i32 0, i32 1
  %92 = load i8*, i8** %6, align 8
  %93 = call i32 @biba_parse_element(i32* %91, i8* %92)
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %89
  %97 = load i32, i32* %9, align 4
  store i32 %97, i32* %3, align 4
  br label %112

98:                                               ; preds = %89
  %99 = load i32, i32* @MAC_BIBA_FLAG_RANGE, align 4
  %100 = load %struct.mac_biba*, %struct.mac_biba** %4, align 8
  %101 = getelementptr inbounds %struct.mac_biba, %struct.mac_biba* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %98, %77
  %105 = load %struct.mac_biba*, %struct.mac_biba** %4, align 8
  %106 = call i32 @biba_valid(%struct.mac_biba* %105)
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %9, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %104
  %110 = load i32, i32* %9, align 4
  store i32 %110, i32* %3, align 4
  br label %112

111:                                              ; preds = %104
  store i32 0, i32* %3, align 4
  br label %112

112:                                              ; preds = %111, %109, %96, %87, %69, %36, %29, %23
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @bzero(%struct.mac_biba*, i32) #1

declare dso_local i32 @biba_parse_element(i32*, i8*) #1

declare dso_local i32 @biba_valid(%struct.mac_biba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
