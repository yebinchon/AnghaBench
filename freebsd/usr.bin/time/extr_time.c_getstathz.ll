; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/time/extr_time.c_getstathz.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/time/extr_time.c_getstathz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clockinfo = type { i32 }

@CTL_KERN = common dso_local global i32 0, align 4
@KERN_CLOCKRATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"sysctl kern.clockrate\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @getstathz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getstathz() #0 {
  %1 = alloca [2 x i32], align 4
  %2 = alloca i64, align 8
  %3 = alloca %struct.clockinfo, align 4
  %4 = load i32, i32* @CTL_KERN, align 4
  %5 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  store i32 %4, i32* %5, align 4
  %6 = load i32, i32* @KERN_CLOCKRATE, align 4
  %7 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 1
  store i32 %6, i32* %7, align 4
  store i64 4, i64* %2, align 8
  %8 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  %9 = call i32 @sysctl(i32* %8, i32 2, %struct.clockinfo* %3, i64* %2, i32* null, i32 0)
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %13

11:                                               ; preds = %0
  %12 = call i32 @err(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %0
  %14 = getelementptr inbounds %struct.clockinfo, %struct.clockinfo* %3, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  ret i32 %15
}

declare dso_local i32 @sysctl(i32*, i32, %struct.clockinfo*, i64*, i32*, i32) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
