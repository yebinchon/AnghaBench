; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_bhyverun.c_vmexit_vmx.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_bhyverun.c_vmexit_vmx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }
%struct.vm_exit = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"vm exit[%d]\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"\09reason\09\09VMX\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"\09rip\09\090x%016lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"\09inst_length\09%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"\09status\09\09%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"\09exit_reason\09%u (%s)\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"\09qualification\090x%016lx\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"\09inst_type\09\09%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"\09inst_error\09\09%d\0A\00", align 1
@VMEXIT_ABORT = common dso_local global i32 0, align 4
@EXIT_REASON_EPT_MISCONFIG = common dso_local global i32 0, align 4
@VMCS_GUEST_PHYSICAL_ADDRESS = common dso_local global i32 0, align 4
@ept_misconfig_gpa = common dso_local global i32 0, align 4
@ept_misconfig_pte = common dso_local global i32* null, align 8
@ept_misconfig_ptenum = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmctx*, %struct.vm_exit*, i32*)* @vmexit_vmx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmexit_vmx(%struct.vmctx* %0, %struct.vm_exit* %1, i32* %2) #0 {
  %4 = alloca %struct.vmctx*, align 8
  %5 = alloca %struct.vm_exit*, align 8
  %6 = alloca i32*, align 8
  store %struct.vmctx* %0, %struct.vmctx** %4, align 8
  store %struct.vm_exit* %1, %struct.vm_exit** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32, i32* @stderr, align 4
  %8 = load i32*, i32** %6, align 8
  %9 = load i32, i32* %8, align 4
  %10 = call i32 (i32, i8*, ...) @fprintf(i32 %7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* @stderr, align 4
  %12 = call i32 (i32, i8*, ...) @fprintf(i32 %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %13 = load i32, i32* @stderr, align 4
  %14 = load %struct.vm_exit*, %struct.vm_exit** %5, align 8
  %15 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 (i32, i8*, ...) @fprintf(i32 %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @stderr, align 4
  %19 = load %struct.vm_exit*, %struct.vm_exit** %5, align 8
  %20 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i32, i8*, ...) @fprintf(i32 %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @stderr, align 4
  %24 = load %struct.vm_exit*, %struct.vm_exit** %5, align 8
  %25 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i32, i8*, ...) @fprintf(i32 %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @stderr, align 4
  %31 = load %struct.vm_exit*, %struct.vm_exit** %5, align 8
  %32 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.vm_exit*, %struct.vm_exit** %5, align 8
  %37 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @vmexit_vmx_desc(i32 %40)
  %42 = call i32 (i32, i8*, ...) @fprintf(i32 %30, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %35, i8* %41)
  %43 = load i32, i32* @stderr, align 4
  %44 = load %struct.vm_exit*, %struct.vm_exit** %5, align 8
  %45 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i32, i8*, ...) @fprintf(i32 %43, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @stderr, align 4
  %51 = load %struct.vm_exit*, %struct.vm_exit** %5, align 8
  %52 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i32, i8*, ...) @fprintf(i32 %50, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @stderr, align 4
  %58 = load %struct.vm_exit*, %struct.vm_exit** %5, align 8
  %59 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i32, i8*, ...) @fprintf(i32 %57, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @VMEXIT_ABORT, align 4
  ret i32 %64
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @vmexit_vmx_desc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
