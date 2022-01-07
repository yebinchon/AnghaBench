; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit_pipe.c_audit_pipe_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit_pipe.c_audit_pipe_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.thread = type { i32 }
%struct.audit_pipe = type { i32, i32 }

@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, %struct.thread*)* @audit_pipe_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @audit_pipe_poll(%struct.cdev* %0, i32 %1, %struct.thread* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.audit_pipe*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.thread* %2, %struct.thread** %7, align 8
  store i32 0, i32* %10, align 4
  %11 = bitcast %struct.audit_pipe** %8 to i8**
  %12 = call i32 @devfs_get_cdevpriv(i8** %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %4, align 4
  br label %49

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @POLLIN, align 4
  %20 = load i32, i32* @POLLRDNORM, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %18, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %47

24:                                               ; preds = %17
  %25 = load %struct.audit_pipe*, %struct.audit_pipe** %8, align 8
  %26 = call i32 @AUDIT_PIPE_LOCK(%struct.audit_pipe* %25)
  %27 = load %struct.audit_pipe*, %struct.audit_pipe** %8, align 8
  %28 = getelementptr inbounds %struct.audit_pipe, %struct.audit_pipe* %27, i32 0, i32 1
  %29 = call i32* @TAILQ_FIRST(i32* %28)
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %24
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @POLLIN, align 4
  %34 = load i32, i32* @POLLRDNORM, align 4
  %35 = or i32 %33, %34
  %36 = and i32 %32, %35
  %37 = load i32, i32* %10, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %10, align 4
  br label %44

39:                                               ; preds = %24
  %40 = load %struct.thread*, %struct.thread** %7, align 8
  %41 = load %struct.audit_pipe*, %struct.audit_pipe** %8, align 8
  %42 = getelementptr inbounds %struct.audit_pipe, %struct.audit_pipe* %41, i32 0, i32 0
  %43 = call i32 @selrecord(%struct.thread* %40, i32* %42)
  br label %44

44:                                               ; preds = %39, %31
  %45 = load %struct.audit_pipe*, %struct.audit_pipe** %8, align 8
  %46 = call i32 @AUDIT_PIPE_UNLOCK(%struct.audit_pipe* %45)
  br label %47

47:                                               ; preds = %44, %17
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %47, %15
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @devfs_get_cdevpriv(i8**) #1

declare dso_local i32 @AUDIT_PIPE_LOCK(%struct.audit_pipe*) #1

declare dso_local i32* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @selrecord(%struct.thread*, i32*) #1

declare dso_local i32 @AUDIT_PIPE_UNLOCK(%struct.audit_pipe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
