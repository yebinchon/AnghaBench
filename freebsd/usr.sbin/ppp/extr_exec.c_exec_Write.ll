; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_exec.c_exec_Write.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_exec.c_exec_Write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.physical = type { i32, i32 }
%struct.execdevice = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.physical*, i8*, i64)* @exec_Write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_Write(%struct.physical* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.physical*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.execdevice*, align 8
  %8 = alloca i32, align 4
  store %struct.physical* %0, %struct.physical** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.physical*, %struct.physical** %4, align 8
  %10 = getelementptr inbounds %struct.physical, %struct.physical* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.execdevice* @device2exec(i32 %11)
  store %struct.execdevice* %12, %struct.execdevice** %7, align 8
  %13 = load %struct.execdevice*, %struct.execdevice** %7, align 8
  %14 = getelementptr inbounds %struct.execdevice, %struct.execdevice* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load %struct.physical*, %struct.physical** %4, align 8
  %19 = getelementptr inbounds %struct.physical, %struct.physical* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  br label %25

21:                                               ; preds = %3
  %22 = load %struct.execdevice*, %struct.execdevice** %7, align 8
  %23 = getelementptr inbounds %struct.execdevice, %struct.execdevice* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  br label %25

25:                                               ; preds = %21, %17
  %26 = phi i32 [ %20, %17 ], [ %24, %21 ]
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i8*, i8** %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @write(i32 %27, i8* %28, i64 %29)
  ret i32 %30
}

declare dso_local %struct.execdevice* @device2exec(i32) #1

declare dso_local i32 @write(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
