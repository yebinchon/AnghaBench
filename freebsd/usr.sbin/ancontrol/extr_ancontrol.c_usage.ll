; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ancontrol/extr_ancontrol.c_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ancontrol/extr_ancontrol.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"usage:  %s -i iface -A (show specified APs)\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"\09%s -i iface -N (show specified SSIDss)\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"\09%s -i iface -S (show NIC status)\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"\09%s -i iface -I (show NIC capabilities)\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"\09%s -i iface -T (show stats counters)\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"\09%s -i iface -C (show current config)\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"\09%s -i iface -R (show RSSI map)\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"\09%s -i iface -t 0-4 (set TX speed)\0A\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"\09%s -i iface -s 0-3 (set power save mode)\0A\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"\09%s -i iface [-v 1-4] -a AP (specify AP)\0A\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"\09%s -i iface -b val (set beacon period)\0A\00", align 1
@.str.11 = private unnamed_addr constant [46 x i8] c"\09%s -i iface [-v 0|1] -d val (set diversity)\0A\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"\09%s -i iface -j val (set netjoin timeout)\0A\00", align 1
@.str.13 = private unnamed_addr constant [43 x i8] c"\09%s -i iface -e 0-4 (enable transmit key)\0A\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"\09%s -i iface [-v 0-8] -k key (set key)\0A\00", align 1
@.str.15 = private unnamed_addr constant [50 x i8] c"\09%s -i iface -K 0-2 (no auth/open/shared secret)\0A\00", align 1
@.str.16 = private unnamed_addr constant [50 x i8] c"\09%s -i iface -W 0-2 (no WEP/full WEP/mixed cell)\0A\00", align 1
@.str.17 = private unnamed_addr constant [40 x i8] c"\09%s -i iface -l val (set station name)\0A\00", align 1
@.str.18 = private unnamed_addr constant [39 x i8] c"\09%s -i iface -m val (set MAC address)\0A\00", align 1
@.str.19 = private unnamed_addr constant [46 x i8] c"\09%s -i iface [-v 1-3] -n SSID (specify SSID)\0A\00", align 1
@.str.20 = private unnamed_addr constant [42 x i8] c"\09%s -i iface -o 0|1 (set operating mode)\0A\00", align 1
@.str.21 = private unnamed_addr constant [42 x i8] c"\09%s -i iface -c val (set ad-hoc channel)\0A\00", align 1
@.str.22 = private unnamed_addr constant [42 x i8] c"\09%s -i iface -f val (set frag threshold)\0A\00", align 1
@.str.23 = private unnamed_addr constant [41 x i8] c"\09%s -i iface -r val (set RTS threshold)\0A\00", align 1
@.str.24 = private unnamed_addr constant [41 x i8] c"\09%s -i iface -M 0-15 (set monitor mode)\0A\00", align 1
@.str.25 = private unnamed_addr constant [55 x i8] c"\09%s -i iface -L user (enter LEAP authentication mode)\0A\00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"\09%s -h (display this message)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i32, i32* @stderr, align 4
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 @fprintf(i32 %3, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %4)
  %6 = load i32, i32* @stderr, align 4
  %7 = load i8*, i8** %2, align 8
  %8 = call i32 @fprintf(i32 %6, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %7)
  %9 = load i32, i32* @stderr, align 4
  %10 = load i8*, i8** %2, align 8
  %11 = call i32 @fprintf(i32 %9, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %10)
  %12 = load i32, i32* @stderr, align 4
  %13 = load i8*, i8** %2, align 8
  %14 = call i32 @fprintf(i32 %12, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8* %13)
  %15 = load i32, i32* @stderr, align 4
  %16 = load i8*, i8** %2, align 8
  %17 = call i32 @fprintf(i32 %15, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i8* %16)
  %18 = load i32, i32* @stderr, align 4
  %19 = load i8*, i8** %2, align 8
  %20 = call i32 @fprintf(i32 %18, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i8* %19)
  %21 = load i32, i32* @stderr, align 4
  %22 = load i8*, i8** %2, align 8
  %23 = call i32 @fprintf(i32 %21, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i8* %22)
  %24 = load i32, i32* @stderr, align 4
  %25 = load i8*, i8** %2, align 8
  %26 = call i32 @fprintf(i32 %24, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i8* %25)
  %27 = load i32, i32* @stderr, align 4
  %28 = load i8*, i8** %2, align 8
  %29 = call i32 @fprintf(i32 %27, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0), i8* %28)
  %30 = load i32, i32* @stderr, align 4
  %31 = load i8*, i8** %2, align 8
  %32 = call i32 @fprintf(i32 %30, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0), i8* %31)
  %33 = load i32, i32* @stderr, align 4
  %34 = load i8*, i8** %2, align 8
  %35 = call i32 @fprintf(i32 %33, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), i8* %34)
  %36 = load i32, i32* @stderr, align 4
  %37 = load i8*, i8** %2, align 8
  %38 = call i32 @fprintf(i32 %36, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.11, i64 0, i64 0), i8* %37)
  %39 = load i32, i32* @stderr, align 4
  %40 = load i8*, i8** %2, align 8
  %41 = call i32 @fprintf(i32 %39, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0), i8* %40)
  %42 = load i32, i32* @stderr, align 4
  %43 = load i8*, i8** %2, align 8
  %44 = call i32 @fprintf(i32 %42, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i64 0, i64 0), i8* %43)
  %45 = load i32, i32* @stderr, align 4
  %46 = load i8*, i8** %2, align 8
  %47 = call i32 @fprintf(i32 %45, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i64 0, i64 0), i8* %46)
  %48 = load i32, i32* @stderr, align 4
  %49 = load i8*, i8** %2, align 8
  %50 = call i32 @fprintf(i32 %48, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.15, i64 0, i64 0), i8* %49)
  %51 = load i32, i32* @stderr, align 4
  %52 = load i8*, i8** %2, align 8
  %53 = call i32 @fprintf(i32 %51, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.16, i64 0, i64 0), i8* %52)
  %54 = load i32, i32* @stderr, align 4
  %55 = load i8*, i8** %2, align 8
  %56 = call i32 @fprintf(i32 %54, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.17, i64 0, i64 0), i8* %55)
  %57 = load i32, i32* @stderr, align 4
  %58 = load i8*, i8** %2, align 8
  %59 = call i32 @fprintf(i32 %57, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18, i64 0, i64 0), i8* %58)
  %60 = load i32, i32* @stderr, align 4
  %61 = load i8*, i8** %2, align 8
  %62 = call i32 @fprintf(i32 %60, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.19, i64 0, i64 0), i8* %61)
  %63 = load i32, i32* @stderr, align 4
  %64 = load i8*, i8** %2, align 8
  %65 = call i32 @fprintf(i32 %63, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.20, i64 0, i64 0), i8* %64)
  %66 = load i32, i32* @stderr, align 4
  %67 = load i8*, i8** %2, align 8
  %68 = call i32 @fprintf(i32 %66, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.21, i64 0, i64 0), i8* %67)
  %69 = load i32, i32* @stderr, align 4
  %70 = load i8*, i8** %2, align 8
  %71 = call i32 @fprintf(i32 %69, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.22, i64 0, i64 0), i8* %70)
  %72 = load i32, i32* @stderr, align 4
  %73 = load i8*, i8** %2, align 8
  %74 = call i32 @fprintf(i32 %72, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.23, i64 0, i64 0), i8* %73)
  %75 = load i32, i32* @stderr, align 4
  %76 = load i8*, i8** %2, align 8
  %77 = call i32 @fprintf(i32 %75, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.24, i64 0, i64 0), i8* %76)
  %78 = load i32, i32* @stderr, align 4
  %79 = load i8*, i8** %2, align 8
  %80 = call i32 @fprintf(i32 %78, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.25, i64 0, i64 0), i8* %79)
  %81 = load i32, i32* @stderr, align 4
  %82 = load i8*, i8** %2, align 8
  %83 = call i32 @fprintf(i32 %81, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.26, i64 0, i64 0), i8* %82)
  %84 = call i32 @exit(i32 1) #3
  unreachable
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

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
