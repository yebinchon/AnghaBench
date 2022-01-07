; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ancontrol/extr_ancontrol.c_an_getval.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ancontrol/extr_ancontrol.c_an_getval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.an_req = type { i32 }
%struct.ifreq = type { i64, i32 }

@AF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@SIOCGAIRONET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"SIOCGAIRONET\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.an_req*)* @an_getval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @an_getval(i8* %0, %struct.an_req* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.an_req*, align 8
  %5 = alloca %struct.ifreq, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.an_req* %1, %struct.an_req** %4, align 8
  store i32 1, i32* %7, align 4
  %8 = call i32 @bzero(%struct.ifreq* %5, i32 16)
  %9 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %5, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 @strlcpy(i32 %10, i8* %11, i32 4)
  %13 = load %struct.an_req*, %struct.an_req** %4, align 8
  %14 = ptrtoint %struct.an_req* %13 to i64
  %15 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %5, i32 0, i32 0
  store i64 %14, i64* %15, align 8
  %16 = load i32, i32* @AF_INET, align 4
  %17 = load i32, i32* @SOCK_DGRAM, align 4
  %18 = call i32 @socket(i32 %16, i32 %17, i32 0)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %2
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @SIOCGAIRONET, align 4
  %26 = call i32 @ioctl(i32 %24, i32 %25, %struct.ifreq* %5)
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  store i32 0, i32* %7, align 4
  %29 = call i32 @err(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %23
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @close(i32 %31)
  %33 = load i32, i32* %7, align 4
  ret i32 %33
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
