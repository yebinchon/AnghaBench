; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_emul.c_pci_emul_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_emul.c_pci_emul_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }
%struct.pci_devemu = type { i8*, i32 (%struct.vmctx*, %struct.pci_devinst*, i32)* }
%struct.pci_devinst = type { i32, i32, i32, i32, %struct.pci_devemu*, %struct.TYPE_2__, %struct.vmctx* }
%struct.TYPE_2__ = type { i64, i64, i32, i64, i32 }
%struct.funcinfo = type { %struct.pci_devinst*, i32 }

@IDLE = common dso_local global i32 0, align 4
@PI_NAMESZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s-pci-%d\00", align 1
@PCIR_INTLINE = common dso_local global i32 0, align 4
@PCIR_INTPIN = common dso_local global i32 0, align 4
@PCIR_COMMAND = common dso_local global i32 0, align 4
@PCIM_CMD_BUSMASTEREN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmctx*, %struct.pci_devemu*, i32, i32, i32, %struct.funcinfo*)* @pci_emul_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_emul_init(%struct.vmctx* %0, %struct.pci_devemu* %1, i32 %2, i32 %3, i32 %4, %struct.funcinfo* %5) #0 {
  %7 = alloca %struct.vmctx*, align 8
  %8 = alloca %struct.pci_devemu*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.funcinfo*, align 8
  %13 = alloca %struct.pci_devinst*, align 8
  %14 = alloca i32, align 4
  store %struct.vmctx* %0, %struct.vmctx** %7, align 8
  store %struct.pci_devemu* %1, %struct.pci_devemu** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.funcinfo* %5, %struct.funcinfo** %12, align 8
  %15 = call %struct.pci_devinst* @calloc(i32 1, i32 72)
  store %struct.pci_devinst* %15, %struct.pci_devinst** %13, align 8
  %16 = load %struct.vmctx*, %struct.vmctx** %7, align 8
  %17 = load %struct.pci_devinst*, %struct.pci_devinst** %13, align 8
  %18 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %17, i32 0, i32 6
  store %struct.vmctx* %16, %struct.vmctx** %18, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.pci_devinst*, %struct.pci_devinst** %13, align 8
  %21 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.pci_devinst*, %struct.pci_devinst** %13, align 8
  %24 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load %struct.pci_devinst*, %struct.pci_devinst** %13, align 8
  %27 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load %struct.pci_devinst*, %struct.pci_devinst** %13, align 8
  %29 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %28, i32 0, i32 5
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 4
  %31 = call i32 @pthread_mutex_init(i32* %30, i32* null)
  %32 = load %struct.pci_devinst*, %struct.pci_devinst** %13, align 8
  %33 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %32, i32 0, i32 5
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 3
  store i64 0, i64* %34, align 8
  %35 = load i32, i32* @IDLE, align 4
  %36 = load %struct.pci_devinst*, %struct.pci_devinst** %13, align 8
  %37 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  store i32 %35, i32* %38, align 8
  %39 = load %struct.pci_devinst*, %struct.pci_devinst** %13, align 8
  %40 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %39, i32 0, i32 5
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  %42 = load %struct.pci_devinst*, %struct.pci_devinst** %13, align 8
  %43 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %42, i32 0, i32 5
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  %45 = load %struct.pci_devemu*, %struct.pci_devemu** %8, align 8
  %46 = load %struct.pci_devinst*, %struct.pci_devinst** %13, align 8
  %47 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %46, i32 0, i32 4
  store %struct.pci_devemu* %45, %struct.pci_devemu** %47, align 8
  %48 = load %struct.pci_devinst*, %struct.pci_devinst** %13, align 8
  %49 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @PI_NAMESZ, align 4
  %52 = load %struct.pci_devemu*, %struct.pci_devemu** %8, align 8
  %53 = getelementptr inbounds %struct.pci_devemu, %struct.pci_devemu* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @snprintf(i32 %50, i32 %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %54, i32 %55)
  %57 = load %struct.pci_devinst*, %struct.pci_devinst** %13, align 8
  %58 = load i32, i32* @PCIR_INTLINE, align 4
  %59 = call i32 @pci_set_cfgdata8(%struct.pci_devinst* %57, i32 %58, i32 255)
  %60 = load %struct.pci_devinst*, %struct.pci_devinst** %13, align 8
  %61 = load i32, i32* @PCIR_INTPIN, align 4
  %62 = call i32 @pci_set_cfgdata8(%struct.pci_devinst* %60, i32 %61, i32 0)
  %63 = load %struct.pci_devinst*, %struct.pci_devinst** %13, align 8
  %64 = load i32, i32* @PCIR_COMMAND, align 4
  %65 = load i32, i32* @PCIM_CMD_BUSMASTEREN, align 4
  %66 = call i32 @pci_set_cfgdata8(%struct.pci_devinst* %63, i32 %64, i32 %65)
  %67 = load %struct.pci_devemu*, %struct.pci_devemu** %8, align 8
  %68 = getelementptr inbounds %struct.pci_devemu, %struct.pci_devemu* %67, i32 0, i32 1
  %69 = load i32 (%struct.vmctx*, %struct.pci_devinst*, i32)*, i32 (%struct.vmctx*, %struct.pci_devinst*, i32)** %68, align 8
  %70 = load %struct.vmctx*, %struct.vmctx** %7, align 8
  %71 = load %struct.pci_devinst*, %struct.pci_devinst** %13, align 8
  %72 = load %struct.funcinfo*, %struct.funcinfo** %12, align 8
  %73 = getelementptr inbounds %struct.funcinfo, %struct.funcinfo* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 %69(%struct.vmctx* %70, %struct.pci_devinst* %71, i32 %74)
  store i32 %75, i32* %14, align 4
  %76 = load i32, i32* %14, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %6
  %79 = load %struct.pci_devinst*, %struct.pci_devinst** %13, align 8
  %80 = load %struct.funcinfo*, %struct.funcinfo** %12, align 8
  %81 = getelementptr inbounds %struct.funcinfo, %struct.funcinfo* %80, i32 0, i32 0
  store %struct.pci_devinst* %79, %struct.pci_devinst** %81, align 8
  br label %85

82:                                               ; preds = %6
  %83 = load %struct.pci_devinst*, %struct.pci_devinst** %13, align 8
  %84 = call i32 @free(%struct.pci_devinst* %83)
  br label %85

85:                                               ; preds = %82, %78
  %86 = load i32, i32* %14, align 4
  ret i32 %86
}

declare dso_local %struct.pci_devinst* @calloc(i32, i32) #1

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @pci_set_cfgdata8(%struct.pci_devinst*, i32, i32) #1

declare dso_local i32 @free(%struct.pci_devinst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
