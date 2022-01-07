; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ether.c_ether_DescriptorRead.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ether.c_ether_DescriptorRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdescriptor = type { i32 }
%struct.bundle = type { i32 }
%struct.physical = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.etherdevice = type { i64, i64 }

@CARRIER_LOST = common dso_local global i64 0, align 8
@LogPHASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%s: Device disconnected\0A\00", align 1
@CLOSE_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fdescriptor*, %struct.bundle*, i32*)* @ether_DescriptorRead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ether_DescriptorRead(%struct.fdescriptor* %0, %struct.bundle* %1, i32* %2) #0 {
  %4 = alloca %struct.fdescriptor*, align 8
  %5 = alloca %struct.bundle*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.physical*, align 8
  %8 = alloca %struct.etherdevice*, align 8
  store %struct.fdescriptor* %0, %struct.fdescriptor** %4, align 8
  store %struct.bundle* %1, %struct.bundle** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.fdescriptor*, %struct.fdescriptor** %4, align 8
  %10 = call %struct.physical* @descriptor2physical(%struct.fdescriptor* %9)
  store %struct.physical* %10, %struct.physical** %7, align 8
  %11 = load %struct.physical*, %struct.physical** %7, align 8
  %12 = getelementptr inbounds %struct.physical, %struct.physical* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.etherdevice* @device2ether(i32 %13)
  store %struct.etherdevice* %14, %struct.etherdevice** %8, align 8
  %15 = load %struct.etherdevice*, %struct.etherdevice** %8, align 8
  %16 = getelementptr inbounds %struct.etherdevice, %struct.etherdevice* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sge i64 %17, 0
  br i1 %18, label %19, label %47

19:                                               ; preds = %3
  %20 = load %struct.etherdevice*, %struct.etherdevice** %8, align 8
  %21 = getelementptr inbounds %struct.etherdevice, %struct.etherdevice* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = call i64 @FD_ISSET(i64 %22, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %47

26:                                               ; preds = %19
  %27 = load %struct.etherdevice*, %struct.etherdevice** %8, align 8
  %28 = call i32 @ether_MessageIn(%struct.etherdevice* %27)
  %29 = load %struct.etherdevice*, %struct.etherdevice** %8, align 8
  %30 = getelementptr inbounds %struct.etherdevice, %struct.etherdevice* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @CARRIER_LOST, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %26
  %35 = load i32, i32* @LogPHASE, align 4
  %36 = load %struct.physical*, %struct.physical** %7, align 8
  %37 = getelementptr inbounds %struct.physical, %struct.physical* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @log_Printf(i32 %35, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load %struct.physical*, %struct.physical** %7, align 8
  %42 = getelementptr inbounds %struct.physical, %struct.physical* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @CLOSE_NORMAL, align 4
  %45 = call i32 @datalink_Down(i32 %43, i32 %44)
  br label %57

46:                                               ; preds = %26
  br label %47

47:                                               ; preds = %46, %19, %3
  %48 = load %struct.fdescriptor*, %struct.fdescriptor** %4, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = call i64 @physical_IsSet(%struct.fdescriptor* %48, i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load %struct.fdescriptor*, %struct.fdescriptor** %4, align 8
  %54 = load %struct.bundle*, %struct.bundle** %5, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = call i32 @physical_DescriptorRead(%struct.fdescriptor* %53, %struct.bundle* %54, i32* %55)
  br label %57

57:                                               ; preds = %34, %52, %47
  ret void
}

declare dso_local %struct.physical* @descriptor2physical(%struct.fdescriptor*) #1

declare dso_local %struct.etherdevice* @device2ether(i32) #1

declare dso_local i64 @FD_ISSET(i64, i32*) #1

declare dso_local i32 @ether_MessageIn(%struct.etherdevice*) #1

declare dso_local i32 @log_Printf(i32, i8*, i32) #1

declare dso_local i32 @datalink_Down(i32, i32) #1

declare dso_local i64 @physical_IsSet(%struct.fdescriptor*, i32*) #1

declare dso_local i32 @physical_DescriptorRead(%struct.fdescriptor*, %struct.bundle*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
