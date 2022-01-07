; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_datalink.c_datalink_Read.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_datalink.c_datalink_Read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdescriptor = type { i32 }
%struct.bundle = type { i32 }
%struct.datalink = type { i32, %struct.TYPE_4__*, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fdescriptor*, %struct.bundle*, i32*)* @datalink_Read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @datalink_Read(%struct.fdescriptor* %0, %struct.bundle* %1, i32* %2) #0 {
  %4 = alloca %struct.fdescriptor*, align 8
  %5 = alloca %struct.bundle*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.datalink*, align 8
  store %struct.fdescriptor* %0, %struct.fdescriptor** %4, align 8
  store %struct.bundle* %1, %struct.bundle** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.fdescriptor*, %struct.fdescriptor** %4, align 8
  %9 = call %struct.datalink* @descriptor2datalink(%struct.fdescriptor* %8)
  store %struct.datalink* %9, %struct.datalink** %7, align 8
  %10 = load %struct.datalink*, %struct.datalink** %7, align 8
  %11 = getelementptr inbounds %struct.datalink, %struct.datalink* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %52 [
    i32 136, label %13
    i32 129, label %13
    i32 134, label %14
    i32 135, label %14
    i32 131, label %14
    i32 132, label %14
    i32 128, label %21
    i32 133, label %21
    i32 138, label %21
    i32 137, label %21
    i32 130, label %21
  ]

13:                                               ; preds = %3, %3
  br label %52

14:                                               ; preds = %3, %3, %3, %3
  %15 = load %struct.datalink*, %struct.datalink** %7, align 8
  %16 = getelementptr inbounds %struct.datalink, %struct.datalink* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.bundle*, %struct.bundle** %5, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @descriptor_Read(i32* %17, %struct.bundle* %18, i32* %19)
  br label %52

21:                                               ; preds = %3, %3, %3, %3, %3
  %22 = load %struct.datalink*, %struct.datalink** %7, align 8
  %23 = getelementptr inbounds %struct.datalink, %struct.datalink* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @descriptor_IsSet(i32* %24, i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %21
  %29 = load %struct.datalink*, %struct.datalink** %7, align 8
  %30 = getelementptr inbounds %struct.datalink, %struct.datalink* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.bundle*, %struct.bundle** %5, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @descriptor_Read(i32* %31, %struct.bundle* %32, i32* %33)
  br label %35

35:                                               ; preds = %28, %21
  %36 = load %struct.datalink*, %struct.datalink** %7, align 8
  %37 = getelementptr inbounds %struct.datalink, %struct.datalink* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @descriptor_IsSet(i32* %39, i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %35
  %44 = load %struct.datalink*, %struct.datalink** %7, align 8
  %45 = getelementptr inbounds %struct.datalink, %struct.datalink* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load %struct.bundle*, %struct.bundle** %5, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @descriptor_Read(i32* %47, %struct.bundle* %48, i32* %49)
  br label %51

51:                                               ; preds = %43, %35
  br label %52

52:                                               ; preds = %3, %51, %14, %13
  ret void
}

declare dso_local %struct.datalink* @descriptor2datalink(%struct.fdescriptor*) #1

declare dso_local i32 @descriptor_Read(i32*, %struct.bundle*, i32*) #1

declare dso_local i32 @descriptor_IsSet(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
