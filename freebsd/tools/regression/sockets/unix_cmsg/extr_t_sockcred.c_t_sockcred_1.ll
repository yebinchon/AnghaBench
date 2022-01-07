; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_cmsg/extr_t_sockcred.c_t_sockcred_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_cmsg/extr_t_sockcred.c_t_sockcred_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"client #%u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t_sockcred_1() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 (...) @uc_client_fork()
  switch i32 %5, label %68 [
    i32 0, label %6
    i32 1, label %36
  ]

6:                                                ; preds = %0
  store i32 1, i32* %1, align 4
  br label %7

7:                                                ; preds = %30, %6
  %8 = load i32, i32* %1, align 4
  %9 = icmp sle i32 %8, 2
  br i1 %9, label %10, label %33

10:                                               ; preds = %7
  %11 = load i32, i32* %1, align 4
  %12 = call i32 @uc_dbgmsg(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = call i32 (...) @uc_socket_create()
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  store i32 -2, i32* %3, align 4
  br label %25

17:                                               ; preds = %10
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @t_sockcred_client(i32 1, i32 %18)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @uc_socket_close(i32 %20)
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 -2, i32* %3, align 4
  br label %24

24:                                               ; preds = %23, %17
  br label %25

25:                                               ; preds = %24, %16
  %26 = load i32, i32* %3, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  br label %33

29:                                               ; preds = %25
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %1, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %1, align 4
  br label %7

33:                                               ; preds = %28, %7
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @uc_client_exit(i32 %34)
  br label %69

36:                                               ; preds = %0
  %37 = call i32 (...) @uc_socket_create()
  store i32 %37, i32* %2, align 4
  %38 = load i32, i32* %2, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 -2, i32* %3, align 4
  br label %67

41:                                               ; preds = %36
  %42 = load i32, i32* %2, align 4
  %43 = call i32 @t_sockcred_server(i32 1, i32 %42)
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* %3, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* %2, align 4
  %48 = call i32 @t_sockcred_server(i32 3, i32 %47)
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %46, %41
  %50 = call i32 (...) @uc_client_wait()
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %3, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* %3, align 4
  %55 = icmp eq i32 %54, -2
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56, %49
  %60 = load i32, i32* %4, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %59, %56, %53
  %62 = load i32, i32* %2, align 4
  %63 = call i32 @uc_socket_close(i32 %62)
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  store i32 -2, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %61
  br label %67

67:                                               ; preds = %66, %40
  br label %69

68:                                               ; preds = %0
  store i32 -2, i32* %3, align 4
  br label %69

69:                                               ; preds = %68, %67, %33
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @uc_client_fork(...) #1

declare dso_local i32 @uc_dbgmsg(i8*, i32) #1

declare dso_local i32 @uc_socket_create(...) #1

declare dso_local i32 @t_sockcred_client(i32, i32) #1

declare dso_local i32 @uc_socket_close(i32) #1

declare dso_local i32 @uc_client_exit(i32) #1

declare dso_local i32 @t_sockcred_server(i32, i32) #1

declare dso_local i32 @uc_client_wait(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
