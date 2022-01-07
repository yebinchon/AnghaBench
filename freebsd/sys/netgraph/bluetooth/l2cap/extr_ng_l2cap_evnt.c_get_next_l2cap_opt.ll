; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/l2cap/extr_ng_l2cap_evnt.c_get_next_l2cap_opt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/l2cap/extr_ng_l2cap_evnt.c_get_next_l2cap_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i8*, i8* }
%struct.TYPE_8__ = type { i8*, i8*, i8*, i8*, i8* }

@NG_L2CAP_OPT_HINT_MASK = common dso_local global i32 0, align 4
@NG_L2CAP_OPT_MTU_SIZE = common dso_local global i32 0, align 4
@NG_L2CAP_OPT_FLUSH_TIMO_SIZE = common dso_local global i32 0, align 4
@NG_L2CAP_OPT_QOS_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mbuf*, i32*, %struct.TYPE_10__*, %struct.TYPE_9__*)* @get_next_l2cap_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_next_l2cap_opt(%struct.mbuf* %0, i32* %1, %struct.TYPE_10__* %2, %struct.TYPE_9__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mbuf* %0, %struct.mbuf** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %9, align 8
  %12 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %13 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* %16, align 4
  %18 = sub nsw i32 %15, %17
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %198

22:                                               ; preds = %4
  %23 = load i32, i32* %11, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %11, align 4
  %27 = sext i32 %26 to i64
  %28 = icmp ult i64 %27, 8
  br i1 %28, label %29, label %30

29:                                               ; preds = %25, %22
  store i32 -1, i32* %5, align 4
  br label %198

30:                                               ; preds = %25
  %31 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %35 = ptrtoint %struct.TYPE_10__* %34 to i32
  %36 = call i32 @m_copydata(%struct.mbuf* %31, i32 %33, i32 8, i32 %35)
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = add i64 %39, 8
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %37, align 4
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = sub i64 %43, 8
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %11, align 4
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @NG_L2CAP_OPT_HINT(i32 %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* @NG_L2CAP_OPT_HINT_MASK, align 4
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  switch i32 %57, label %185 [
    i32 129, label %58
    i32 130, label %89
    i32 128, label %120
  ]

58:                                               ; preds = %30
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @NG_L2CAP_OPT_MTU_SIZE, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %70, label %64

64:                                               ; preds = %58
  %65 = load i32, i32* %11, align 4
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %64, %58
  store i32 -2, i32* %5, align 4
  br label %198

71:                                               ; preds = %64
  %72 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %73 = load i32*, i32** %7, align 8
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @NG_L2CAP_OPT_MTU_SIZE, align 4
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %77 = ptrtoint %struct.TYPE_9__* %76 to i32
  %78 = call i32 @m_copydata(%struct.mbuf* %72, i32 %74, i32 %75, i32 %77)
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 2
  %81 = load i8*, i8** %80, align 8
  %82 = call i8* @le16toh(i8* %81)
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 2
  store i8* %82, i8** %84, align 8
  %85 = load i32, i32* @NG_L2CAP_OPT_MTU_SIZE, align 4
  %86 = load i32*, i32** %7, align 8
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, %85
  store i32 %88, i32* %86, align 4
  br label %197

89:                                               ; preds = %30
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @NG_L2CAP_OPT_FLUSH_TIMO_SIZE, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %101, label %95

95:                                               ; preds = %89
  %96 = load i32, i32* %11, align 4
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp slt i32 %96, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %95, %89
  store i32 -2, i32* %5, align 4
  br label %198

102:                                              ; preds = %95
  %103 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %104 = load i32*, i32** %7, align 8
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @NG_L2CAP_OPT_FLUSH_TIMO_SIZE, align 4
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %108 = ptrtoint %struct.TYPE_9__* %107 to i32
  %109 = call i32 @m_copydata(%struct.mbuf* %103, i32 %105, i32 %106, i32 %108)
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 1
  %112 = load i8*, i8** %111, align 8
  %113 = call i8* @le16toh(i8* %112)
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 1
  store i8* %113, i8** %115, align 8
  %116 = load i32, i32* @NG_L2CAP_OPT_FLUSH_TIMO_SIZE, align 4
  %117 = load i32*, i32** %7, align 8
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %118, %116
  store i32 %119, i32* %117, align 4
  br label %197

120:                                              ; preds = %30
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @NG_L2CAP_OPT_QOS_SIZE, align 4
  %125 = icmp ne i32 %123, %124
  br i1 %125, label %132, label %126

126:                                              ; preds = %120
  %127 = load i32, i32* %11, align 4
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = icmp slt i32 %127, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %126, %120
  store i32 -2, i32* %5, align 4
  br label %198

133:                                              ; preds = %126
  %134 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %135 = load i32*, i32** %7, align 8
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @NG_L2CAP_OPT_QOS_SIZE, align 4
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %139 = ptrtoint %struct.TYPE_9__* %138 to i32
  %140 = call i32 @m_copydata(%struct.mbuf* %134, i32 %136, i32 %137, i32 %139)
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 4
  %144 = load i8*, i8** %143, align 8
  %145 = call i8* @le32toh(i8* %144)
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 4
  store i8* %145, i8** %148, align 8
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 3
  %152 = load i8*, i8** %151, align 8
  %153 = call i8* @le32toh(i8* %152)
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 3
  store i8* %153, i8** %156, align 8
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 2
  %160 = load i8*, i8** %159, align 8
  %161 = call i8* @le32toh(i8* %160)
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 2
  store i8* %161, i8** %164, align 8
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 1
  %168 = load i8*, i8** %167, align 8
  %169 = call i8* @le32toh(i8* %168)
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 1
  store i8* %169, i8** %172, align 8
  %173 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 0
  %176 = load i8*, i8** %175, align 8
  %177 = call i8* @le32toh(i8* %176)
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 0
  store i8* %177, i8** %180, align 8
  %181 = load i32, i32* @NG_L2CAP_OPT_QOS_SIZE, align 4
  %182 = load i32*, i32** %7, align 8
  %183 = load i32, i32* %182, align 4
  %184 = add nsw i32 %183, %181
  store i32 %184, i32* %182, align 4
  br label %197

185:                                              ; preds = %30
  %186 = load i32, i32* %10, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %195

188:                                              ; preds = %185
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load i32*, i32** %7, align 8
  %193 = load i32, i32* %192, align 4
  %194 = add nsw i32 %193, %191
  store i32 %194, i32* %192, align 4
  br label %196

195:                                              ; preds = %185
  store i32 -3, i32* %5, align 4
  br label %198

196:                                              ; preds = %188
  br label %197

197:                                              ; preds = %196, %133, %102, %71
  store i32 1, i32* %5, align 4
  br label %198

198:                                              ; preds = %197, %195, %132, %101, %70, %29, %21
  %199 = load i32, i32* %5, align 4
  ret i32 %199
}

declare dso_local i32 @m_copydata(%struct.mbuf*, i32, i32, i32) #1

declare dso_local i32 @NG_L2CAP_OPT_HINT(i32) #1

declare dso_local i8* @le16toh(i8*) #1

declare dso_local i8* @le32toh(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
