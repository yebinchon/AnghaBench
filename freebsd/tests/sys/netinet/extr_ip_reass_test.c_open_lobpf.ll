; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/netinet/extr_ip_reass_test.c_open_lobpf.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/netinet/extr_ip_reass_test.c_open_lobpf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifreq = type { i32 }
%struct.ifaddrs = type { i32, %struct.TYPE_4__*, i32, %struct.ifaddrs* }
%struct.TYPE_4__ = type { i64 }
%struct.sockaddr_in = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"/dev/bpf0\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"no BPF device available\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"open(/dev/bpf0): %s\00", align 1
@IFF_LOOPBACK = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"no loopback address found\00", align 1
@IFNAMSIZ = common dso_local global i32 0, align 4
@BIOCSETIF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"ioctl(BIOCSETIF): %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @open_lobpf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_lobpf(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.ifreq, align 4
  %4 = alloca %struct.ifaddrs*, align 8
  %5 = alloca %struct.ifaddrs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %8 = load i32, i32* @O_RDWR, align 4
  %9 = call i32 @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load i64, i64* @errno, align 8
  %14 = load i64, i64* @ENOENT, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = call i32 @atf_tc_skip(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %12, %1
  %19 = load i32, i32* %7, align 4
  %20 = icmp sge i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = load i64, i64* @errno, align 8
  %23 = call i32 @strerror(i64 %22)
  %24 = call i32 @ATF_REQUIRE_MSG(i32 %21, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %23)
  %25 = call i32 @getifaddrs(%struct.ifaddrs** %5)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @ATF_REQUIRE(i32 %28)
  %30 = load %struct.ifaddrs*, %struct.ifaddrs** %5, align 8
  store %struct.ifaddrs* %30, %struct.ifaddrs** %4, align 8
  br label %31

31:                                               ; preds = %51, %18
  %32 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %33 = icmp ne %struct.ifaddrs* %32, null
  br i1 %33, label %34, label %55

34:                                               ; preds = %31
  %35 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %36 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @IFF_LOOPBACK, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %34
  %42 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %43 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @AF_INET, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  br label %55

50:                                               ; preds = %41, %34
  br label %51

51:                                               ; preds = %50
  %52 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %53 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %52, i32 0, i32 3
  %54 = load %struct.ifaddrs*, %struct.ifaddrs** %53, align 8
  store %struct.ifaddrs* %54, %struct.ifaddrs** %4, align 8
  br label %31

55:                                               ; preds = %49, %31
  %56 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %57 = icmp eq %struct.ifaddrs* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = call i32 @atf_tc_skip(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %55
  %61 = call i32 @memset(%struct.ifreq* %3, i32 0, i32 4)
  %62 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %3, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %65 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @IFNAMSIZ, align 4
  %68 = call i32 @strlcpy(i32 %63, i32 %66, i32 %67)
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @BIOCSETIF, align 4
  %71 = call i32 @ioctl(i32 %69, i32 %70, %struct.ifreq* %3)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp eq i32 %72, 0
  %74 = zext i1 %73 to i32
  %75 = load i64, i64* @errno, align 8
  %76 = call i32 @strerror(i64 %75)
  %77 = call i32 @ATF_REQUIRE_MSG(i32 %74, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %76)
  %78 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %79 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %78, i32 0, i32 1
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = bitcast %struct.TYPE_4__* %80 to i8*
  %82 = bitcast i8* %81 to %struct.sockaddr_in*
  %83 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %2, align 8
  store i32 %85, i32* %86, align 4
  %87 = load %struct.ifaddrs*, %struct.ifaddrs** %5, align 8
  %88 = call i32 @freeifaddrs(%struct.ifaddrs* %87)
  %89 = load i32, i32* %7, align 4
  ret i32 %89
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @atf_tc_skip(i8*) #1

declare dso_local i32 @ATF_REQUIRE_MSG(i32, i8*, i32) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i32 @getifaddrs(%struct.ifaddrs**) #1

declare dso_local i32 @ATF_REQUIRE(i32) #1

declare dso_local i32 @memset(%struct.ifreq*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.ifreq*) #1

declare dso_local i32 @freeifaddrs(%struct.ifaddrs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
