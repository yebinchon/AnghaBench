; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_datalink.c_datalink_SetReconnect.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_datalink.c_datalink_SetReconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdargs = type { i32, i32, i32*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @datalink_SetReconnect(%struct.cmdargs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cmdargs*, align 8
  store %struct.cmdargs* %0, %struct.cmdargs** %3, align 8
  %4 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %5 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %8 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = add nsw i32 %9, 2
  %11 = icmp eq i32 %6, %10
  br i1 %11, label %12, label %46

12:                                               ; preds = %1
  %13 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %14 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %17 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %15, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @atoi(i32 %21)
  %23 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %24 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %23, i32 0, i32 3
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  store i8* %22, i8** %28, align 8
  %29 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %30 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %33 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %31, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @atoi(i32 %38)
  %40 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %41 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %40, i32 0, i32 3
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i8* %39, i8** %45, align 8
  store i32 0, i32* %2, align 4
  br label %47

46:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %12
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i8* @atoi(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
