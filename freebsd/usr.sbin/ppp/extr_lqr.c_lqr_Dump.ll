; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_lqr.c_lqr_Dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_lqr.c_lqr_Dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lqrdata = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@LogLQM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%s: %s:\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"  Magic:          %08x   LastOutLQRs:    %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"  LastOutPackets: %08x   LastOutOctets:  %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"  PeerInLQRs:     %08x   PeerInPackets:  %08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"  PeerInDiscards: %08x   PeerInErrors:   %08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"  PeerInOctets:   %08x   PeerOutLQRs:    %08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"  PeerOutPackets: %08x   PeerOutOctets:  %08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lqr_Dump(i8* %0, i8* %1, %struct.lqrdata* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.lqrdata*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.lqrdata* %2, %struct.lqrdata** %6, align 8
  %7 = load i32, i32* @LogLQM, align 4
  %8 = call i64 @log_IsKept(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %63

10:                                               ; preds = %3
  %11 = load i32, i32* @LogLQM, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @log_Printf(i32 %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %12, i8* %13)
  %15 = load i32, i32* @LogLQM, align 4
  %16 = load %struct.lqrdata*, %struct.lqrdata** %6, align 8
  %17 = getelementptr inbounds %struct.lqrdata, %struct.lqrdata* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load %struct.lqrdata*, %struct.lqrdata** %6, align 8
  %20 = getelementptr inbounds %struct.lqrdata, %struct.lqrdata* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @log_Printf(i32 %15, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i8* %18, i8* %21)
  %23 = load i32, i32* @LogLQM, align 4
  %24 = load %struct.lqrdata*, %struct.lqrdata** %6, align 8
  %25 = getelementptr inbounds %struct.lqrdata, %struct.lqrdata* %24, i32 0, i32 2
  %26 = load i8*, i8** %25, align 8
  %27 = load %struct.lqrdata*, %struct.lqrdata** %6, align 8
  %28 = getelementptr inbounds %struct.lqrdata, %struct.lqrdata* %27, i32 0, i32 3
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @log_Printf(i32 %23, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i8* %26, i8* %29)
  %31 = load i32, i32* @LogLQM, align 4
  %32 = load %struct.lqrdata*, %struct.lqrdata** %6, align 8
  %33 = getelementptr inbounds %struct.lqrdata, %struct.lqrdata* %32, i32 0, i32 4
  %34 = load i8*, i8** %33, align 8
  %35 = load %struct.lqrdata*, %struct.lqrdata** %6, align 8
  %36 = getelementptr inbounds %struct.lqrdata, %struct.lqrdata* %35, i32 0, i32 5
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @log_Printf(i32 %31, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i8* %34, i8* %37)
  %39 = load i32, i32* @LogLQM, align 4
  %40 = load %struct.lqrdata*, %struct.lqrdata** %6, align 8
  %41 = getelementptr inbounds %struct.lqrdata, %struct.lqrdata* %40, i32 0, i32 6
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.lqrdata*, %struct.lqrdata** %6, align 8
  %44 = getelementptr inbounds %struct.lqrdata, %struct.lqrdata* %43, i32 0, i32 7
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @log_Printf(i32 %39, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i8* %42, i8* %45)
  %47 = load i32, i32* @LogLQM, align 4
  %48 = load %struct.lqrdata*, %struct.lqrdata** %6, align 8
  %49 = getelementptr inbounds %struct.lqrdata, %struct.lqrdata* %48, i32 0, i32 8
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.lqrdata*, %struct.lqrdata** %6, align 8
  %52 = getelementptr inbounds %struct.lqrdata, %struct.lqrdata* %51, i32 0, i32 9
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @log_Printf(i32 %47, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i8* %50, i8* %53)
  %55 = load i32, i32* @LogLQM, align 4
  %56 = load %struct.lqrdata*, %struct.lqrdata** %6, align 8
  %57 = getelementptr inbounds %struct.lqrdata, %struct.lqrdata* %56, i32 0, i32 10
  %58 = load i8*, i8** %57, align 8
  %59 = load %struct.lqrdata*, %struct.lqrdata** %6, align 8
  %60 = getelementptr inbounds %struct.lqrdata, %struct.lqrdata* %59, i32 0, i32 11
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @log_Printf(i32 %55, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i8* %58, i8* %61)
  br label %63

63:                                               ; preds = %10, %3
  ret void
}

declare dso_local i64 @log_IsKept(i32) #1

declare dso_local i32 @log_Printf(i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
