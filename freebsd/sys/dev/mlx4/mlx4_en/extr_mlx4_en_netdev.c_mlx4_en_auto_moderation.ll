; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_netdev.c_mlx4_en_auto_moderation.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_netdev.c_mlx4_en_auto_moderation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { i64, i32, i64*, i64*, i64, i32, i64, i32, i32*, i64, i32, %struct.mlx4_en_cq**, i32, %struct.TYPE_2__**, i32 }
%struct.mlx4_en_cq = type { i32, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@MLX4_EN_RX_RATE_THRESH = common dso_local global i64 0, align 8
@MLX4_EN_AVG_PKT_SMALL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"Failed modifying moderation for cq:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_en_priv*)* @mlx4_en_auto_moderation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_en_auto_moderation(%struct.mlx4_en_priv* %0) #0 {
  %2 = alloca %struct.mlx4_en_priv*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.mlx4_en_cq*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %2, align 8
  %14 = load i64, i64* @jiffies, align 8
  %15 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %16 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %15, i32 0, i32 9
  %17 = load i64, i64* %16, align 8
  %18 = sub nsw i64 %14, %17
  store i64 %18, i64* %3, align 8
  %19 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %20 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %19, i32 0, i32 14
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %1
  %24 = load i64, i64* %3, align 8
  %25 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %26 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @HZ, align 8
  %29 = mul i64 %27, %28
  %30 = icmp ult i64 %24, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %23, %1
  br label %228

32:                                               ; preds = %23
  store i32 0, i32* %12, align 4
  br label %33

33:                                               ; preds = %221, %32
  %34 = load i32, i32* %12, align 4
  %35 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %36 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %224

39:                                               ; preds = %33
  %40 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %41 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %40, i32 0, i32 12
  %42 = call i32 @spin_lock(i32* %41)
  %43 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %44 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %43, i32 0, i32 13
  %45 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %44, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %45, i64 %47
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %8, align 8
  %52 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %53 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %52, i32 0, i32 13
  %54 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %53, align 8
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %54, i64 %56
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %9, align 8
  %61 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %62 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %61, i32 0, i32 12
  %63 = call i32 @spin_unlock(i32* %62)
  %64 = load i64, i64* %8, align 8
  %65 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %66 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %65, i32 0, i32 2
  %67 = load i64*, i64** %66, align 8
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = sub i64 %64, %71
  store i64 %72, i64* %10, align 8
  %73 = load i64, i64* %10, align 8
  store i64 %73, i64* %5, align 8
  %74 = load i64, i64* %5, align 8
  %75 = load i64, i64* @HZ, align 8
  %76 = mul i64 %74, %75
  %77 = load i64, i64* %3, align 8
  %78 = udiv i64 %76, %77
  store i64 %78, i64* %6, align 8
  %79 = load i64, i64* %5, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %93

81:                                               ; preds = %39
  %82 = load i64, i64* %9, align 8
  %83 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %84 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %83, i32 0, i32 3
  %85 = load i64*, i64** %84, align 8
  %86 = load i32, i32* %12, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %85, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = sub i64 %82, %89
  %91 = load i64, i64* %5, align 8
  %92 = udiv i64 %90, %91
  br label %94

93:                                               ; preds = %39
  br label %94

94:                                               ; preds = %93, %81
  %95 = phi i64 [ %92, %81 ], [ 0, %93 ]
  store i64 %95, i64* %7, align 8
  %96 = load i64, i64* %6, align 8
  %97 = load i64, i64* @MLX4_EN_RX_RATE_THRESH, align 8
  %98 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %99 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = udiv i64 %97, %101
  %103 = icmp ugt i64 %96, %102
  br i1 %103, label %104, label %159

104:                                              ; preds = %94
  %105 = load i64, i64* %7, align 8
  %106 = load i64, i64* @MLX4_EN_AVG_PKT_SMALL, align 8
  %107 = icmp ugt i64 %105, %106
  br i1 %107, label %108, label %159

108:                                              ; preds = %104
  %109 = load i64, i64* %6, align 8
  %110 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %111 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %110, i32 0, i32 4
  %112 = load i64, i64* %111, align 8
  %113 = icmp ult i64 %109, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %108
  %115 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %116 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 8
  store i32 %117, i32* %11, align 4
  br label %158

118:                                              ; preds = %108
  %119 = load i64, i64* %6, align 8
  %120 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %121 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %120, i32 0, i32 6
  %122 = load i64, i64* %121, align 8
  %123 = icmp ugt i64 %119, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %118
  %125 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %126 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %125, i32 0, i32 7
  %127 = load i32, i32* %126, align 8
  store i32 %127, i32* %11, align 4
  br label %157

128:                                              ; preds = %118
  %129 = load i64, i64* %6, align 8
  %130 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %131 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %130, i32 0, i32 4
  %132 = load i64, i64* %131, align 8
  %133 = sub i64 %129, %132
  %134 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %135 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %134, i32 0, i32 7
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %138 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %137, i32 0, i32 5
  %139 = load i32, i32* %138, align 8
  %140 = sub nsw i32 %136, %139
  %141 = sext i32 %140 to i64
  %142 = mul i64 %133, %141
  %143 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %144 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %143, i32 0, i32 6
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %147 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %146, i32 0, i32 4
  %148 = load i64, i64* %147, align 8
  %149 = sub i64 %145, %148
  %150 = udiv i64 %142, %149
  %151 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %152 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %151, i32 0, i32 5
  %153 = load i32, i32* %152, align 8
  %154 = sext i32 %153 to i64
  %155 = add i64 %150, %154
  %156 = trunc i64 %155 to i32
  store i32 %156, i32* %11, align 4
  br label %157

157:                                              ; preds = %128, %124
  br label %158

158:                                              ; preds = %157, %114
  br label %163

159:                                              ; preds = %104, %94
  %160 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %161 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %160, i32 0, i32 5
  %162 = load i32, i32* %161, align 8
  store i32 %162, i32* %11, align 4
  br label %163

163:                                              ; preds = %159, %158
  %164 = load i32, i32* %11, align 4
  %165 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %166 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %165, i32 0, i32 8
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %12, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = icmp ne i32 %164, %171
  br i1 %172, label %173, label %206

173:                                              ; preds = %163
  %174 = load i32, i32* %11, align 4
  %175 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %176 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %175, i32 0, i32 8
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* %12, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  store i32 %174, i32* %180, align 4
  %181 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %182 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %181, i32 0, i32 11
  %183 = load %struct.mlx4_en_cq**, %struct.mlx4_en_cq*** %182, align 8
  %184 = load i32, i32* %12, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %183, i64 %185
  %187 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %186, align 8
  store %struct.mlx4_en_cq* %187, %struct.mlx4_en_cq** %4, align 8
  %188 = load i32, i32* %11, align 4
  %189 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %4, align 8
  %190 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %189, i32 0, i32 0
  store i32 %188, i32* %190, align 4
  %191 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %192 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %191, i32 0, i32 10
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %4, align 8
  %195 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %194, i32 0, i32 1
  store i32 %193, i32* %195, align 4
  %196 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %197 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %4, align 8
  %198 = call i32 @mlx4_en_set_cq_moder(%struct.mlx4_en_priv* %196, %struct.mlx4_en_cq* %197)
  store i32 %198, i32* %13, align 4
  %199 = load i32, i32* %13, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %205

201:                                              ; preds = %173
  %202 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %203 = load i32, i32* %12, align 4
  %204 = call i32 @en_err(%struct.mlx4_en_priv* %202, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %203)
  br label %205

205:                                              ; preds = %201, %173
  br label %206

206:                                              ; preds = %205, %163
  %207 = load i64, i64* %8, align 8
  %208 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %209 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %208, i32 0, i32 2
  %210 = load i64*, i64** %209, align 8
  %211 = load i32, i32* %12, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i64, i64* %210, i64 %212
  store i64 %207, i64* %213, align 8
  %214 = load i64, i64* %9, align 8
  %215 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %216 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %215, i32 0, i32 3
  %217 = load i64*, i64** %216, align 8
  %218 = load i32, i32* %12, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i64, i64* %217, i64 %219
  store i64 %214, i64* %220, align 8
  br label %221

221:                                              ; preds = %206
  %222 = load i32, i32* %12, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %12, align 4
  br label %33

224:                                              ; preds = %33
  %225 = load i64, i64* @jiffies, align 8
  %226 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %227 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %226, i32 0, i32 9
  store i64 %225, i64* %227, align 8
  br label %228

228:                                              ; preds = %224, %31
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mlx4_en_set_cq_moder(%struct.mlx4_en_priv*, %struct.mlx4_en_cq*) #1

declare dso_local i32 @en_err(%struct.mlx4_en_priv*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
