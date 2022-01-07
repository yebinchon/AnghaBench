; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_sockbuf.c_sbappendaddr_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_sockbuf.c_sbappendaddr_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockbuf = type { i32 }
%struct.sockaddr = type { i32 }
%struct.mbuf = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@M_PKTHDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"sbappendaddr_locked\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sbappendaddr_locked(%struct.sockbuf* %0, %struct.sockaddr* %1, %struct.mbuf* %2, %struct.mbuf* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockbuf*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca %struct.mbuf*, align 8
  %10 = alloca %struct.mbuf*, align 8
  %11 = alloca i32, align 4
  store %struct.sockbuf* %0, %struct.sockbuf** %6, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %7, align 8
  store %struct.mbuf* %2, %struct.mbuf** %8, align 8
  store %struct.mbuf* %3, %struct.mbuf** %9, align 8
  %12 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %13 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %11, align 4
  %15 = load %struct.sockbuf*, %struct.sockbuf** %6, align 8
  %16 = call i32 @SOCKBUF_LOCK_ASSERT(%struct.sockbuf* %15)
  %17 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %18 = icmp ne %struct.mbuf* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %4
  %20 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %21 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @M_PKTHDR, align 4
  %24 = and i32 %22, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = call i32 @panic(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %19, %4
  %29 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %30 = icmp ne %struct.mbuf* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %28
  %32 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %33 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %37, %35
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %11, align 4
  br label %40

40:                                               ; preds = %31, %28
  %41 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %42 = call i64 @m_length(%struct.mbuf* %41, %struct.mbuf** %10)
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load %struct.sockbuf*, %struct.sockbuf** %6, align 8
  %49 = call i32 @sbspace(%struct.sockbuf* %48)
  %50 = icmp sgt i32 %47, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %40
  store i32 0, i32* %5, align 4
  br label %59

52:                                               ; preds = %40
  %53 = load %struct.sockbuf*, %struct.sockbuf** %6, align 8
  %54 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %55 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %56 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %57 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %58 = call i32 @sbappendaddr_locked_internal(%struct.sockbuf* %53, %struct.sockaddr* %54, %struct.mbuf* %55, %struct.mbuf* %56, %struct.mbuf* %57)
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %52, %51
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @SOCKBUF_LOCK_ASSERT(%struct.sockbuf*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @m_length(%struct.mbuf*, %struct.mbuf**) #1

declare dso_local i32 @sbspace(%struct.sockbuf*) #1

declare dso_local i32 @sbappendaddr_locked_internal(%struct.sockbuf*, %struct.sockaddr*, %struct.mbuf*, %struct.mbuf*, %struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
