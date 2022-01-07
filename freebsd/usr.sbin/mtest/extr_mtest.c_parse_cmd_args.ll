; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mtest/extr_mtest.c_parse_cmd_args.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mtest/extr_mtest.c_parse_cmd_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i8* }

@AF_UNSPEC = common dso_local global i8* null, align 8
@AI_NUMERICHOST = common dso_local global i32 0, align 4
@PF_UNSPEC = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"getaddrinfo: %s\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.addrinfo*, %struct.addrinfo*, i8*, i8*, i8*)* @parse_cmd_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @parse_cmd_args(%struct.addrinfo* %0, %struct.addrinfo* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.addrinfo*, align 8
  %8 = alloca %struct.addrinfo*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.addrinfo, align 8
  %13 = alloca %struct.addrinfo*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.addrinfo* %0, %struct.addrinfo** %7, align 8
  store %struct.addrinfo* %1, %struct.addrinfo** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %17 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %18 = icmp ne %struct.addrinfo* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i8*, i8** %9, align 8
  %22 = icmp ne i8* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i8*, i8** %10, align 8
  %26 = icmp ne i8* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load i8*, i8** @AF_UNSPEC, align 8
  %30 = ptrtoint i8* %29 to i32
  store i32 %30, i32* %15, align 4
  %31 = load i8*, i8** %10, align 8
  %32 = call i64 @if_nametoindex(i8* %31)
  store i64 %32, i64* %14, align 8
  %33 = load i64, i64* %14, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %5
  store i64 0, i64* %6, align 8
  br label %125

36:                                               ; preds = %5
  %37 = call i32 @memset(%struct.addrinfo* %12, i32 0, i32 32)
  %38 = load i32, i32* @AI_NUMERICHOST, align 4
  %39 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %12, i32 0, i32 5
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* @PF_UNSPEC, align 4
  %41 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %12, i32 0, i32 0
  store i32 %40, i32* %41, align 8
  %42 = load i32, i32* @SOCK_DGRAM, align 4
  %43 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %12, i32 0, i32 4
  store i32 %42, i32* %43, align 8
  %44 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %45 = call i32 @memset(%struct.addrinfo* %44, i32 0, i32 32)
  %46 = load i8*, i8** @AF_UNSPEC, align 8
  %47 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %48 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i8* %46, i8** %49, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = call i32 @getaddrinfo(i8* %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %struct.addrinfo* %12, %struct.addrinfo** %13)
  store i32 %51, i32* %16, align 4
  %52 = load i32, i32* %16, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %36
  %55 = load i32, i32* %16, align 4
  %56 = call i32 @gai_strerror(i32 %55)
  %57 = call i32 @warnx(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  store i64 0, i64* %6, align 8
  br label %125

58:                                               ; preds = %36
  %59 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %60 = icmp ne %struct.addrinfo* %59, null
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %64 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %15, align 4
  %66 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %67 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %68 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %71 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @memcpy(%struct.addrinfo* %66, i32 %69, i32 %72)
  %74 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %75 = call i32 @freeaddrinfo(%struct.addrinfo* %74)
  %76 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %77 = icmp ne %struct.addrinfo* %76, null
  br i1 %77, label %78, label %123

78:                                               ; preds = %58
  %79 = load i8*, i8** %11, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %123

81:                                               ; preds = %78
  %82 = load i8*, i8** %11, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %123

86:                                               ; preds = %81
  %87 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %88 = call i32 @memset(%struct.addrinfo* %87, i32 0, i32 32)
  %89 = load i8*, i8** @AF_UNSPEC, align 8
  %90 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %91 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  store i8* %89, i8** %92, align 8
  %93 = load i32, i32* %15, align 4
  %94 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %12, i32 0, i32 0
  store i32 %93, i32* %94, align 8
  %95 = load i8*, i8** %11, align 8
  %96 = call i32 @getaddrinfo(i8* %95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %struct.addrinfo* %12, %struct.addrinfo** %13)
  store i32 %96, i32* %16, align 4
  %97 = load i32, i32* %16, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %86
  %100 = load i32, i32* %16, align 4
  %101 = call i32 @gai_strerror(i32 %100)
  %102 = call i32 @warnx(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %101)
  store i64 0, i64* %14, align 8
  br label %122

103:                                              ; preds = %86
  %104 = load i32, i32* %15, align 4
  %105 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %106 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp ne i32 %104, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %103
  %110 = load i32, i32* @EINVAL, align 4
  store i32 %110, i32* @errno, align 4
  store i64 0, i64* %14, align 8
  br label %111

111:                                              ; preds = %109, %103
  %112 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %113 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %114 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %117 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @memcpy(%struct.addrinfo* %112, i32 %115, i32 %118)
  %120 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %121 = call i32 @freeaddrinfo(%struct.addrinfo* %120)
  br label %122

122:                                              ; preds = %111, %99
  br label %123

123:                                              ; preds = %122, %81, %78, %58
  %124 = load i64, i64* %14, align 8
  store i64 %124, i64* %6, align 8
  br label %125

125:                                              ; preds = %123, %54, %35
  %126 = load i64, i64* %6, align 8
  ret i64 %126
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @if_nametoindex(i8*) #1

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @warnx(i8*, i32) #1

declare dso_local i32 @gai_strerror(i32) #1

declare dso_local i32 @memcpy(%struct.addrinfo*, i32, i32) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
