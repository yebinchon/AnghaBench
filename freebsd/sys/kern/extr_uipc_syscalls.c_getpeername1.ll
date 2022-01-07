; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_syscalls.c_getpeername1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_syscalls.c_getpeername1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.getpeername_args = type { i32, i32, i32 }
%struct.sockaddr = type opaque

@M_SONAME = common dso_local global i32 0, align 4
@SV_AOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.getpeername_args*, i32)* @getpeername1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getpeername1(%struct.thread* %0, %struct.getpeername_args* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread*, align 8
  %6 = alloca %struct.getpeername_args*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %5, align 8
  store %struct.getpeername_args* %1, %struct.getpeername_args** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.getpeername_args*, %struct.getpeername_args** %6, align 8
  %12 = getelementptr inbounds %struct.getpeername_args, %struct.getpeername_args* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @copyin(i32 %13, i64* %9, i32 8)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %4, align 4
  br label %56

19:                                               ; preds = %3
  %20 = load %struct.thread*, %struct.thread** %5, align 8
  %21 = load %struct.getpeername_args*, %struct.getpeername_args** %6, align 8
  %22 = getelementptr inbounds %struct.getpeername_args, %struct.getpeername_args* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = bitcast %struct.sockaddr** %8 to i64**
  %25 = call i32 @kern_getpeername(%struct.thread* %20, i32 %23, i64** %24, i64* %9)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %4, align 4
  br label %56

30:                                               ; preds = %19
  %31 = load i64, i64* %9, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %30
  %34 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %35 = bitcast %struct.sockaddr* %34 to i64*
  %36 = load %struct.getpeername_args*, %struct.getpeername_args** %6, align 8
  %37 = getelementptr inbounds %struct.getpeername_args, %struct.getpeername_args* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* %9, align 8
  %40 = trunc i64 %39 to i32
  %41 = call i32 @copyout(i64* %35, i32 %38, i32 %40)
  store i32 %41, i32* %10, align 4
  br label %42

42:                                               ; preds = %33, %30
  %43 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %44 = bitcast %struct.sockaddr* %43 to i64*
  %45 = load i32, i32* @M_SONAME, align 4
  %46 = call i32 @free(i64* %44, i32 %45)
  %47 = load i32, i32* %10, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %42
  %50 = load %struct.getpeername_args*, %struct.getpeername_args** %6, align 8
  %51 = getelementptr inbounds %struct.getpeername_args, %struct.getpeername_args* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @copyout(i64* %9, i32 %52, i32 8)
  store i32 %53, i32* %10, align 4
  br label %54

54:                                               ; preds = %49, %42
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %54, %28, %17
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @copyin(i32, i64*, i32) #1

declare dso_local i32 @kern_getpeername(%struct.thread*, i32, i64**, i64*) #1

declare dso_local i32 @copyout(i64*, i32, i32) #1

declare dso_local i32 @free(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
