; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ppc/extr_ppc_isa.c_ppc_isa_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ppc/extr_ppc_isa.c_ppc_isa_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppc_data = type { i32, i64, i32 }

@PPB_ECP = common dso_local global i32 0, align 4
@ppc_isa_dmadone = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ppc_isa_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ppc_data*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.ppc_data* @device_get_softc(i32 %4)
  store %struct.ppc_data* %5, %struct.ppc_data** %3, align 8
  %6 = load %struct.ppc_data*, %struct.ppc_data** %3, align 8
  %7 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @PPB_ECP, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %29

12:                                               ; preds = %1
  %13 = load %struct.ppc_data*, %struct.ppc_data** %3, align 8
  %14 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %12
  %18 = load %struct.ppc_data*, %struct.ppc_data** %3, align 8
  %19 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @isa_dma_acquire(i64 %20)
  %22 = load %struct.ppc_data*, %struct.ppc_data** %3, align 8
  %23 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @isa_dmainit(i64 %24, i32 1024)
  %26 = load i32, i32* @ppc_isa_dmadone, align 4
  %27 = load %struct.ppc_data*, %struct.ppc_data** %3, align 8
  %28 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  br label %29

29:                                               ; preds = %17, %12, %1
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @ppc_attach(i32 %30)
  ret i32 %31
}

declare dso_local %struct.ppc_data* @device_get_softc(i32) #1

declare dso_local i32 @isa_dma_acquire(i64) #1

declare dso_local i32 @isa_dmainit(i64, i32) #1

declare dso_local i32 @ppc_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
