; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_ahci.c_pci_ahci_ioreq_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_ahci.c_pci_ahci_ioreq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_port = type { i32, i32, i32, i32, %struct.ahci_ioreq*, i32 }
%struct.ahci_ioreq = type { %struct.TYPE_2__, %struct.ahci_port* }
%struct.TYPE_2__ = type { %struct.ahci_ioreq*, i32 }

@ata_ioreq_cb = common dso_local global i32 0, align 4
@atapi_ioreq_cb = common dso_local global i32 0, align 4
@io_flist = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahci_port*)* @pci_ahci_ioreq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_ahci_ioreq_init(%struct.ahci_port* %0) #0 {
  %2 = alloca %struct.ahci_port*, align 8
  %3 = alloca %struct.ahci_ioreq*, align 8
  %4 = alloca i32, align 4
  store %struct.ahci_port* %0, %struct.ahci_port** %2, align 8
  %5 = load %struct.ahci_port*, %struct.ahci_port** %2, align 8
  %6 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %5, i32 0, i32 5
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @blockif_queuesz(i32 %7)
  %9 = load %struct.ahci_port*, %struct.ahci_port** %2, align 8
  %10 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 8
  %11 = load %struct.ahci_port*, %struct.ahci_port** %2, align 8
  %12 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.ahci_ioreq* @calloc(i32 %13, i32 24)
  %15 = load %struct.ahci_port*, %struct.ahci_port** %2, align 8
  %16 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %15, i32 0, i32 4
  store %struct.ahci_ioreq* %14, %struct.ahci_ioreq** %16, align 8
  %17 = load %struct.ahci_port*, %struct.ahci_port** %2, align 8
  %18 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %17, i32 0, i32 2
  %19 = call i32 @STAILQ_INIT(i32* %18)
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %60, %1
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.ahci_port*, %struct.ahci_port** %2, align 8
  %23 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %63

26:                                               ; preds = %20
  %27 = load %struct.ahci_port*, %struct.ahci_port** %2, align 8
  %28 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %27, i32 0, i32 4
  %29 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.ahci_ioreq, %struct.ahci_ioreq* %29, i64 %31
  store %struct.ahci_ioreq* %32, %struct.ahci_ioreq** %3, align 8
  %33 = load %struct.ahci_port*, %struct.ahci_port** %2, align 8
  %34 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %3, align 8
  %35 = getelementptr inbounds %struct.ahci_ioreq, %struct.ahci_ioreq* %34, i32 0, i32 1
  store %struct.ahci_port* %33, %struct.ahci_port** %35, align 8
  %36 = load %struct.ahci_port*, %struct.ahci_port** %2, align 8
  %37 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %26
  %41 = load i32, i32* @ata_ioreq_cb, align 4
  %42 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %3, align 8
  %43 = getelementptr inbounds %struct.ahci_ioreq, %struct.ahci_ioreq* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  store i32 %41, i32* %44, align 8
  br label %50

45:                                               ; preds = %26
  %46 = load i32, i32* @atapi_ioreq_cb, align 4
  %47 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %3, align 8
  %48 = getelementptr inbounds %struct.ahci_ioreq, %struct.ahci_ioreq* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i32 %46, i32* %49, align 8
  br label %50

50:                                               ; preds = %45, %40
  %51 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %3, align 8
  %52 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %3, align 8
  %53 = getelementptr inbounds %struct.ahci_ioreq, %struct.ahci_ioreq* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store %struct.ahci_ioreq* %51, %struct.ahci_ioreq** %54, align 8
  %55 = load %struct.ahci_port*, %struct.ahci_port** %2, align 8
  %56 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %55, i32 0, i32 2
  %57 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %3, align 8
  %58 = load i32, i32* @io_flist, align 4
  %59 = call i32 @STAILQ_INSERT_TAIL(i32* %56, %struct.ahci_ioreq* %57, i32 %58)
  br label %60

60:                                               ; preds = %50
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %4, align 4
  br label %20

63:                                               ; preds = %20
  %64 = load %struct.ahci_port*, %struct.ahci_port** %2, align 8
  %65 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %64, i32 0, i32 1
  %66 = call i32 @TAILQ_INIT(i32* %65)
  ret void
}

declare dso_local i32 @blockif_queuesz(i32) #1

declare dso_local %struct.ahci_ioreq* @calloc(i32, i32) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.ahci_ioreq*, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
