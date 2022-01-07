; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ancontrol/extr_ancontrol.c_an_setval.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ancontrol/extr_ancontrol.c_an_setval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.an_req = type { i32 }
%struct.ifreq = type { i64, i32 }

@AF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@SIOCSAIRONET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"SIOCSAIRONET\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.an_req*)* @an_setval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @an_setval(i8* %0, %struct.an_req* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.an_req*, align 8
  %5 = alloca %struct.ifreq, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.an_req* %1, %struct.an_req** %4, align 8
  %7 = call i32 @bzero(%struct.ifreq* %5, i32 16)
  %8 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %5, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @strlcpy(i32 %9, i8* %10, i32 4)
  %12 = load %struct.an_req*, %struct.an_req** %4, align 8
  %13 = ptrtoint %struct.an_req* %12 to i64
  %14 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %5, i32 0, i32 0
  store i64 %13, i64* %14, align 8
  %15 = load i32, i32* @AF_INET, align 4
  %16 = load i32, i32* @SOCK_DGRAM, align 4
  %17 = call i32 @socket(i32 %15, i32 %16, i32 0)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %2
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @SIOCSAIRONET, align 4
  %25 = call i32 @ioctl(i32 %23, i32 %24, %struct.ifreq* %5)
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = call i32 @err(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %22
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @close(i32 %30)
  ret void
}

declare dso_local i32 @bzero(%struct.ifreq*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @ioctl(i32, i32, %struct.ifreq*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
