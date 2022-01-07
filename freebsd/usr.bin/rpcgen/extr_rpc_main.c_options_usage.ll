; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_main.c_options_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_main.c_options_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"options:\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"-a\09\09generate all files, including samples\0A\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"-b\09\09backward compatibility mode (generates code for FreeBSD 4.X)\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"-c\09\09generate XDR routines\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"-C\09\09ANSI C mode\0A\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"-Dname[=value]\09define a symbol (same as #define)\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"-h\09\09generate header file\0A\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c"-i size\09\09size at which to start generatinginline code\0A\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"-I\09\09generate code for inetd support in server\0A\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"-K seconds\09server exits after K seconds ofinactivity\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"-l\09\09generate client side stubs\0A\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"-L\09\09server errors will be printed to syslog\0A\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"-m\09\09generate server side stubs\0A\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"-M\09\09generate MT-safe code\0A\00", align 1
@.str.14 = private unnamed_addr constant [56 x i8] c"-n netid\09generate server code that supportsnamed netid\0A\00", align 1
@.str.15 = private unnamed_addr constant [50 x i8] c"-N\09\09supports multiple arguments andcall-by-value\0A\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"-o outfile\09name of the output file\0A\00", align 1
@.str.17 = private unnamed_addr constant [57 x i8] c"-P\09\09generate code for port monitoring support in server\0A\00", align 1
@.str.18 = private unnamed_addr constant [60 x i8] c"-s nettype\09generate server code that supports namednettype\0A\00", align 1
@.str.19 = private unnamed_addr constant [61 x i8] c"-Sc\09\09generate sample client code that uses remoteprocedures\0A\00", align 1
@.str.20 = private unnamed_addr constant [64 x i8] c"-Ss\09\09generate sample server code that definesremote procedures\0A\00", align 1
@.str.21 = private unnamed_addr constant [35 x i8] c"-Sm \09\09generate makefile template \0A\00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"-t\09\09generate RPC dispatch table\0A\00", align 1
@.str.23 = private unnamed_addr constant [50 x i8] c"-T\09\09generate code to support RPC dispatch tables\0A\00", align 1
@.str.24 = private unnamed_addr constant [34 x i8] c"-Y path\09\09path where cpp is found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @options_usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @options_usage() #0 {
  %1 = load i32, i32* @stderr, align 4
  %2 = call i32 @f_print(i32 %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %3 = load i32, i32* @stderr, align 4
  %4 = call i32 @f_print(i32 %3, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %5 = load i32, i32* @stderr, align 4
  %6 = call i32 @f_print(i32 %5, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0))
  %7 = load i32, i32* @stderr, align 4
  %8 = call i32 @f_print(i32 %7, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %9 = load i32, i32* @stderr, align 4
  %10 = call i32 @f_print(i32 %9, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %11 = load i32, i32* @stderr, align 4
  %12 = call i32 @f_print(i32 %11, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0))
  %13 = load i32, i32* @stderr, align 4
  %14 = call i32 @f_print(i32 %13, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %15 = load i32, i32* @stderr, align 4
  %16 = call i32 @f_print(i32 %15, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0))
  %17 = load i32, i32* @stderr, align 4
  %18 = call i32 @f_print(i32 %17, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0))
  %19 = load i32, i32* @stderr, align 4
  %20 = call i32 @f_print(i32 %19, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i64 0, i64 0))
  %21 = load i32, i32* @stderr, align 4
  %22 = call i32 @f_print(i32 %21, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0))
  %23 = load i32, i32* @stderr, align 4
  %24 = call i32 @f_print(i32 %23, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i64 0, i64 0))
  %25 = load i32, i32* @stderr, align 4
  %26 = call i32 @f_print(i32 %25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0))
  %27 = load i32, i32* @stderr, align 4
  %28 = call i32 @f_print(i32 %27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0))
  %29 = load i32, i32* @stderr, align 4
  %30 = call i32 @f_print(i32 %29, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.14, i64 0, i64 0))
  %31 = load i32, i32* @stderr, align 4
  %32 = call i32 @f_print(i32 %31, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.15, i64 0, i64 0))
  %33 = load i32, i32* @stderr, align 4
  %34 = call i32 @f_print(i32 %33, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i64 0, i64 0))
  %35 = load i32, i32* @stderr, align 4
  %36 = call i32 @f_print(i32 %35, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.17, i64 0, i64 0))
  %37 = load i32, i32* @stderr, align 4
  %38 = call i32 @f_print(i32 %37, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.18, i64 0, i64 0))
  %39 = load i32, i32* @stderr, align 4
  %40 = call i32 @f_print(i32 %39, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.19, i64 0, i64 0))
  %41 = load i32, i32* @stderr, align 4
  %42 = call i32 @f_print(i32 %41, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.20, i64 0, i64 0))
  %43 = load i32, i32* @stderr, align 4
  %44 = call i32 @f_print(i32 %43, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.21, i64 0, i64 0))
  %45 = load i32, i32* @stderr, align 4
  %46 = call i32 @f_print(i32 %45, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.22, i64 0, i64 0))
  %47 = load i32, i32* @stderr, align 4
  %48 = call i32 @f_print(i32 %47, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.23, i64 0, i64 0))
  %49 = load i32, i32* @stderr, align 4
  %50 = call i32 @f_print(i32 %49, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.24, i64 0, i64 0))
  %51 = call i32 @exit(i32 1) #3
  unreachable
}

declare dso_local i32 @f_print(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
