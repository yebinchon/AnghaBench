; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_mevent.c_mevent_handle.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_mevent.c_mevent_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kevent = type { %struct.mevent* }
%struct.mevent = type { i32, i32, i32, i32 (i32, i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kevent*, i32)* @mevent_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mevent_handle(%struct.kevent* %0, i32 %1) #0 {
  %3 = alloca %struct.kevent*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mevent*, align 8
  %6 = alloca i32, align 4
  store %struct.kevent* %0, %struct.kevent** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %31, %2
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %34

11:                                               ; preds = %7
  %12 = load %struct.kevent*, %struct.kevent** %3, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.kevent, %struct.kevent* %12, i64 %14
  %16 = getelementptr inbounds %struct.kevent, %struct.kevent* %15, i32 0, i32 0
  %17 = load %struct.mevent*, %struct.mevent** %16, align 8
  store %struct.mevent* %17, %struct.mevent** %5, align 8
  %18 = load %struct.mevent*, %struct.mevent** %5, align 8
  %19 = getelementptr inbounds %struct.mevent, %struct.mevent* %18, i32 0, i32 3
  %20 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %19, align 8
  %21 = load %struct.mevent*, %struct.mevent** %5, align 8
  %22 = getelementptr inbounds %struct.mevent, %struct.mevent* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.mevent*, %struct.mevent** %5, align 8
  %25 = getelementptr inbounds %struct.mevent, %struct.mevent* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.mevent*, %struct.mevent** %5, align 8
  %28 = getelementptr inbounds %struct.mevent, %struct.mevent* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 %20(i32 %23, i32 %26, i32 %29)
  br label %31

31:                                               ; preds = %11
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %6, align 4
  br label %7

34:                                               ; preds = %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
