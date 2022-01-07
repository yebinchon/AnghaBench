; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_ifstat.c_getifmibdata.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_ifstat.c_getifmibdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifmibdata = type { i32 }

@getifmibdata.name = internal global [6 x i32] [i32 132, i32 128, i32 129, i32 130, i32 0, i32 131], align 16
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"sysctl error getting interface data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.ifmibdata*)* @getifmibdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getifmibdata(i32 %0, %struct.ifmibdata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifmibdata*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.ifmibdata* %1, %struct.ifmibdata** %4, align 8
  store i64 0, i64* %5, align 8
  store i64 4, i64* %5, align 8
  %6 = load i32, i32* %3, align 4
  store i32 %6, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @getifmibdata.name, i64 0, i64 4), align 16
  %7 = load %struct.ifmibdata*, %struct.ifmibdata** %4, align 8
  %8 = bitcast %struct.ifmibdata* %7 to i8*
  %9 = call i64 @sysctl(i32* getelementptr inbounds ([6 x i32], [6 x i32]* @getifmibdata.name, i64 0, i64 0), i32 6, i8* %8, i64* %5, i8* null, i64 0)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load i64, i64* @errno, align 8
  %13 = load i64, i64* @ENOENT, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = call i32 @IFSTAT_ERR(i32 2, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %11, %2
  ret void
}

declare dso_local i64 @sysctl(i32*, i32, i8*, i64*, i8*, i64) #1

declare dso_local i32 @IFSTAT_ERR(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
