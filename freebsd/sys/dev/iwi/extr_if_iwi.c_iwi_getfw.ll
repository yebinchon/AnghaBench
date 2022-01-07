; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_getfw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_getfw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwi_fw = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwi_fw*, i8*, %struct.iwi_fw*, i8*)* @iwi_getfw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwi_getfw(%struct.iwi_fw* %0, i8* %1, %struct.iwi_fw* %2, i8* %3) #0 {
  %5 = alloca %struct.iwi_fw*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.iwi_fw*, align 8
  %8 = alloca i8*, align 8
  store %struct.iwi_fw* %0, %struct.iwi_fw** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.iwi_fw* %2, %struct.iwi_fw** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load %struct.iwi_fw*, %struct.iwi_fw** %5, align 8
  %10 = getelementptr inbounds %struct.iwi_fw, %struct.iwi_fw* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp eq %struct.TYPE_2__* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %4
  %14 = load i8*, i8** %6, align 8
  %15 = call i8* @firmware_get(i8* %14)
  %16 = bitcast i8* %15 to %struct.TYPE_2__*
  %17 = load %struct.iwi_fw*, %struct.iwi_fw** %5, align 8
  %18 = getelementptr inbounds %struct.iwi_fw, %struct.iwi_fw* %17, i32 0, i32 0
  store %struct.TYPE_2__* %16, %struct.TYPE_2__** %18, align 8
  br label %19

19:                                               ; preds = %13, %4
  %20 = load %struct.iwi_fw*, %struct.iwi_fw** %7, align 8
  %21 = getelementptr inbounds %struct.iwi_fw, %struct.iwi_fw* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = icmp eq %struct.TYPE_2__* %22, null
  br i1 %23, label %24, label %42

24:                                               ; preds = %19
  %25 = load %struct.iwi_fw*, %struct.iwi_fw** %5, align 8
  %26 = getelementptr inbounds %struct.iwi_fw, %struct.iwi_fw* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = icmp ne %struct.TYPE_2__* %27, null
  br i1 %28, label %29, label %42

29:                                               ; preds = %24
  %30 = load %struct.iwi_fw*, %struct.iwi_fw** %5, align 8
  %31 = getelementptr inbounds %struct.iwi_fw, %struct.iwi_fw* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %34, 300
  br i1 %35, label %36, label %42

36:                                               ; preds = %29
  %37 = load i8*, i8** %8, align 8
  %38 = call i8* @firmware_get(i8* %37)
  %39 = bitcast i8* %38 to %struct.TYPE_2__*
  %40 = load %struct.iwi_fw*, %struct.iwi_fw** %7, align 8
  %41 = getelementptr inbounds %struct.iwi_fw, %struct.iwi_fw* %40, i32 0, i32 0
  store %struct.TYPE_2__* %39, %struct.TYPE_2__** %41, align 8
  br label %42

42:                                               ; preds = %36, %29, %24, %19
  ret void
}

declare dso_local i8* @firmware_get(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
