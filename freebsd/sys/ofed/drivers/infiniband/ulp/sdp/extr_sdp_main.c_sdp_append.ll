; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_main.c_sdp_append.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_main.c_sdp_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdp_sock = type { i64 }
%struct.sockbuf = type { %struct.mbuf*, %struct.mbuf*, %struct.mbuf*, %struct.mbuf* }
%struct.mbuf = type { i32, %struct.mbuf*, %struct.mbuf*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@M_PKTHDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"sdp_append: %p Missing packet header.\0A\00", align 1
@SDP_MAX_SEND_SGES = common dso_local global i32 0, align 4
@SDP_HEAD_SIZE = common dso_local global i64 0, align 8
@M_PUSH = common dso_local global i32 0, align 4
@M_URG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdp_sock*, %struct.sockbuf*, %struct.mbuf*, i32)* @sdp_append to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdp_append(%struct.sdp_sock* %0, %struct.sockbuf* %1, %struct.mbuf* %2, i32 %3) #0 {
  %5 = alloca %struct.sdp_sock*, align 8
  %6 = alloca %struct.sockbuf*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mbuf*, align 8
  %10 = alloca i32, align 4
  store %struct.sdp_sock* %0, %struct.sdp_sock** %5, align 8
  store %struct.sockbuf* %1, %struct.sockbuf** %6, align 8
  store %struct.mbuf* %2, %struct.mbuf** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.sockbuf*, %struct.sockbuf** %6, align 8
  %12 = call i32 @SOCKBUF_LOCK_ASSERT(%struct.sockbuf* %11)
  %13 = load %struct.sockbuf*, %struct.sockbuf** %6, align 8
  %14 = call i32 @SBLASTRECORDCHK(%struct.sockbuf* %13)
  %15 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %16 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @M_PKTHDR, align 4
  %19 = and i32 %17, %18
  %20 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %21 = bitcast %struct.mbuf* %20 to i8*
  %22 = call i32 @KASSERT(i32 %19, i8* %21)
  %23 = load %struct.sockbuf*, %struct.sockbuf** %6, align 8
  %24 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %23, i32 0, i32 2
  %25 = load %struct.mbuf*, %struct.mbuf** %24, align 8
  store %struct.mbuf* %25, %struct.mbuf** %9, align 8
  %26 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %27 = icmp eq %struct.mbuf* %26, null
  br i1 %27, label %28, label %51

28:                                               ; preds = %4
  %29 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %30 = load %struct.sockbuf*, %struct.sockbuf** %6, align 8
  %31 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %30, i32 0, i32 1
  store %struct.mbuf* %29, %struct.mbuf** %31, align 8
  %32 = load %struct.sockbuf*, %struct.sockbuf** %6, align 8
  %33 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %32, i32 0, i32 3
  store %struct.mbuf* %29, %struct.mbuf** %33, align 8
  %34 = load %struct.sockbuf*, %struct.sockbuf** %6, align 8
  %35 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %34, i32 0, i32 2
  store %struct.mbuf* %29, %struct.mbuf** %35, align 8
  br label %36

36:                                               ; preds = %46, %28
  %37 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %38 = icmp ne %struct.mbuf* %37, null
  br i1 %38, label %39, label %50

39:                                               ; preds = %36
  %40 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %41 = load %struct.sockbuf*, %struct.sockbuf** %6, align 8
  %42 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %41, i32 0, i32 0
  store %struct.mbuf* %40, %struct.mbuf** %42, align 8
  %43 = load %struct.sockbuf*, %struct.sockbuf** %6, align 8
  %44 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %45 = call i32 @sballoc(%struct.sockbuf* %43, %struct.mbuf* %44)
  br label %46

46:                                               ; preds = %39
  %47 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %48 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %47, i32 0, i32 1
  %49 = load %struct.mbuf*, %struct.mbuf** %48, align 8
  store %struct.mbuf* %49, %struct.mbuf** %7, align 8
  br label %36

50:                                               ; preds = %36
  br label %164

51:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %52

52:                                               ; preds = %60, %51
  %53 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %54 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %53, i32 0, i32 1
  %55 = load %struct.mbuf*, %struct.mbuf** %54, align 8
  %56 = icmp ne %struct.mbuf* %55, null
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %57
  %61 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %62 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %61, i32 0, i32 1
  %63 = load %struct.mbuf*, %struct.mbuf** %62, align 8
  store %struct.mbuf* %63, %struct.mbuf** %9, align 8
  br label %52

64:                                               ; preds = %52
  %65 = load %struct.sockbuf*, %struct.sockbuf** %6, align 8
  %66 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %65, i32 0, i32 2
  %67 = load %struct.mbuf*, %struct.mbuf** %66, align 8
  store %struct.mbuf* %67, %struct.mbuf** %9, align 8
  %68 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %69 = call i64 @M_WRITABLE(%struct.mbuf* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %125

71:                                               ; preds = %64
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %72, %73
  %75 = load i32, i32* @SDP_MAX_SEND_SGES, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %125

77:                                               ; preds = %71
  %78 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %79 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %83 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %81, %85
  %87 = load i64, i64* @SDP_HEAD_SIZE, align 8
  %88 = sub nsw i64 %86, %87
  %89 = load %struct.sdp_sock*, %struct.sdp_sock** %5, align 8
  %90 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp slt i64 %88, %91
  br i1 %92, label %93, label %125

93:                                               ; preds = %77
  %94 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %95 = load i64, i64* @SDP_HEAD_SIZE, align 8
  %96 = call i32 @m_adj(%struct.mbuf* %94, i64 %95)
  %97 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %98 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %102 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %104, %100
  store i64 %105, i64* %103, align 8
  %106 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %107 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @M_PUSH, align 4
  %110 = load i32, i32* @M_URG, align 4
  %111 = or i32 %109, %110
  %112 = and i32 %108, %111
  %113 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %114 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 8
  %117 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %118 = call i32 @m_demote(%struct.mbuf* %117, i32 1, i32 0)
  %119 = load %struct.sockbuf*, %struct.sockbuf** %6, align 8
  %120 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %121 = load %struct.sockbuf*, %struct.sockbuf** %6, align 8
  %122 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %121, i32 0, i32 0
  %123 = load %struct.mbuf*, %struct.mbuf** %122, align 8
  %124 = call i32 @sbcompress(%struct.sockbuf* %119, %struct.mbuf* %120, %struct.mbuf* %123)
  br label %164

125:                                              ; preds = %77, %71, %64
  %126 = load i32, i32* @M_PUSH, align 4
  %127 = load %struct.sockbuf*, %struct.sockbuf** %6, align 8
  %128 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %127, i32 0, i32 2
  %129 = load %struct.mbuf*, %struct.mbuf** %128, align 8
  %130 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = or i32 %131, %126
  store i32 %132, i32* %130, align 8
  %133 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %134 = load %struct.sockbuf*, %struct.sockbuf** %6, align 8
  %135 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %134, i32 0, i32 2
  %136 = load %struct.mbuf*, %struct.mbuf** %135, align 8
  %137 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %136, i32 0, i32 2
  store %struct.mbuf* %133, %struct.mbuf** %137, align 8
  %138 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %139 = load %struct.sockbuf*, %struct.sockbuf** %6, align 8
  %140 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %139, i32 0, i32 2
  store %struct.mbuf* %138, %struct.mbuf** %140, align 8
  %141 = load %struct.sockbuf*, %struct.sockbuf** %6, align 8
  %142 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %141, i32 0, i32 1
  %143 = load %struct.mbuf*, %struct.mbuf** %142, align 8
  %144 = icmp eq %struct.mbuf* %143, null
  br i1 %144, label %145, label %149

145:                                              ; preds = %125
  %146 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %147 = load %struct.sockbuf*, %struct.sockbuf** %6, align 8
  %148 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %147, i32 0, i32 1
  store %struct.mbuf* %146, %struct.mbuf** %148, align 8
  br label %149

149:                                              ; preds = %145, %125
  br label %150

150:                                              ; preds = %160, %149
  %151 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %152 = icmp ne %struct.mbuf* %151, null
  br i1 %152, label %153, label %164

153:                                              ; preds = %150
  %154 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %155 = load %struct.sockbuf*, %struct.sockbuf** %6, align 8
  %156 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %155, i32 0, i32 0
  store %struct.mbuf* %154, %struct.mbuf** %156, align 8
  %157 = load %struct.sockbuf*, %struct.sockbuf** %6, align 8
  %158 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %159 = call i32 @sballoc(%struct.sockbuf* %157, %struct.mbuf* %158)
  br label %160

160:                                              ; preds = %153
  %161 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %162 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %161, i32 0, i32 1
  %163 = load %struct.mbuf*, %struct.mbuf** %162, align 8
  store %struct.mbuf* %163, %struct.mbuf** %7, align 8
  br label %150

164:                                              ; preds = %50, %93, %150
  ret void
}

declare dso_local i32 @SOCKBUF_LOCK_ASSERT(%struct.sockbuf*) #1

declare dso_local i32 @SBLASTRECORDCHK(%struct.sockbuf*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @sballoc(%struct.sockbuf*, %struct.mbuf*) #1

declare dso_local i64 @M_WRITABLE(%struct.mbuf*) #1

declare dso_local i32 @m_adj(%struct.mbuf*, i64) #1

declare dso_local i32 @m_demote(%struct.mbuf*, i32, i32) #1

declare dso_local i32 @sbcompress(%struct.sockbuf*, %struct.mbuf*, %struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
