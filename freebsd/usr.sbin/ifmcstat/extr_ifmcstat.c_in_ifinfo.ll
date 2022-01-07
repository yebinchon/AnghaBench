; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ifmcstat/extr_ifmcstat.c_in_ifinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ifmcstat/extr_ifmcstat.c_in_ifinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igmp_ifinfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"igmpv%d\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"igmpv?(%d)\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c" flags\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"\10\01SILENT\02LOOPBACK\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c" rv %u qi %u qri %u uri %u\00", align 1
@vflag = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c" v1timer %u v2timer %u v3timer %u\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igmp_ifinfo*)* @in_ifinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @in_ifinfo(%struct.igmp_ifinfo* %0) #0 {
  %2 = alloca %struct.igmp_ifinfo*, align 8
  store %struct.igmp_ifinfo* %0, %struct.igmp_ifinfo** %2, align 8
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.igmp_ifinfo*, %struct.igmp_ifinfo** %2, align 8
  %5 = getelementptr inbounds %struct.igmp_ifinfo, %struct.igmp_ifinfo* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %12 [
    i32 130, label %7
    i32 129, label %7
    i32 128, label %7
  ]

7:                                                ; preds = %1, %1, %1
  %8 = load %struct.igmp_ifinfo*, %struct.igmp_ifinfo** %2, align 8
  %9 = getelementptr inbounds %struct.igmp_ifinfo, %struct.igmp_ifinfo* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %10)
  br label %17

12:                                               ; preds = %1
  %13 = load %struct.igmp_ifinfo*, %struct.igmp_ifinfo** %2, align 8
  %14 = getelementptr inbounds %struct.igmp_ifinfo, %struct.igmp_ifinfo* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %12, %7
  %18 = load %struct.igmp_ifinfo*, %struct.igmp_ifinfo** %2, align 8
  %19 = getelementptr inbounds %struct.igmp_ifinfo, %struct.igmp_ifinfo* %18, i32 0, i32 8
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.igmp_ifinfo*, %struct.igmp_ifinfo** %2, align 8
  %24 = getelementptr inbounds %struct.igmp_ifinfo, %struct.igmp_ifinfo* %23, i32 0, i32 8
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @printb(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i64 %25, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %27

27:                                               ; preds = %22, %17
  %28 = load %struct.igmp_ifinfo*, %struct.igmp_ifinfo** %2, align 8
  %29 = getelementptr inbounds %struct.igmp_ifinfo, %struct.igmp_ifinfo* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, 128
  br i1 %31, label %32, label %46

32:                                               ; preds = %27
  %33 = load %struct.igmp_ifinfo*, %struct.igmp_ifinfo** %2, align 8
  %34 = getelementptr inbounds %struct.igmp_ifinfo, %struct.igmp_ifinfo* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.igmp_ifinfo*, %struct.igmp_ifinfo** %2, align 8
  %37 = getelementptr inbounds %struct.igmp_ifinfo, %struct.igmp_ifinfo* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.igmp_ifinfo*, %struct.igmp_ifinfo** %2, align 8
  %40 = getelementptr inbounds %struct.igmp_ifinfo, %struct.igmp_ifinfo* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.igmp_ifinfo*, %struct.igmp_ifinfo** %2, align 8
  %43 = getelementptr inbounds %struct.igmp_ifinfo, %struct.igmp_ifinfo* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %35, i32 %38, i32 %41, i32 %44)
  br label %46

46:                                               ; preds = %32, %27
  %47 = load i32, i32* @vflag, align 4
  %48 = icmp sge i32 %47, 2
  br i1 %48, label %49, label %60

49:                                               ; preds = %46
  %50 = load %struct.igmp_ifinfo*, %struct.igmp_ifinfo** %2, align 8
  %51 = getelementptr inbounds %struct.igmp_ifinfo, %struct.igmp_ifinfo* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.igmp_ifinfo*, %struct.igmp_ifinfo** %2, align 8
  %54 = getelementptr inbounds %struct.igmp_ifinfo, %struct.igmp_ifinfo* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.igmp_ifinfo*, %struct.igmp_ifinfo** %2, align 8
  %57 = getelementptr inbounds %struct.igmp_ifinfo, %struct.igmp_ifinfo* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %52, i32 %55, i32 %58)
  br label %60

60:                                               ; preds = %49, %46
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @printb(i8*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
