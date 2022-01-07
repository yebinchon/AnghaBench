; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_tty.c_tty_Write.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_tty.c_tty_Write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.physical = type { i32, i32 }
%struct.ttydevice = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.physical*, i8*, i64)* @tty_Write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tty_Write(%struct.physical* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.physical*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ttydevice*, align 8
  store %struct.physical* %0, %struct.physical** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.physical*, %struct.physical** %5, align 8
  %10 = getelementptr inbounds %struct.physical, %struct.physical* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.ttydevice* @device2tty(i32 %11)
  store %struct.ttydevice* %12, %struct.ttydevice** %8, align 8
  %13 = load %struct.ttydevice*, %struct.ttydevice** %8, align 8
  %14 = call i64 @isngtty(%struct.ttydevice* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %3
  %17 = load %struct.physical*, %struct.physical** %5, align 8
  %18 = getelementptr inbounds %struct.physical, %struct.physical* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ttydevice*, %struct.ttydevice** %8, align 8
  %21 = getelementptr inbounds %struct.ttydevice, %struct.ttydevice* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i8*, i8** %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @NgSendData(i32 %19, i32 %22, i8* %23, i64 %24)
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %28

27:                                               ; preds = %16
  br label %31

28:                                               ; preds = %16
  %29 = load i64, i64* %7, align 8
  %30 = trunc i64 %29 to i32
  br label %31

31:                                               ; preds = %28, %27
  %32 = phi i32 [ -1, %27 ], [ %30, %28 ]
  store i32 %32, i32* %4, align 4
  br label %40

33:                                               ; preds = %3
  %34 = load %struct.physical*, %struct.physical** %5, align 8
  %35 = getelementptr inbounds %struct.physical, %struct.physical* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i8*, i8** %6, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @write(i32 %36, i8* %37, i64 %38)
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %33, %31
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local %struct.ttydevice* @device2tty(i32) #1

declare dso_local i64 @isngtty(%struct.ttydevice*) #1

declare dso_local i32 @NgSendData(i32, i32, i8*, i64) #1

declare dso_local i32 @write(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
