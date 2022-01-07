; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/netinet/msocket/extr_msocket.c_test_in_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/netinet/msocket/extr_msocket.c_test_in_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32 }

@IPPROTO_IP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"FAIL: getsockopt(%s, IPPROTO_IP, %s)\00", align 1
@WARN_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"WARN: getsockopt(%s, IPPROTO_IP, %s) returned 0\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"FAIL: getsockopt(%s, IPPROTO_IP, %s) default is %s not %s\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"FAIL: setsockopt(%s, IPPROTO_IP, %s)\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"WARN: setsockopt(%s, IPPROTO_IP, %s) returned 0\00", align 1
@.str.5 = private unnamed_addr constant [60 x i8] c"FAIL: getsockopt(%s, IPPROTO_IP, %s) set value is %s not %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i32, i32, i32, i8*, i32, i32)* @test_in_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_in_addr(i32 %0, i8* %1, i32 %2, i32 %3, i32 %4, i8* %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.in_addr, align 4
  %10 = alloca %struct.in_addr, align 4
  %11 = alloca %struct.in_addr, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.in_addr, align 4
  %19 = alloca i32, align 4
  %20 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %9, i32 0, i32 0
  store i32 %2, i32* %20, align 4
  %21 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %10, i32 0, i32 0
  store i32 %3, i32* %21, align 4
  %22 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %11, i32 0, i32 0
  store i32 %4, i32* %22, align 4
  store i32 %0, i32* %12, align 4
  store i8* %1, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %23 = bitcast %struct.in_addr* %18 to i8*
  %24 = bitcast %struct.in_addr* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 %24, i64 4, i1 false)
  store i32 4, i32* %17, align 4
  %25 = load i32, i32* %15, align 4
  %26 = load i32, i32* @IPPROTO_IP, align 4
  %27 = load i32, i32* %12, align 4
  %28 = call i32 @getsockopt(i32 %25, i32 %26, i32 %27, %struct.in_addr* %18, i32* %17)
  store i32 %28, i32* %19, align 4
  %29 = load i32, i32* %19, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %8
  %32 = load i8*, i8** %14, align 8
  %33 = load i8*, i8** %13, align 8
  %34 = call i32 @err(i32 -1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %32, i8* %33)
  br label %35

35:                                               ; preds = %31, %8
  %36 = load i32, i32* %19, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %35
  %39 = load i32, i32* %16, align 4
  %40 = load i32, i32* @WARN_SUCCESS, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i8*, i8** %14, align 8
  %45 = load i8*, i8** %13, align 8
  %46 = call i32 @warnx(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8* %44, i8* %45)
  br label %47

47:                                               ; preds = %43, %38, %35
  %48 = call i64 @memcmp(%struct.in_addr* %18, %struct.in_addr* %9, i32 4)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %47
  %51 = load i8*, i8** %14, align 8
  %52 = load i8*, i8** %13, align 8
  %53 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %18, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @inet_ntoa(i32 %54)
  %56 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %9, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @inet_ntoa(i32 %57)
  %59 = call i32 @errx(i32 -1, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i8* %51, i8* %52, i32 %55, i32 %58)
  br label %60

60:                                               ; preds = %50, %47
  %61 = bitcast %struct.in_addr* %18 to i8*
  %62 = bitcast %struct.in_addr* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %61, i8* align 4 %62, i64 4, i1 false)
  %63 = load i32, i32* %15, align 4
  %64 = load i32, i32* @IPPROTO_IP, align 4
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @setsockopt(i32 %63, i32 %64, i32 %65, %struct.in_addr* %18, i32 4)
  store i32 %66, i32* %19, align 4
  %67 = load i32, i32* %19, align 4
  %68 = icmp eq i32 %67, -1
  br i1 %68, label %69, label %73

69:                                               ; preds = %60
  %70 = load i8*, i8** %14, align 8
  %71 = load i8*, i8** %13, align 8
  %72 = call i32 @err(i32 -1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i8* %70, i8* %71)
  br label %73

73:                                               ; preds = %69, %60
  %74 = load i32, i32* %19, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %73
  %77 = load i32, i32* %16, align 4
  %78 = load i32, i32* @WARN_SUCCESS, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load i8*, i8** %14, align 8
  %83 = load i8*, i8** %13, align 8
  %84 = call i32 @warnx(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i8* %82, i8* %83)
  br label %85

85:                                               ; preds = %81, %76, %73
  %86 = bitcast %struct.in_addr* %18 to i8*
  %87 = bitcast %struct.in_addr* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %86, i8* align 4 %87, i64 4, i1 false)
  store i32 4, i32* %17, align 4
  %88 = load i32, i32* %15, align 4
  %89 = load i32, i32* @IPPROTO_IP, align 4
  %90 = load i32, i32* %12, align 4
  %91 = call i32 @getsockopt(i32 %88, i32 %89, i32 %90, %struct.in_addr* %18, i32* %17)
  store i32 %91, i32* %19, align 4
  %92 = load i32, i32* %19, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %85
  %95 = load i8*, i8** %14, align 8
  %96 = load i8*, i8** %13, align 8
  %97 = call i32 @err(i32 -1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %95, i8* %96)
  br label %98

98:                                               ; preds = %94, %85
  %99 = load i32, i32* %19, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %98
  %102 = load i32, i32* %16, align 4
  %103 = load i32, i32* @WARN_SUCCESS, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %101
  %107 = load i8*, i8** %14, align 8
  %108 = load i8*, i8** %13, align 8
  %109 = call i32 @warnx(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8* %107, i8* %108)
  br label %110

110:                                              ; preds = %106, %101, %98
  %111 = call i64 @memcmp(%struct.in_addr* %18, %struct.in_addr* %10, i32 4)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %110
  %114 = load i8*, i8** %14, align 8
  %115 = load i8*, i8** %13, align 8
  %116 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %18, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @inet_ntoa(i32 %117)
  %119 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %10, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @inet_ntoa(i32 %120)
  %122 = call i32 @errx(i32 -1, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i64 0, i64 0), i8* %114, i8* %115, i32 %118, i32 %121)
  br label %123

123:                                              ; preds = %113, %110
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @getsockopt(i32, i32, i32, %struct.in_addr*, i32*) #2

declare dso_local i32 @err(i32, i8*, i8*, i8*) #2

declare dso_local i32 @warnx(i8*, i8*, i8*) #2

declare dso_local i64 @memcmp(%struct.in_addr*, %struct.in_addr*, i32) #2

declare dso_local i32 @errx(i32, i8*, i8*, i8*, i32, i32) #2

declare dso_local i32 @inet_ntoa(i32) #2

declare dso_local i32 @setsockopt(i32, i32, i32, %struct.in_addr*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
