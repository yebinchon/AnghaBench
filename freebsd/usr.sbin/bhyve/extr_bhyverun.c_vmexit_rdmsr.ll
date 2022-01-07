; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_bhyverun.c_vmexit_rdmsr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_bhyverun.c_vmexit_rdmsr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }
%struct.vm_exit = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"rdmsr to register %#x on vcpu %d\0A\00", align 1
@strictmsr = common dso_local global i64 0, align 8
@VMEXIT_CONTINUE = common dso_local global i32 0, align 4
@VM_REG_GUEST_RAX = common dso_local global i32 0, align 4
@VM_REG_GUEST_RDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmctx*, %struct.vm_exit*, i32*)* @vmexit_rdmsr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmexit_rdmsr(%struct.vmctx* %0, %struct.vm_exit* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmctx*, align 8
  %6 = alloca %struct.vm_exit*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.vmctx* %0, %struct.vmctx** %5, align 8
  store %struct.vm_exit* %1, %struct.vm_exit** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.vm_exit*, %struct.vm_exit** %6, align 8
  %16 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @emulate_rdmsr(%struct.vmctx* %12, i32 %14, i32 %19, i32* %8)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %3
  %24 = load i32, i32* @stderr, align 4
  %25 = load %struct.vm_exit*, %struct.vm_exit** %6, align 8
  %26 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @fprintf(i32 %24, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %31)
  %33 = load i64, i64* @strictmsr, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %23
  %36 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @vm_inject_gp(%struct.vmctx* %36, i32 %38)
  %40 = load i32, i32* @VMEXIT_CONTINUE, align 4
  store i32 %40, i32* %4, align 4
  br label %67

41:                                               ; preds = %23
  br label %42

42:                                               ; preds = %41, %3
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %9, align 4
  %44 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @VM_REG_GUEST_RAX, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @vm_set_register(%struct.vmctx* %44, i32 %46, i32 %47, i32 %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp eq i32 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load i32, i32* %8, align 4
  %55 = ashr i32 %54, 32
  store i32 %55, i32* %10, align 4
  %56 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %57 = load i32*, i32** %7, align 8
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @VM_REG_GUEST_RDX, align 4
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @vm_set_register(%struct.vmctx* %56, i32 %58, i32 %59, i32 %60)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp eq i32 %62, 0
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = load i32, i32* @VMEXIT_CONTINUE, align 4
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %42, %35
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @emulate_rdmsr(%struct.vmctx*, i32, i32, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @vm_inject_gp(%struct.vmctx*, i32) #1

declare dso_local i32 @vm_set_register(%struct.vmctx*, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
