; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_bhyverun.c_vmexit_inst_emul.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_bhyverun.c_vmexit_inst_emul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.vmctx = type { i32 }
%struct.vm_exit = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, %struct.vie }
%struct.vie = type { i32, i32* }

@stats = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@ESRCH = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Unhandled memory access to 0x%lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to emulate instruction [\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"0x%02x%s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"] at 0x%lx\0A\00", align 1
@VMEXIT_ABORT = common dso_local global i32 0, align 4
@VMEXIT_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmctx*, %struct.vm_exit*, i32*)* @vmexit_inst_emul to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmexit_inst_emul(%struct.vmctx* %0, %struct.vm_exit* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmctx*, align 8
  %6 = alloca %struct.vm_exit*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.vie*, align 8
  store %struct.vmctx* %0, %struct.vmctx** %5, align 8
  store %struct.vm_exit* %1, %struct.vm_exit** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @stats, i32 0, i32 0), align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @stats, i32 0, i32 0), align 4
  %13 = load %struct.vm_exit*, %struct.vm_exit** %6, align 8
  %14 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  store %struct.vie* %16, %struct.vie** %10, align 8
  %17 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.vm_exit*, %struct.vm_exit** %6, align 8
  %21 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.vie*, %struct.vie** %10, align 8
  %26 = load %struct.vm_exit*, %struct.vm_exit** %6, align 8
  %27 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = call i32 @emulate_mem(%struct.vmctx* %17, i32 %19, i32 %24, %struct.vie* %25, i32* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %82

33:                                               ; preds = %3
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @ESRCH, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = load i32, i32* @stderr, align 4
  %39 = load %struct.vm_exit*, %struct.vm_exit** %6, align 8
  %40 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 (i32, i8*, ...) @fprintf(i32 %38, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %37, %33
  %46 = load i32, i32* @stderr, align 4
  %47 = call i32 (i32, i8*, ...) @fprintf(i32 %46, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %48

48:                                               ; preds = %72, %45
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.vie*, %struct.vie** %10, align 8
  %51 = getelementptr inbounds %struct.vie, %struct.vie* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %75

54:                                               ; preds = %48
  %55 = load i32, i32* @stderr, align 4
  %56 = load %struct.vie*, %struct.vie** %10, align 8
  %57 = getelementptr inbounds %struct.vie, %struct.vie* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.vie*, %struct.vie** %10, align 8
  %65 = getelementptr inbounds %struct.vie, %struct.vie* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sub nsw i32 %66, 1
  %68 = icmp ne i32 %63, %67
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %71 = call i32 (i32, i8*, ...) @fprintf(i32 %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %62, i8* %70)
  br label %72

72:                                               ; preds = %54
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %9, align 4
  br label %48

75:                                               ; preds = %48
  %76 = load i32, i32* @stderr, align 4
  %77 = load %struct.vm_exit*, %struct.vm_exit** %6, align 8
  %78 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 (i32, i8*, ...) @fprintf(i32 %76, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* @VMEXIT_ABORT, align 4
  store i32 %81, i32* %4, align 4
  br label %84

82:                                               ; preds = %3
  %83 = load i32, i32* @VMEXIT_CONTINUE, align 4
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %82, %75
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @emulate_mem(%struct.vmctx*, i32, i32, %struct.vie*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
