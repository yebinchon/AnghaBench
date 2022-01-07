; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_netgraph.c_ng_Write.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_netgraph.c_ng_Write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.physical = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ngdevice = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.physical*, i8*, i64)* @ng_Write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_Write(%struct.physical* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.physical*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ngdevice*, align 8
  store %struct.physical* %0, %struct.physical** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.physical*, %struct.physical** %5, align 8
  %10 = getelementptr inbounds %struct.physical, %struct.physical* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.ngdevice* @device2ng(i32 %11)
  store %struct.ngdevice* %12, %struct.ngdevice** %8, align 8
  %13 = load %struct.physical*, %struct.physical** %5, align 8
  %14 = getelementptr inbounds %struct.physical, %struct.physical* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %29 [
    i32 129, label %18
    i32 128, label %18
  ]

18:                                               ; preds = %3, %3
  %19 = load %struct.ngdevice*, %struct.ngdevice** %8, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @ng_MessageOut(%struct.ngdevice* %19, i8* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i64, i64* %7, align 8
  %25 = trunc i64 %24 to i32
  br label %27

26:                                               ; preds = %18
  br label %27

27:                                               ; preds = %26, %23
  %28 = phi i32 [ %25, %23 ], [ -1, %26 ]
  store i32 %28, i32* %4, align 4
  br label %46

29:                                               ; preds = %3
  %30 = load %struct.physical*, %struct.physical** %5, align 8
  %31 = getelementptr inbounds %struct.physical, %struct.physical* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.ngdevice*, %struct.ngdevice** %8, align 8
  %34 = getelementptr inbounds %struct.ngdevice, %struct.ngdevice* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %6, align 8
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @NgSendData(i32 %32, i32 %35, i8* %36, i64 %37)
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  br label %44

41:                                               ; preds = %29
  %42 = load i64, i64* %7, align 8
  %43 = trunc i64 %42 to i32
  br label %44

44:                                               ; preds = %41, %40
  %45 = phi i32 [ -1, %40 ], [ %43, %41 ]
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %44, %27
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local %struct.ngdevice* @device2ng(i32) #1

declare dso_local i32 @ng_MessageOut(%struct.ngdevice*, i8*) #1

declare dso_local i32 @NgSendData(i32, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
