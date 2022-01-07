; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/extr_svc_vc.c_svc_vc_process_pending.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/extr_svc_vc.c_svc_vc_process_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.socket*, i64 }
%struct.socket = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.cf_conn = type { i32, i32, %struct.mbuf*, %struct.mbuf* }
%struct.mbuf = type { i64, %struct.mbuf* }
%struct.TYPE_7__ = type { %struct.mbuf* }

@FALSE = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @svc_vc_process_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svc_vc_process_pending(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.cf_conn*, align 8
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.cf_conn*
  store %struct.cf_conn* %12, %struct.cf_conn** %4, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.socket*, %struct.socket** %14, align 8
  store %struct.socket* %15, %struct.socket** %5, align 8
  %16 = load %struct.cf_conn*, %struct.cf_conn** %4, align 8
  %17 = getelementptr inbounds %struct.cf_conn, %struct.cf_conn* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %79, label %20

20:                                               ; preds = %1
  %21 = load %struct.cf_conn*, %struct.cf_conn** %4, align 8
  %22 = getelementptr inbounds %struct.cf_conn, %struct.cf_conn* %21, i32 0, i32 2
  %23 = load %struct.mbuf*, %struct.mbuf** %22, align 8
  %24 = icmp ne %struct.mbuf* %23, null
  br i1 %24, label %25, label %79

25:                                               ; preds = %20
  store i64 0, i64* %7, align 8
  %26 = load %struct.cf_conn*, %struct.cf_conn** %4, align 8
  %27 = getelementptr inbounds %struct.cf_conn, %struct.cf_conn* %26, i32 0, i32 2
  %28 = load %struct.mbuf*, %struct.mbuf** %27, align 8
  store %struct.mbuf* %28, %struct.mbuf** %6, align 8
  br label %29

29:                                               ; preds = %37, %25
  %30 = load i64, i64* %7, align 8
  %31 = icmp ult i64 %30, 4
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %34 = icmp ne %struct.mbuf* %33, null
  br label %35

35:                                               ; preds = %32, %29
  %36 = phi i1 [ false, %29 ], [ %34, %32 ]
  br i1 %36, label %37, label %46

37:                                               ; preds = %35
  %38 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %39 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %7, align 8
  %42 = add i64 %41, %40
  store i64 %42, i64* %7, align 8
  %43 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %44 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %43, i32 0, i32 1
  %45 = load %struct.mbuf*, %struct.mbuf** %44, align 8
  store %struct.mbuf* %45, %struct.mbuf** %6, align 8
  br label %29

46:                                               ; preds = %35
  %47 = load i64, i64* %7, align 8
  %48 = icmp ult i64 %47, 4
  br i1 %48, label %49, label %57

49:                                               ; preds = %46
  %50 = load i64, i64* %7, align 8
  %51 = sub i64 4, %50
  %52 = trunc i64 %51 to i32
  %53 = load %struct.socket*, %struct.socket** %5, align 8
  %54 = getelementptr inbounds %struct.socket, %struct.socket* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 4
  %56 = load i32, i32* @FALSE, align 4
  store i32 %56, i32* %2, align 4
  br label %189

57:                                               ; preds = %46
  %58 = load %struct.cf_conn*, %struct.cf_conn** %4, align 8
  %59 = getelementptr inbounds %struct.cf_conn, %struct.cf_conn* %58, i32 0, i32 2
  %60 = load %struct.mbuf*, %struct.mbuf** %59, align 8
  %61 = bitcast i32* %8 to i8*
  %62 = call i32 @m_copydata(%struct.mbuf* %60, i32 0, i32 4, i8* %61)
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @ntohl(i32 %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = and i32 %65, -2147483648
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i32
  %69 = load %struct.cf_conn*, %struct.cf_conn** %4, align 8
  %70 = getelementptr inbounds %struct.cf_conn, %struct.cf_conn* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* %8, align 4
  %72 = and i32 %71, 2147483647
  %73 = load %struct.cf_conn*, %struct.cf_conn** %4, align 8
  %74 = getelementptr inbounds %struct.cf_conn, %struct.cf_conn* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.cf_conn*, %struct.cf_conn** %4, align 8
  %76 = getelementptr inbounds %struct.cf_conn, %struct.cf_conn* %75, i32 0, i32 2
  %77 = load %struct.mbuf*, %struct.mbuf** %76, align 8
  %78 = call i32 @m_adj(%struct.mbuf* %77, i32 4)
  br label %79

79:                                               ; preds = %57, %20, %1
  br label %80

80:                                               ; preds = %161, %79
  %81 = load %struct.cf_conn*, %struct.cf_conn** %4, align 8
  %82 = getelementptr inbounds %struct.cf_conn, %struct.cf_conn* %81, i32 0, i32 2
  %83 = load %struct.mbuf*, %struct.mbuf** %82, align 8
  %84 = icmp ne %struct.mbuf* %83, null
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = load %struct.cf_conn*, %struct.cf_conn** %4, align 8
  %87 = getelementptr inbounds %struct.cf_conn, %struct.cf_conn* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br label %90

90:                                               ; preds = %85, %80
  %91 = phi i1 [ false, %80 ], [ %89, %85 ]
  br i1 %91, label %92, label %162

92:                                               ; preds = %90
  %93 = load %struct.cf_conn*, %struct.cf_conn** %4, align 8
  %94 = getelementptr inbounds %struct.cf_conn, %struct.cf_conn* %93, i32 0, i32 2
  %95 = load %struct.mbuf*, %struct.mbuf** %94, align 8
  store %struct.mbuf* %95, %struct.mbuf** %6, align 8
  %96 = load %struct.cf_conn*, %struct.cf_conn** %4, align 8
  %97 = getelementptr inbounds %struct.cf_conn, %struct.cf_conn* %96, i32 0, i32 2
  %98 = load %struct.mbuf*, %struct.mbuf** %97, align 8
  %99 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %98, i32 0, i32 1
  %100 = load %struct.mbuf*, %struct.mbuf** %99, align 8
  %101 = icmp ne %struct.mbuf* %100, null
  br i1 %101, label %113, label %102

102:                                              ; preds = %92
  %103 = load %struct.cf_conn*, %struct.cf_conn** %4, align 8
  %104 = getelementptr inbounds %struct.cf_conn, %struct.cf_conn* %103, i32 0, i32 2
  %105 = load %struct.mbuf*, %struct.mbuf** %104, align 8
  %106 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.cf_conn*, %struct.cf_conn** %4, align 8
  %109 = getelementptr inbounds %struct.cf_conn, %struct.cf_conn* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = sext i32 %110 to i64
  %112 = icmp sgt i64 %107, %111
  br i1 %112, label %113, label %125

113:                                              ; preds = %102, %92
  %114 = load %struct.cf_conn*, %struct.cf_conn** %4, align 8
  %115 = getelementptr inbounds %struct.cf_conn, %struct.cf_conn* %114, i32 0, i32 2
  %116 = load %struct.mbuf*, %struct.mbuf** %115, align 8
  %117 = load %struct.cf_conn*, %struct.cf_conn** %4, align 8
  %118 = getelementptr inbounds %struct.cf_conn, %struct.cf_conn* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = sext i32 %119 to i64
  %121 = load i32, i32* @M_WAITOK, align 4
  %122 = call %struct.mbuf* @m_split(%struct.mbuf* %116, i64 %120, i32 %121)
  %123 = load %struct.cf_conn*, %struct.cf_conn** %4, align 8
  %124 = getelementptr inbounds %struct.cf_conn, %struct.cf_conn* %123, i32 0, i32 2
  store %struct.mbuf* %122, %struct.mbuf** %124, align 8
  br label %128

125:                                              ; preds = %102
  %126 = load %struct.cf_conn*, %struct.cf_conn** %4, align 8
  %127 = getelementptr inbounds %struct.cf_conn, %struct.cf_conn* %126, i32 0, i32 2
  store %struct.mbuf* null, %struct.mbuf** %127, align 8
  br label %128

128:                                              ; preds = %125, %113
  %129 = load %struct.cf_conn*, %struct.cf_conn** %4, align 8
  %130 = getelementptr inbounds %struct.cf_conn, %struct.cf_conn* %129, i32 0, i32 3
  %131 = load %struct.mbuf*, %struct.mbuf** %130, align 8
  %132 = icmp ne %struct.mbuf* %131, null
  br i1 %132, label %133, label %140

133:                                              ; preds = %128
  %134 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %135 = load %struct.cf_conn*, %struct.cf_conn** %4, align 8
  %136 = getelementptr inbounds %struct.cf_conn, %struct.cf_conn* %135, i32 0, i32 3
  %137 = load %struct.mbuf*, %struct.mbuf** %136, align 8
  %138 = call %struct.TYPE_7__* @m_last(%struct.mbuf* %137)
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  store %struct.mbuf* %134, %struct.mbuf** %139, align 8
  br label %144

140:                                              ; preds = %128
  %141 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %142 = load %struct.cf_conn*, %struct.cf_conn** %4, align 8
  %143 = getelementptr inbounds %struct.cf_conn, %struct.cf_conn* %142, i32 0, i32 3
  store %struct.mbuf* %141, %struct.mbuf** %143, align 8
  br label %144

144:                                              ; preds = %140, %133
  br label %145

145:                                              ; preds = %148, %144
  %146 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %147 = icmp ne %struct.mbuf* %146, null
  br i1 %147, label %148, label %161

148:                                              ; preds = %145
  %149 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %150 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.cf_conn*, %struct.cf_conn** %4, align 8
  %153 = getelementptr inbounds %struct.cf_conn, %struct.cf_conn* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = sext i32 %154 to i64
  %156 = sub nsw i64 %155, %151
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* %153, align 8
  %158 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %159 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %158, i32 0, i32 1
  %160 = load %struct.mbuf*, %struct.mbuf** %159, align 8
  store %struct.mbuf* %160, %struct.mbuf** %6, align 8
  br label %145

161:                                              ; preds = %145
  br label %80

162:                                              ; preds = %90
  %163 = load %struct.cf_conn*, %struct.cf_conn** %4, align 8
  %164 = getelementptr inbounds %struct.cf_conn, %struct.cf_conn* %163, i32 0, i32 2
  %165 = load %struct.mbuf*, %struct.mbuf** %164, align 8
  %166 = icmp ne %struct.mbuf* %165, null
  br i1 %166, label %167, label %172

167:                                              ; preds = %162
  %168 = load i32, i32* @INT_MAX, align 4
  %169 = load %struct.socket*, %struct.socket** %5, align 8
  %170 = getelementptr inbounds %struct.socket, %struct.socket* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 0
  store i32 %168, i32* %171, align 4
  br label %187

172:                                              ; preds = %162
  %173 = load %struct.cf_conn*, %struct.cf_conn** %4, align 8
  %174 = getelementptr inbounds %struct.cf_conn, %struct.cf_conn* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = sext i32 %175 to i64
  %177 = load %struct.socket*, %struct.socket** %5, align 8
  %178 = getelementptr inbounds %struct.socket, %struct.socket* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = sdiv i32 %180, 2
  %182 = call i32 @imin(i64 %176, i32 %181)
  %183 = call i32 @imax(i32 1, i32 %182)
  %184 = load %struct.socket*, %struct.socket** %5, align 8
  %185 = getelementptr inbounds %struct.socket, %struct.socket* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 0
  store i32 %183, i32* %186, align 4
  br label %187

187:                                              ; preds = %172, %167
  %188 = load i32, i32* @TRUE, align 4
  store i32 %188, i32* %2, align 4
  br label %189

189:                                              ; preds = %187, %49
  %190 = load i32, i32* %2, align 4
  ret i32 %190
}

declare dso_local i32 @m_copydata(%struct.mbuf*, i32, i32, i8*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @m_adj(%struct.mbuf*, i32) #1

declare dso_local %struct.mbuf* @m_split(%struct.mbuf*, i64, i32) #1

declare dso_local %struct.TYPE_7__* @m_last(%struct.mbuf*) #1

declare dso_local i32 @imax(i32, i32) #1

declare dso_local i32 @imin(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
