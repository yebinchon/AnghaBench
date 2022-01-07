; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cy/extr_cy.c_cd1400_channel_cmd_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cy/extr_cy.c_cd1400_channel_cmd_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.com_s = type { i32 }
%struct.timeval = type { i32, i64 }

@CD1400_CCR = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"cy%d: channel command timeout (%ld usec)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.com_s*)* @cd1400_channel_cmd_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cd1400_channel_cmd_wait(%struct.com_s* %0) #0 {
  %2 = alloca %struct.com_s*, align 8
  %3 = alloca %struct.timeval, align 8
  %4 = alloca %struct.timeval, align 8
  %5 = alloca i64, align 8
  store %struct.com_s* %0, %struct.com_s** %2, align 8
  %6 = load %struct.com_s*, %struct.com_s** %2, align 8
  %7 = load i32, i32* @CD1400_CCR, align 4
  %8 = call i64 @cd_getreg(%struct.com_s* %6, i32 %7)
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %44

11:                                               ; preds = %1
  %12 = call i32 @microtime(%struct.timeval* %3)
  br label %13

13:                                               ; preds = %43, %11
  %14 = load %struct.com_s*, %struct.com_s** %2, align 8
  %15 = load i32, i32* @CD1400_CCR, align 4
  %16 = call i64 @cd_getreg(%struct.com_s* %14, i32 %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %44

19:                                               ; preds = %13
  %20 = call i32 @microtime(%struct.timeval* %4)
  %21 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sub nsw i32 %22, %24
  %26 = mul nsw i32 1000000, %25
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %27, %29
  %31 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = sub nsw i64 %30, %32
  store i64 %33, i64* %5, align 8
  %34 = load i64, i64* %5, align 8
  %35 = icmp sge i64 %34, 5000
  br i1 %35, label %36, label %43

36:                                               ; preds = %19
  %37 = load i32, i32* @LOG_ERR, align 4
  %38 = load %struct.com_s*, %struct.com_s** %2, align 8
  %39 = getelementptr inbounds %struct.com_s, %struct.com_s* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @log(i32 %37, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %40, i64 %41)
  br label %44

43:                                               ; preds = %19
  br label %13

44:                                               ; preds = %36, %18, %10
  ret void
}

declare dso_local i64 @cd_getreg(%struct.com_s*, i32) #1

declare dso_local i32 @microtime(%struct.timeval*) #1

declare dso_local i32 @log(i32, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
