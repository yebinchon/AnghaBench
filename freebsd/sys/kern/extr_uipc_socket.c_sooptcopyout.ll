; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_socket.c_sooptcopyout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_socket.c_sooptcopyout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockopt = type { i64, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sooptcopyout(%struct.sockopt* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.sockopt*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.sockopt* %0, %struct.sockopt** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load i64, i64* %6, align 8
  %10 = load %struct.sockopt*, %struct.sockopt** %4, align 8
  %11 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i64 @min(i64 %9, i64 %12)
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load %struct.sockopt*, %struct.sockopt** %4, align 8
  %16 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  %17 = load %struct.sockopt*, %struct.sockopt** %4, align 8
  %18 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %41

21:                                               ; preds = %3
  %22 = load %struct.sockopt*, %struct.sockopt** %4, align 8
  %23 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load i8*, i8** %5, align 8
  %28 = load %struct.sockopt*, %struct.sockopt** %4, align 8
  %29 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @copyout(i8* %27, i32* %30, i64 %31)
  store i32 %32, i32* %7, align 4
  br label %40

33:                                               ; preds = %21
  %34 = load i8*, i8** %5, align 8
  %35 = load %struct.sockopt*, %struct.sockopt** %4, align 8
  %36 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* %8, align 8
  %39 = call i32 @bcopy(i8* %34, i32* %37, i64 %38)
  br label %40

40:                                               ; preds = %33, %26
  br label %41

41:                                               ; preds = %40, %3
  %42 = load i32, i32* %7, align 4
  ret i32 %42
}

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @copyout(i8*, i32*, i64) #1

declare dso_local i32 @bcopy(i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
