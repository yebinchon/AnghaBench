; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_emul.c_modify_bar_registration.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_emul.c_modify_bar_registration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_devinst = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.inout_port = type { i32, %struct.pci_devinst*, i32, i32, i32, i32, i32, %struct.pci_devinst*, i32 }
%struct.mem_range = type { i32, %struct.pci_devinst*, i32, i32, i32, i32, i32, %struct.pci_devinst*, i32 }

@IOPORT_F_INOUT = common dso_local global i32 0, align 4
@pci_emul_io_handler = common dso_local global i32 0, align 4
@MEM_F_RW = common dso_local global i32 0, align 4
@pci_emul_mem_handler = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_devinst*, i32, i32)* @modify_bar_registration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @modify_bar_registration(%struct.pci_devinst* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pci_devinst*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.inout_port, align 8
  %9 = alloca %struct.mem_range, align 8
  store %struct.pci_devinst* %0, %struct.pci_devinst** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.pci_devinst*, %struct.pci_devinst** %4, align 8
  %11 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %97 [
    i32 130, label %18
    i32 129, label %58
    i32 128, label %58
  ]

18:                                               ; preds = %3
  %19 = bitcast %struct.inout_port* %8 to %struct.mem_range*
  %20 = call i32 @bzero(%struct.mem_range* %19, i32 56)
  %21 = load %struct.pci_devinst*, %struct.pci_devinst** %4, align 8
  %22 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %8, i32 0, i32 6
  store i32 %23, i32* %24, align 8
  %25 = load %struct.pci_devinst*, %struct.pci_devinst** %4, align 8
  %26 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %8, i32 0, i32 8
  store i32 %32, i32* %33, align 8
  %34 = load %struct.pci_devinst*, %struct.pci_devinst** %4, align 8
  %35 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %8, i32 0, i32 4
  store i32 %41, i32* %42, align 8
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %18
  %46 = load i32, i32* @IOPORT_F_INOUT, align 4
  %47 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %8, i32 0, i32 3
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* @pci_emul_io_handler, align 4
  %49 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %8, i32 0, i32 2
  store i32 %48, i32* %49, align 8
  %50 = load %struct.pci_devinst*, %struct.pci_devinst** %4, align 8
  %51 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %8, i32 0, i32 7
  store %struct.pci_devinst* %50, %struct.pci_devinst** %51, align 8
  %52 = bitcast %struct.inout_port* %8 to %struct.mem_range*
  %53 = call i32 @register_inout(%struct.mem_range* %52)
  store i32 %53, i32* %7, align 4
  br label %57

54:                                               ; preds = %18
  %55 = bitcast %struct.inout_port* %8 to %struct.mem_range*
  %56 = call i32 @unregister_inout(%struct.mem_range* %55)
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %54, %45
  br label %99

58:                                               ; preds = %3, %3
  %59 = call i32 @bzero(%struct.mem_range* %9, i32 56)
  %60 = load %struct.pci_devinst*, %struct.pci_devinst** %4, align 8
  %61 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = getelementptr inbounds %struct.mem_range, %struct.mem_range* %9, i32 0, i32 6
  store i32 %62, i32* %63, align 8
  %64 = load %struct.pci_devinst*, %struct.pci_devinst** %4, align 8
  %65 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.mem_range, %struct.mem_range* %9, i32 0, i32 5
  store i32 %71, i32* %72, align 4
  %73 = load %struct.pci_devinst*, %struct.pci_devinst** %4, align 8
  %74 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.mem_range, %struct.mem_range* %9, i32 0, i32 4
  store i32 %80, i32* %81, align 8
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %58
  %85 = load i32, i32* @MEM_F_RW, align 4
  %86 = getelementptr inbounds %struct.mem_range, %struct.mem_range* %9, i32 0, i32 3
  store i32 %85, i32* %86, align 4
  %87 = load i32, i32* @pci_emul_mem_handler, align 4
  %88 = getelementptr inbounds %struct.mem_range, %struct.mem_range* %9, i32 0, i32 2
  store i32 %87, i32* %88, align 8
  %89 = load %struct.pci_devinst*, %struct.pci_devinst** %4, align 8
  %90 = getelementptr inbounds %struct.mem_range, %struct.mem_range* %9, i32 0, i32 1
  store %struct.pci_devinst* %89, %struct.pci_devinst** %90, align 8
  %91 = load i32, i32* %5, align 4
  %92 = getelementptr inbounds %struct.mem_range, %struct.mem_range* %9, i32 0, i32 0
  store i32 %91, i32* %92, align 8
  %93 = call i32 @register_mem(%struct.mem_range* %9)
  store i32 %93, i32* %7, align 4
  br label %96

94:                                               ; preds = %58
  %95 = call i32 @unregister_mem(%struct.mem_range* %9)
  store i32 %95, i32* %7, align 4
  br label %96

96:                                               ; preds = %94, %84
  br label %99

97:                                               ; preds = %3
  %98 = load i32, i32* @EINVAL, align 4
  store i32 %98, i32* %7, align 4
  br label %99

99:                                               ; preds = %97, %96, %57
  %100 = load i32, i32* %7, align 4
  %101 = icmp eq i32 %100, 0
  %102 = zext i1 %101 to i32
  %103 = call i32 @assert(i32 %102)
  ret void
}

declare dso_local i32 @bzero(%struct.mem_range*, i32) #1

declare dso_local i32 @register_inout(%struct.mem_range*) #1

declare dso_local i32 @unregister_inout(%struct.mem_range*) #1

declare dso_local i32 @register_mem(%struct.mem_range*) #1

declare dso_local i32 @unregister_mem(%struct.mem_range*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
