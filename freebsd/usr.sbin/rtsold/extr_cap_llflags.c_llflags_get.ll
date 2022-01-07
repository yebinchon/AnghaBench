; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rtsold/extr_cap_llflags.c_llflags_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rtsold/extr_cap_llflags.c_llflags_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_ifreq = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ifaddrs = type { %struct.TYPE_3__*, i32, %struct.ifaddrs* }
%struct.TYPE_3__ = type { i64 }
%struct.sockaddr_in6 = type { i32, i32 }

@PF_INET6 = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@SIOCGIFAFLAG_IN6 = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @llflags_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @llflags_get(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.in6_ifreq, align 4
  %7 = alloca %struct.ifaddrs*, align 8
  %8 = alloca %struct.ifaddrs*, align 8
  %9 = alloca %struct.sockaddr_in6*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load i32, i32* @PF_INET6, align 4
  %13 = load i32, i32* @SOCK_DGRAM, align 4
  %14 = call i32 @socket(i32 %12, i32 %13, i32 0)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %104

18:                                               ; preds = %2
  %19 = call i64 @getifaddrs(%struct.ifaddrs** %7)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 -1, i32* %3, align 4
  br label %104

22:                                               ; preds = %18
  store i32 -1, i32* %10, align 4
  %23 = load %struct.ifaddrs*, %struct.ifaddrs** %7, align 8
  store %struct.ifaddrs* %23, %struct.ifaddrs** %8, align 8
  br label %24

24:                                               ; preds = %89, %22
  %25 = load %struct.ifaddrs*, %struct.ifaddrs** %8, align 8
  %26 = icmp ne %struct.ifaddrs* %25, null
  br i1 %26, label %27, label %93

27:                                               ; preds = %24
  %28 = load %struct.ifaddrs*, %struct.ifaddrs** %8, align 8
  %29 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = call i64 @strcmp(i32 %30, i8* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %89

35:                                               ; preds = %27
  %36 = load %struct.ifaddrs*, %struct.ifaddrs** %8, align 8
  %37 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @AF_INET6, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %89

44:                                               ; preds = %35
  %45 = load %struct.ifaddrs*, %struct.ifaddrs** %8, align 8
  %46 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = bitcast %struct.TYPE_3__* %47 to i8*
  %49 = bitcast i8* %48 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %49, %struct.sockaddr_in6** %9, align 8
  %50 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %51 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %50, i32 0, i32 1
  %52 = call i32 @IN6_IS_ADDR_LINKLOCAL(i32* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %44
  br label %89

55:                                               ; preds = %44
  %56 = call i32 @memset(%struct.in6_ifreq* %6, i32 0, i32 12)
  %57 = getelementptr inbounds %struct.in6_ifreq, %struct.in6_ifreq* %6, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i8*, i8** %4, align 8
  %60 = call i32 @strlcpy(i32 %58, i8* %59, i32 4)
  %61 = sext i32 %60 to i64
  %62 = icmp uge i64 %61, 4
  br i1 %62, label %63, label %67

63:                                               ; preds = %55
  %64 = load %struct.ifaddrs*, %struct.ifaddrs** %7, align 8
  %65 = call i32 @freeifaddrs(%struct.ifaddrs* %64)
  %66 = load i32, i32* @EINVAL, align 4
  store i32 %66, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %104

67:                                               ; preds = %55
  %68 = getelementptr inbounds %struct.in6_ifreq, %struct.in6_ifreq* %6, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %71 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %72 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @memcpy(i32* %69, %struct.sockaddr_in6* %70, i32 %73)
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* @SIOCGIFAFLAG_IN6, align 4
  %77 = call i64 @ioctl(i32 %75, i32 %76, %struct.in6_ifreq* %6)
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %67
  %80 = load i32, i32* @errno, align 4
  store i32 %80, i32* %10, align 4
  %81 = load %struct.ifaddrs*, %struct.ifaddrs** %7, align 8
  %82 = call i32 @freeifaddrs(%struct.ifaddrs* %81)
  %83 = load i32, i32* %10, align 4
  store i32 %83, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %104

84:                                               ; preds = %67
  %85 = getelementptr inbounds %struct.in6_ifreq, %struct.in6_ifreq* %6, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** %5, align 8
  store i32 %87, i32* %88, align 4
  store i32 0, i32* %10, align 4
  br label %93

89:                                               ; preds = %54, %43, %34
  %90 = load %struct.ifaddrs*, %struct.ifaddrs** %8, align 8
  %91 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %90, i32 0, i32 2
  %92 = load %struct.ifaddrs*, %struct.ifaddrs** %91, align 8
  store %struct.ifaddrs* %92, %struct.ifaddrs** %8, align 8
  br label %24

93:                                               ; preds = %84, %24
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @close(i32 %94)
  %96 = load %struct.ifaddrs*, %struct.ifaddrs** %7, align 8
  %97 = call i32 @freeifaddrs(%struct.ifaddrs* %96)
  %98 = load i32, i32* %10, align 4
  %99 = icmp eq i32 %98, -1
  br i1 %99, label %100, label %102

100:                                              ; preds = %93
  %101 = load i32, i32* @ENOENT, align 4
  store i32 %101, i32* @errno, align 4
  br label %102

102:                                              ; preds = %100, %93
  %103 = load i32, i32* %10, align 4
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %102, %79, %63, %21, %17
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i64 @getifaddrs(%struct.ifaddrs**) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @IN6_IS_ADDR_LINKLOCAL(i32*) #1

declare dso_local i32 @memset(%struct.in6_ifreq*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @freeifaddrs(%struct.ifaddrs*) #1

declare dso_local i32 @memcpy(i32*, %struct.sockaddr_in6*, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.in6_ifreq*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
