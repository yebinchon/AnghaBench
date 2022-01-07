; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_restart_flush.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_restart_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.op_state = type { i32 }
%struct.tableop_state = type { i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.op_state*)* @restart_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @restart_flush(i8* %0, %struct.op_state* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.op_state*, align 8
  %5 = alloca %struct.tableop_state*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.op_state* %1, %struct.op_state** %4, align 8
  %6 = load %struct.op_state*, %struct.op_state** %4, align 8
  %7 = bitcast %struct.op_state* %6 to %struct.tableop_state*
  store %struct.tableop_state* %7, %struct.tableop_state** %5, align 8
  %8 = load %struct.tableop_state*, %struct.tableop_state** %5, align 8
  %9 = getelementptr inbounds %struct.tableop_state, %struct.tableop_state* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = icmp ne i8* %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %17

14:                                               ; preds = %2
  %15 = load %struct.tableop_state*, %struct.tableop_state** %5, align 8
  %16 = getelementptr inbounds %struct.tableop_state, %struct.tableop_state* %15, i32 0, i32 1
  store i32 1, i32* %16, align 8
  br label %17

17:                                               ; preds = %14, %13
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
