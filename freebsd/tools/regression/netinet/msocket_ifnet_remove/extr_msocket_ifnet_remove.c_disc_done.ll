; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/netinet/msocket_ifnet_remove/extr_msocket_ifnet_remove.c_disc_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/netinet/msocket_ifnet_remove/extr_msocket_ifnet_remove.c_disc_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifreq = type { i32 }

@PF_INET = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"disc_done: socket(PF_INET, SOCK_RAW, 0)\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@DISC_IFNAME = common dso_local global i8* null, align 8
@DISC_IFUNIT = common dso_local global i32 0, align 4
@SIOCIFDESTROY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"disc_done: ioctl(%s, SIOCIFDESTROY)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @disc_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disc_done() #0 {
  %1 = alloca %struct.ifreq, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @PF_INET, align 4
  %4 = load i32, i32* @SOCK_RAW, align 4
  %5 = call i32 @socket(i32 %3, i32 %4, i32 0)
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %28

10:                                               ; preds = %0
  %11 = call i32 @bzero(%struct.ifreq* %1, i32 4)
  %12 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %1, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i8*, i8** @DISC_IFNAME, align 8
  %15 = load i32, i32* @DISC_IFUNIT, align 4
  %16 = call i32 @snprintf(i32 %13, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %14, i32 %15)
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @SIOCIFDESTROY, align 4
  %19 = call i64 @ioctl(i32 %17, i32 %18, %struct.ifreq* %1)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %10
  %22 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %1, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %21, %10
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @close(i32 %26)
  br label %28

28:                                               ; preds = %25, %8
  ret void
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @warn(i8*, ...) #1

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
