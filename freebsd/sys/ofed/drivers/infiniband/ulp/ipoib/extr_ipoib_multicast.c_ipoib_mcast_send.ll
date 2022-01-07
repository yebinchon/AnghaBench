; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_multicast.c_ipoib_mcast_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_multicast.c_ipoib_mcast_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipoib_dev_priv = type { i32, %struct.TYPE_5__*, i32, %struct.ifnet* }
%struct.TYPE_5__ = type { i32 }
%struct.ifnet = type { i32 }
%struct.mbuf = type { i32 }
%struct.ipoib_mcast = type { i64, i32, %struct.TYPE_8__, i32, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@IPOIB_FLAG_OPER_UP = common dso_local global i32 0, align 4
@IPOIB_MCAST_FLAG_ATTACHED = common dso_local global i32 0, align 4
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"setting up send only multicast group for %16D\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"unable to allocate memory for multicast structure\0A\00", align 1
@IPOIB_MCAST_FLAG_SENDONLY = common dso_local global i32 0, align 4
@IPOIB_MAX_MCAST_QUEUE = common dso_local global i64 0, align 8
@IPOIB_MCAST_FLAG_BUSY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [55 x i8] c"no address vector, but multicast join already started\0A\00", align 1
@IB_MULTICAST_QPN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipoib_mcast_send(%struct.ipoib_dev_priv* %0, i8* %1, %struct.mbuf* %2) #0 {
  %4 = alloca %struct.ipoib_dev_priv*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.ifnet*, align 8
  %8 = alloca %struct.ipoib_mcast*, align 8
  store %struct.ipoib_dev_priv* %0, %struct.ipoib_dev_priv** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.mbuf* %2, %struct.mbuf** %6, align 8
  %9 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %10 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %9, i32 0, i32 3
  %11 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  store %struct.ifnet* %11, %struct.ifnet** %7, align 8
  %12 = load i32, i32* @IPOIB_FLAG_OPER_UP, align 4
  %13 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %14 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %13, i32 0, i32 2
  %15 = call i64 @test_bit(i32 %12, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %3
  %18 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %19 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %18, i32 0, i32 1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = icmp ne %struct.TYPE_5__* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load i32, i32* @IPOIB_MCAST_FLAG_ATTACHED, align 4
  %24 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %25 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %24, i32 0, i32 1
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = call i64 @test_bit(i32 %23, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %22, %17, %3
  %31 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %32 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %33 = call i32 @if_inc_counter(%struct.ifnet* %31, i32 %32, i32 1)
  %34 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %35 = call i32 @m_freem(%struct.mbuf* %34)
  br label %138

36:                                               ; preds = %22
  %37 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = call %struct.ipoib_mcast* @__ipoib_mcast_find(%struct.ipoib_dev_priv* %37, i8* %38)
  store %struct.ipoib_mcast* %39, %struct.ipoib_mcast** %8, align 8
  %40 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %8, align 8
  %41 = icmp ne %struct.ipoib_mcast* %40, null
  br i1 %41, label %78, label %42

42:                                               ; preds = %36
  %43 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 (%struct.ipoib_dev_priv*, i8*, ...) @ipoib_dbg_mcast(%struct.ipoib_dev_priv* %43, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %46 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %47 = call %struct.ipoib_mcast* @ipoib_mcast_alloc(%struct.ipoib_dev_priv* %46, i32 0)
  store %struct.ipoib_mcast* %47, %struct.ipoib_mcast** %8, align 8
  %48 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %8, align 8
  %49 = icmp ne %struct.ipoib_mcast* %48, null
  br i1 %49, label %58, label %50

50:                                               ; preds = %42
  %51 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %52 = call i32 @ipoib_warn(%struct.ipoib_dev_priv* %51, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  %53 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %54 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %55 = call i32 @if_inc_counter(%struct.ifnet* %53, i32 %54, i32 1)
  %56 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %57 = call i32 @m_freem(%struct.mbuf* %56)
  br label %122

58:                                               ; preds = %42
  %59 = load i32, i32* @IPOIB_MCAST_FLAG_SENDONLY, align 4
  %60 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %8, align 8
  %61 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %60, i32 0, i32 1
  %62 = call i32 @set_bit(i32 %59, i32* %61)
  %63 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %8, align 8
  %64 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i8*, i8** %5, align 8
  %69 = call i32 @memcpy(i32 %67, i8* %68, i32 4)
  %70 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %71 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %8, align 8
  %72 = call i32 @__ipoib_mcast_add(%struct.ipoib_dev_priv* %70, %struct.ipoib_mcast* %71)
  %73 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %8, align 8
  %74 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %73, i32 0, i32 3
  %75 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %76 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %75, i32 0, i32 0
  %77 = call i32 @list_add_tail(i32* %74, i32* %76)
  br label %78

78:                                               ; preds = %58, %36
  %79 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %8, align 8
  %80 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %121, label %83

83:                                               ; preds = %78
  %84 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %8, align 8
  %85 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @IPOIB_MAX_MCAST_QUEUE, align 8
  %89 = icmp slt i64 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %83
  %91 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %8, align 8
  %92 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %91, i32 0, i32 2
  %93 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %94 = call i32 @_IF_ENQUEUE(%struct.TYPE_8__* %92, %struct.mbuf* %93)
  br label %101

95:                                               ; preds = %83
  %96 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %97 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %98 = call i32 @if_inc_counter(%struct.ifnet* %96, i32 %97, i32 1)
  %99 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %100 = call i32 @m_freem(%struct.mbuf* %99)
  br label %101

101:                                              ; preds = %95, %90
  %102 = load i32, i32* @IPOIB_MCAST_FLAG_BUSY, align 4
  %103 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %8, align 8
  %104 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %103, i32 0, i32 1
  %105 = call i64 @test_bit(i32 %102, i32* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %101
  %108 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %109 = call i32 (%struct.ipoib_dev_priv*, i8*, ...) @ipoib_dbg_mcast(%struct.ipoib_dev_priv* %108, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  br label %120

110:                                              ; preds = %101
  %111 = load i32, i32* @IPOIB_MCAST_FLAG_SENDONLY, align 4
  %112 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %8, align 8
  %113 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %112, i32 0, i32 1
  %114 = call i64 @test_bit(i32 %111, i32* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %110
  %117 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %8, align 8
  %118 = call i32 @ipoib_mcast_sendonly_join(%struct.ipoib_mcast* %117)
  br label %119

119:                                              ; preds = %116, %110
  br label %120

120:                                              ; preds = %119, %107
  store %struct.ipoib_mcast* null, %struct.ipoib_mcast** %8, align 8
  br label %121

121:                                              ; preds = %120, %78
  br label %122

122:                                              ; preds = %121, %50
  %123 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %8, align 8
  %124 = icmp ne %struct.ipoib_mcast* %123, null
  br i1 %124, label %125, label %138

125:                                              ; preds = %122
  %126 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %8, align 8
  %127 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %138

130:                                              ; preds = %125
  %131 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %132 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %133 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %8, align 8
  %134 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i32, i32* @IB_MULTICAST_QPN, align 4
  %137 = call i32 @ipoib_send(%struct.ipoib_dev_priv* %131, %struct.mbuf* %132, i64 %135, i32 %136)
  br label %138

138:                                              ; preds = %30, %130, %125, %122
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local %struct.ipoib_mcast* @__ipoib_mcast_find(%struct.ipoib_dev_priv*, i8*) #1

declare dso_local i32 @ipoib_dbg_mcast(%struct.ipoib_dev_priv*, i8*, ...) #1

declare dso_local %struct.ipoib_mcast* @ipoib_mcast_alloc(%struct.ipoib_dev_priv*, i32) #1

declare dso_local i32 @ipoib_warn(%struct.ipoib_dev_priv*, i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @__ipoib_mcast_add(%struct.ipoib_dev_priv*, %struct.ipoib_mcast*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @_IF_ENQUEUE(%struct.TYPE_8__*, %struct.mbuf*) #1

declare dso_local i32 @ipoib_mcast_sendonly_join(%struct.ipoib_mcast*) #1

declare dso_local i32 @ipoib_send(%struct.ipoib_dev_priv*, %struct.mbuf*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
