; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_main.c_print_link_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_main.c_print_link_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.lio = type { i32, %struct.octeon_link_info }
%struct.octeon_link_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i64 }

@LIO_IFSTATE_RESETTING = common dso_local global i32 0, align 4
@LIO_IFSTATE_REGISTERED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"%d Mbps %s Duplex UP\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Full\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Half\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Link Down\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*)* @print_link_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_link_info(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.lio*, align 8
  %4 = alloca %struct.octeon_link_info*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %5 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %6 = call %struct.lio* @if_getsoftc(%struct.ifnet* %5)
  store %struct.lio* %6, %struct.lio** %3, align 8
  %7 = load %struct.lio*, %struct.lio** %3, align 8
  %8 = load i32, i32* @LIO_IFSTATE_RESETTING, align 4
  %9 = call i64 @lio_ifstate_check(%struct.lio* %7, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %49, label %11

11:                                               ; preds = %1
  %12 = load %struct.lio*, %struct.lio** %3, align 8
  %13 = load i32, i32* @LIO_IFSTATE_REGISTERED, align 4
  %14 = call i64 @lio_ifstate_check(%struct.lio* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %49

16:                                               ; preds = %11
  %17 = load %struct.lio*, %struct.lio** %3, align 8
  %18 = getelementptr inbounds %struct.lio, %struct.lio* %17, i32 0, i32 1
  store %struct.octeon_link_info* %18, %struct.octeon_link_info** %4, align 8
  %19 = load %struct.octeon_link_info*, %struct.octeon_link_info** %4, align 8
  %20 = getelementptr inbounds %struct.octeon_link_info, %struct.octeon_link_info* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %16
  %26 = load %struct.lio*, %struct.lio** %3, align 8
  %27 = getelementptr inbounds %struct.lio, %struct.lio* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.octeon_link_info*, %struct.octeon_link_info** %4, align 8
  %30 = getelementptr inbounds %struct.octeon_link_info, %struct.octeon_link_info* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.octeon_link_info*, %struct.octeon_link_info** %4, align 8
  %35 = getelementptr inbounds %struct.octeon_link_info, %struct.octeon_link_info* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %42 = call i32 (i32, i8*, ...) @lio_dev_info(i32 %28, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %33, i8* %41)
  br label %48

43:                                               ; preds = %16
  %44 = load %struct.lio*, %struct.lio** %3, align 8
  %45 = getelementptr inbounds %struct.lio, %struct.lio* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 (i32, i8*, ...) @lio_dev_info(i32 %46, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %48

48:                                               ; preds = %43, %25
  br label %49

49:                                               ; preds = %48, %11, %1
  ret void
}

declare dso_local %struct.lio* @if_getsoftc(%struct.ifnet*) #1

declare dso_local i64 @lio_ifstate_check(%struct.lio*, i32) #1

declare dso_local i32 @lio_dev_info(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
