; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_prot.c_cr_canseesocket.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_prot.c_cr_canseesocket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i32 }
%struct.socket = type { i32 }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cr_canseesocket(%struct.ucred* %0, %struct.socket* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ucred*, align 8
  %5 = alloca %struct.socket*, align 8
  %6 = alloca i32, align 4
  store %struct.ucred* %0, %struct.ucred** %4, align 8
  store %struct.socket* %1, %struct.socket** %5, align 8
  %7 = load %struct.ucred*, %struct.ucred** %4, align 8
  %8 = load %struct.socket*, %struct.socket** %5, align 8
  %9 = getelementptr inbounds %struct.socket, %struct.socket* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @prison_check(%struct.ucred* %7, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOENT, align 4
  store i32 %15, i32* %3, align 4
  br label %35

16:                                               ; preds = %2
  %17 = load %struct.ucred*, %struct.ucred** %4, align 8
  %18 = load %struct.socket*, %struct.socket** %5, align 8
  %19 = getelementptr inbounds %struct.socket, %struct.socket* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @cr_canseeotheruids(%struct.ucred* %17, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* @ENOENT, align 4
  store i32 %24, i32* %3, align 4
  br label %35

25:                                               ; preds = %16
  %26 = load %struct.ucred*, %struct.ucred** %4, align 8
  %27 = load %struct.socket*, %struct.socket** %5, align 8
  %28 = getelementptr inbounds %struct.socket, %struct.socket* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @cr_canseeothergids(%struct.ucred* %26, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* @ENOENT, align 4
  store i32 %33, i32* %3, align 4
  br label %35

34:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %32, %23, %14
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @prison_check(%struct.ucred*, i32) #1

declare dso_local i64 @cr_canseeotheruids(%struct.ucred*, i32) #1

declare dso_local i64 @cr_canseeothergids(%struct.ucred*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
