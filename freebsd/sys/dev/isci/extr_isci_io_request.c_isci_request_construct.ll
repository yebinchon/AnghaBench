; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci_io_request.c_isci_request_construct.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci_io_request.c_isci_request_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ISCI_REQUEST = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isci_request_construct(%struct.ISCI_REQUEST* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ISCI_REQUEST*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ISCI_REQUEST* %0, %struct.ISCI_REQUEST** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.ISCI_REQUEST*, %struct.ISCI_REQUEST** %5, align 8
  %11 = getelementptr inbounds %struct.ISCI_REQUEST, %struct.ISCI_REQUEST* %10, i32 0, i32 4
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.ISCI_REQUEST*, %struct.ISCI_REQUEST** %5, align 8
  %14 = getelementptr inbounds %struct.ISCI_REQUEST, %struct.ISCI_REQUEST* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.ISCI_REQUEST*, %struct.ISCI_REQUEST** %5, align 8
  %17 = getelementptr inbounds %struct.ISCI_REQUEST, %struct.ISCI_REQUEST* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 4
  %18 = load %struct.ISCI_REQUEST*, %struct.ISCI_REQUEST** %5, align 8
  %19 = getelementptr inbounds %struct.ISCI_REQUEST, %struct.ISCI_REQUEST* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ISCI_REQUEST*, %struct.ISCI_REQUEST** %5, align 8
  %22 = getelementptr inbounds %struct.ISCI_REQUEST, %struct.ISCI_REQUEST* %21, i32 0, i32 1
  %23 = call i32 @bus_dmamap_create(i32 %20, i32 0, i32* %22)
  %24 = load %struct.ISCI_REQUEST*, %struct.ISCI_REQUEST** %5, align 8
  %25 = getelementptr inbounds %struct.ISCI_REQUEST, %struct.ISCI_REQUEST* %24, i32 0, i32 0
  %26 = call i32 @callout_init(i32* %25, i32 1)
  ret void
}

declare dso_local i32 @bus_dmamap_create(i32, i32, i32*) #1

declare dso_local i32 @callout_init(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
