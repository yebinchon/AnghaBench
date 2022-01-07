; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/netinet/msocket/extr_msocket.c_test_drop_multi.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/netinet/msocket/extr_msocket.c_test_drop_multi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_mreq = type { i32, i32 }

@IPPROTO_IP = common dso_local global i32 0, align 4
@IP_DROP_MEMBERSHIP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"FAIL: setsockopt(%s, IPPROTO_IP, IP_DROP_MEMBERSHIP %s, %s)\00", align 1
@WARN_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [71 x i8] c"WARN: setsockopt(%s, IPPROTO_IP, IP_DROP_MEMBERSHIP %s, %s) returned 0\00", align 1
@.str.2 = private unnamed_addr constant [71 x i8] c"FAIL: setsockopt(%s, IPPROTO_IP, IP_DROP_MEMBERSHIP %s, %s) returned 0\00", align 1
@errno = common dso_local global i64 0, align 8
@EADDRNOTAVAIL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i64, i32)* @test_drop_multi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_drop_multi(i32 %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.ip_mreq, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [128 x i8], align 16
  %10 = alloca i32, align 4
  %11 = bitcast %struct.ip_mreq* %5 to i64*
  store i64 %2, i64* %11, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @IPPROTO_IP, align 4
  %14 = load i32, i32* @IP_DROP_MEMBERSHIP, align 4
  %15 = call i32 @setsockopt(i32 %12, i32 %13, i32 %14, %struct.ip_mreq* %5, i32 8)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %4
  %19 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %20 = getelementptr inbounds %struct.ip_mreq, %struct.ip_mreq* %5, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @inet_ntoa(i32 %21)
  %23 = call i32 @strlcpy(i8* %19, i32 %22, i32 128)
  %24 = load i8*, i8** %7, align 8
  %25 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %26 = getelementptr inbounds %struct.ip_mreq, %struct.ip_mreq* %5, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @inet_ntoa(i32 %27)
  %29 = call i32 @err(i32 -1, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i8* %24, i8* %25, i32 %28)
  br label %30

30:                                               ; preds = %18, %4
  %31 = load i32, i32* %10, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %30
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @WARN_SUCCESS, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %33
  %39 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %40 = getelementptr inbounds %struct.ip_mreq, %struct.ip_mreq* %5, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @inet_ntoa(i32 %41)
  %43 = call i32 @strlcpy(i8* %39, i32 %42, i32 128)
  %44 = load i8*, i8** %7, align 8
  %45 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %46 = getelementptr inbounds %struct.ip_mreq, %struct.ip_mreq* %5, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @inet_ntoa(i32 %47)
  %49 = call i32 @warnx(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i8* %44, i8* %45, i32 %48)
  br label %50

50:                                               ; preds = %38, %33, %30
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @IPPROTO_IP, align 4
  %53 = load i32, i32* @IP_DROP_MEMBERSHIP, align 4
  %54 = call i32 @setsockopt(i32 %51, i32 %52, i32 %53, %struct.ip_mreq* %5, i32 8)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %50
  %58 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %59 = getelementptr inbounds %struct.ip_mreq, %struct.ip_mreq* %5, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @inet_ntoa(i32 %60)
  %62 = call i32 @strlcpy(i8* %58, i32 %61, i32 128)
  %63 = load i8*, i8** %7, align 8
  %64 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %65 = getelementptr inbounds %struct.ip_mreq, %struct.ip_mreq* %5, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @inet_ntoa(i32 %66)
  %68 = call i32 @err(i32 -1, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i8* %63, i8* %64, i32 %67)
  br label %69

69:                                               ; preds = %57, %50
  %70 = load i32, i32* %10, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %88

72:                                               ; preds = %69
  %73 = load i64, i64* @errno, align 8
  %74 = load i64, i64* @EADDRNOTAVAIL, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %88

76:                                               ; preds = %72
  %77 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %78 = getelementptr inbounds %struct.ip_mreq, %struct.ip_mreq* %5, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @inet_ntoa(i32 %79)
  %81 = call i32 @strlcpy(i8* %77, i32 %80, i32 128)
  %82 = load i8*, i8** %7, align 8
  %83 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %84 = getelementptr inbounds %struct.ip_mreq, %struct.ip_mreq* %5, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @inet_ntoa(i32 %85)
  %87 = call i32 @err(i32 -1, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i8* %82, i8* %83, i32 %86)
  br label %88

88:                                               ; preds = %76, %72, %69
  ret void
}

declare dso_local i32 @setsockopt(i32, i32, i32, %struct.ip_mreq*, i32) #1

declare dso_local i32 @strlcpy(i8*, i32, i32) #1

declare dso_local i32 @inet_ntoa(i32) #1

declare dso_local i32 @err(i32, i8*, i8*, i8*, i32) #1

declare dso_local i32 @warnx(i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
