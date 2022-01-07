; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_pkt-gen.c_source_hwaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_pkt-gen.c_source_hwaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifaddrs = type { i32, i64, %struct.ifaddrs* }
%struct.sockaddr_dl = type { i64 }

@.str = private unnamed_addr constant [21 x i8] c"getifaddrs %s failed\00", align 1
@AF_LINK = common dso_local global i64 0, align 8
@IFNAMSIZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"%02x:%02x:%02x:%02x:%02x:%02x\00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"source hwaddr %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @source_hwaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @source_hwaddr(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ifaddrs*, align 8
  %7 = alloca %struct.ifaddrs*, align 8
  %8 = alloca %struct.sockaddr_dl*, align 8
  %9 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = call i64 @getifaddrs(%struct.ifaddrs** %6)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @D(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %13)
  store i32 -1, i32* %3, align 4
  br label %84

15:                                               ; preds = %2
  %16 = load %struct.ifaddrs*, %struct.ifaddrs** %6, align 8
  store %struct.ifaddrs* %16, %struct.ifaddrs** %7, align 8
  br label %17

17:                                               ; preds = %73, %15
  %18 = load %struct.ifaddrs*, %struct.ifaddrs** %7, align 8
  %19 = icmp ne %struct.ifaddrs* %18, null
  br i1 %19, label %20, label %77

20:                                               ; preds = %17
  %21 = load %struct.ifaddrs*, %struct.ifaddrs** %7, align 8
  %22 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.sockaddr_dl*
  store %struct.sockaddr_dl* %24, %struct.sockaddr_dl** %8, align 8
  %25 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %8, align 8
  %26 = icmp ne %struct.sockaddr_dl* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %20
  %28 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %8, align 8
  %29 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @AF_LINK, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27, %20
  br label %73

34:                                               ; preds = %27
  %35 = load %struct.ifaddrs*, %struct.ifaddrs** %7, align 8
  %36 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i8*, i8** %4, align 8
  %39 = load i32, i32* @IFNAMSIZ, align 4
  %40 = call i64 @strncmp(i32 %37, i8* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %73

43:                                               ; preds = %34
  %44 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %8, align 8
  %45 = call i64 @LLADDR(%struct.sockaddr_dl* %44)
  %46 = inttoptr i64 %45 to i32*
  store i32* %46, i32** %9, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %9, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %9, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %9, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 3
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %9, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 4
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %9, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 5
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @sprintf(i8* %47, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %53, i32 %56, i32 %59, i32 %62, i32 %65)
  %67 = load i64, i64* @verbose, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %43
  %70 = load i8*, i8** %5, align 8
  %71 = call i32 @D(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %70)
  br label %72

72:                                               ; preds = %69, %43
  br label %77

73:                                               ; preds = %42, %33
  %74 = load %struct.ifaddrs*, %struct.ifaddrs** %7, align 8
  %75 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %74, i32 0, i32 2
  %76 = load %struct.ifaddrs*, %struct.ifaddrs** %75, align 8
  store %struct.ifaddrs* %76, %struct.ifaddrs** %7, align 8
  br label %17

77:                                               ; preds = %72, %17
  %78 = load %struct.ifaddrs*, %struct.ifaddrs** %6, align 8
  %79 = call i32 @freeifaddrs(%struct.ifaddrs* %78)
  %80 = load %struct.ifaddrs*, %struct.ifaddrs** %7, align 8
  %81 = icmp ne %struct.ifaddrs* %80, null
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i32 0, i32 1
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %77, %12
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i64 @getifaddrs(%struct.ifaddrs**) #1

declare dso_local i32 @D(i8*, i8*) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i64 @LLADDR(%struct.sockaddr_dl*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @freeifaddrs(%struct.ifaddrs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
