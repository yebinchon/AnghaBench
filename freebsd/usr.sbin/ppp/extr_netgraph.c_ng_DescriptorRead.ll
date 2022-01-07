; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_netgraph.c_ng_DescriptorRead.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_netgraph.c_ng_DescriptorRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdescriptor = type { i32 }
%struct.bundle = type { i32 }
%struct.physical = type { i32 }
%struct.ngdevice = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fdescriptor*, %struct.bundle*, i32*)* @ng_DescriptorRead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ng_DescriptorRead(%struct.fdescriptor* %0, %struct.bundle* %1, i32* %2) #0 {
  %4 = alloca %struct.fdescriptor*, align 8
  %5 = alloca %struct.bundle*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.physical*, align 8
  %8 = alloca %struct.ngdevice*, align 8
  store %struct.fdescriptor* %0, %struct.fdescriptor** %4, align 8
  store %struct.bundle* %1, %struct.bundle** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.fdescriptor*, %struct.fdescriptor** %4, align 8
  %10 = call %struct.physical* @descriptor2physical(%struct.fdescriptor* %9)
  store %struct.physical* %10, %struct.physical** %7, align 8
  %11 = load %struct.physical*, %struct.physical** %7, align 8
  %12 = getelementptr inbounds %struct.physical, %struct.physical* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.ngdevice* @device2ng(i32 %13)
  store %struct.ngdevice* %14, %struct.ngdevice** %8, align 8
  %15 = load %struct.ngdevice*, %struct.ngdevice** %8, align 8
  %16 = getelementptr inbounds %struct.ngdevice, %struct.ngdevice* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sge i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %3
  %20 = load %struct.ngdevice*, %struct.ngdevice** %8, align 8
  %21 = getelementptr inbounds %struct.ngdevice, %struct.ngdevice* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = call i64 @FD_ISSET(i64 %22, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load %struct.physical*, %struct.physical** %7, align 8
  %28 = call i32 @ng_MessageIn(%struct.physical* %27, i32* null, i32 0)
  br label %29

29:                                               ; preds = %26, %19, %3
  %30 = load %struct.fdescriptor*, %struct.fdescriptor** %4, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = call i64 @physical_IsSet(%struct.fdescriptor* %30, i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.fdescriptor*, %struct.fdescriptor** %4, align 8
  %36 = load %struct.bundle*, %struct.bundle** %5, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @physical_DescriptorRead(%struct.fdescriptor* %35, %struct.bundle* %36, i32* %37)
  br label %39

39:                                               ; preds = %34, %29
  ret void
}

declare dso_local %struct.physical* @descriptor2physical(%struct.fdescriptor*) #1

declare dso_local %struct.ngdevice* @device2ng(i32) #1

declare dso_local i64 @FD_ISSET(i64, i32*) #1

declare dso_local i32 @ng_MessageIn(%struct.physical*, i32*, i32) #1

declare dso_local i64 @physical_IsSet(%struct.fdescriptor*, i32*) #1

declare dso_local i32 @physical_DescriptorRead(%struct.fdescriptor*, %struct.bundle*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
