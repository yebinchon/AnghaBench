; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_intr_msix_mgmnt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_intr_msix_mgmnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_adapter = type { i32 }

@ENA_FLAG_DEVICE_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ena_intr_msix_mgmnt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ena_intr_msix_mgmnt(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ena_adapter*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.ena_adapter*
  store %struct.ena_adapter* %5, %struct.ena_adapter** %3, align 8
  %6 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @ena_com_admin_q_comp_intr_handler(i32 %8)
  %10 = load i32, i32* @ENA_FLAG_DEVICE_RUNNING, align 4
  %11 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %12 = call i32 @ENA_FLAG_ISSET(i32 %10, %struct.ena_adapter* %11)
  %13 = call i64 @likely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i8*, i8** %2, align 8
  %20 = call i32 @ena_com_aenq_intr_handler(i32 %18, i8* %19)
  br label %21

21:                                               ; preds = %15, %1
  ret void
}

declare dso_local i32 @ena_com_admin_q_comp_intr_handler(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ENA_FLAG_ISSET(i32, %struct.ena_adapter*) #1

declare dso_local i32 @ena_com_aenq_intr_handler(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
