; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/uhsoctl/extr_uhsoctl.c_ifaddr_ad.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/uhsoctl/extr_uhsoctl.c_ifaddr_ad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.ifaliasreq = type { i32, i32, i32 }

@AF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8*, %struct.sockaddr*, %struct.sockaddr*)* @ifaddr_ad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ifaddr_ad(i64 %0, i8* %1, %struct.sockaddr* %2, %struct.sockaddr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca %struct.ifaliasreq, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %8, align 8
  store %struct.sockaddr* %3, %struct.sockaddr** %9, align 8
  %13 = load i32, i32* @AF_INET, align 4
  %14 = load i32, i32* @SOCK_DGRAM, align 4
  %15 = call i32 @socket(i32 %13, i32 %14, i32 0)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %44

19:                                               ; preds = %4
  %20 = call i32 @memset(%struct.ifaliasreq* %10, i32 0, i32 12)
  %21 = getelementptr inbounds %struct.ifaliasreq, %struct.ifaliasreq* %10, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @strlcpy(i32 %22, i8* %23, i32 4)
  %25 = getelementptr inbounds %struct.ifaliasreq, %struct.ifaliasreq* %10, i32 0, i32 1
  %26 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %27 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %28 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @memcpy(i32* %25, %struct.sockaddr* %26, i32 %29)
  %31 = getelementptr inbounds %struct.ifaliasreq, %struct.ifaliasreq* %10, i32 0, i32 0
  %32 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %33 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %34 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @memcpy(i32* %31, %struct.sockaddr* %32, i32 %35)
  %37 = load i32, i32* %11, align 4
  %38 = load i64, i64* %6, align 8
  %39 = bitcast %struct.ifaliasreq* %10 to i8*
  %40 = call i32 @ioctl(i32 %37, i64 %38, i8* %39)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @close(i32 %41)
  %43 = load i32, i32* %12, align 4
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %19, %18
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @memset(%struct.ifaliasreq*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.sockaddr*, i32) #1

declare dso_local i32 @ioctl(i32, i64, i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
