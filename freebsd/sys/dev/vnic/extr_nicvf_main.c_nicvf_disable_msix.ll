; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_main.c_nicvf_disable_msix.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_main.c_nicvf_disable_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicvf = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nicvf*)* @nicvf_disable_msix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nicvf_disable_msix(%struct.nicvf* %0) #0 {
  %2 = alloca %struct.nicvf*, align 8
  store %struct.nicvf* %0, %struct.nicvf** %2, align 8
  %3 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %4 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %1
  %8 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %9 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @pci_release_msi(i32 %10)
  %12 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %13 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %12, i32 0, i32 1
  store i64 0, i64* %13, align 8
  %14 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %15 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %14, i32 0, i32 0
  store i64 0, i64* %15, align 8
  br label %16

16:                                               ; preds = %7, %1
  ret void
}

declare dso_local i32 @pci_release_msi(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
