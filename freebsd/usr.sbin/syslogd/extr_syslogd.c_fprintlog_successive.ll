; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/syslogd/extr_syslogd.c_fprintlog_successive.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/syslogd/extr_syslogd.c_fprintlog_successive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filed = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"last message repeated %d times\00", align 1
@LocalHostName = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"syslogd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.filed*, i32)* @fprintlog_successive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fprintlog_successive(%struct.filed* %0, i32 %1) #0 {
  %3 = alloca %struct.filed*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [100 x i8], align 16
  store %struct.filed* %0, %struct.filed** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.filed*, %struct.filed** %3, align 8
  %7 = getelementptr inbounds %struct.filed, %struct.filed* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp sgt i32 %8, 0
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %13 = load %struct.filed*, %struct.filed** %3, align 8
  %14 = getelementptr inbounds %struct.filed, %struct.filed* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @snprintf(i8* %12, i32 100, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.filed*, %struct.filed** %3, align 8
  %18 = load i32, i32* @LocalHostName, align 4
  %19 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @fprintlog_first(%struct.filed* %17, i32 %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* null, i32* null, i32* null, i8* %19, i32 %20)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @fprintlog_first(%struct.filed*, i32, i8*, i32*, i32*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
