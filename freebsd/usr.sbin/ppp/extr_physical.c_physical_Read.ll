; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_physical.c_physical_Read.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_physical.c_physical_Read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.physical = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@LogPHYSICAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"read\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @physical_Read(%struct.physical* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.physical*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.physical* %0, %struct.physical** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.physical*, %struct.physical** %4, align 8
  %9 = getelementptr inbounds %struct.physical, %struct.physical* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = icmp ne %struct.TYPE_2__* %10, null
  br i1 %11, label %12, label %31

12:                                               ; preds = %3
  %13 = load %struct.physical*, %struct.physical** %4, align 8
  %14 = getelementptr inbounds %struct.physical, %struct.physical* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = bitcast {}** %16 to i32 (%struct.physical*, i8*, i64)**
  %18 = load i32 (%struct.physical*, i8*, i64)*, i32 (%struct.physical*, i8*, i64)** %17, align 8
  %19 = icmp ne i32 (%struct.physical*, i8*, i64)* %18, null
  br i1 %19, label %20, label %31

20:                                               ; preds = %12
  %21 = load %struct.physical*, %struct.physical** %4, align 8
  %22 = getelementptr inbounds %struct.physical, %struct.physical* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = bitcast {}** %24 to i32 (%struct.physical*, i8*, i64)**
  %26 = load i32 (%struct.physical*, i8*, i64)*, i32 (%struct.physical*, i8*, i64)** %25, align 8
  %27 = load %struct.physical*, %struct.physical** %4, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call i32 %26(%struct.physical* %27, i8* %28, i64 %29)
  store i32 %30, i32* %7, align 4
  br label %38

31:                                               ; preds = %12, %3
  %32 = load %struct.physical*, %struct.physical** %4, align 8
  %33 = getelementptr inbounds %struct.physical, %struct.physical* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @read(i32 %34, i8* %35, i64 %36)
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %31, %20
  %39 = load i32, i32* @LogPHYSICAL, align 4
  %40 = load i8*, i8** %5, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @log_DumpBuff(i32 %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %40, i32 %41)
  %43 = load i32, i32* %7, align 4
  ret i32 %43
}

declare dso_local i32 @read(i32, i8*, i64) #1

declare dso_local i32 @log_DumpBuff(i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
