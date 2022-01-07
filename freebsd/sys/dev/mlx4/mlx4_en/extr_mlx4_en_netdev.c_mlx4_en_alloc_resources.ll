; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_netdev.c_mlx4_en_alloc_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_netdev.c_mlx4_en_alloc_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { i32, i32, i32, i64*, i64*, i64*, i64*, %struct.TYPE_2__*, %struct.mlx4_en_port_profile* }
%struct.TYPE_2__ = type { i32 }
%struct.mlx4_en_port_profile = type { i32, i32 }

@RX = common dso_local global i32 0, align 4
@TX = common dso_local global i32 0, align 4
@TXBB_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to allocate NIC resources\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_en_alloc_resources(%struct.mlx4_en_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx4_en_priv*, align 8
  %4 = alloca %struct.mlx4_en_port_profile*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %3, align 8
  %7 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %8 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %7, i32 0, i32 8
  %9 = load %struct.mlx4_en_port_profile*, %struct.mlx4_en_port_profile** %8, align 8
  store %struct.mlx4_en_port_profile* %9, %struct.mlx4_en_port_profile** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %49, %1
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %13 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %52

16:                                               ; preds = %10
  %17 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %18 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %19 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %18, i32 0, i32 5
  %20 = load i64*, i64** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load %struct.mlx4_en_port_profile*, %struct.mlx4_en_port_profile** %4, align 8
  %25 = getelementptr inbounds %struct.mlx4_en_port_profile, %struct.mlx4_en_port_profile* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @RX, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i64 @mlx4_en_create_cq(%struct.mlx4_en_priv* %17, i64* %23, i32 %26, i32 %27, i32 %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %16
  br label %100

33:                                               ; preds = %16
  %34 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %35 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %36 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %35, i32 0, i32 6
  %37 = load i64*, i64** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load %struct.mlx4_en_port_profile*, %struct.mlx4_en_port_profile** %4, align 8
  %42 = getelementptr inbounds %struct.mlx4_en_port_profile, %struct.mlx4_en_port_profile* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i64 @mlx4_en_create_rx_ring(%struct.mlx4_en_priv* %34, i64* %40, i32 %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %33
  br label %100

48:                                               ; preds = %33
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %10

52:                                               ; preds = %10
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %94, %52
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %56 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %97

59:                                               ; preds = %53
  %60 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %61 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %62 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %61, i32 0, i32 3
  %63 = load i64*, i64** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  %67 = load %struct.mlx4_en_port_profile*, %struct.mlx4_en_port_profile** %4, align 8
  %68 = getelementptr inbounds %struct.mlx4_en_port_profile, %struct.mlx4_en_port_profile* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @TX, align 4
  %72 = load i32, i32* %6, align 4
  %73 = call i64 @mlx4_en_create_cq(%struct.mlx4_en_priv* %60, i64* %66, i32 %69, i32 %70, i32 %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %59
  br label %100

76:                                               ; preds = %59
  %77 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %78 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %79 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %78, i32 0, i32 4
  %80 = load i64*, i64** %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %80, i64 %82
  %84 = load %struct.mlx4_en_port_profile*, %struct.mlx4_en_port_profile** %4, align 8
  %85 = getelementptr inbounds %struct.mlx4_en_port_profile, %struct.mlx4_en_port_profile* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @TXBB_SIZE, align 4
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* %5, align 4
  %90 = call i64 @mlx4_en_create_tx_ring(%struct.mlx4_en_priv* %77, i64* %83, i32 %86, i32 %87, i32 %88, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %76
  br label %100

93:                                               ; preds = %76
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %5, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %5, align 4
  br label %53

97:                                               ; preds = %53
  %98 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %99 = call i32 @mlx4_en_sysctl_stat(%struct.mlx4_en_priv* %98)
  store i32 0, i32* %2, align 4
  br label %204

100:                                              ; preds = %92, %75, %47, %32
  %101 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %102 = call i32 @en_err(%struct.mlx4_en_priv* %101, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %103

103:                                              ; preds = %149, %100
  %104 = load i32, i32* %5, align 4
  %105 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %106 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp slt i32 %104, %107
  br i1 %108, label %109, label %152

109:                                              ; preds = %103
  %110 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %111 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %110, i32 0, i32 6
  %112 = load i64*, i64** %111, align 8
  %113 = load i32, i32* %5, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i64, i64* %112, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %130

118:                                              ; preds = %109
  %119 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %120 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %121 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %120, i32 0, i32 6
  %122 = load i64*, i64** %121, align 8
  %123 = load i32, i32* %5, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i64, i64* %122, i64 %124
  %126 = load %struct.mlx4_en_port_profile*, %struct.mlx4_en_port_profile** %4, align 8
  %127 = getelementptr inbounds %struct.mlx4_en_port_profile, %struct.mlx4_en_port_profile* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @mlx4_en_destroy_rx_ring(%struct.mlx4_en_priv* %119, i64* %125, i32 %128)
  br label %130

130:                                              ; preds = %118, %109
  %131 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %132 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %131, i32 0, i32 5
  %133 = load i64*, i64** %132, align 8
  %134 = load i32, i32* %5, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i64, i64* %133, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %148

139:                                              ; preds = %130
  %140 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %141 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %142 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %141, i32 0, i32 5
  %143 = load i64*, i64** %142, align 8
  %144 = load i32, i32* %5, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i64, i64* %143, i64 %145
  %147 = call i32 @mlx4_en_destroy_cq(%struct.mlx4_en_priv* %140, i64* %146)
  br label %148

148:                                              ; preds = %139, %130
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %5, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %5, align 4
  br label %103

152:                                              ; preds = %103
  store i32 0, i32* %5, align 4
  br label %153

153:                                              ; preds = %196, %152
  %154 = load i32, i32* %5, align 4
  %155 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %156 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = icmp slt i32 %154, %157
  br i1 %158, label %159, label %199

159:                                              ; preds = %153
  %160 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %161 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %160, i32 0, i32 4
  %162 = load i64*, i64** %161, align 8
  %163 = load i32, i32* %5, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i64, i64* %162, i64 %164
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %177

168:                                              ; preds = %159
  %169 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %170 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %171 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %170, i32 0, i32 4
  %172 = load i64*, i64** %171, align 8
  %173 = load i32, i32* %5, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i64, i64* %172, i64 %174
  %176 = call i32 @mlx4_en_destroy_tx_ring(%struct.mlx4_en_priv* %169, i64* %175)
  br label %177

177:                                              ; preds = %168, %159
  %178 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %179 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %178, i32 0, i32 3
  %180 = load i64*, i64** %179, align 8
  %181 = load i32, i32* %5, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i64, i64* %180, i64 %182
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %195

186:                                              ; preds = %177
  %187 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %188 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %189 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %188, i32 0, i32 3
  %190 = load i64*, i64** %189, align 8
  %191 = load i32, i32* %5, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i64, i64* %190, i64 %192
  %194 = call i32 @mlx4_en_destroy_cq(%struct.mlx4_en_priv* %187, i64* %193)
  br label %195

195:                                              ; preds = %186, %177
  br label %196

196:                                              ; preds = %195
  %197 = load i32, i32* %5, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %5, align 4
  br label %153

199:                                              ; preds = %153
  %200 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %201 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %200, i32 0, i32 2
  store i32 0, i32* %201, align 8
  %202 = load i32, i32* @ENOMEM, align 4
  %203 = sub nsw i32 0, %202
  store i32 %203, i32* %2, align 4
  br label %204

204:                                              ; preds = %199, %97
  %205 = load i32, i32* %2, align 4
  ret i32 %205
}

declare dso_local i64 @mlx4_en_create_cq(%struct.mlx4_en_priv*, i64*, i32, i32, i32, i32) #1

declare dso_local i64 @mlx4_en_create_rx_ring(%struct.mlx4_en_priv*, i64*, i32, i32) #1

declare dso_local i64 @mlx4_en_create_tx_ring(%struct.mlx4_en_priv*, i64*, i32, i32, i32, i32) #1

declare dso_local i32 @mlx4_en_sysctl_stat(%struct.mlx4_en_priv*) #1

declare dso_local i32 @en_err(%struct.mlx4_en_priv*, i8*) #1

declare dso_local i32 @mlx4_en_destroy_rx_ring(%struct.mlx4_en_priv*, i64*, i32) #1

declare dso_local i32 @mlx4_en_destroy_cq(%struct.mlx4_en_priv*, i64*) #1

declare dso_local i32 @mlx4_en_destroy_tx_ring(%struct.mlx4_en_priv*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
