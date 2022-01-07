; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_popen.c_wait_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_popen.c_wait_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child = type { i32, i32 }

@SIGCHLD = common dso_local global i32 0, align 4
@SIG_BLOCK = common dso_local global i32 0, align 4
@wait_status = common dso_local global i32 0, align 4
@SIG_SETMASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wait_child(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.child*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %7, align 4
  %8 = call i32 @sigemptyset(i32* %5)
  %9 = load i32, i32* @SIGCHLD, align 4
  %10 = call i32 @sigaddset(i32* %5, i32 %9)
  %11 = load i32, i32* @SIG_BLOCK, align 4
  %12 = call i32 @sigprocmask(i32 %11, i32* %5, i32* %6)
  %13 = load i32, i32* %3, align 4
  %14 = call %struct.child* @findchild(i32 %13, i32 1)
  store %struct.child* %14, %struct.child** %4, align 8
  %15 = load %struct.child*, %struct.child** %4, align 8
  %16 = icmp eq %struct.child* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %1
  %18 = load %struct.child*, %struct.child** %4, align 8
  %19 = getelementptr inbounds %struct.child, %struct.child* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17, %1
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @waitpid(i32 %23, i32* @wait_status, i32 0)
  store i32 %24, i32* %7, align 4
  br label %29

25:                                               ; preds = %17
  %26 = load %struct.child*, %struct.child** %4, align 8
  %27 = getelementptr inbounds %struct.child, %struct.child* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* @wait_status, align 4
  br label %29

29:                                               ; preds = %25, %22
  %30 = load %struct.child*, %struct.child** %4, align 8
  %31 = icmp ne %struct.child* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load %struct.child*, %struct.child** %4, align 8
  %34 = call i32 @delchild(%struct.child* %33)
  br label %35

35:                                               ; preds = %32, %29
  %36 = load i32, i32* @SIG_SETMASK, align 4
  %37 = call i32 @sigprocmask(i32 %36, i32* %6, i32* null)
  %38 = load i32, i32* %7, align 4
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %48, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @wait_status, align 4
  %42 = call i64 @WIFEXITED(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load i32, i32* @wait_status, align 4
  %46 = call i64 @WEXITSTATUS(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44, %35
  store i32 -1, i32* %2, align 4
  br label %50

49:                                               ; preds = %44, %40
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %48
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaddset(i32*, i32) #1

declare dso_local i32 @sigprocmask(i32, i32*, i32*) #1

declare dso_local %struct.child* @findchild(i32, i32) #1

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i32 @delchild(%struct.child*) #1

declare dso_local i64 @WIFEXITED(i32) #1

declare dso_local i64 @WEXITSTATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
