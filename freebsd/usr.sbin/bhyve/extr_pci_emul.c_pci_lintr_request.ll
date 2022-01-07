; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_emul.c_pci_lintr_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_emul.c_pci_lintr_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.businfo = type { %struct.slotinfo* }
%struct.slotinfo = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.pci_devinst = type { i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@pci_businfo = common dso_local global %struct.businfo** null, align 8
@PCIR_INTPIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_lintr_request(%struct.pci_devinst* %0) #0 {
  %2 = alloca %struct.pci_devinst*, align 8
  %3 = alloca %struct.businfo*, align 8
  %4 = alloca %struct.slotinfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pci_devinst* %0, %struct.pci_devinst** %2, align 8
  %8 = load %struct.businfo**, %struct.businfo*** @pci_businfo, align 8
  %9 = load %struct.pci_devinst*, %struct.pci_devinst** %2, align 8
  %10 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.businfo*, %struct.businfo** %8, i64 %11
  %13 = load %struct.businfo*, %struct.businfo** %12, align 8
  store %struct.businfo* %13, %struct.businfo** %3, align 8
  %14 = load %struct.businfo*, %struct.businfo** %3, align 8
  %15 = icmp ne %struct.businfo* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.businfo*, %struct.businfo** %3, align 8
  %19 = getelementptr inbounds %struct.businfo, %struct.businfo* %18, i32 0, i32 0
  %20 = load %struct.slotinfo*, %struct.slotinfo** %19, align 8
  %21 = load %struct.pci_devinst*, %struct.pci_devinst** %2, align 8
  %22 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.slotinfo, %struct.slotinfo* %20, i64 %23
  store %struct.slotinfo* %24, %struct.slotinfo** %4, align 8
  store i32 0, i32* %5, align 4
  %25 = load %struct.slotinfo*, %struct.slotinfo** %4, align 8
  %26 = getelementptr inbounds %struct.slotinfo, %struct.slotinfo* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %31

31:                                               ; preds = %56, %1
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, 4
  br i1 %33, label %34, label %59

34:                                               ; preds = %31
  %35 = load %struct.slotinfo*, %struct.slotinfo** %4, align 8
  %36 = getelementptr inbounds %struct.slotinfo, %struct.slotinfo* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %34
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %5, align 4
  %47 = load %struct.slotinfo*, %struct.slotinfo** %4, align 8
  %48 = getelementptr inbounds %struct.slotinfo, %struct.slotinfo* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %45, %34
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %31

59:                                               ; preds = %31
  %60 = load %struct.slotinfo*, %struct.slotinfo** %4, align 8
  %61 = getelementptr inbounds %struct.slotinfo, %struct.slotinfo* %60, i32 0, i32 0
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 1
  %71 = load %struct.pci_devinst*, %struct.pci_devinst** %2, align 8
  %72 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  store i32 %70, i32* %73, align 8
  %74 = load %struct.pci_devinst*, %struct.pci_devinst** %2, align 8
  %75 = load i32, i32* @PCIR_INTPIN, align 4
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 1
  %78 = call i32 @pci_set_cfgdata8(%struct.pci_devinst* %74, i32 %75, i32 %77)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pci_set_cfgdata8(%struct.pci_devinst*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
