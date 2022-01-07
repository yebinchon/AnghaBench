; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_polling_srbdone.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_polling_srbdone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterControlBlock = type { i32 }
%struct.CommandControlBlock = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.AdapterControlBlock*, %struct.CommandControlBlock*)* @arcmsr_polling_srbdone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arcmsr_polling_srbdone(%struct.AdapterControlBlock* %0, %struct.CommandControlBlock* %1) #0 {
  %3 = alloca %struct.AdapterControlBlock*, align 8
  %4 = alloca %struct.CommandControlBlock*, align 8
  store %struct.AdapterControlBlock* %0, %struct.AdapterControlBlock** %3, align 8
  store %struct.CommandControlBlock* %1, %struct.CommandControlBlock** %4, align 8
  %5 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %6 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %28 [
    i32 132, label %8
    i32 131, label %12
    i32 130, label %16
    i32 129, label %20
    i32 128, label %24
  ]

8:                                                ; preds = %2
  %9 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %10 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %4, align 8
  %11 = call i32 @arcmsr_polling_hba_srbdone(%struct.AdapterControlBlock* %9, %struct.CommandControlBlock* %10)
  br label %28

12:                                               ; preds = %2
  %13 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %14 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %4, align 8
  %15 = call i32 @arcmsr_polling_hbb_srbdone(%struct.AdapterControlBlock* %13, %struct.CommandControlBlock* %14)
  br label %28

16:                                               ; preds = %2
  %17 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %18 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %4, align 8
  %19 = call i32 @arcmsr_polling_hbc_srbdone(%struct.AdapterControlBlock* %17, %struct.CommandControlBlock* %18)
  br label %28

20:                                               ; preds = %2
  %21 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %22 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %4, align 8
  %23 = call i32 @arcmsr_polling_hbd_srbdone(%struct.AdapterControlBlock* %21, %struct.CommandControlBlock* %22)
  br label %28

24:                                               ; preds = %2
  %25 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %26 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %4, align 8
  %27 = call i32 @arcmsr_polling_hbe_srbdone(%struct.AdapterControlBlock* %25, %struct.CommandControlBlock* %26)
  br label %28

28:                                               ; preds = %2, %24, %20, %16, %12, %8
  ret void
}

declare dso_local i32 @arcmsr_polling_hba_srbdone(%struct.AdapterControlBlock*, %struct.CommandControlBlock*) #1

declare dso_local i32 @arcmsr_polling_hbb_srbdone(%struct.AdapterControlBlock*, %struct.CommandControlBlock*) #1

declare dso_local i32 @arcmsr_polling_hbc_srbdone(%struct.AdapterControlBlock*, %struct.CommandControlBlock*) #1

declare dso_local i32 @arcmsr_polling_hbd_srbdone(%struct.AdapterControlBlock*, %struct.CommandControlBlock*) #1

declare dso_local i32 @arcmsr_polling_hbe_srbdone(%struct.AdapterControlBlock*, %struct.CommandControlBlock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
