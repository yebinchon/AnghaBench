; ModuleID = '/home/carl/AnghaBench/git/compat/extr_mingw.c_ensure_socket_initialization.c'
source_filename = "/home/carl/AnghaBench/git/compat/extr_mingw.c_ensure_socket_initialization.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ensure_socket_initialization.initialized = internal global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"unable to initialize winsock subsystem, error %d\00", align 1
@WSACleanup = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ensure_socket_initialization to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ensure_socket_initialization() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @ensure_socket_initialization.initialized, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %17

5:                                                ; preds = %0
  %6 = call i32 @MAKEWORD(i32 2, i32 2)
  %7 = call i64 @WSAStartup(i32 %6, i32* %1)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = call i32 (...) @WSAGetLastError()
  %11 = call i32 @die(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %10)
  br label %12

12:                                               ; preds = %9, %5
  %13 = load i64, i64* @WSACleanup, align 8
  %14 = inttoptr i64 %13 to void ()*
  %15 = bitcast void ()* %14 to void (...)*
  %16 = call i32 @atexit(void (...)* %15)
  store i32 1, i32* @ensure_socket_initialization.initialized, align 4
  br label %17

17:                                               ; preds = %12, %4
  ret void
}

declare dso_local i64 @WSAStartup(i32, i32*) #1

declare dso_local i32 @MAKEWORD(i32, i32) #1

declare dso_local i32 @die(i8*, i32) #1

declare dso_local i32 @WSAGetLastError(...) #1

declare dso_local i32 @atexit(void (...)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
