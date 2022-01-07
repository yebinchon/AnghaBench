; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_update_qp_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_update_qp_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlnxr_dev = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, %struct.ecore_dev }
%struct.ecore_dev = type { i64 }
%struct.qlnxr_qp = type { i32, %struct.TYPE_10__, %struct.TYPE_10__, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_8__, i64, %struct.TYPE_7__, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"enter qp = %p new_state = 0x%x qp->state = 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BUS_SPACE_BARRIER_READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [87 x i8] c"Error->Reset with rq/sq not empty rq.prod=0x%x rq.cons=0x%x sq.prod=0x%x sq.cons=0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlnxr_dev*, %struct.qlnxr_qp*, i32)* @qlnxr_update_qp_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlnxr_update_qp_state(%struct.qlnxr_dev* %0, %struct.qlnxr_qp* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlnxr_dev*, align 8
  %6 = alloca %struct.qlnxr_qp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ecore_dev*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  store %struct.qlnxr_dev* %0, %struct.qlnxr_dev** %5, align 8
  store %struct.qlnxr_qp* %1, %struct.qlnxr_qp** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %5, align 8
  %13 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %12, i32 0, i32 0
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %11, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  store %struct.ecore_dev* %16, %struct.ecore_dev** %10, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %18 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %6, align 8
  %21 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 (%struct.TYPE_9__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_9__* %17, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), %struct.qlnxr_qp* %18, i32 %19, i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %6, align 8
  %26 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %212

30:                                               ; preds = %3
  %31 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %6, align 8
  %32 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %205 [
    i32 131, label %34
    i32 132, label %55
    i32 130, label %134
    i32 129, label %142
    i32 128, label %150
    i32 133, label %157
  ]

34:                                               ; preds = %30
  %35 = load i32, i32* %7, align 4
  switch i32 %35, label %51 [
    i32 132, label %36
  ]

36:                                               ; preds = %34
  %37 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %6, align 8
  %38 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %37, i32 0, i32 4
  store i32 0, i32* %38, align 4
  %39 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %6, align 8
  %40 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %39, i32 0, i32 1
  %41 = call i32 @qlnxr_reset_qp_hwq_info(%struct.TYPE_10__* %40)
  %42 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %6, align 8
  %43 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %36
  %47 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %6, align 8
  %48 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %47, i32 0, i32 2
  %49 = call i32 @qlnxr_reset_qp_hwq_info(%struct.TYPE_10__* %48)
  br label %50

50:                                               ; preds = %46, %36
  br label %54

51:                                               ; preds = %34
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %51, %50
  br label %208

55:                                               ; preds = %30
  %56 = load i32, i32* %7, align 4
  switch i32 %56, label %130 [
    i32 130, label %57
    i32 133, label %129
  ]

57:                                               ; preds = %55
  %58 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %6, align 8
  %59 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %133

63:                                               ; preds = %57
  %64 = call i32 (...) @wmb()
  %65 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %6, align 8
  %66 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 5
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to i32*
  %70 = load %struct.ecore_dev*, %struct.ecore_dev** %10, align 8
  %71 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to i32*
  %74 = ptrtoint i32* %69 to i64
  %75 = ptrtoint i32* %73 to i64
  %76 = sub i64 %74, %75
  %77 = sdiv exact i64 %76, 4
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %9, align 4
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %9, align 4
  %83 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %6, align 8
  %84 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @bus_write_4(i32 %81, i32 %82, i32 %87)
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @BUS_SPACE_BARRIER_READ, align 4
  %93 = call i32 @bus_barrier(i32 %91, i32 0, i32 0, i32 %92)
  %94 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %5, align 8
  %95 = call i32 @QLNX_IS_IWARP(%struct.qlnxr_dev* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %127

97:                                               ; preds = %63
  %98 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %6, align 8
  %99 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = inttoptr i64 %101 to i32*
  %103 = load %struct.ecore_dev*, %struct.ecore_dev** %10, align 8
  %104 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = inttoptr i64 %105 to i32*
  %107 = ptrtoint i32* %102 to i64
  %108 = ptrtoint i32* %106 to i64
  %109 = sub i64 %107, %108
  %110 = sdiv exact i64 %109, 4
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %9, align 4
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %9, align 4
  %116 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %6, align 8
  %117 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @bus_write_4(i32 %114, i32 %115, i32 %120)
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @BUS_SPACE_BARRIER_READ, align 4
  %126 = call i32 @bus_barrier(i32 %124, i32 0, i32 0, i32 %125)
  br label %127

127:                                              ; preds = %97, %63
  %128 = call i32 (...) @mmiowb()
  br label %133

129:                                              ; preds = %55
  br label %133

130:                                              ; preds = %55
  %131 = load i32, i32* @EINVAL, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %8, align 4
  br label %133

133:                                              ; preds = %130, %129, %127, %62
  br label %208

134:                                              ; preds = %30
  %135 = load i32, i32* %7, align 4
  switch i32 %135, label %138 [
    i32 129, label %136
    i32 133, label %137
  ]

136:                                              ; preds = %134
  br label %141

137:                                              ; preds = %134
  br label %141

138:                                              ; preds = %134
  %139 = load i32, i32* @EINVAL, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %8, align 4
  br label %141

141:                                              ; preds = %138, %137, %136
  br label %208

142:                                              ; preds = %30
  %143 = load i32, i32* %7, align 4
  switch i32 %143, label %146 [
    i32 128, label %144
    i32 133, label %145
  ]

144:                                              ; preds = %142
  br label %149

145:                                              ; preds = %142
  br label %149

146:                                              ; preds = %142
  %147 = load i32, i32* @EINVAL, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %8, align 4
  br label %149

149:                                              ; preds = %146, %145, %144
  br label %208

150:                                              ; preds = %30
  %151 = load i32, i32* %7, align 4
  switch i32 %151, label %153 [
    i32 129, label %152
    i32 133, label %152
  ]

152:                                              ; preds = %150, %150
  br label %156

153:                                              ; preds = %150
  %154 = load i32, i32* @EINVAL, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %8, align 4
  br label %156

156:                                              ; preds = %153, %152
  br label %208

157:                                              ; preds = %30
  %158 = load i32, i32* %7, align 4
  switch i32 %158, label %201 [
    i32 131, label %159
  ]

159:                                              ; preds = %157
  %160 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %6, align 8
  %161 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %6, align 8
  %165 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = icmp ne i32 %163, %167
  br i1 %168, label %179, label %169

169:                                              ; preds = %159
  %170 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %6, align 8
  %171 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %6, align 8
  %175 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = icmp ne i32 %173, %177
  br i1 %178, label %179, label %200

179:                                              ; preds = %169, %159
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %181 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %6, align 8
  %182 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %6, align 8
  %186 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %6, align 8
  %190 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %6, align 8
  %194 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @QL_DPRINT11(%struct.TYPE_9__* %180, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i64 0, i64 0), i32 %184, i32 %188, i32 %192, i32 %196)
  %198 = load i32, i32* @EINVAL, align 4
  %199 = sub nsw i32 0, %198
  store i32 %199, i32* %8, align 4
  br label %200

200:                                              ; preds = %179, %169
  br label %204

201:                                              ; preds = %157
  %202 = load i32, i32* @EINVAL, align 4
  %203 = sub nsw i32 0, %202
  store i32 %203, i32* %8, align 4
  br label %204

204:                                              ; preds = %201, %200
  br label %208

205:                                              ; preds = %30
  %206 = load i32, i32* @EINVAL, align 4
  %207 = sub nsw i32 0, %206
  store i32 %207, i32* %8, align 4
  br label %208

208:                                              ; preds = %205, %204, %156, %149, %141, %133, %54
  %209 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %210 = call i32 (%struct.TYPE_9__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_9__* %209, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %211 = load i32, i32* %8, align 4
  store i32 %211, i32* %4, align 4
  br label %212

212:                                              ; preds = %208, %29
  %213 = load i32, i32* %4, align 4
  ret i32 %213
}

declare dso_local i32 @QL_DPRINT12(%struct.TYPE_9__*, i8*, ...) #1

declare dso_local i32 @qlnxr_reset_qp_hwq_info(%struct.TYPE_10__*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @bus_write_4(i32, i32, i32) #1

declare dso_local i32 @bus_barrier(i32, i32, i32, i32) #1

declare dso_local i32 @QLNX_IS_IWARP(%struct.qlnxr_dev*) #1

declare dso_local i32 @mmiowb(...) #1

declare dso_local i32 @QL_DPRINT11(%struct.TYPE_9__*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
