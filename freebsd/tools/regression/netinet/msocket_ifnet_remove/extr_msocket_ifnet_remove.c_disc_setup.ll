; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/netinet/msocket_ifnet_remove/extr_msocket_ifnet_remove.c_disc_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/netinet/msocket_ifnet_remove/extr_msocket_ifnet_remove.c_disc_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifreq = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"if_disc\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"disc_setup: kldload(if_disc)\00", align 1
@PF_INET = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"disc_setup: socket(PF_INET, SOCK_RAW, 0)\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@DISC_IFNAME = common dso_local global i8* null, align 8
@DISC_IFUNIT = common dso_local global i32 0, align 4
@SIOCIFCREATE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"disc_setup: ioctl(%s, SIOCIFCREATE)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @disc_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @disc_setup() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.ifreq, align 4
  %3 = alloca i32, align 4
  %4 = call i64 @kldload(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %5 = icmp slt i64 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %0
  %7 = load i32, i32* @errno, align 4
  switch i32 %7, label %9 [
    i32 128, label %8
  ]

8:                                                ; preds = %6
  br label %11

9:                                                ; preds = %6
  %10 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %40

11:                                               ; preds = %8
  br label %12

12:                                               ; preds = %11, %0
  %13 = load i32, i32* @PF_INET, align 4
  %14 = load i32, i32* @SOCK_RAW, align 4
  %15 = call i32 @socket(i32 %13, i32 %14, i32 0)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %40

20:                                               ; preds = %12
  %21 = call i32 @bzero(%struct.ifreq* %2, i32 4)
  %22 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %2, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** @DISC_IFNAME, align 8
  %25 = load i32, i32* @DISC_IFUNIT, align 4
  %26 = call i32 @snprintf(i32 %23, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %24, i32 %25)
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @SIOCIFCREATE, align 4
  %29 = call i64 @ioctl(i32 %27, i32 %28, %struct.ifreq* %2)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %20
  %32 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %2, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @close(i32 %35)
  store i32 -1, i32* %1, align 4
  br label %40

37:                                               ; preds = %20
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @close(i32 %38)
  store i32 0, i32* %1, align 4
  br label %40

40:                                               ; preds = %37, %31, %18, %9
  %41 = load i32, i32* %1, align 4
  ret i32 %41
}

declare dso_local i64 @kldload(i8*) #1

declare dso_local i32 @warn(i8*, ...) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @bzero(%struct.ifreq*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.ifreq*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
