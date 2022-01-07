; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_subr.c_register_tcp_functions_as_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_subr.c_register_tcp_functions_as_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_function_block = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @register_tcp_functions_as_name(%struct.tcp_function_block* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.tcp_function_block*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [1 x i8*], align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tcp_function_block* %0, %struct.tcp_function_block** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 1, i32* %8, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i8*, i8** %5, align 8
  %14 = getelementptr inbounds [1 x i8*], [1 x i8*]* %7, i64 0, i64 0
  store i8* %13, i8** %14, align 8
  br label %20

15:                                               ; preds = %3
  %16 = load %struct.tcp_function_block*, %struct.tcp_function_block** %4, align 8
  %17 = getelementptr inbounds %struct.tcp_function_block, %struct.tcp_function_block* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr inbounds [1 x i8*], [1 x i8*]* %7, i64 0, i64 0
  store i8* %18, i8** %19, align 8
  br label %20

20:                                               ; preds = %15, %12
  %21 = load %struct.tcp_function_block*, %struct.tcp_function_block** %4, align 8
  %22 = load i32, i32* %6, align 4
  %23 = getelementptr inbounds [1 x i8*], [1 x i8*]* %7, i64 0, i64 0
  %24 = call i32 @register_tcp_functions_as_names(%struct.tcp_function_block* %21, i32 %22, i8** %23, i32* %8)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  ret i32 %25
}

declare dso_local i32 @register_tcp_functions_as_names(%struct.tcp_function_block*, i32, i8**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
