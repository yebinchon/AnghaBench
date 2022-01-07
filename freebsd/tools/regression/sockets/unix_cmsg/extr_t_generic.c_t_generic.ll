; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_cmsg/extr_t_generic.c_t_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_cmsg/extr_t_generic.c_t_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t_generic(i32 (i32)* %0, i32 (i32)* %1) #0 {
  %3 = alloca i32 (i32)*, align 8
  %4 = alloca i32 (i32)*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 (i32)* %0, i32 (i32)** %3, align 8
  store i32 (i32)* %1, i32 (i32)** %4, align 8
  %8 = call i32 (...) @uc_client_fork()
  switch i32 %8, label %53 [
    i32 0, label %9
    i32 1, label %26
  ]

9:                                                ; preds = %2
  %10 = call i32 (...) @uc_socket_create()
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store i32 -2, i32* %6, align 4
  br label %23

14:                                               ; preds = %9
  %15 = load i32 (i32)*, i32 (i32)** %3, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 %15(i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @uc_socket_close(i32 %18)
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  store i32 -2, i32* %6, align 4
  br label %22

22:                                               ; preds = %21, %14
  br label %23

23:                                               ; preds = %22, %13
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @uc_client_exit(i32 %24)
  br label %54

26:                                               ; preds = %2
  %27 = call i32 (...) @uc_socket_create()
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 -2, i32* %6, align 4
  br label %52

31:                                               ; preds = %26
  %32 = load i32 (i32)*, i32 (i32)** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 %32(i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = call i32 (...) @uc_client_wait()
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* %6, align 4
  %40 = icmp eq i32 %39, -2
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41, %31
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %44, %41, %38
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @uc_socket_close(i32 %47)
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 -2, i32* %6, align 4
  br label %51

51:                                               ; preds = %50, %46
  br label %52

52:                                               ; preds = %51, %30
  br label %54

53:                                               ; preds = %2
  store i32 -2, i32* %6, align 4
  br label %54

54:                                               ; preds = %53, %52, %23
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local i32 @uc_client_fork(...) #1

declare dso_local i32 @uc_socket_create(...) #1

declare dso_local i32 @uc_socket_close(i32) #1

declare dso_local i32 @uc_client_exit(i32) #1

declare dso_local i32 @uc_client_wait(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
