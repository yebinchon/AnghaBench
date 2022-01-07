; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_os.c_qlnxr_register_inet.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_os.c_qlnxr_register_inet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlnxr_dev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@qlnxr_inetaddr_event = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to register inetaddr\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlnxr_dev*)* @qlnxr_register_inet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlnxr_register_inet(%struct.qlnxr_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlnxr_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.qlnxr_dev* %0, %struct.qlnxr_dev** %3, align 8
  %5 = load i32, i32* @qlnxr_inetaddr_event, align 4
  %6 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %3, align 8
  %7 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store i32 %5, i32* %8, align 4
  %9 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %3, align 8
  %10 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %9, i32 0, i32 1
  %11 = call i32 @register_inetaddr_notifier(%struct.TYPE_2__* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %3, align 8
  %16 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @QL_DPRINT12(i32 %17, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %21

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %20, %14
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @register_inetaddr_notifier(%struct.TYPE_2__*) #1

declare dso_local i32 @QL_DPRINT12(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
