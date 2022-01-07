; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sockets/zerosend/extr_zerosend.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sockets/zerosend/extr_zerosend.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"udp_0send\00", align 1
@PORT1 = common dso_local global i64 0, align 8
@PORT2 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"udp_0write\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"tcp_0send\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"tcp_0write\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"udsstream_0send\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"udsstream_0write\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"udsdgram_0send\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"udsdgram_0write\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"pipe_0write\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"pipd_0write\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"fifo_0write\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [2 x i32], align 4
  store i32 0, i32* %1, align 4
  %3 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %4 = load i64, i64* @PORT1, align 8
  %5 = load i64, i64* @PORT2, align 8
  %6 = call i32 @setup_udp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %3, i64 %4, i64 %5)
  %7 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @try_0send(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %11 = call i32 @close_both(i32* %10)
  %12 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %13 = load i64, i64* @PORT1, align 8
  %14 = add nsw i64 %13, 10
  %15 = load i64, i64* @PORT2, align 8
  %16 = add nsw i64 %15, 10
  %17 = call i32 @setup_udp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* %12, i64 %14, i64 %16)
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @try_0write(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %22 = call i32 @close_both(i32* %21)
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %24 = load i64, i64* @PORT1, align 8
  %25 = call i32 @setup_tcp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32* %23, i64 %24)
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @try_0send(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %27)
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %30 = call i32 @close_both(i32* %29)
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %32 = load i64, i64* @PORT1, align 8
  %33 = add nsw i64 %32, 10
  %34 = call i32 @setup_tcp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32* %31, i64 %33)
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @try_0write(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %36)
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %39 = call i32 @close_both(i32* %38)
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %41 = call i32 @setup_udsstream(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32* %40)
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @try_0send(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %43)
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %46 = call i32 @close_both(i32* %45)
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %48 = call i32 @setup_udsstream(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32* %47)
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @try_0write(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %50)
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %53 = call i32 @close_both(i32* %52)
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %55 = call i32 @setup_udsdgram(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32* %54)
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @try_0send(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %57)
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %60 = call i32 @close_both(i32* %59)
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %62 = call i32 @setup_udsdgram(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32* %61)
  %63 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @try_0write(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 %64)
  %66 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %67 = call i32 @close_both(i32* %66)
  %68 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %69 = call i32 @setup_pipe(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32* %68)
  %70 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @try_0write(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32 %71)
  %73 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %74 = call i32 @close_both(i32* %73)
  %75 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %76 = call i32 @setup_fifo(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32* %75)
  %77 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @try_0write(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 %78)
  %80 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %81 = call i32 @close_both(i32* %80)
  ret i32 0
}

declare dso_local i32 @setup_udp(i8*, i32*, i64, i64) #1

declare dso_local i32 @try_0send(i8*, i32) #1

declare dso_local i32 @close_both(i32*) #1

declare dso_local i32 @try_0write(i8*, i32) #1

declare dso_local i32 @setup_tcp(i8*, i32*, i64) #1

declare dso_local i32 @setup_udsstream(i8*, i32*) #1

declare dso_local i32 @setup_udsdgram(i8*, i32*) #1

declare dso_local i32 @setup_pipe(i8*, i32*) #1

declare dso_local i32 @setup_fifo(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
