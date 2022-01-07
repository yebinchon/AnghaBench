; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_br.c_vmbus_br_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_br.c_vmbus_br_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_br = type { i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmbus_br*, i8*, i32)* @vmbus_br_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmbus_br_setup(%struct.vmbus_br* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.vmbus_br*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.vmbus_br* %0, %struct.vmbus_br** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i8*, i8** %5, align 8
  %8 = load %struct.vmbus_br*, %struct.vmbus_br** %4, align 8
  %9 = getelementptr inbounds %struct.vmbus_br, %struct.vmbus_br* %8, i32 0, i32 1
  store i8* %7, i8** %9, align 8
  %10 = load i32, i32* %6, align 4
  %11 = sext i32 %10 to i64
  %12 = sub i64 %11, 4
  %13 = trunc i64 %12 to i32
  %14 = load %struct.vmbus_br*, %struct.vmbus_br** %4, align 8
  %15 = getelementptr inbounds %struct.vmbus_br, %struct.vmbus_br* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
