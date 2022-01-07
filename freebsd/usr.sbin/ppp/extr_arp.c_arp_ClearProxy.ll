; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_arp.c_arp_ClearProxy.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_arp.c_arp_ClearProxy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bundle = type { i32 }
%struct.in_addr = type { i32 }
%struct.arpreq = type { i32 }
%struct.sockaddr_in = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@SIOCDARP = common dso_local global i32 0, align 4
@LogERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"arp_ClearProxy: ioctl(SIOCDARP): %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arp_ClearProxy(%struct.bundle* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.in_addr, align 4
  %6 = alloca %struct.bundle*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.arpreq, align 4
  %9 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %5, i32 0, i32 0
  store i32 %1, i32* %9, align 4
  store %struct.bundle* %0, %struct.bundle** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = call i32 @memset(%struct.arpreq* %8, i8 signext 0, i32 4)
  %11 = getelementptr inbounds %struct.arpreq, %struct.arpreq* %8, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @AF_INET, align 4
  %14 = call i32 @SET_SA_FAMILY(i32 %12, i32 %13)
  %15 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %5, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.arpreq, %struct.arpreq* %8, i32 0, i32 0
  %18 = bitcast i32* %17 to %struct.sockaddr_in*
  %19 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 %16, i32* %20, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @SIOCDARP, align 4
  %23 = ptrtoint %struct.arpreq* %8 to i32
  %24 = call i64 @ID0ioctl(i32 %21, i32 %22, i32 %23)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %3
  %27 = load i32, i32* @LogERROR, align 4
  %28 = load i32, i32* @errno, align 4
  %29 = call i32 @strerror(i32 %28)
  %30 = call i32 @log_Printf(i32 %27, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %29)
  store i32 0, i32* %4, align 4
  br label %32

31:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %32

32:                                               ; preds = %31, %26
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @memset(%struct.arpreq*, i8 signext, i32) #1

declare dso_local i32 @SET_SA_FAMILY(i32, i32) #1

declare dso_local i64 @ID0ioctl(i32, i32, i32) #1

declare dso_local i32 @log_Printf(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
