; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_arp.c_arp_SetProxy.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_arp.c_arp_SetProxy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bundle = type { i32 }
%struct.in_addr = type { i32 }
%struct.arpreq = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.anon = type { %struct.sockaddr_dl, [128 x i8] }
%struct.sockaddr_dl = type { i32 }
%struct.sockaddr_in = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@LOG_PHASE_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Cannot determine ethernet address for proxy ARP\0A\00", align 1
@AF_UNSPEC = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@ATF_PERM = common dso_local global i32 0, align 4
@ATF_PUBL = common dso_local global i32 0, align 4
@SIOCSARP = common dso_local global i32 0, align 4
@LogERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"arp_SetProxy: ioctl(SIOCSARP): %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arp_SetProxy(%struct.bundle* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.in_addr, align 4
  %6 = alloca %struct.bundle*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.arpreq, align 4
  %9 = alloca %struct.anon, align 4
  %10 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %5, i32 0, i32 0
  store i32 %1, i32* %10, align 4
  store %struct.bundle* %0, %struct.bundle** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = call i32 @memset(%struct.arpreq* %8, i8 signext 0, i32 20)
  %12 = getelementptr inbounds %struct.anon, %struct.anon* %9, i32 0, i32 0
  %13 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %5, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @arp_EtherAddr(i32 %14, %struct.sockaddr_dl* %12, i32 1)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @LOG_PHASE_BIT, align 4
  %19 = call i32 (i32, i8*, ...) @log_Printf(i32 %18, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %60

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.arpreq, %struct.arpreq* %8, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i32 4, i32* %22, align 4
  %23 = load i32, i32* @AF_UNSPEC, align 4
  %24 = getelementptr inbounds %struct.arpreq, %struct.arpreq* %8, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = getelementptr inbounds %struct.arpreq, %struct.arpreq* %8, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.anon, %struct.anon* %9, i32 0, i32 0
  %30 = call i32 @LLADDR(%struct.sockaddr_dl* %29)
  %31 = getelementptr inbounds %struct.anon, %struct.anon* %9, i32 0, i32 0
  %32 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @memcpy(i32 %28, i32 %30, i32 %33)
  %35 = getelementptr inbounds %struct.arpreq, %struct.arpreq* %8, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @AF_INET, align 4
  %38 = call i32 @SET_SA_FAMILY(i32 %36, i32 %37)
  %39 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %5, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.arpreq, %struct.arpreq* %8, i32 0, i32 1
  %42 = bitcast i32* %41 to %struct.sockaddr_in*
  %43 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 %40, i32* %44, align 4
  %45 = load i32, i32* @ATF_PERM, align 4
  %46 = load i32, i32* @ATF_PUBL, align 4
  %47 = or i32 %45, %46
  %48 = getelementptr inbounds %struct.arpreq, %struct.arpreq* %8, i32 0, i32 0
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @SIOCSARP, align 4
  %51 = ptrtoint %struct.arpreq* %8 to i32
  %52 = call i64 @ID0ioctl(i32 %49, i32 %50, i32 %51)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %20
  %55 = load i32, i32* @LogERROR, align 4
  %56 = load i32, i32* @errno, align 4
  %57 = call i32 @strerror(i32 %56)
  %58 = call i32 (i32, i8*, ...) @log_Printf(i32 %55, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  store i32 0, i32* %4, align 4
  br label %60

59:                                               ; preds = %20
  store i32 1, i32* %4, align 4
  br label %60

60:                                               ; preds = %59, %54, %17
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @memset(%struct.arpreq*, i8 signext, i32) #1

declare dso_local i32 @arp_EtherAddr(i32, %struct.sockaddr_dl*, i32) #1

declare dso_local i32 @log_Printf(i32, i8*, ...) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @LLADDR(%struct.sockaddr_dl*) #1

declare dso_local i32 @SET_SA_FAMILY(i32, i32) #1

declare dso_local i64 @ID0ioctl(i32, i32, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
