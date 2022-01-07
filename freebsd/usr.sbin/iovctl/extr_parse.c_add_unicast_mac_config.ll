; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/iovctl/extr_parse.c_add_unicast_mac_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/iovctl/extr_parse.c_add_unicast_mac_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"unicast-mac\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@UINT8_MAX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [46 x i8] c"Value '%s' of key '%s' is a multicast address\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32*)* @add_unicast_mac_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_unicast_mac_config(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %18 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %7, align 8
  %21 = alloca i64, i64 %19, align 16
  store i64 %19, i64* %8, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @ucl_object_tostring_safe(i32* %22, i8** %9)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %3
  %26 = load i8*, i8** %4, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @report_config_error(i8* %26, i32* %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %25, %3
  %30 = load i8*, i8** %9, align 8
  %31 = call i8* @strdup(i8* %30)
  store i8* %31, i8** %11, align 8
  %32 = load i8*, i8** %11, align 8
  store i8* %32, i8** %12, align 8
  store i32 0, i32* %17, align 4
  br label %33

33:                                               ; preds = %76, %29
  %34 = load i8*, i8** %11, align 8
  %35 = call i8* @strtok_r(i8* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %13)
  store i8* %35, i8** %10, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %83

37:                                               ; preds = %33
  store i8* null, i8** %11, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = call i64 @strlen(i8* %38)
  store i64 %39, i64* %15, align 8
  %40 = load i64, i64* %15, align 8
  %41 = icmp ult i64 %40, 1
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = load i64, i64* %15, align 8
  %44 = icmp ugt i64 %43, 2
  br i1 %44, label %45, label %49

45:                                               ; preds = %42, %37
  %46 = load i8*, i8** %4, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @report_config_error(i8* %46, i32* %47, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %49

49:                                               ; preds = %45, %42
  %50 = load i8*, i8** %10, align 8
  %51 = call i64 @strtoul(i8* %50, i8** %14, i32 16)
  store i64 %51, i64* %16, align 8
  %52 = load i8*, i8** %14, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load i8*, i8** %4, align 8
  %58 = load i32*, i32** %5, align 8
  %59 = call i32 @report_config_error(i8* %57, i32* %58, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %60

60:                                               ; preds = %56, %49
  %61 = load i64, i64* %16, align 8
  %62 = load i64, i64* @UINT8_MAX, align 8
  %63 = icmp sgt i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load i8*, i8** %4, align 8
  %66 = load i32*, i32** %5, align 8
  %67 = call i32 @report_config_error(i8* %65, i32* %66, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %68

68:                                               ; preds = %64, %60
  %69 = load i32, i32* %17, align 4
  %70 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %71 = icmp sge i32 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = load i8*, i8** %4, align 8
  %74 = load i32*, i32** %5, align 8
  %75 = call i32 @report_config_error(i8* %73, i32* %74, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %76

76:                                               ; preds = %72, %68
  %77 = load i64, i64* %16, align 8
  %78 = load i32, i32* %17, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %21, i64 %79
  store i64 %77, i64* %80, align 8
  %81 = load i32, i32* %17, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %17, align 4
  br label %33

83:                                               ; preds = %33
  %84 = load i8*, i8** %12, align 8
  %85 = call i32 @free(i8* %84)
  %86 = load i32, i32* %17, align 4
  %87 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %83
  %90 = load i8*, i8** %4, align 8
  %91 = load i32*, i32** %5, align 8
  %92 = call i32 @report_config_error(i8* %90, i32* %91, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %93

93:                                               ; preds = %89, %83
  %94 = call i64 @ETHER_IS_MULTICAST(i64* %21)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %93
  %97 = load i32*, i32** %5, align 8
  %98 = call i32 @ucl_object_tostring(i32* %97)
  %99 = load i8*, i8** %4, align 8
  %100 = call i32 @errx(i32 1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %98, i8* %99)
  br label %101

101:                                              ; preds = %96, %93
  %102 = load i32*, i32** %6, align 8
  %103 = load i8*, i8** %4, align 8
  %104 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %105 = call i32 @nvlist_add_binary(i32* %102, i8* %103, i64* %21, i32 %104)
  %106 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %106)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ucl_object_tostring_safe(i32*, i8**) #2

declare dso_local i32 @report_config_error(i8*, i32*, i8*) #2

declare dso_local i8* @strdup(i8*) #2

declare dso_local i8* @strtok_r(i8*, i8*, i8**) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i64 @strtoul(i8*, i8**, i32) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i64 @ETHER_IS_MULTICAST(i64*) #2

declare dso_local i32 @errx(i32, i8*, i32, i8*) #2

declare dso_local i32 @ucl_object_tostring(i32*) #2

declare dso_local i32 @nvlist_add_binary(i32*, i8*, i64*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
