; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ncp.c_ncp_Enqueue.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ncp.c_ncp_Enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncp = type { %struct.ipcp, %struct.ipv6cp }
%struct.ipcp = type { i32 }
%struct.ipv6cp = type { i32 }
%struct.mbuf = type { i32, i32 }

@LogERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Can't store in ip queue %u\0A\00", align 1
@MB_IPOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Can't store in ipv6 queue %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Can't enqueue protocol family %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ncp_Enqueue(%struct.ncp* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.ncp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ipv6cp*, align 8
  %12 = alloca %struct.ipcp*, align 8
  %13 = alloca %struct.mbuf*, align 8
  store %struct.ncp* %0, %struct.ncp** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load %struct.ncp*, %struct.ncp** %6, align 8
  %15 = getelementptr inbounds %struct.ncp, %struct.ncp* %14, i32 0, i32 1
  store %struct.ipv6cp* %15, %struct.ipv6cp** %11, align 8
  %16 = load %struct.ncp*, %struct.ncp** %6, align 8
  %17 = getelementptr inbounds %struct.ncp, %struct.ncp* %16, i32 0, i32 0
  store %struct.ipcp* %17, %struct.ipcp** %12, align 8
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %87 [
    i32 129, label %19
    i32 128, label %53
  ]

19:                                               ; preds = %5
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.ipcp*, %struct.ipcp** %12, align 8
  %22 = call i32 @IPCP_QUEUES(%struct.ipcp* %21)
  %23 = icmp uge i32 %20, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i32, i32* @LogERROR, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @log_Printf(i32 %25, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %91

28:                                               ; preds = %19
  %29 = load i32, i32* %10, align 4
  %30 = add nsw i32 %29, 6
  %31 = load i32, i32* @MB_IPOUT, align 4
  %32 = call %struct.mbuf* @m_get(i32 %30, i32 %31)
  store %struct.mbuf* %32, %struct.mbuf** %13, align 8
  %33 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %34 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 4
  store i32 %36, i32* %34, align 4
  %37 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %38 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %39, 6
  store i32 %40, i32* %38, align 4
  %41 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %42 = call i32 @MBUF_CTOP(%struct.mbuf* %41)
  %43 = load i8*, i8** %9, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @memcpy(i32 %42, i8* %43, i32 %44)
  %46 = load %struct.ipcp*, %struct.ipcp** %12, align 8
  %47 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %8, align 4
  %50 = add i32 %48, %49
  %51 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %52 = call i32 @m_enqueue(i32 %50, %struct.mbuf* %51)
  br label %91

53:                                               ; preds = %5
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.ipcp*, %struct.ipcp** %12, align 8
  %56 = call i32 @IPV6CP_QUEUES(%struct.ipcp* %55)
  %57 = icmp uge i32 %54, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load i32, i32* @LogERROR, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @log_Printf(i32 %59, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  br label %91

62:                                               ; preds = %53
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, 6
  %65 = load i32, i32* @MB_IPOUT, align 4
  %66 = call %struct.mbuf* @m_get(i32 %64, i32 %65)
  store %struct.mbuf* %66, %struct.mbuf** %13, align 8
  %67 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %68 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 4
  store i32 %70, i32* %68, align 4
  %71 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %72 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = sub nsw i32 %73, 6
  store i32 %74, i32* %72, align 4
  %75 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %76 = call i32 @MBUF_CTOP(%struct.mbuf* %75)
  %77 = load i8*, i8** %9, align 8
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @memcpy(i32 %76, i8* %77, i32 %78)
  %80 = load %struct.ipv6cp*, %struct.ipv6cp** %11, align 8
  %81 = getelementptr inbounds %struct.ipv6cp, %struct.ipv6cp* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %8, align 4
  %84 = add i32 %82, %83
  %85 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %86 = call i32 @m_enqueue(i32 %84, %struct.mbuf* %85)
  br label %91

87:                                               ; preds = %5
  %88 = load i32, i32* @LogERROR, align 4
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @log_Printf(i32 %88, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %87, %62, %58, %28, %24
  ret void
}

declare dso_local i32 @IPCP_QUEUES(%struct.ipcp*) #1

declare dso_local i32 @log_Printf(i32, i8*, i32) #1

declare dso_local %struct.mbuf* @m_get(i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @MBUF_CTOP(%struct.mbuf*) #1

declare dso_local i32 @m_enqueue(i32, %struct.mbuf*) #1

declare dso_local i32 @IPV6CP_QUEUES(%struct.ipcp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
