; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_siftr.c_siftr_siftdata.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_siftr.c_siftr_siftdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pkt_node = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i8*, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32*, i32* }
%struct.inpcb = type { i32, i32, %struct.TYPE_11__*, i32, i32, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { %struct.TYPE_12__, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.tcpcb = type { i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@TF_SACK_PERMIT = common dso_local global i32 0, align 4
@PFIL_IN = common dso_local global i32 0, align 4
@DIR_IN = common dso_local global i32 0, align 4
@DIR_OUT = common dso_local global i32 0, align 4
@siftr = common dso_local global i32 0, align 4
@INP_IPV4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pkt_node*, %struct.inpcb*, %struct.tcpcb*, i32, i32, i32)* @siftr_siftdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @siftr_siftdata(%struct.pkt_node* %0, %struct.inpcb* %1, %struct.tcpcb* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.pkt_node*, align 8
  %8 = alloca %struct.inpcb*, align 8
  %9 = alloca %struct.tcpcb*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pkt_node* %0, %struct.pkt_node** %7, align 8
  store %struct.inpcb* %1, %struct.inpcb** %8, align 8
  store %struct.tcpcb* %2, %struct.tcpcb** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %14 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %13, i32 0, i32 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.pkt_node*, %struct.pkt_node** %7, align 8
  %18 = getelementptr inbounds %struct.pkt_node, %struct.pkt_node* %17, i32 0, i32 27
  %19 = load i32*, i32** %18, align 8
  store i32 %16, i32* %19, align 4
  %20 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %21 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %20, i32 0, i32 7
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.pkt_node*, %struct.pkt_node** %7, align 8
  %25 = getelementptr inbounds %struct.pkt_node, %struct.pkt_node* %24, i32 0, i32 26
  %26 = load i32*, i32** %25, align 8
  store i32 %23, i32* %26, align 4
  %27 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %28 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.pkt_node*, %struct.pkt_node** %7, align 8
  %31 = getelementptr inbounds %struct.pkt_node, %struct.pkt_node* %30, i32 0, i32 25
  store i32 %29, i32* %31, align 8
  %32 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %33 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.pkt_node*, %struct.pkt_node** %7, align 8
  %36 = getelementptr inbounds %struct.pkt_node, %struct.pkt_node* %35, i32 0, i32 24
  store i32 %34, i32* %36, align 4
  %37 = load %struct.tcpcb*, %struct.tcpcb** %9, align 8
  %38 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %37, i32 0, i32 13
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.pkt_node*, %struct.pkt_node** %7, align 8
  %41 = getelementptr inbounds %struct.pkt_node, %struct.pkt_node* %40, i32 0, i32 23
  store i32 %39, i32* %41, align 8
  %42 = load %struct.tcpcb*, %struct.tcpcb** %9, align 8
  %43 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %42, i32 0, i32 12
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.pkt_node*, %struct.pkt_node** %7, align 8
  %46 = getelementptr inbounds %struct.pkt_node, %struct.pkt_node* %45, i32 0, i32 22
  store i32 %44, i32* %46, align 4
  %47 = load %struct.tcpcb*, %struct.tcpcb** %9, align 8
  %48 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %47, i32 0, i32 11
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.pkt_node*, %struct.pkt_node** %7, align 8
  %51 = getelementptr inbounds %struct.pkt_node, %struct.pkt_node* %50, i32 0, i32 21
  store i32 %49, i32* %51, align 8
  %52 = load %struct.pkt_node*, %struct.pkt_node** %7, align 8
  %53 = getelementptr inbounds %struct.pkt_node, %struct.pkt_node* %52, i32 0, i32 20
  store i64 0, i64* %53, align 8
  %54 = load %struct.tcpcb*, %struct.tcpcb** %9, align 8
  %55 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %54, i32 0, i32 10
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.pkt_node*, %struct.pkt_node** %7, align 8
  %58 = getelementptr inbounds %struct.pkt_node, %struct.pkt_node* %57, i32 0, i32 19
  store i32 %56, i32* %58, align 4
  %59 = load %struct.tcpcb*, %struct.tcpcb** %9, align 8
  %60 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %59, i32 0, i32 9
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.pkt_node*, %struct.pkt_node** %7, align 8
  %63 = getelementptr inbounds %struct.pkt_node, %struct.pkt_node* %62, i32 0, i32 18
  store i32 %61, i32* %63, align 8
  %64 = load %struct.tcpcb*, %struct.tcpcb** %9, align 8
  %65 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %64, i32 0, i32 8
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.pkt_node*, %struct.pkt_node** %7, align 8
  %68 = getelementptr inbounds %struct.pkt_node, %struct.pkt_node* %67, i32 0, i32 17
  store i32 %66, i32* %68, align 4
  %69 = load %struct.tcpcb*, %struct.tcpcb** %9, align 8
  %70 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %69, i32 0, i32 7
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.pkt_node*, %struct.pkt_node** %7, align 8
  %73 = getelementptr inbounds %struct.pkt_node, %struct.pkt_node* %72, i32 0, i32 16
  store i32 %71, i32* %73, align 8
  %74 = load %struct.tcpcb*, %struct.tcpcb** %9, align 8
  %75 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.pkt_node*, %struct.pkt_node** %7, align 8
  %78 = getelementptr inbounds %struct.pkt_node, %struct.pkt_node* %77, i32 0, i32 15
  store i32 %76, i32* %78, align 4
  %79 = load %struct.tcpcb*, %struct.tcpcb** %9, align 8
  %80 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.pkt_node*, %struct.pkt_node** %7, align 8
  %83 = getelementptr inbounds %struct.pkt_node, %struct.pkt_node* %82, i32 0, i32 14
  store i32 %81, i32* %83, align 8
  %84 = load %struct.tcpcb*, %struct.tcpcb** %9, align 8
  %85 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @TF_SACK_PERMIT, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  %90 = zext i1 %89 to i32
  %91 = load %struct.pkt_node*, %struct.pkt_node** %7, align 8
  %92 = getelementptr inbounds %struct.pkt_node, %struct.pkt_node* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load %struct.tcpcb*, %struct.tcpcb** %9, align 8
  %94 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.pkt_node*, %struct.pkt_node** %7, align 8
  %97 = getelementptr inbounds %struct.pkt_node, %struct.pkt_node* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load %struct.tcpcb*, %struct.tcpcb** %9, align 8
  %99 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.pkt_node*, %struct.pkt_node** %7, align 8
  %102 = getelementptr inbounds %struct.pkt_node, %struct.pkt_node* %101, i32 0, i32 13
  store i32 %100, i32* %102, align 4
  %103 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %104 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %103, i32 0, i32 2
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.pkt_node*, %struct.pkt_node** %7, align 8
  %110 = getelementptr inbounds %struct.pkt_node, %struct.pkt_node* %109, i32 0, i32 12
  store i32 %108, i32* %110, align 8
  %111 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %112 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %111, i32 0, i32 2
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 1
  %115 = call i8* @sbused(%struct.TYPE_12__* %114)
  %116 = load %struct.pkt_node*, %struct.pkt_node** %7, align 8
  %117 = getelementptr inbounds %struct.pkt_node, %struct.pkt_node* %116, i32 0, i32 11
  store i8* %115, i8** %117, align 8
  %118 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %119 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %118, i32 0, i32 2
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.pkt_node*, %struct.pkt_node** %7, align 8
  %125 = getelementptr inbounds %struct.pkt_node, %struct.pkt_node* %124, i32 0, i32 10
  store i32 %123, i32* %125, align 8
  %126 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %127 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %126, i32 0, i32 2
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 0
  %130 = call i8* @sbused(%struct.TYPE_12__* %129)
  %131 = load %struct.pkt_node*, %struct.pkt_node** %7, align 8
  %132 = getelementptr inbounds %struct.pkt_node, %struct.pkt_node* %131, i32 0, i32 9
  store i8* %130, i8** %132, align 8
  %133 = load %struct.tcpcb*, %struct.tcpcb** %9, align 8
  %134 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %133, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.tcpcb*, %struct.tcpcb** %9, align 8
  %137 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = sub nsw i64 %135, %138
  %140 = load %struct.pkt_node*, %struct.pkt_node** %7, align 8
  %141 = getelementptr inbounds %struct.pkt_node, %struct.pkt_node* %140, i32 0, i32 8
  store i64 %139, i64* %141, align 8
  %142 = load %struct.tcpcb*, %struct.tcpcb** %9, align 8
  %143 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.pkt_node*, %struct.pkt_node** %7, align 8
  %146 = getelementptr inbounds %struct.pkt_node, %struct.pkt_node* %145, i32 0, i32 7
  store i32 %144, i32* %146, align 4
  %147 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %148 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.pkt_node*, %struct.pkt_node** %7, align 8
  %151 = getelementptr inbounds %struct.pkt_node, %struct.pkt_node* %150, i32 0, i32 6
  store i32 %149, i32* %151, align 8
  %152 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %153 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.pkt_node*, %struct.pkt_node** %7, align 8
  %156 = getelementptr inbounds %struct.pkt_node, %struct.pkt_node* %155, i32 0, i32 5
  store i32 %154, i32* %156, align 4
  %157 = load i32, i32* %12, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %6
  %160 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %161 = call i32 @INP_RUNLOCK(%struct.inpcb* %160)
  br label %162

162:                                              ; preds = %159, %6
  %163 = load i32, i32* %10, align 4
  %164 = load %struct.pkt_node*, %struct.pkt_node** %7, align 8
  %165 = getelementptr inbounds %struct.pkt_node, %struct.pkt_node* %164, i32 0, i32 2
  store i32 %163, i32* %165, align 8
  %166 = load i32, i32* %11, align 4
  %167 = load i32, i32* @PFIL_IN, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %171

169:                                              ; preds = %162
  %170 = load i32, i32* @DIR_IN, align 4
  br label %173

171:                                              ; preds = %162
  %172 = load i32, i32* @DIR_OUT, align 4
  br label %173

173:                                              ; preds = %171, %169
  %174 = phi i32 [ %170, %169 ], [ %172, %171 ]
  %175 = load %struct.pkt_node*, %struct.pkt_node** %7, align 8
  %176 = getelementptr inbounds %struct.pkt_node, %struct.pkt_node* %175, i32 0, i32 4
  store i32 %174, i32* %176, align 8
  %177 = load %struct.pkt_node*, %struct.pkt_node** %7, align 8
  %178 = getelementptr inbounds %struct.pkt_node, %struct.pkt_node* %177, i32 0, i32 3
  %179 = call i32 @microtime(i32* %178)
  %180 = load i32, i32* @siftr, align 4
  %181 = call i32 @TCP_PROBE1(i32 %180, %struct.pkt_node** %7)
  ret void
}

declare dso_local i8* @sbused(%struct.TYPE_12__*) #1

declare dso_local i32 @INP_RUNLOCK(%struct.inpcb*) #1

declare dso_local i32 @microtime(i32*) #1

declare dso_local i32 @TCP_PROBE1(i32, %struct.pkt_node**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
