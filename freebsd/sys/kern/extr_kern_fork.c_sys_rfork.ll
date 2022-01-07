; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_fork.c_sys_rfork.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_fork.c_sys_rfork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32* }
%struct.rfork_args = type { i32 }
%struct.fork_req = type { i32, i32*, i32 }

@RFKERNELONLY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RFSPAWN = common dso_local global i32 0, align 4
@RFFDG = common dso_local global i32 0, align 4
@RFPROC = common dso_local global i32 0, align 4
@RFPPWAIT = common dso_local global i32 0, align 4
@RFMEM = common dso_local global i32 0, align 4
@FR2_DROPSIG_CAUGHT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_rfork(%struct.thread* %0, %struct.rfork_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.rfork_args*, align 8
  %6 = alloca %struct.fork_req, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.rfork_args* %1, %struct.rfork_args** %5, align 8
  %9 = load %struct.rfork_args*, %struct.rfork_args** %5, align 8
  %10 = getelementptr inbounds %struct.rfork_args, %struct.rfork_args* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @RFKERNELONLY, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* %3, align 4
  br label %78

17:                                               ; preds = %2
  %18 = load %struct.rfork_args*, %struct.rfork_args** %5, align 8
  %19 = getelementptr inbounds %struct.rfork_args, %struct.rfork_args* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @RFSPAWN, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %17
  %25 = load %struct.rfork_args*, %struct.rfork_args** %5, align 8
  %26 = getelementptr inbounds %struct.rfork_args, %struct.rfork_args* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @RFSPAWN, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @EINVAL, align 4
  store i32 %31, i32* %3, align 4
  br label %78

32:                                               ; preds = %24, %17
  %33 = load %struct.rfork_args*, %struct.rfork_args** %5, align 8
  %34 = getelementptr inbounds %struct.rfork_args, %struct.rfork_args* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @AUDIT_ARG_FFLAGS(i32 %35)
  %37 = call i32 @bzero(%struct.fork_req* %6, i32 24)
  %38 = load %struct.rfork_args*, %struct.rfork_args** %5, align 8
  %39 = getelementptr inbounds %struct.rfork_args, %struct.rfork_args* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @RFSPAWN, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %32
  %45 = load i32, i32* @RFFDG, align 4
  %46 = load i32, i32* @RFPROC, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @RFPPWAIT, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @RFMEM, align 4
  %51 = or i32 %49, %50
  %52 = getelementptr inbounds %struct.fork_req, %struct.fork_req* %6, i32 0, i32 0
  store i32 %51, i32* %52, align 8
  %53 = load i32, i32* @FR2_DROPSIG_CAUGHT, align 4
  %54 = getelementptr inbounds %struct.fork_req, %struct.fork_req* %6, i32 0, i32 2
  store i32 %53, i32* %54, align 8
  br label %60

55:                                               ; preds = %32
  %56 = load %struct.rfork_args*, %struct.rfork_args** %5, align 8
  %57 = getelementptr inbounds %struct.rfork_args, %struct.rfork_args* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.fork_req, %struct.fork_req* %6, i32 0, i32 0
  store i32 %58, i32* %59, align 8
  br label %60

60:                                               ; preds = %55, %44
  %61 = getelementptr inbounds %struct.fork_req, %struct.fork_req* %6, i32 0, i32 1
  store i32* %8, i32** %61, align 8
  %62 = load %struct.thread*, %struct.thread** %4, align 8
  %63 = call i32 @fork1(%struct.thread* %62, %struct.fork_req* %6)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %60
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.thread*, %struct.thread** %4, align 8
  %69 = getelementptr inbounds %struct.thread, %struct.thread* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  store i32 %67, i32* %71, align 4
  %72 = load %struct.thread*, %struct.thread** %4, align 8
  %73 = getelementptr inbounds %struct.thread, %struct.thread* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  store i32 0, i32* %75, align 4
  br label %76

76:                                               ; preds = %66, %60
  %77 = load i32, i32* %7, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %76, %30, %15
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @AUDIT_ARG_FFLAGS(i32) #1

declare dso_local i32 @bzero(%struct.fork_req*, i32) #1

declare dso_local i32 @fork1(%struct.thread*, %struct.fork_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
