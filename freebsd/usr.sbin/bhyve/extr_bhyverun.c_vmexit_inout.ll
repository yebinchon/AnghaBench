; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_bhyverun.c_vmexit_inout.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_bhyverun.c_vmexit_inout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.vmctx = type { i32 }
%struct.vm_exit = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@GUEST_NIO_PORT = common dso_local global i32 0, align 4
@strictio = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Unhandled %s%c 0x%04x at 0x%lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@vmexit = common dso_local global %struct.TYPE_6__* null, align 8
@VMEXIT_ABORT = common dso_local global i32 0, align 4
@VMEXIT_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmctx*, %struct.vm_exit*, i32*)* @vmexit_inout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmexit_inout(%struct.vmctx* %0, %struct.vm_exit* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmctx*, align 8
  %6 = alloca %struct.vm_exit*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.vmctx* %0, %struct.vmctx** %5, align 8
  store %struct.vm_exit* %1, %struct.vm_exit** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %13, align 4
  %16 = load %struct.vm_exit*, %struct.vm_exit** %6, align 8
  %17 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %10, align 4
  %21 = load %struct.vm_exit*, %struct.vm_exit** %6, align 8
  %22 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %9, align 4
  %26 = load %struct.vm_exit*, %struct.vm_exit** %6, align 8
  %27 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %3
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @GUEST_NIO_PORT, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %37
  %42 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %43 = load %struct.vm_exit*, %struct.vm_exit** %6, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = load %struct.vm_exit*, %struct.vm_exit** %6, align 8
  %46 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @vmexit_handle_notify(%struct.vmctx* %42, %struct.vm_exit* %43, i32* %44, i32 %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %4, align 4
  br label %85

52:                                               ; preds = %37, %3
  %53 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %54 = load i32, i32* %13, align 4
  %55 = load %struct.vm_exit*, %struct.vm_exit** %6, align 8
  %56 = load i32, i32* @strictio, align 4
  %57 = call i32 @emulate_inout(%struct.vmctx* %53, i32 %54, %struct.vm_exit* %55, i32 %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %83

60:                                               ; preds = %52
  %61 = load i32, i32* @stderr, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %66 = load i32, i32* %9, align 4
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  br label %74

69:                                               ; preds = %60
  %70 = load i32, i32* %9, align 4
  %71 = icmp eq i32 %70, 2
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i32 119, i32 108
  br label %74

74:                                               ; preds = %69, %68
  %75 = phi i32 [ 98, %68 ], [ %73, %69 ]
  %76 = trunc i32 %75 to i8
  %77 = load i32, i32* %10, align 4
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vmexit, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @fprintf(i32 %61, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %65, i8 signext %76, i32 %77, i32 %80)
  %82 = load i32, i32* @VMEXIT_ABORT, align 4
  store i32 %82, i32* %4, align 4
  br label %85

83:                                               ; preds = %52
  %84 = load i32, i32* @VMEXIT_CONTINUE, align 4
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %83, %74, %41
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @vmexit_handle_notify(%struct.vmctx*, %struct.vm_exit*, i32*, i32) #1

declare dso_local i32 @emulate_inout(%struct.vmctx*, i32, %struct.vm_exit*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8 signext, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
