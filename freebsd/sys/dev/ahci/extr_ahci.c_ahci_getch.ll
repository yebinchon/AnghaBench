; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahci_getch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahci_getch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_channel = type { i32 }
%struct.ahci_controller = type { i32, %struct.ahci_channel** }

@AHCI_MAX_PORTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Bad channel number %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ahci_channel* @ahci_getch(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ahci_controller*, align 8
  %6 = alloca %struct.ahci_channel*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.ahci_controller* @device_get_softc(i32 %7)
  store %struct.ahci_controller* %8, %struct.ahci_controller** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp sge i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @AHCI_MAX_PORTS, align 4
  %14 = icmp slt i32 %12, %13
  br label %15

15:                                               ; preds = %11, %2
  %16 = phi i1 [ false, %2 ], [ %14, %11 ]
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to i8*
  %21 = call i32 @KASSERT(i32 %17, i8* %20)
  %22 = load %struct.ahci_controller*, %struct.ahci_controller** %5, align 8
  %23 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %22, i32 0, i32 0
  %24 = call i32 @mtx_lock(i32* %23)
  %25 = load %struct.ahci_controller*, %struct.ahci_controller** %5, align 8
  %26 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %25, i32 0, i32 1
  %27 = load %struct.ahci_channel**, %struct.ahci_channel*** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.ahci_channel*, %struct.ahci_channel** %27, i64 %29
  %31 = load %struct.ahci_channel*, %struct.ahci_channel** %30, align 8
  store %struct.ahci_channel* %31, %struct.ahci_channel** %6, align 8
  %32 = load %struct.ahci_channel*, %struct.ahci_channel** %6, align 8
  %33 = icmp ne %struct.ahci_channel* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %15
  %35 = load %struct.ahci_channel*, %struct.ahci_channel** %6, align 8
  %36 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %35, i32 0, i32 0
  %37 = call i32 @mtx_lock(i32* %36)
  br label %38

38:                                               ; preds = %34, %15
  %39 = load %struct.ahci_controller*, %struct.ahci_controller** %5, align 8
  %40 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %39, i32 0, i32 0
  %41 = call i32 @mtx_unlock(i32* %40)
  %42 = load %struct.ahci_channel*, %struct.ahci_channel** %6, align 8
  ret %struct.ahci_channel* %42
}

declare dso_local %struct.ahci_controller* @device_get_softc(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
