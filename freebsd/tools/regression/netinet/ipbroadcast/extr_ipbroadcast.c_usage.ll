; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/netinet/ipbroadcast/extr_ipbroadcast.c_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/netinet/ipbroadcast/extr_ipbroadcast.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"IPv4 broadcast test program. Sends a %d byte UDP datagram to <dest>:<port>.\0A\0A\00", align 1
@DEFAULT_PAYLOAD_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [125 x i8] c"usage: %s [-1] [-A laddr] [-b] [-B] [-d] [-i iface] [-l len]\0A                   [-p port] [-R] [-s srcaddr] [-t ttl] <dest>\0A\00", align 1
@progname = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"-1: Set IP_ONESBCAST\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"-A: specify laddr (default: INADDR_ANY)\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"-b: bind socket to <laddr>:<lport>\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"-B: Set SO_BROADCAST\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"-d: Set SO_DONTROUTE\0A\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"-i: Set IP_SENDIF <iface> (if supported)\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"-l: Set payload size to <len>\0A\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"-p: Set local and remote port (default: %d)\0A\00", align 1
@DEFAULT_PORT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [30 x i8] c"-R: Use raw IP (protocol %d)\0A\00", align 1
@IPPROTO_ZEROHOP = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [37 x i8] c"-s: Set IP_SENDSRCADDR to <srcaddr>\0A\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"-t: Set IP_TTL to <ttl>\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage() #0 {
  %1 = load i32, i32* @stderr, align 4
  %2 = load i32, i32* @DEFAULT_PAYLOAD_SIZE, align 4
  %3 = call i32 (i32, i8*, ...) @fprintf(i32 %1, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i32 %2)
  %4 = load i32, i32* @stderr, align 4
  %5 = load i8*, i8** @progname, align 8
  %6 = call i32 (i32, i8*, ...) @fprintf(i32 %4, i8* getelementptr inbounds ([125 x i8], [125 x i8]* @.str.1, i64 0, i64 0), i8* %5)
  %7 = load i32, i32* @stderr, align 4
  %8 = call i32 (i32, i8*, ...) @fprintf(i32 %7, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %9 = load i32, i32* @stderr, align 4
  %10 = call i32 (i32, i8*, ...) @fprintf(i32 %9, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %11 = load i32, i32* @stderr, align 4
  %12 = call i32 (i32, i8*, ...) @fprintf(i32 %11, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %13 = load i32, i32* @stderr, align 4
  %14 = call i32 (i32, i8*, ...) @fprintf(i32 %13, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %15 = load i32, i32* @stderr, align 4
  %16 = call i32 (i32, i8*, ...) @fprintf(i32 %15, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %17 = load i32, i32* @stderr, align 4
  %18 = call i32 (i32, i8*, ...) @fprintf(i32 %17, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0))
  %19 = load i32, i32* @stderr, align 4
  %20 = call i32 (i32, i8*, ...) @fprintf(i32 %19, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  %21 = load i32, i32* @stderr, align 4
  %22 = load i32, i32* @DEFAULT_PORT, align 4
  %23 = call i32 (i32, i8*, ...) @fprintf(i32 %21, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @stderr, align 4
  %25 = load i32, i32* @IPPROTO_ZEROHOP, align 4
  %26 = call i32 (i32, i8*, ...) @fprintf(i32 %24, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @stderr, align 4
  %28 = call i32 (i32, i8*, ...) @fprintf(i32 %27, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i64 0, i64 0))
  %29 = load i32, i32* @stderr, align 4
  %30 = call i32 (i32, i8*, ...) @fprintf(i32 %29, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0))
  %31 = load i32, i32* @EXIT_FAILURE, align 4
  %32 = call i32 @exit(i32 %31) #3
  unreachable
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

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
