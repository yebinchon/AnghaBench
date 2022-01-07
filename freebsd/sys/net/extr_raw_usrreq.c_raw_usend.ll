; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_raw_usrreq.c_raw_usend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_raw_usrreq.c_raw_usend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.mbuf*, %struct.socket*)* }
%struct.sockaddr = type { i32 }
%struct.mbuf = type { i64 }
%struct.thread = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"raw_usend: rp == NULL\00", align 1
@PRUS_OOB = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i32, %struct.mbuf*, %struct.sockaddr*, %struct.mbuf*, %struct.thread*)* @raw_usend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raw_usend(%struct.socket* %0, i32 %1, %struct.mbuf* %2, %struct.sockaddr* %3, %struct.mbuf* %4, %struct.thread* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.socket*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mbuf*, align 8
  %11 = alloca %struct.sockaddr*, align 8
  %12 = alloca %struct.mbuf*, align 8
  %13 = alloca %struct.thread*, align 8
  store %struct.socket* %0, %struct.socket** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.mbuf* %2, %struct.mbuf** %10, align 8
  store %struct.sockaddr* %3, %struct.sockaddr** %11, align 8
  store %struct.mbuf* %4, %struct.mbuf** %12, align 8
  store %struct.thread* %5, %struct.thread** %13, align 8
  %14 = load %struct.socket*, %struct.socket** %8, align 8
  %15 = call i32* @sotorawcb(%struct.socket* %14)
  %16 = icmp ne i32* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @KASSERT(i32 %17, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @PRUS_OOB, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %6
  %24 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %25 = icmp ne %struct.mbuf* %24, null
  br i1 %25, label %26, label %45

26:                                               ; preds = %23
  %27 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %28 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %26, %6
  %32 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %33 = icmp ne %struct.mbuf* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %36 = call i32 @m_freem(%struct.mbuf* %35)
  br label %37

37:                                               ; preds = %34, %31
  %38 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %39 = icmp ne %struct.mbuf* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %42 = call i32 @m_freem(%struct.mbuf* %41)
  br label %43

43:                                               ; preds = %40, %37
  %44 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %44, i32* %7, align 4
  br label %54

45:                                               ; preds = %26, %23
  %46 = load %struct.socket*, %struct.socket** %8, align 8
  %47 = getelementptr inbounds %struct.socket, %struct.socket* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32 (%struct.mbuf*, %struct.socket*)*, i32 (%struct.mbuf*, %struct.socket*)** %49, align 8
  %51 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %52 = load %struct.socket*, %struct.socket** %8, align 8
  %53 = call i32 %50(%struct.mbuf* %51, %struct.socket* %52)
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %45, %43
  %55 = load i32, i32* %7, align 4
  ret i32 %55
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32* @sotorawcb(%struct.socket*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
