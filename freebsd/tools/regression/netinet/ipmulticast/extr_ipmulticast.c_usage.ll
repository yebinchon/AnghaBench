; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/netinet/ipmulticast/extr_ipmulticast.c_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/netinet/ipmulticast/extr_ipmulticast.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"\0AIP multicast regression test utility\0A\00", align 1
@.str.1 = private unnamed_addr constant [173 x i8] c"usage: %s [-4] [-b] [-g groupaddr] [-i ifname] [-I ifaddr] [-m]\0A       [-M ngroups] [-p portno] [-r] [-R] [-s] [-S nsources] [-t] [-T timeout]\0A       [-v] [blockaddr ...]\0A\0A\00", align 1
@progname = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [58 x i8] c"-4: Use IPv4 API (default: Use protocol-independent API)\0A\00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"-b: bind listening socket to ifaddr (default: INADDR_ANY)\0A\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"-g: Base IPv4 multicast group to join (default: %s)\0A\00", align 1
@DEFAULT_GROUP_STR = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [49 x i8] c"-i: interface for multicast joins (default: %s)\0A\00", align 1
@DEFAULT_IFNAME = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [73 x i8] c"-I: IPv4 address to join groups on, if using IPv4 API\0A    (default: %s)\0A\00", align 1
@DEFAULT_IFADDR_STR = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [54 x i8] c"-M: Number of multicast groups to join (default: %d)\0A\00", align 1
@nmcastgroups = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [45 x i8] c"-p: Set local and remote port (default: %d)\0A\00", align 1
@DEFAULT_PORT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [40 x i8] c"-r: Set SO_REUSEPORT on (default: off)\0A\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"-R: Randomize groups/sources (default: off)\0A\00", align 1
@.str.11 = private unnamed_addr constant [61 x i8] c"-s: Test source-specific API (default: test any-source API)\0A\00", align 1
@.str.12 = private unnamed_addr constant [97 x i8] c"-S: Number of multicast sources to generate if\0A    none specified on command line (default: %d)\0A\00", align 1
@nmcastsources = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [48 x i8] c"-t: Test get/setNsourcefilter() (default: off)\0A\00", align 1
@.str.14 = private unnamed_addr constant [70 x i8] c"-T: Timeout to wait for blocked traffic on first group (default: %d)\0A\00", align 1
@DEFAULT_TIMEOUT = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [31 x i8] c"-v: Be verbose (default: off)\0A\00", align 1
@.str.16 = private unnamed_addr constant [72 x i8] c"\0ARemaining arguments are treated as a list of IPv4 sources to filter.\0A\0A\00", align 1
@EX_USAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage() #0 {
  %1 = load i32, i32* @stderr, align 4
  %2 = call i32 (i32, i8*, ...) @fprintf(i32 %1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %3 = load i32, i32* @stderr, align 4
  %4 = load i8*, i8** @progname, align 8
  %5 = call i32 (i32, i8*, ...) @fprintf(i32 %3, i8* getelementptr inbounds ([173 x i8], [173 x i8]* @.str.1, i64 0, i64 0), i8* %4)
  %6 = load i32, i32* @stderr, align 4
  %7 = call i32 (i32, i8*, ...) @fprintf(i32 %6, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0))
  %8 = load i32, i32* @stderr, align 4
  %9 = call i32 (i32, i8*, ...) @fprintf(i32 %8, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0))
  %10 = load i32, i32* @stderr, align 4
  %11 = load i8*, i8** @DEFAULT_GROUP_STR, align 8
  %12 = call i32 (i32, i8*, ...) @fprintf(i32 %10, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i8* %11)
  %13 = load i32, i32* @stderr, align 4
  %14 = load i8*, i8** @DEFAULT_IFNAME, align 8
  %15 = call i32 (i32, i8*, ...) @fprintf(i32 %13, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i8* %14)
  %16 = load i32, i32* @stderr, align 4
  %17 = load i8*, i8** @DEFAULT_IFADDR_STR, align 8
  %18 = call i32 (i32, i8*, ...) @fprintf(i32 %16, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.6, i64 0, i64 0), i8* %17)
  %19 = load i32, i32* @stderr, align 4
  %20 = load i64, i64* @nmcastgroups, align 8
  %21 = trunc i64 %20 to i32
  %22 = call i32 (i32, i8*, ...) @fprintf(i32 %19, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @stderr, align 4
  %24 = load i32, i32* @DEFAULT_PORT, align 4
  %25 = call i32 (i32, i8*, ...) @fprintf(i32 %23, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @stderr, align 4
  %27 = call i32 (i32, i8*, ...) @fprintf(i32 %26, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0))
  %28 = load i32, i32* @stderr, align 4
  %29 = call i32 (i32, i8*, ...) @fprintf(i32 %28, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0))
  %30 = load i32, i32* @stderr, align 4
  %31 = call i32 (i32, i8*, ...) @fprintf(i32 %30, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.11, i64 0, i64 0))
  %32 = load i32, i32* @stderr, align 4
  %33 = load i64, i64* @nmcastsources, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i32 (i32, i8*, ...) @fprintf(i32 %32, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.12, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @stderr, align 4
  %37 = call i32 (i32, i8*, ...) @fprintf(i32 %36, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13, i64 0, i64 0))
  %38 = load i32, i32* @stderr, align 4
  %39 = load i32, i32* @DEFAULT_TIMEOUT, align 4
  %40 = call i32 (i32, i8*, ...) @fprintf(i32 %38, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.14, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @stderr, align 4
  %42 = call i32 (i32, i8*, ...) @fprintf(i32 %41, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i64 0, i64 0))
  %43 = load i32, i32* @stderr, align 4
  %44 = call i32 (i32, i8*, ...) @fprintf(i32 %43, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.16, i64 0, i64 0))
  %45 = load i32, i32* @EX_USAGE, align 4
  %46 = call i32 @exit(i32 %45) #3
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
