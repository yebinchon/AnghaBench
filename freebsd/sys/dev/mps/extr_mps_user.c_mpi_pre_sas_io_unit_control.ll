; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps_user.c_mpi_pre_sas_io_unit_control.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps_user.c_mpi_pre_sas_io_unit_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mps_command = type { i64, i32* }
%struct.mps_usr_command = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mps_command*, %struct.mps_usr_command*)* @mpi_pre_sas_io_unit_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpi_pre_sas_io_unit_control(%struct.mps_command* %0, %struct.mps_usr_command* %1) #0 {
  %3 = alloca %struct.mps_command*, align 8
  %4 = alloca %struct.mps_usr_command*, align 8
  store %struct.mps_command* %0, %struct.mps_command** %3, align 8
  store %struct.mps_usr_command* %1, %struct.mps_usr_command** %4, align 8
  %5 = load %struct.mps_command*, %struct.mps_command** %3, align 8
  %6 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %5, i32 0, i32 1
  store i32* null, i32** %6, align 8
  %7 = load %struct.mps_command*, %struct.mps_command** %3, align 8
  %8 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %7, i32 0, i32 0
  store i64 0, i64* %8, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
