; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_firewire.c_fw_bus_probe_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_firewire.c_fw_bus_probe_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firewire_comm = type { i64, i32 }

@FWBUSDETACH = common dso_local global i64 0, align 8
@FWBUSEXPLORE = common dso_local global i64 0, align 8
@FWBUSEXPDONE = common dso_local global i64 0, align 8
@firewire_debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"bus_explore done\0A\00", align 1
@PWAIT = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @fw_bus_probe_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fw_bus_probe_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.firewire_comm*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.firewire_comm*
  store %struct.firewire_comm* %5, %struct.firewire_comm** %3, align 8
  %6 = load %struct.firewire_comm*, %struct.firewire_comm** %3, align 8
  %7 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %6, i32 0, i32 1
  %8 = call i32 @mtx_lock(i32* %7)
  br label %9

9:                                                ; preds = %40, %1
  %10 = load %struct.firewire_comm*, %struct.firewire_comm** %3, align 8
  %11 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @FWBUSDETACH, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %49

15:                                               ; preds = %9
  %16 = load %struct.firewire_comm*, %struct.firewire_comm** %3, align 8
  %17 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @FWBUSEXPLORE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %40

21:                                               ; preds = %15
  %22 = load %struct.firewire_comm*, %struct.firewire_comm** %3, align 8
  %23 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %22, i32 0, i32 1
  %24 = call i32 @mtx_unlock(i32* %23)
  %25 = load %struct.firewire_comm*, %struct.firewire_comm** %3, align 8
  %26 = call i32 @fw_explore(%struct.firewire_comm* %25)
  %27 = load i64, i64* @FWBUSEXPDONE, align 8
  %28 = load %struct.firewire_comm*, %struct.firewire_comm** %3, align 8
  %29 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load i64, i64* @firewire_debug, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %21
  %35 = load %struct.firewire_comm*, %struct.firewire_comm** %3, align 8
  %36 = call i32 @fw_attach_dev(%struct.firewire_comm* %35)
  %37 = load %struct.firewire_comm*, %struct.firewire_comm** %3, align 8
  %38 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %37, i32 0, i32 1
  %39 = call i32 @mtx_lock(i32* %38)
  br label %40

40:                                               ; preds = %34, %15
  %41 = load %struct.firewire_comm*, %struct.firewire_comm** %3, align 8
  %42 = bitcast %struct.firewire_comm* %41 to i8*
  %43 = load %struct.firewire_comm*, %struct.firewire_comm** %3, align 8
  %44 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %43, i32 0, i32 1
  %45 = load i32, i32* @PWAIT, align 4
  %46 = load i32, i32* @PCATCH, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @msleep(i8* %42, i32* %44, i32 %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 0)
  br label %9

49:                                               ; preds = %9
  %50 = load %struct.firewire_comm*, %struct.firewire_comm** %3, align 8
  %51 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %50, i32 0, i32 1
  %52 = call i32 @mtx_unlock(i32* %51)
  %53 = call i32 @kproc_exit(i32 0)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @fw_explore(%struct.firewire_comm*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @fw_attach_dev(%struct.firewire_comm*) #1

declare dso_local i32 @msleep(i8*, i32*, i32, i8*, i32) #1

declare dso_local i32 @kproc_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
