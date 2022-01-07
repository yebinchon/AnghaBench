; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_rx.c_mlx4_en_activate_rx_rings.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_rx.c_mlx4_en_activate_rx_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { i32, %struct.mlx4_en_rx_ring**, %struct.TYPE_11__*, %struct.TYPE_10__*, i32, %struct.TYPE_8__** }
%struct.mlx4_en_rx_ring = type { i32, i32, i32, i64, i64, %struct.TYPE_12__, i8*, i32, i32, i32, i64, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@TXBB_SIZE = common dso_local global i32 0, align 4
@STAMP_SHIFT = common dso_local global i32 0, align 4
@IFCAP_LRO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_en_activate_rx_rings(%struct.mlx4_en_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx4_en_priv*, align 8
  %4 = alloca %struct.mlx4_en_rx_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %3, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %95, %1
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %12 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %98

15:                                               ; preds = %9
  %16 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %17 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %16, i32 0, i32 1
  %18 = load %struct.mlx4_en_rx_ring**, %struct.mlx4_en_rx_ring*** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %18, i64 %20
  %22 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %21, align 8
  store %struct.mlx4_en_rx_ring* %22, %struct.mlx4_en_rx_ring** %4, align 8
  %23 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %24 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %23, i32 0, i32 11
  store i64 0, i64* %24, align 8
  %25 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %26 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %25, i32 0, i32 10
  store i64 0, i64* %26, align 8
  %27 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %28 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %27, i32 0, i32 3
  store i64 0, i64* %28, align 8
  %29 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %30 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %29, i32 0, i32 5
  %31 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %31, i64 %33
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %40 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %39, i32 0, i32 9
  store i32 %38, i32* %40, align 8
  %41 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %42 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %45 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %44, i32 0, i32 8
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @TXBB_SIZE, align 4
  %47 = sext i32 %46 to i64
  %48 = icmp ule i64 4, %47
  br i1 %48, label %49, label %65

49:                                               ; preds = %15
  %50 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %51 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = inttoptr i64 %53 to i8**
  store i8** %54, i8*** %7, align 8
  %55 = load i32, i32* @STAMP_SHIFT, align 4
  %56 = shl i32 1, %55
  %57 = call i8* @cpu_to_be32(i32 %56)
  store i8* %57, i8** %8, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = load i8**, i8*** %7, align 8
  store i8* %58, i8** %59, align 8
  %60 = load i32, i32* @TXBB_SIZE, align 4
  %61 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %62 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, %60
  store i32 %64, i32* %62, align 8
  br label %65

65:                                               ; preds = %49, %15
  %66 = call i32 @ilog2(i32 4)
  %67 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %68 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %67, i32 0, i32 7
  store i32 %66, i32* %68, align 8
  %69 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %70 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = mul i64 %72, 4
  %74 = trunc i64 %73 to i32
  %75 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %76 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %78 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %81 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @memset(i32 %79, i32 0, i32 %82)
  %84 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %85 = call i32 @mlx4_en_update_rx_prod_db(%struct.mlx4_en_rx_ring* %84)
  %86 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %87 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %86, i32 0, i32 3
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i8* @cpu_to_be32(i32 %91)
  %93 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %94 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %93, i32 0, i32 6
  store i8* %92, i8** %94, align 8
  br label %95

95:                                               ; preds = %65
  %96 = load i32, i32* %5, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %5, align 4
  br label %9

98:                                               ; preds = %9
  %99 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %100 = call i32 @mlx4_en_fill_rx_buffers(%struct.mlx4_en_priv* %99)
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  br label %131

104:                                              ; preds = %98
  store i32 0, i32* %5, align 4
  br label %105

105:                                              ; preds = %127, %104
  %106 = load i32, i32* %5, align 4
  %107 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %108 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp slt i32 %106, %109
  br i1 %110, label %111, label %130

111:                                              ; preds = %105
  %112 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %113 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %112, i32 0, i32 1
  %114 = load %struct.mlx4_en_rx_ring**, %struct.mlx4_en_rx_ring*** %113, align 8
  %115 = load i32, i32* %5, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %114, i64 %116
  %118 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %117, align 8
  store %struct.mlx4_en_rx_ring* %118, %struct.mlx4_en_rx_ring** %4, align 8
  %119 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %120 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = sub nsw i64 %121, 1
  %123 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %124 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %123, i32 0, i32 4
  store i64 %122, i64* %124, align 8
  %125 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %126 = call i32 @mlx4_en_update_rx_prod_db(%struct.mlx4_en_rx_ring* %125)
  br label %127

127:                                              ; preds = %111
  %128 = load i32, i32* %5, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %5, align 4
  br label %105

130:                                              ; preds = %105
  store i32 0, i32* %2, align 4
  br label %181

131:                                              ; preds = %103
  store i32 0, i32* %5, align 4
  br label %132

132:                                              ; preds = %148, %131
  %133 = load i32, i32* %5, align 4
  %134 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %135 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp slt i32 %133, %136
  br i1 %137, label %138, label %151

138:                                              ; preds = %132
  %139 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %140 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %141 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %140, i32 0, i32 1
  %142 = load %struct.mlx4_en_rx_ring**, %struct.mlx4_en_rx_ring*** %141, align 8
  %143 = load i32, i32* %5, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %142, i64 %144
  %146 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %145, align 8
  %147 = call i32 @mlx4_en_free_rx_buf(%struct.mlx4_en_priv* %139, %struct.mlx4_en_rx_ring* %146)
  br label %148

148:                                              ; preds = %138
  %149 = load i32, i32* %5, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %5, align 4
  br label %132

151:                                              ; preds = %132
  %152 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %153 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = sub nsw i32 %154, 1
  store i32 %155, i32* %5, align 4
  br label %156

156:                                              ; preds = %176, %151
  %157 = load i32, i32* %5, align 4
  %158 = icmp sge i32 %157, 0
  br i1 %158, label %159, label %179

159:                                              ; preds = %156
  %160 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %161 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %160, i32 0, i32 1
  %162 = load %struct.mlx4_en_rx_ring**, %struct.mlx4_en_rx_ring*** %161, align 8
  %163 = load i32, i32* %5, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %162, i64 %164
  %166 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %165, align 8
  store %struct.mlx4_en_rx_ring* %166, %struct.mlx4_en_rx_ring** %4, align 8
  %167 = load i32, i32* @TXBB_SIZE, align 4
  %168 = sext i32 %167 to i64
  %169 = icmp ule i64 4, %168
  br i1 %169, label %170, label %176

170:                                              ; preds = %159
  %171 = load i32, i32* @TXBB_SIZE, align 4
  %172 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %173 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = sub nsw i32 %174, %171
  store i32 %175, i32* %173, align 8
  br label %176

176:                                              ; preds = %170, %159
  %177 = load i32, i32* %5, align 4
  %178 = add nsw i32 %177, -1
  store i32 %178, i32* %5, align 4
  br label %156

179:                                              ; preds = %156
  %180 = load i32, i32* %6, align 4
  store i32 %180, i32* %2, align 4
  br label %181

181:                                              ; preds = %179, %130
  %182 = load i32, i32* %2, align 4
  ret i32 %182
}

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @mlx4_en_update_rx_prod_db(%struct.mlx4_en_rx_ring*) #1

declare dso_local i32 @mlx4_en_fill_rx_buffers(%struct.mlx4_en_priv*) #1

declare dso_local i32 @mlx4_en_free_rx_buf(%struct.mlx4_en_priv*, %struct.mlx4_en_rx_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
