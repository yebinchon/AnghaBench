; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_emul.c_update_bar_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_emul.c_update_bar_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_devinst = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_devinst*, i32, i32, i32)* @update_bar_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_bar_address(%struct.pci_devinst* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.pci_devinst*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pci_devinst* %0, %struct.pci_devinst** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.pci_devinst*, %struct.pci_devinst** %5, align 8
  %11 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 131
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load %struct.pci_devinst*, %struct.pci_devinst** %5, align 8
  %21 = call i32 @porten(%struct.pci_devinst* %20)
  store i32 %21, i32* %9, align 4
  br label %25

22:                                               ; preds = %4
  %23 = load %struct.pci_devinst*, %struct.pci_devinst** %5, align 8
  %24 = call i32 @memen(%struct.pci_devinst* %23)
  store i32 %24, i32* %9, align 4
  br label %25

25:                                               ; preds = %22, %19
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load %struct.pci_devinst*, %struct.pci_devinst** %5, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @unregister_bar(%struct.pci_devinst* %29, i32 %30)
  br label %32

32:                                               ; preds = %28, %25
  %33 = load i32, i32* %8, align 4
  switch i32 %33, label %84 [
    i32 131, label %34
    i32 130, label %34
    i32 129, label %43
    i32 128, label %65
  ]

34:                                               ; preds = %32, %32
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.pci_devinst*, %struct.pci_devinst** %5, align 8
  %37 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  store i32 %35, i32* %42, align 8
  br label %86

43:                                               ; preds = %32
  %44 = load %struct.pci_devinst*, %struct.pci_devinst** %5, align 8
  %45 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = and i64 %52, -4294967296
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %50, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.pci_devinst*, %struct.pci_devinst** %5, align 8
  %57 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %55
  store i32 %64, i32* %62, align 8
  br label %86

65:                                               ; preds = %32
  %66 = load %struct.pci_devinst*, %struct.pci_devinst** %5, align 8
  %67 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = load %struct.pci_devinst*, %struct.pci_devinst** %5, align 8
  %76 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %74
  store i32 %83, i32* %81, align 8
  br label %86

84:                                               ; preds = %32
  %85 = call i32 @assert(i32 0)
  br label %86

86:                                               ; preds = %84, %65, %43, %34
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load %struct.pci_devinst*, %struct.pci_devinst** %5, align 8
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @register_bar(%struct.pci_devinst* %90, i32 %91)
  br label %93

93:                                               ; preds = %89, %86
  ret void
}

declare dso_local i32 @porten(%struct.pci_devinst*) #1

declare dso_local i32 @memen(%struct.pci_devinst*) #1

declare dso_local i32 @unregister_bar(%struct.pci_devinst*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @register_bar(%struct.pci_devinst*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
