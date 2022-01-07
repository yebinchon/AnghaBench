; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_process_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_process_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlnxr_dev = type { i32* }
%struct.qlnxr_qp = type { %struct.TYPE_12__, %struct.TYPE_11__*, i32, i32 }
%struct.TYPE_12__ = type { i64, i64, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, %struct.TYPE_10__*, %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.qlnxr_cq = type { i32 }
%struct.ib_wc = type { i32, i32, i32, i32, i32*, i32, i64, i64 }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"opcode = IB_WC_RDMA_WRITE bytes = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"opcode = 0x%x \0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"exit cnt = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlnxr_dev*, %struct.qlnxr_qp*, %struct.qlnxr_cq*, i32, %struct.ib_wc*, i64, i32, i32)* @process_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_req(%struct.qlnxr_dev* %0, %struct.qlnxr_qp* %1, %struct.qlnxr_cq* %2, i32 %3, %struct.ib_wc* %4, i64 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.qlnxr_dev*, align 8
  %10 = alloca %struct.qlnxr_qp*, align 8
  %11 = alloca %struct.qlnxr_cq*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ib_wc*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  store %struct.qlnxr_dev* %0, %struct.qlnxr_dev** %9, align 8
  store %struct.qlnxr_qp* %1, %struct.qlnxr_qp** %10, align 8
  store %struct.qlnxr_cq* %2, %struct.qlnxr_cq** %11, align 8
  store i32 %3, i32* %12, align 4
  store %struct.ib_wc* %4, %struct.ib_wc** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  store i64 0, i64* %17, align 8
  %19 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %9, align 8
  %20 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %18, align 8
  %22 = load i32*, i32** %18, align 8
  %23 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %174, %8
  %25 = load i32, i32* %12, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %10, align 8
  %29 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %14, align 8
  %33 = icmp ne i64 %31, %32
  br label %34

34:                                               ; preds = %27, %24
  %35 = phi i1 [ false, %24 ], [ %33, %27 ]
  br i1 %35, label %36, label %178

36:                                               ; preds = %34
  %37 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %10, align 8
  %38 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %37, i32 0, i32 1
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %38, align 8
  %40 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %10, align 8
  %41 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %36
  %49 = load i32, i32* %16, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %10, align 8
  %53 = call i32 @qlnxr_chk_if_fmr(%struct.qlnxr_qp* %52)
  br label %155

54:                                               ; preds = %48, %36
  %55 = load i32, i32* %15, align 4
  %56 = load %struct.ib_wc*, %struct.ib_wc** %13, align 8
  %57 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.ib_wc*, %struct.ib_wc** %13, align 8
  %59 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %58, i32 0, i32 7
  store i64 0, i64* %59, align 8
  %60 = load %struct.ib_wc*, %struct.ib_wc** %13, align 8
  %61 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %60, i32 0, i32 6
  store i64 0, i64* %61, align 8
  %62 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %10, align 8
  %63 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ib_wc*, %struct.ib_wc** %13, align 8
  %66 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %65, i32 0, i32 5
  store i32 %64, i32* %66, align 8
  %67 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %10, align 8
  %68 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %67, i32 0, i32 2
  %69 = load %struct.ib_wc*, %struct.ib_wc** %13, align 8
  %70 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %69, i32 0, i32 4
  store i32* %68, i32** %70, align 8
  %71 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %10, align 8
  %72 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %71, i32 0, i32 1
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %72, align 8
  %74 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %10, align 8
  %75 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.ib_wc*, %struct.ib_wc** %13, align 8
  %82 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 4
  %83 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %10, align 8
  %84 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %83, i32 0, i32 1
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %84, align 8
  %86 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %10, align 8
  %87 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.ib_wc*, %struct.ib_wc** %13, align 8
  %94 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load %struct.ib_wc*, %struct.ib_wc** %13, align 8
  %96 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  switch i32 %97, label %147 [
    i32 130, label %98
    i32 134, label %123
    i32 132, label %123
    i32 133, label %126
    i32 131, label %141
    i32 128, label %141
  ]

98:                                               ; preds = %54
  %99 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %10, align 8
  %100 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %99, i32 0, i32 1
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %100, align 8
  %102 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %10, align 8
  %103 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.ib_wc*, %struct.ib_wc** %13, align 8
  %110 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 8
  %111 = load i32*, i32** %18, align 8
  %112 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %10, align 8
  %113 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %112, i32 0, i32 1
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %113, align 8
  %115 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %10, align 8
  %116 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %111, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %121)
  br label %148

123:                                              ; preds = %54, %54
  %124 = load %struct.ib_wc*, %struct.ib_wc** %13, align 8
  %125 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %124, i32 0, i32 2
  store i32 8, i32* %125, align 8
  br label %148

126:                                              ; preds = %54
  %127 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %10, align 8
  %128 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %127, i32 0, i32 1
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %128, align 8
  %130 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %10, align 8
  %131 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 3
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %138, align 4
  br label %148

141:                                              ; preds = %54, %54
  %142 = load i32*, i32** %18, align 8
  %143 = load %struct.ib_wc*, %struct.ib_wc** %13, align 8
  %144 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %142, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %145)
  br label %148

147:                                              ; preds = %54
  br label %148

148:                                              ; preds = %147, %141, %126, %123, %98
  %149 = load i32, i32* %12, align 4
  %150 = add nsw i32 %149, -1
  store i32 %150, i32* %12, align 4
  %151 = load %struct.ib_wc*, %struct.ib_wc** %13, align 8
  %152 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %151, i32 1
  store %struct.ib_wc* %152, %struct.ib_wc** %13, align 8
  %153 = load i64, i64* %17, align 8
  %154 = add nsw i64 %153, 1
  store i64 %154, i64* %17, align 8
  br label %155

155:                                              ; preds = %148, %51
  br label %156

156:                                              ; preds = %169, %155
  %157 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %10, align 8
  %158 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %157, i32 0, i32 1
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %158, align 8
  %160 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %10, align 8
  %161 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = add nsw i32 %166, -1
  store i32 %167, i32* %165, align 8
  %168 = icmp ne i32 %166, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %156
  %170 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %10, align 8
  %171 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 2
  %173 = call i32 @ecore_chain_consume(i32* %172)
  br label %156

174:                                              ; preds = %156
  %175 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %10, align 8
  %176 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %175, i32 0, i32 0
  %177 = call i32 @qlnxr_inc_sw_cons(%struct.TYPE_12__* %176)
  br label %24

178:                                              ; preds = %34
  %179 = load i32*, i32** %18, align 8
  %180 = load i64, i64* %17, align 8
  %181 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %179, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i64 %180)
  %182 = load i64, i64* %17, align 8
  %183 = trunc i64 %182 to i32
  ret i32 %183
}

declare dso_local i32 @QL_DPRINT12(i32*, i8*, ...) #1

declare dso_local i32 @qlnxr_chk_if_fmr(%struct.qlnxr_qp*) #1

declare dso_local i32 @ecore_chain_consume(i32*) #1

declare dso_local i32 @qlnxr_inc_sw_cons(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
