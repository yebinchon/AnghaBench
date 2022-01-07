; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_physical.c_physical_Write.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_physical.c_physical_Write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.physical = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@LogPHYSICAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"write\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @physical_Write(%struct.physical* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.physical*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.physical* %0, %struct.physical** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i32, i32* @LogPHYSICAL, align 4
  %9 = load i8*, i8** %6, align 8
  %10 = load i64, i64* %7, align 8
  %11 = call i32 @log_DumpBuff(i32 %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %9, i64 %10)
  %12 = load %struct.physical*, %struct.physical** %5, align 8
  %13 = getelementptr inbounds %struct.physical, %struct.physical* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = icmp ne %struct.TYPE_2__* %14, null
  br i1 %15, label %16, label %35

16:                                               ; preds = %3
  %17 = load %struct.physical*, %struct.physical** %5, align 8
  %18 = getelementptr inbounds %struct.physical, %struct.physical* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = bitcast {}** %20 to i32 (%struct.physical*, i8*, i64)**
  %22 = load i32 (%struct.physical*, i8*, i64)*, i32 (%struct.physical*, i8*, i64)** %21, align 8
  %23 = icmp ne i32 (%struct.physical*, i8*, i64)* %22, null
  br i1 %23, label %24, label %35

24:                                               ; preds = %16
  %25 = load %struct.physical*, %struct.physical** %5, align 8
  %26 = getelementptr inbounds %struct.physical, %struct.physical* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = bitcast {}** %28 to i32 (%struct.physical*, i8*, i64)**
  %30 = load i32 (%struct.physical*, i8*, i64)*, i32 (%struct.physical*, i8*, i64)** %29, align 8
  %31 = load %struct.physical*, %struct.physical** %5, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load i64, i64* %7, align 8
  %34 = call i32 %30(%struct.physical* %31, i8* %32, i64 %33)
  store i32 %34, i32* %4, align 4
  br label %42

35:                                               ; preds = %16, %3
  %36 = load %struct.physical*, %struct.physical** %5, align 8
  %37 = getelementptr inbounds %struct.physical, %struct.physical* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @write(i32 %38, i8* %39, i64 %40)
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %35, %24
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @log_DumpBuff(i32, i8*, i8*, i64) #1

declare dso_local i32 @write(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
