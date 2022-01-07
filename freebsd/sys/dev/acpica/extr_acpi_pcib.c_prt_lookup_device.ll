; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_pcib.c_prt_lookup_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_pcib.c_prt_lookup_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }
%struct.prt_lookup_request = type { i64, i64, %struct.TYPE_3__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*)* @prt_lookup_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prt_lookup_device(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.prt_lookup_request*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.prt_lookup_request*
  store %struct.prt_lookup_request* %7, %struct.prt_lookup_request** %5, align 8
  %8 = load %struct.prt_lookup_request*, %struct.prt_lookup_request** %5, align 8
  %9 = getelementptr inbounds %struct.prt_lookup_request, %struct.prt_lookup_request* %8, i32 0, i32 2
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = icmp ne %struct.TYPE_3__* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %34

13:                                               ; preds = %2
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @ACPI_ADR_PCI_SLOT(i32 %16)
  %18 = load %struct.prt_lookup_request*, %struct.prt_lookup_request** %5, align 8
  %19 = getelementptr inbounds %struct.prt_lookup_request, %struct.prt_lookup_request* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %17, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %13
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.prt_lookup_request*, %struct.prt_lookup_request** %5, align 8
  %27 = getelementptr inbounds %struct.prt_lookup_request, %struct.prt_lookup_request* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %22
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %32 = load %struct.prt_lookup_request*, %struct.prt_lookup_request** %5, align 8
  %33 = getelementptr inbounds %struct.prt_lookup_request, %struct.prt_lookup_request* %32, i32 0, i32 2
  store %struct.TYPE_3__* %31, %struct.TYPE_3__** %33, align 8
  br label %34

34:                                               ; preds = %12, %30, %22, %13
  ret void
}

declare dso_local i64 @ACPI_ADR_PCI_SLOT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
