; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_ppp.c_ng_ppp_link_xmit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_ppp.c_ng_ppp_link_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_12__, i32, %struct.TYPE_11__, %struct.ng_ppp_link* }
%struct.TYPE_12__ = type { i32, i64 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.ng_ppp_link = type { i32, i32, %struct.TYPE_10__, i32*, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64, i32, i32 }
%struct.mbuf = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }

@NG_PPP_MAX_LINKS = common dso_local global i64 0, align 8
@ENETDOWN = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@PROT_LCP = common dso_local global i64 0, align 8
@ng_ppp_acf = common dso_local global i32 0, align 4
@MP_AVERAGE_LINK_OVERHEAD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64, i64, i32)* @ng_ppp_link_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_ppp_link_xmit(i32 %0, i32 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca %struct.ng_ppp_link*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.mbuf*, align 8
  %17 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call %struct.TYPE_13__* @NG_NODE_PRIVATE(i32 %18)
  store %struct.TYPE_13__* %19, %struct.TYPE_13__** %12, align 8
  %20 = load i64, i64* %10, align 8
  %21 = load i64, i64* @NG_PPP_MAX_LINKS, align 8
  %22 = icmp uge i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %5
  %24 = load i32, i32* @ENETDOWN, align 4
  %25 = call i32 @ERROUT(i32 %24)
  br label %26

26:                                               ; preds = %23, %5
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 4
  %29 = load %struct.ng_ppp_link*, %struct.ng_ppp_link** %28, align 8
  %30 = load i64, i64* %10, align 8
  %31 = getelementptr inbounds %struct.ng_ppp_link, %struct.ng_ppp_link* %29, i64 %30
  store %struct.ng_ppp_link* %31, %struct.ng_ppp_link** %13, align 8
  %32 = load %struct.ng_ppp_link*, %struct.ng_ppp_link** %13, align 8
  %33 = getelementptr inbounds %struct.ng_ppp_link, %struct.ng_ppp_link* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %26
  %37 = load i32, i32* @ENETDOWN, align 4
  %38 = call i32 @ERROUT(i32 %37)
  br label %39

39:                                               ; preds = %36, %26
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %42 = call i32 @NGI_GET_M(i32 %40, %struct.mbuf* %41)
  %43 = load %struct.ng_ppp_link*, %struct.ng_ppp_link** %13, align 8
  %44 = getelementptr inbounds %struct.ng_ppp_link, %struct.ng_ppp_link* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %17, align 8
  %47 = load i64, i64* %17, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %39
  %50 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %51 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %17, align 8
  %55 = icmp ugt i64 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %49
  %57 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %58 = call i32 @NG_FREE_M(%struct.mbuf* %57)
  %59 = load i32, i32* @EMSGSIZE, align 4
  %60 = call i32 @ERROUT(i32 %59)
  br label %61

61:                                               ; preds = %56, %49, %39
  %62 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %63 = load i64, i64* %9, align 8
  %64 = load %struct.ng_ppp_link*, %struct.ng_ppp_link** %13, align 8
  %65 = getelementptr inbounds %struct.ng_ppp_link, %struct.ng_ppp_link* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call %struct.mbuf* @ng_ppp_addproto(%struct.mbuf* %62, i64 %63, i32 %67)
  store %struct.mbuf* %68, %struct.mbuf** %16, align 8
  %69 = icmp eq %struct.mbuf* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %61
  %71 = load i32, i32* @ENOBUFS, align 4
  %72 = call i32 @ERROUT(i32 %71)
  br label %73

73:                                               ; preds = %70, %61
  %74 = load i64, i64* %9, align 8
  %75 = load i64, i64* @PROT_LCP, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %83, label %77

77:                                               ; preds = %73
  %78 = load %struct.ng_ppp_link*, %struct.ng_ppp_link** %13, align 8
  %79 = getelementptr inbounds %struct.ng_ppp_link, %struct.ng_ppp_link* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %91, label %83

83:                                               ; preds = %77, %73
  %84 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %85 = call %struct.mbuf* @ng_ppp_prepend(%struct.mbuf* %84, i32* @ng_ppp_acf, i32 2)
  store %struct.mbuf* %85, %struct.mbuf** %16, align 8
  %86 = icmp eq %struct.mbuf* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = load i32, i32* @ENOBUFS, align 4
  %89 = call i32 @ERROUT(i32 %88)
  br label %90

90:                                               ; preds = %87, %83
  br label %91

91:                                               ; preds = %90, %77
  %92 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %93 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %14, align 4
  %97 = load i32, i32* %15, align 4
  %98 = load i32, i32* %8, align 4
  %99 = load %struct.ng_ppp_link*, %struct.ng_ppp_link** %13, align 8
  %100 = getelementptr inbounds %struct.ng_ppp_link, %struct.ng_ppp_link* %99, i32 0, i32 3
  %101 = load i32*, i32** %100, align 8
  %102 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %103 = call i32 @NG_FWD_NEW_DATA(i32 %97, i32 %98, i32* %101, %struct.mbuf* %102)
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  %106 = call i32 @mtx_lock(i32* %105)
  %107 = load %struct.ng_ppp_link*, %struct.ng_ppp_link** %13, align 8
  %108 = getelementptr inbounds %struct.ng_ppp_link, %struct.ng_ppp_link* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 4
  %112 = load i32, i32* %14, align 4
  %113 = load %struct.ng_ppp_link*, %struct.ng_ppp_link** %13, align 8
  %114 = getelementptr inbounds %struct.ng_ppp_link, %struct.ng_ppp_link* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = add nsw i32 %116, %112
  store i32 %117, i32* %115, align 8
  %118 = load i32, i32* %11, align 4
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %120, label %132

120:                                              ; preds = %91
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %123, align 4
  %126 = load i32, i32* %11, align 4
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, %126
  store i32 %131, i32* %129, align 4
  br label %132

132:                                              ; preds = %120, %91
  %133 = load i32, i32* %15, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %181

135:                                              ; preds = %132
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %180

141:                                              ; preds = %135
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %180, label %146

146:                                              ; preds = %141
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %180, label %152

152:                                              ; preds = %146
  %153 = load %struct.ng_ppp_link*, %struct.ng_ppp_link** %13, align 8
  %154 = getelementptr inbounds %struct.ng_ppp_link, %struct.ng_ppp_link* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %152
  %158 = load %struct.ng_ppp_link*, %struct.ng_ppp_link** %13, align 8
  %159 = getelementptr inbounds %struct.ng_ppp_link, %struct.ng_ppp_link* %158, i32 0, i32 1
  %160 = call i32 @getmicrouptime(i32* %159)
  br label %161

161:                                              ; preds = %157, %152
  %162 = load i32, i32* %14, align 4
  %163 = sext i32 %162 to i64
  %164 = load i64, i64* @MP_AVERAGE_LINK_OVERHEAD, align 8
  %165 = add nsw i64 %163, %164
  %166 = load %struct.ng_ppp_link*, %struct.ng_ppp_link** %13, align 8
  %167 = getelementptr inbounds %struct.ng_ppp_link, %struct.ng_ppp_link* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = sext i32 %168 to i64
  %170 = add nsw i64 %169, %165
  %171 = trunc i64 %170 to i32
  store i32 %171, i32* %167, align 8
  %172 = load %struct.ng_ppp_link*, %struct.ng_ppp_link** %13, align 8
  %173 = getelementptr inbounds %struct.ng_ppp_link, %struct.ng_ppp_link* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = icmp sgt i32 %174, 80000
  br i1 %175, label %176, label %179

176:                                              ; preds = %161
  %177 = load %struct.ng_ppp_link*, %struct.ng_ppp_link** %13, align 8
  %178 = getelementptr inbounds %struct.ng_ppp_link, %struct.ng_ppp_link* %177, i32 0, i32 0
  store i32 80000, i32* %178, align 8
  br label %179

179:                                              ; preds = %176, %161
  br label %180

180:                                              ; preds = %179, %146, %141, %135
  br label %181

181:                                              ; preds = %180, %132
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 0
  %184 = call i32 @mtx_unlock(i32* %183)
  %185 = load i32, i32* %15, align 4
  store i32 %185, i32* %6, align 4
  br label %190

186:                                              ; No predecessors!
  %187 = load i32, i32* %8, align 4
  %188 = call i32 @NG_FREE_ITEM(i32 %187)
  %189 = load i32, i32* %15, align 4
  store i32 %189, i32* %6, align 4
  br label %190

190:                                              ; preds = %186, %181
  %191 = load i32, i32* %6, align 4
  ret i32 %191
}

declare dso_local %struct.TYPE_13__* @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @ERROUT(i32) #1

declare dso_local i32 @NGI_GET_M(i32, %struct.mbuf*) #1

declare dso_local i32 @NG_FREE_M(%struct.mbuf*) #1

declare dso_local %struct.mbuf* @ng_ppp_addproto(%struct.mbuf*, i64, i32) #1

declare dso_local %struct.mbuf* @ng_ppp_prepend(%struct.mbuf*, i32*, i32) #1

declare dso_local i32 @NG_FWD_NEW_DATA(i32, i32, i32*, %struct.mbuf*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @getmicrouptime(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @NG_FREE_ITEM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
