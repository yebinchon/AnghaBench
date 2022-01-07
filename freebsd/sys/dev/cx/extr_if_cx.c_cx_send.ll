; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cx/extr_if_cx.c_cx_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cx/extr_if_cx.c_cx_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_7__*, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.mbuf = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"cx_send\0A\00", align 1
@caddr_t = common dso_local global i32 0, align 4
@DMABUFSZ = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @cx_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx_send(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %8 = call i32 @CX_DEBUG2(%struct.TYPE_6__* %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %90

14:                                               ; preds = %1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @cx_get_dsr(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %14
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @cx_get_loop(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  br label %90

27:                                               ; preds = %20, %14
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @cx_buf_free(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %82

33:                                               ; preds = %27
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = call %struct.mbuf* @sppp_dequeue(%struct.TYPE_7__* %36)
  store %struct.mbuf* %37, %struct.mbuf** %3, align 8
  %38 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %39 = icmp ne %struct.mbuf* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %33
  br label %90

41:                                               ; preds = %33
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %46 = call i32 @BPF_MTAP(%struct.TYPE_7__* %44, %struct.mbuf* %45)
  %47 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %48 = call i32 @m_length(%struct.mbuf* %47, i32* null)
  store i32 %48, i32* %4, align 4
  %49 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %50 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %63, label %53

53:                                               ; preds = %41
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %58 = load i32, i32* @caddr_t, align 4
  %59 = call i64 @mtod(%struct.mbuf* %57, i32 %58)
  %60 = inttoptr i64 %59 to i32*
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @cx_send_packet(i32 %56, i32* %60, i32 %61, i32 0)
  br label %77

63:                                               ; preds = %41
  %64 = load i32, i32* @DMABUFSZ, align 4
  %65 = zext i32 %64 to i64
  %66 = call i8* @llvm.stacksave()
  store i8* %66, i8** %5, align 8
  %67 = alloca i32, i64 %65, align 16
  store i64 %65, i64* %6, align 8
  %68 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @m_copydata(%struct.mbuf* %68, i32 0, i32 %69, i32* %67)
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @cx_send_packet(i32 %73, i32* %67, i32 %74, i32 0)
  %76 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %76)
  br label %77

77:                                               ; preds = %63, %53
  %78 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %79 = call i32 @m_freem(%struct.mbuf* %78)
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  store i32 10, i32* %81, align 8
  br label %82

82:                                               ; preds = %77, %27
  %83 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %83
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %82, %40, %26, %13
  ret void
}

declare dso_local i32 @CX_DEBUG2(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @cx_get_dsr(i32) #1

declare dso_local i32 @cx_get_loop(i32) #1

declare dso_local i64 @cx_buf_free(i32) #1

declare dso_local %struct.mbuf* @sppp_dequeue(%struct.TYPE_7__*) #1

declare dso_local i32 @BPF_MTAP(%struct.TYPE_7__*, %struct.mbuf*) #1

declare dso_local i32 @m_length(%struct.mbuf*, i32*) #1

declare dso_local i32 @cx_send_packet(i32, i32*, i32, i32) #1

declare dso_local i64 @mtod(%struct.mbuf*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @m_copydata(%struct.mbuf*, i32, i32, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @m_freem(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
