; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/netinet/msocket_ifnet_remove/extr_msocket_ifnet_remove.c_ifconfig_inet.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/netinet/msocket_ifnet_remove/extr_msocket_ifnet_remove.c_ifconfig_inet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, %struct.TYPE_2__, i8* }
%struct.TYPE_2__ = type { i8* }
%struct.ifaliasreq = type { i32, i32, i32 }

@PF_INET = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"ifconfig_inet: socket(PF_INET, SOCK_RAW, 0)\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@AF_INET = common dso_local global i8* null, align 8
@SIOCAIFADDR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"ifconfig_inet: ioctl(%s%d, SIOCAIFADDR, %s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i8*)* @ifconfig_inet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ifconfig_inet(i8* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.sockaddr_in*, align 8
  %11 = alloca %struct.ifaliasreq, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i32, i32* @PF_INET, align 4
  %14 = load i32, i32* @SOCK_RAW, align 4
  %15 = call i32 @socket(i32 %13, i32 %14, i32 0)
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %12, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %65

20:                                               ; preds = %4
  %21 = call i32 @bzero(%struct.ifaliasreq* %11, i32 12)
  %22 = getelementptr inbounds %struct.ifaliasreq, %struct.ifaliasreq* %11, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @snprintf(i32 %23, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %24, i32 %25)
  %27 = getelementptr inbounds %struct.ifaliasreq, %struct.ifaliasreq* %11, i32 0, i32 1
  %28 = bitcast i32* %27 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %28, %struct.sockaddr_in** %10, align 8
  %29 = load i8*, i8** @AF_INET, align 8
  %30 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %31 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %30, i32 0, i32 2
  store i8* %29, i8** %31, align 8
  %32 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %33 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %32, i32 0, i32 0
  store i32 4, i32* %33, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = call i8* @inet_addr(i8* %34)
  %36 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %37 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i8* %35, i8** %38, align 8
  %39 = getelementptr inbounds %struct.ifaliasreq, %struct.ifaliasreq* %11, i32 0, i32 0
  %40 = bitcast i32* %39 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %40, %struct.sockaddr_in** %10, align 8
  %41 = load i8*, i8** @AF_INET, align 8
  %42 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %43 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %42, i32 0, i32 2
  store i8* %41, i8** %43, align 8
  %44 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %45 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %44, i32 0, i32 0
  store i32 4, i32* %45, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = call i8* @inet_addr(i8* %46)
  %48 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %49 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i8* %47, i8** %50, align 8
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* @SIOCAIFADDR, align 4
  %53 = call i64 @ioctl(i32 %51, i32 %52, %struct.ifaliasreq* %11)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %20
  %56 = load i8*, i8** %6, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load i8*, i8** %8, align 8
  %59 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8* %56, i32 %57, i8* %58)
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @close(i32 %60)
  store i32 -1, i32* %5, align 4
  br label %65

62:                                               ; preds = %20
  %63 = load i32, i32* %12, align 4
  %64 = call i32 @close(i32 %63)
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %62, %55, %18
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @warn(i8*, ...) #1

declare dso_local i32 @bzero(%struct.ifaliasreq*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i8* @inet_addr(i8*) #1

declare dso_local i64 @ioctl(i32, i32, %struct.ifaliasreq*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
