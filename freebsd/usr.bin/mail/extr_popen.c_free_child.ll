; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_popen.c_free_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_popen.c_free_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child = type { i32, i64 }

@SIGCHLD = common dso_local global i32 0, align 4
@SIG_BLOCK = common dso_local global i32 0, align 4
@SIG_SETMASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_child(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.child*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = call i32 @sigemptyset(i32* %4)
  %7 = load i32, i32* @SIGCHLD, align 4
  %8 = call i32 @sigaddset(i32* %4, i32 %7)
  %9 = load i32, i32* @SIG_BLOCK, align 4
  %10 = call i32 @sigprocmask(i32 %9, i32* %4, i32* %5)
  %11 = load i32, i32* %2, align 4
  %12 = call %struct.child* @findchild(i32 %11, i32 0)
  store %struct.child* %12, %struct.child** %3, align 8
  %13 = icmp ne %struct.child* %12, null
  br i1 %13, label %14, label %26

14:                                               ; preds = %1
  %15 = load %struct.child*, %struct.child** %3, align 8
  %16 = getelementptr inbounds %struct.child, %struct.child* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load %struct.child*, %struct.child** %3, align 8
  %21 = call i32 @delchild(%struct.child* %20)
  br label %25

22:                                               ; preds = %14
  %23 = load %struct.child*, %struct.child** %3, align 8
  %24 = getelementptr inbounds %struct.child, %struct.child* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  br label %25

25:                                               ; preds = %22, %19
  br label %26

26:                                               ; preds = %25, %1
  %27 = load i32, i32* @SIG_SETMASK, align 4
  %28 = call i32 @sigprocmask(i32 %27, i32* %5, i32* null)
  ret void
}

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaddset(i32*, i32) #1

declare dso_local i32 @sigprocmask(i32, i32*, i32*) #1

declare dso_local %struct.child* @findchild(i32, i32) #1

declare dso_local i32 @delchild(%struct.child*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
