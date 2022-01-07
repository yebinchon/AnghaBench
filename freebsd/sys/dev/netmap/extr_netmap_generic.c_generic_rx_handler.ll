; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_generic.c_generic_rx_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_generic.c_generic_rx_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.mbuf = type { i32 }
%struct.netmap_adapter = type { i64, %struct.netmap_kring** }
%struct.netmap_kring = type { i64, i32 }
%struct.netmap_generic_adapter = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@NKR_NETMAP_OFF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"Warning: driver pushed up big packet (size=%d)\00", align 1
@netmap_generic_mit = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @generic_rx_handler(%struct.ifnet* %0, %struct.mbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.netmap_adapter*, align 8
  %7 = alloca %struct.netmap_generic_adapter*, align 8
  %8 = alloca %struct.netmap_kring*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store %struct.mbuf* %1, %struct.mbuf** %5, align 8
  %11 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %12 = call %struct.netmap_adapter* @NA(%struct.ifnet* %11)
  store %struct.netmap_adapter* %12, %struct.netmap_adapter** %6, align 8
  %13 = load %struct.netmap_adapter*, %struct.netmap_adapter** %6, align 8
  %14 = bitcast %struct.netmap_adapter* %13 to %struct.netmap_generic_adapter*
  store %struct.netmap_generic_adapter* %14, %struct.netmap_generic_adapter** %7, align 8
  %15 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %16 = call i64 @MBUF_RXQ(%struct.mbuf* %15)
  store i64 %16, i64* %10, align 8
  %17 = load i64, i64* %10, align 8
  %18 = load %struct.netmap_adapter*, %struct.netmap_adapter** %6, align 8
  %19 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp uge i64 %17, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load i64, i64* %10, align 8
  %24 = load %struct.netmap_adapter*, %struct.netmap_adapter** %6, align 8
  %25 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = urem i64 %23, %26
  store i64 %27, i64* %10, align 8
  br label %28

28:                                               ; preds = %22, %2
  %29 = load %struct.netmap_adapter*, %struct.netmap_adapter** %6, align 8
  %30 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %29, i32 0, i32 1
  %31 = load %struct.netmap_kring**, %struct.netmap_kring*** %30, align 8
  %32 = load i64, i64* %10, align 8
  %33 = getelementptr inbounds %struct.netmap_kring*, %struct.netmap_kring** %31, i64 %32
  %34 = load %struct.netmap_kring*, %struct.netmap_kring** %33, align 8
  store %struct.netmap_kring* %34, %struct.netmap_kring** %8, align 8
  %35 = load %struct.netmap_kring*, %struct.netmap_kring** %8, align 8
  %36 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @NKR_NETMAP_OFF, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %116

41:                                               ; preds = %28
  %42 = load %struct.netmap_generic_adapter*, %struct.netmap_generic_adapter** %7, align 8
  %43 = getelementptr inbounds %struct.netmap_generic_adapter, %struct.netmap_generic_adapter* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %41
  %47 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %48 = call i64 @MBUF_LEN(%struct.mbuf* %47)
  %49 = load %struct.netmap_adapter*, %struct.netmap_adapter** %6, align 8
  %50 = call i64 @NETMAP_BUF_SIZE(%struct.netmap_adapter* %49)
  %51 = icmp sgt i64 %48, %50
  br label %52

52:                                               ; preds = %46, %41
  %53 = phi i1 [ false, %41 ], [ %51, %46 ]
  %54 = zext i1 %53 to i32
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %59 = call i64 @MBUF_LEN(%struct.mbuf* %58)
  %60 = trunc i64 %59 to i32
  %61 = call i32 @nm_prlim(i32 2, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %63 = call i32 @m_freem(%struct.mbuf* %62)
  br label %81

64:                                               ; preds = %52
  %65 = load %struct.netmap_kring*, %struct.netmap_kring** %8, align 8
  %66 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %65, i32 0, i32 1
  %67 = call i32 @mbq_len(i32* %66)
  %68 = icmp sgt i32 %67, 1024
  %69 = zext i1 %68 to i32
  %70 = call i64 @unlikely(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %64
  %73 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %74 = call i32 @m_freem(%struct.mbuf* %73)
  br label %80

75:                                               ; preds = %64
  %76 = load %struct.netmap_kring*, %struct.netmap_kring** %8, align 8
  %77 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %76, i32 0, i32 1
  %78 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %79 = call i32 @mbq_safe_enqueue(i32* %77, %struct.mbuf* %78)
  br label %80

80:                                               ; preds = %75, %72
  br label %81

81:                                               ; preds = %80, %57
  %82 = load i32, i32* @netmap_generic_mit, align 4
  %83 = icmp slt i32 %82, 32768
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = load %struct.netmap_adapter*, %struct.netmap_adapter** %6, align 8
  %86 = load i64, i64* %10, align 8
  %87 = call i32 @netmap_generic_irq(%struct.netmap_adapter* %85, i64 %86, i64* %9)
  br label %115

88:                                               ; preds = %81
  %89 = load %struct.netmap_generic_adapter*, %struct.netmap_generic_adapter** %7, align 8
  %90 = getelementptr inbounds %struct.netmap_generic_adapter, %struct.netmap_generic_adapter* %89, i32 0, i32 0
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = load i64, i64* %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i64 %92
  %94 = call i32 @nm_os_mitigation_active(%struct.TYPE_3__* %93)
  %95 = call i64 @likely(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %88
  %98 = load %struct.netmap_generic_adapter*, %struct.netmap_generic_adapter** %7, align 8
  %99 = getelementptr inbounds %struct.netmap_generic_adapter, %struct.netmap_generic_adapter* %98, i32 0, i32 0
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = load i64, i64* %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  store i32 1, i32* %103, align 4
  br label %114

104:                                              ; preds = %88
  %105 = load %struct.netmap_adapter*, %struct.netmap_adapter** %6, align 8
  %106 = load i64, i64* %10, align 8
  %107 = call i32 @netmap_generic_irq(%struct.netmap_adapter* %105, i64 %106, i64* %9)
  %108 = load %struct.netmap_generic_adapter*, %struct.netmap_generic_adapter** %7, align 8
  %109 = getelementptr inbounds %struct.netmap_generic_adapter, %struct.netmap_generic_adapter* %108, i32 0, i32 0
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %109, align 8
  %111 = load i64, i64* %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i64 %111
  %113 = call i32 @nm_os_mitigation_start(%struct.TYPE_3__* %112)
  br label %114

114:                                              ; preds = %104, %97
  br label %115

115:                                              ; preds = %114, %84
  store i32 1, i32* %3, align 4
  br label %116

116:                                              ; preds = %115, %40
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local %struct.netmap_adapter* @NA(%struct.ifnet*) #1

declare dso_local i64 @MBUF_RXQ(%struct.mbuf*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @MBUF_LEN(%struct.mbuf*) #1

declare dso_local i64 @NETMAP_BUF_SIZE(%struct.netmap_adapter*) #1

declare dso_local i32 @nm_prlim(i32, i8*, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @mbq_len(i32*) #1

declare dso_local i32 @mbq_safe_enqueue(i32*, %struct.mbuf*) #1

declare dso_local i32 @netmap_generic_irq(%struct.netmap_adapter*, i64, i64*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @nm_os_mitigation_active(%struct.TYPE_3__*) #1

declare dso_local i32 @nm_os_mitigation_start(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
