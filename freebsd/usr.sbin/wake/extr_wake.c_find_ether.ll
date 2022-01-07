; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/wake/extr_wake.c_find_ether.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/wake/extr_wake.c_find_ether.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifaddrs = type { i32, i32, %struct.TYPE_2__*, %struct.ifaddrs* }
%struct.TYPE_2__ = type { i64 }
%struct.sockaddr_dl = type { i64 }

@AF_LINK = common dso_local global i64 0, align 8
@IFF_UP = common dso_local global i32 0, align 4
@IFF_RUNNING = common dso_local global i32 0, align 4
@IFT_ETHER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @find_ether to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_ether(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ifaddrs*, align 8
  %7 = alloca %struct.ifaddrs*, align 8
  %8 = alloca %struct.sockaddr_dl*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.sockaddr_dl* null, %struct.sockaddr_dl** %8, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i64, i64* %5, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %2
  store i32 0, i32* %3, align 4
  br label %79

16:                                               ; preds = %12
  %17 = call i64 @getifaddrs(%struct.ifaddrs** %6)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 -1, i32* %3, align 4
  br label %79

20:                                               ; preds = %16
  store i32 0, i32* %9, align 4
  %21 = load %struct.ifaddrs*, %struct.ifaddrs** %6, align 8
  store %struct.ifaddrs* %21, %struct.ifaddrs** %7, align 8
  br label %22

22:                                               ; preds = %68, %20
  %23 = load %struct.ifaddrs*, %struct.ifaddrs** %7, align 8
  %24 = icmp ne %struct.ifaddrs* %23, null
  br i1 %24, label %25, label %72

25:                                               ; preds = %22
  %26 = load %struct.ifaddrs*, %struct.ifaddrs** %7, align 8
  %27 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @AF_LINK, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %67

33:                                               ; preds = %25
  %34 = load %struct.ifaddrs*, %struct.ifaddrs** %7, align 8
  %35 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @IFF_UP, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %67

40:                                               ; preds = %33
  %41 = load %struct.ifaddrs*, %struct.ifaddrs** %7, align 8
  %42 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @IFF_RUNNING, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %67

47:                                               ; preds = %40
  %48 = load %struct.ifaddrs*, %struct.ifaddrs** %7, align 8
  %49 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %48, i32 0, i32 2
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = bitcast %struct.TYPE_2__* %50 to %struct.sockaddr_dl*
  store %struct.sockaddr_dl* %51, %struct.sockaddr_dl** %8, align 8
  %52 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %8, align 8
  %53 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @IFT_ETHER, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %47
  %58 = load i8*, i8** %4, align 8
  %59 = load %struct.ifaddrs*, %struct.ifaddrs** %7, align 8
  %60 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i64, i64* %5, align 8
  %63 = call i32 @strlcpy(i8* %58, i32 %61, i64 %62)
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %57, %47
  br label %67

67:                                               ; preds = %66, %40, %33, %25
  br label %68

68:                                               ; preds = %67
  %69 = load %struct.ifaddrs*, %struct.ifaddrs** %7, align 8
  %70 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %69, i32 0, i32 3
  %71 = load %struct.ifaddrs*, %struct.ifaddrs** %70, align 8
  store %struct.ifaddrs* %71, %struct.ifaddrs** %7, align 8
  br label %22

72:                                               ; preds = %22
  %73 = load %struct.ifaddrs*, %struct.ifaddrs** %6, align 8
  %74 = call i32 @freeifaddrs(%struct.ifaddrs* %73)
  %75 = load i32, i32* %9, align 4
  %76 = icmp eq i32 %75, 1
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i32 0, i32 -1
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %72, %19, %15
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i64 @getifaddrs(%struct.ifaddrs**) #1

declare dso_local i32 @strlcpy(i8*, i32, i64) #1

declare dso_local i32 @freeifaddrs(%struct.ifaddrs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
