; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/netinet/msocket/extr_msocket.c_test_u_char.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/netinet/msocket/extr_msocket.c_test_u_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IPPROTO_IP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"FAIL: getsockopt(%s, IPPROTO_IP, %s)\00", align 1
@WARN_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"WARN: getsockopt(%s, IPPROTO_IP, %s) returned 0\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"FAIL: getsockopt(%s, IPPROTO_IP, %s) default is %d not %d\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"FAIL: setsockopt(%s, IPPROTO_IP, %s)\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"WARN: setsockopt(%s, IPPROTO_IP, %s) returned 0\00", align 1
@.str.5 = private unnamed_addr constant [60 x i8] c"FAIL: getsockopt(%s, IPPROTO_IP, %s) set value is %d not %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i64, i64, i64, i8*, i32, i32)* @test_u_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_u_char(i32 %0, i8* %1, i64 %2, i64 %3, i64 %4, i8* %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %20 = load i64, i64* %13, align 8
  store i64 %20, i64* %18, align 8
  store i32 8, i32* %17, align 4
  %21 = load i32, i32* %15, align 4
  %22 = load i32, i32* @IPPROTO_IP, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @getsockopt(i32 %21, i32 %22, i32 %23, i64* %18, i32* %17)
  store i32 %24, i32* %19, align 4
  %25 = load i32, i32* %19, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %8
  %28 = load i8*, i8** %14, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = call i32 @err(i32 -1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %28, i8* %29)
  br label %31

31:                                               ; preds = %27, %8
  %32 = load i32, i32* %19, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %31
  %35 = load i32, i32* %16, align 4
  %36 = load i32, i32* @WARN_SUCCESS, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i8*, i8** %14, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = call i32 @warnx(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8* %40, i8* %41)
  br label %43

43:                                               ; preds = %39, %34, %31
  %44 = load i64, i64* %18, align 8
  %45 = load i64, i64* %11, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = load i8*, i8** %14, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = load i64, i64* %18, align 8
  %51 = load i64, i64* %11, align 8
  %52 = call i32 @errx(i32 -1, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i8* %48, i8* %49, i64 %50, i64 %51)
  br label %53

53:                                               ; preds = %47, %43
  %54 = load i64, i64* %12, align 8
  store i64 %54, i64* %18, align 8
  %55 = load i32, i32* %15, align 4
  %56 = load i32, i32* @IPPROTO_IP, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @setsockopt(i32 %55, i32 %56, i32 %57, i64* %18, i32 8)
  store i32 %58, i32* %19, align 4
  %59 = load i32, i32* %19, align 4
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %61, label %65

61:                                               ; preds = %53
  %62 = load i8*, i8** %14, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = call i32 @err(i32 -1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i8* %62, i8* %63)
  br label %65

65:                                               ; preds = %61, %53
  %66 = load i32, i32* %19, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %65
  %69 = load i32, i32* %16, align 4
  %70 = load i32, i32* @WARN_SUCCESS, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load i8*, i8** %14, align 8
  %75 = load i8*, i8** %10, align 8
  %76 = call i32 @warnx(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i8* %74, i8* %75)
  br label %77

77:                                               ; preds = %73, %68, %65
  %78 = load i64, i64* %13, align 8
  store i64 %78, i64* %18, align 8
  store i32 8, i32* %17, align 4
  %79 = load i32, i32* %15, align 4
  %80 = load i32, i32* @IPPROTO_IP, align 4
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @getsockopt(i32 %79, i32 %80, i32 %81, i64* %18, i32* %17)
  store i32 %82, i32* %19, align 4
  %83 = load i32, i32* %19, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %77
  %86 = load i8*, i8** %14, align 8
  %87 = load i8*, i8** %10, align 8
  %88 = call i32 @err(i32 -1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %86, i8* %87)
  br label %89

89:                                               ; preds = %85, %77
  %90 = load i32, i32* %19, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %89
  %93 = load i32, i32* %16, align 4
  %94 = load i32, i32* @WARN_SUCCESS, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  %98 = load i8*, i8** %14, align 8
  %99 = load i8*, i8** %10, align 8
  %100 = call i32 @warnx(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8* %98, i8* %99)
  br label %101

101:                                              ; preds = %97, %92, %89
  %102 = load i64, i64* %18, align 8
  %103 = load i64, i64* %12, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %101
  %106 = load i8*, i8** %14, align 8
  %107 = load i8*, i8** %10, align 8
  %108 = load i64, i64* %18, align 8
  %109 = load i64, i64* %12, align 8
  %110 = call i32 @errx(i32 -1, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i64 0, i64 0), i8* %106, i8* %107, i64 %108, i64 %109)
  br label %111

111:                                              ; preds = %105, %101
  ret void
}

declare dso_local i32 @getsockopt(i32, i32, i32, i64*, i32*) #1

declare dso_local i32 @err(i32, i8*, i8*, i8*) #1

declare dso_local i32 @warnx(i8*, i8*, i8*) #1

declare dso_local i32 @errx(i32, i8*, i8*, i8*, i64, i64) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
