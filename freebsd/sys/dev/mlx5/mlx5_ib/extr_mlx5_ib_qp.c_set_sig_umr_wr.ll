; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_set_sig_umr_wr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_set_sig_umr_wr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_send_wr = type { i32 }
%struct.mlx5_ib_qp = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i8* }
%struct.ib_sig_handover_wr = type { i32, %struct.TYPE_9__*, %struct.TYPE_8__, i32 }
%struct.TYPE_9__ = type { i64, i64, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i64, i64 }
%struct.mlx5_ib_mr = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@IB_ACCESS_REMOTE_ATOMIC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_send_wr*, %struct.mlx5_ib_qp*, i8**, i32*)* @set_sig_umr_wr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_sig_umr_wr(%struct.ib_send_wr* %0, %struct.mlx5_ib_qp* %1, i8** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_send_wr*, align 8
  %7 = alloca %struct.mlx5_ib_qp*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ib_sig_handover_wr*, align 8
  %11 = alloca %struct.mlx5_ib_mr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ib_send_wr* %0, %struct.ib_send_wr** %6, align 8
  store %struct.mlx5_ib_qp* %1, %struct.mlx5_ib_qp** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %17 = call %struct.ib_sig_handover_wr* @sig_handover_wr(%struct.ib_send_wr* %16)
  store %struct.ib_sig_handover_wr* %17, %struct.ib_sig_handover_wr** %10, align 8
  %18 = load %struct.ib_sig_handover_wr*, %struct.ib_sig_handover_wr** %10, align 8
  %19 = getelementptr inbounds %struct.ib_sig_handover_wr, %struct.ib_sig_handover_wr* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.mlx5_ib_mr* @to_mmr(i32 %20)
  store %struct.mlx5_ib_mr* %21, %struct.mlx5_ib_mr** %11, align 8
  %22 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %7, align 8
  %23 = call %struct.TYPE_12__* @get_pd(%struct.mlx5_ib_qp* %22)
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %12, align 4
  %26 = load %struct.ib_sig_handover_wr*, %struct.ib_sig_handover_wr** %10, align 8
  %27 = getelementptr inbounds %struct.ib_sig_handover_wr, %struct.ib_sig_handover_wr* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 1
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %71, label %34

34:                                               ; preds = %4
  %35 = load %struct.ib_sig_handover_wr*, %struct.ib_sig_handover_wr** %10, align 8
  %36 = getelementptr inbounds %struct.ib_sig_handover_wr, %struct.ib_sig_handover_wr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @IB_ACCESS_REMOTE_ATOMIC, align 4
  %39 = and i32 %37, %38
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %71, label %42

42:                                               ; preds = %34
  %43 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %11, align 8
  %44 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %43, i32 0, i32 0
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %44, align 8
  %46 = icmp ne %struct.TYPE_11__* %45, null
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %71, label %51

51:                                               ; preds = %42
  %52 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %7, align 8
  %53 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %71, label %60

60:                                               ; preds = %51
  %61 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %11, align 8
  %62 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %61, i32 0, i32 0
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  %69 = call i64 @unlikely(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %60, %51, %42, %34, %4
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %5, align 4
  br label %210

74:                                               ; preds = %60
  %75 = load %struct.ib_sig_handover_wr*, %struct.ib_sig_handover_wr** %10, align 8
  %76 = getelementptr inbounds %struct.ib_sig_handover_wr, %struct.ib_sig_handover_wr* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  store i32 %80, i32* %14, align 4
  %81 = load %struct.ib_sig_handover_wr*, %struct.ib_sig_handover_wr** %10, align 8
  %82 = getelementptr inbounds %struct.ib_sig_handover_wr, %struct.ib_sig_handover_wr* %81, i32 0, i32 1
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = icmp ne %struct.TYPE_9__* %83, null
  br i1 %84, label %85, label %132

85:                                               ; preds = %74
  %86 = load %struct.ib_sig_handover_wr*, %struct.ib_sig_handover_wr** %10, align 8
  %87 = getelementptr inbounds %struct.ib_sig_handover_wr, %struct.ib_sig_handover_wr* %86, i32 0, i32 1
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.ib_sig_handover_wr*, %struct.ib_sig_handover_wr** %10, align 8
  %92 = getelementptr inbounds %struct.ib_sig_handover_wr, %struct.ib_sig_handover_wr* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %90, %96
  br i1 %97, label %124, label %98

98:                                               ; preds = %85
  %99 = load %struct.ib_sig_handover_wr*, %struct.ib_sig_handover_wr** %10, align 8
  %100 = getelementptr inbounds %struct.ib_sig_handover_wr, %struct.ib_sig_handover_wr* %99, i32 0, i32 1
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.ib_sig_handover_wr*, %struct.ib_sig_handover_wr** %10, align 8
  %105 = getelementptr inbounds %struct.ib_sig_handover_wr, %struct.ib_sig_handover_wr* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %103, %109
  br i1 %110, label %124, label %111

111:                                              ; preds = %98
  %112 = load %struct.ib_sig_handover_wr*, %struct.ib_sig_handover_wr** %10, align 8
  %113 = getelementptr inbounds %struct.ib_sig_handover_wr, %struct.ib_sig_handover_wr* %112, i32 0, i32 1
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.ib_sig_handover_wr*, %struct.ib_sig_handover_wr** %10, align 8
  %118 = getelementptr inbounds %struct.ib_sig_handover_wr, %struct.ib_sig_handover_wr* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp ne i32 %116, %122
  br i1 %123, label %124, label %132

124:                                              ; preds = %111, %98, %85
  %125 = load %struct.ib_sig_handover_wr*, %struct.ib_sig_handover_wr** %10, align 8
  %126 = getelementptr inbounds %struct.ib_sig_handover_wr, %struct.ib_sig_handover_wr* %125, i32 0, i32 1
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* %14, align 4
  %131 = add nsw i32 %130, %129
  store i32 %131, i32* %14, align 4
  br label %132

132:                                              ; preds = %124, %111, %74
  %133 = load %struct.ib_sig_handover_wr*, %struct.ib_sig_handover_wr** %10, align 8
  %134 = getelementptr inbounds %struct.ib_sig_handover_wr, %struct.ib_sig_handover_wr* %133, i32 0, i32 1
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %134, align 8
  %136 = icmp ne %struct.TYPE_9__* %135, null
  %137 = zext i1 %136 to i64
  %138 = select i1 %136, i32 3, i32 1
  store i32 %138, i32* %13, align 4
  %139 = load i8**, i8*** %8, align 8
  %140 = load i8*, i8** %139, align 8
  %141 = load i32, i32* %13, align 4
  %142 = call i32 @set_sig_umr_segment(i8* %140, i32 %141)
  %143 = load i8**, i8*** %8, align 8
  %144 = load i8*, i8** %143, align 8
  %145 = getelementptr i8, i8* %144, i64 4
  store i8* %145, i8** %143, align 8
  %146 = load i32*, i32** %9, align 8
  %147 = load i32, i32* %146, align 4
  %148 = sext i32 %147 to i64
  %149 = add i64 %148, 0
  %150 = trunc i64 %149 to i32
  store i32 %150, i32* %146, align 4
  %151 = load i8**, i8*** %8, align 8
  %152 = load i8*, i8** %151, align 8
  %153 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %7, align 8
  %154 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 0
  %156 = load i8*, i8** %155, align 8
  %157 = icmp eq i8* %152, %156
  %158 = zext i1 %157 to i32
  %159 = call i64 @unlikely(i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %132
  %162 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %7, align 8
  %163 = call i8* @mlx5_get_send_wqe(%struct.mlx5_ib_qp* %162, i32 0)
  %164 = load i8**, i8*** %8, align 8
  store i8* %163, i8** %164, align 8
  br label %165

165:                                              ; preds = %161, %132
  %166 = load i8**, i8*** %8, align 8
  %167 = load i8*, i8** %166, align 8
  %168 = load %struct.ib_sig_handover_wr*, %struct.ib_sig_handover_wr** %10, align 8
  %169 = load i32, i32* %13, align 4
  %170 = load i32, i32* %14, align 4
  %171 = load i32, i32* %12, align 4
  %172 = call i32 @set_sig_mkey_segment(i8* %167, %struct.ib_sig_handover_wr* %168, i32 %169, i32 %170, i32 %171)
  %173 = load i8**, i8*** %8, align 8
  %174 = load i8*, i8** %173, align 8
  %175 = getelementptr i8, i8* %174, i64 4
  store i8* %175, i8** %173, align 8
  %176 = load i32*, i32** %9, align 8
  %177 = load i32, i32* %176, align 4
  %178 = sext i32 %177 to i64
  %179 = add i64 %178, 0
  %180 = trunc i64 %179 to i32
  store i32 %180, i32* %176, align 4
  %181 = load i8**, i8*** %8, align 8
  %182 = load i8*, i8** %181, align 8
  %183 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %7, align 8
  %184 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 0
  %186 = load i8*, i8** %185, align 8
  %187 = icmp eq i8* %182, %186
  %188 = zext i1 %187 to i32
  %189 = call i64 @unlikely(i32 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %165
  %192 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %7, align 8
  %193 = call i8* @mlx5_get_send_wqe(%struct.mlx5_ib_qp* %192, i32 0)
  %194 = load i8**, i8*** %8, align 8
  store i8* %193, i8** %194, align 8
  br label %195

195:                                              ; preds = %191, %165
  %196 = load %struct.ib_sig_handover_wr*, %struct.ib_sig_handover_wr** %10, align 8
  %197 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %7, align 8
  %198 = load i8**, i8*** %8, align 8
  %199 = load i32*, i32** %9, align 8
  %200 = call i32 @set_sig_data_segment(%struct.ib_sig_handover_wr* %196, %struct.mlx5_ib_qp* %197, i8** %198, i32* %199)
  store i32 %200, i32* %15, align 4
  %201 = load i32, i32* %15, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %195
  %204 = load i32, i32* %15, align 4
  store i32 %204, i32* %5, align 4
  br label %210

205:                                              ; preds = %195
  %206 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %11, align 8
  %207 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %206, i32 0, i32 0
  %208 = load %struct.TYPE_11__*, %struct.TYPE_11__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 0
  store i32 0, i32* %209, align 4
  store i32 0, i32* %5, align 4
  br label %210

210:                                              ; preds = %205, %203, %71
  %211 = load i32, i32* %5, align 4
  ret i32 %211
}

declare dso_local %struct.ib_sig_handover_wr* @sig_handover_wr(%struct.ib_send_wr*) #1

declare dso_local %struct.mlx5_ib_mr* @to_mmr(i32) #1

declare dso_local %struct.TYPE_12__* @get_pd(%struct.mlx5_ib_qp*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @set_sig_umr_segment(i8*, i32) #1

declare dso_local i8* @mlx5_get_send_wqe(%struct.mlx5_ib_qp*, i32) #1

declare dso_local i32 @set_sig_mkey_segment(i8*, %struct.ib_sig_handover_wr*, i32, i32, i32) #1

declare dso_local i32 @set_sig_data_segment(%struct.ib_sig_handover_wr*, %struct.mlx5_ib_qp*, i8**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
