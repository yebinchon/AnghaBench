; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_port.c_mlx5_core_access_ptys.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_port.c_mlx5_core_access_ptys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_ptys_reg = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@ptys_reg = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@local_port = common dso_local global i32 0, align 4
@proto_mask = common dso_local global i32 0, align 4
@eth_proto_capability = common dso_local global i32 0, align 4
@ib_link_width_capability = common dso_local global i32 0, align 4
@ib_proto_capability = common dso_local global i32 0, align 4
@eth_proto_admin = common dso_local global i32 0, align 4
@ib_link_width_admin = common dso_local global i32 0, align 4
@ib_proto_admin = common dso_local global i32 0, align 4
@eth_proto_oper = common dso_local global i32 0, align 4
@ib_link_width_oper = common dso_local global i32 0, align 4
@ib_proto_oper = common dso_local global i32 0, align 4
@eth_proto_lp_advertise = common dso_local global i32 0, align 4
@MLX5_REG_PTYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_core_access_ptys(%struct.mlx5_core_dev* %0, %struct.mlx5_ptys_reg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_core_dev*, align 8
  %6 = alloca %struct.mlx5_ptys_reg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %5, align 8
  store %struct.mlx5_ptys_reg* %1, %struct.mlx5_ptys_reg** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @ptys_reg, align 4
  %13 = call i32 @MLX5_ST_SZ_BYTES(i32 %12)
  store i32 %13, i32* %8, align 4
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call i8* @mlx5_vzalloc(i32 %14)
  store i8* %15, i8** %10, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %218

21:                                               ; preds = %3
  %22 = load i32, i32* %8, align 4
  %23 = call i8* @mlx5_vzalloc(i32 %22)
  store i8* %23, i8** %9, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load i8*, i8** %10, align 8
  %28 = call i32 @kfree(i8* %27)
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %218

31:                                               ; preds = %21
  %32 = load i32, i32* @ptys_reg, align 4
  %33 = load i8*, i8** %10, align 8
  %34 = load i32, i32* @local_port, align 4
  %35 = load %struct.mlx5_ptys_reg*, %struct.mlx5_ptys_reg** %6, align 8
  %36 = getelementptr inbounds %struct.mlx5_ptys_reg, %struct.mlx5_ptys_reg* %35, i32 0, i32 11
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @MLX5_SET(i32 %32, i8* %33, i32 %34, i8* %37)
  %39 = load i32, i32* @ptys_reg, align 4
  %40 = load i8*, i8** %10, align 8
  %41 = load i32, i32* @proto_mask, align 4
  %42 = load %struct.mlx5_ptys_reg*, %struct.mlx5_ptys_reg** %6, align 8
  %43 = getelementptr inbounds %struct.mlx5_ptys_reg, %struct.mlx5_ptys_reg* %42, i32 0, i32 10
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @MLX5_SET(i32 %39, i8* %40, i32 %41, i8* %44)
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %119

48:                                               ; preds = %31
  %49 = load i32, i32* @ptys_reg, align 4
  %50 = load i8*, i8** %10, align 8
  %51 = load i32, i32* @eth_proto_capability, align 4
  %52 = load %struct.mlx5_ptys_reg*, %struct.mlx5_ptys_reg** %6, align 8
  %53 = getelementptr inbounds %struct.mlx5_ptys_reg, %struct.mlx5_ptys_reg* %52, i32 0, i32 9
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @MLX5_SET(i32 %49, i8* %50, i32 %51, i8* %54)
  %56 = load i32, i32* @ptys_reg, align 4
  %57 = load i8*, i8** %10, align 8
  %58 = load i32, i32* @ib_link_width_capability, align 4
  %59 = load %struct.mlx5_ptys_reg*, %struct.mlx5_ptys_reg** %6, align 8
  %60 = getelementptr inbounds %struct.mlx5_ptys_reg, %struct.mlx5_ptys_reg* %59, i32 0, i32 8
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @MLX5_SET(i32 %56, i8* %57, i32 %58, i8* %61)
  %63 = load i32, i32* @ptys_reg, align 4
  %64 = load i8*, i8** %10, align 8
  %65 = load i32, i32* @ib_proto_capability, align 4
  %66 = load %struct.mlx5_ptys_reg*, %struct.mlx5_ptys_reg** %6, align 8
  %67 = getelementptr inbounds %struct.mlx5_ptys_reg, %struct.mlx5_ptys_reg* %66, i32 0, i32 7
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @MLX5_SET(i32 %63, i8* %64, i32 %65, i8* %68)
  %70 = load i32, i32* @ptys_reg, align 4
  %71 = load i8*, i8** %10, align 8
  %72 = load i32, i32* @eth_proto_admin, align 4
  %73 = load %struct.mlx5_ptys_reg*, %struct.mlx5_ptys_reg** %6, align 8
  %74 = getelementptr inbounds %struct.mlx5_ptys_reg, %struct.mlx5_ptys_reg* %73, i32 0, i32 6
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @MLX5_SET(i32 %70, i8* %71, i32 %72, i8* %75)
  %77 = load i32, i32* @ptys_reg, align 4
  %78 = load i8*, i8** %10, align 8
  %79 = load i32, i32* @ib_link_width_admin, align 4
  %80 = load %struct.mlx5_ptys_reg*, %struct.mlx5_ptys_reg** %6, align 8
  %81 = getelementptr inbounds %struct.mlx5_ptys_reg, %struct.mlx5_ptys_reg* %80, i32 0, i32 5
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @MLX5_SET(i32 %77, i8* %78, i32 %79, i8* %82)
  %84 = load i32, i32* @ptys_reg, align 4
  %85 = load i8*, i8** %10, align 8
  %86 = load i32, i32* @ib_proto_admin, align 4
  %87 = load %struct.mlx5_ptys_reg*, %struct.mlx5_ptys_reg** %6, align 8
  %88 = getelementptr inbounds %struct.mlx5_ptys_reg, %struct.mlx5_ptys_reg* %87, i32 0, i32 4
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @MLX5_SET(i32 %84, i8* %85, i32 %86, i8* %89)
  %91 = load i32, i32* @ptys_reg, align 4
  %92 = load i8*, i8** %10, align 8
  %93 = load i32, i32* @eth_proto_oper, align 4
  %94 = load %struct.mlx5_ptys_reg*, %struct.mlx5_ptys_reg** %6, align 8
  %95 = getelementptr inbounds %struct.mlx5_ptys_reg, %struct.mlx5_ptys_reg* %94, i32 0, i32 3
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @MLX5_SET(i32 %91, i8* %92, i32 %93, i8* %96)
  %98 = load i32, i32* @ptys_reg, align 4
  %99 = load i8*, i8** %10, align 8
  %100 = load i32, i32* @ib_link_width_oper, align 4
  %101 = load %struct.mlx5_ptys_reg*, %struct.mlx5_ptys_reg** %6, align 8
  %102 = getelementptr inbounds %struct.mlx5_ptys_reg, %struct.mlx5_ptys_reg* %101, i32 0, i32 2
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @MLX5_SET(i32 %98, i8* %99, i32 %100, i8* %103)
  %105 = load i32, i32* @ptys_reg, align 4
  %106 = load i8*, i8** %10, align 8
  %107 = load i32, i32* @ib_proto_oper, align 4
  %108 = load %struct.mlx5_ptys_reg*, %struct.mlx5_ptys_reg** %6, align 8
  %109 = getelementptr inbounds %struct.mlx5_ptys_reg, %struct.mlx5_ptys_reg* %108, i32 0, i32 1
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @MLX5_SET(i32 %105, i8* %106, i32 %107, i8* %110)
  %112 = load i32, i32* @ptys_reg, align 4
  %113 = load i8*, i8** %10, align 8
  %114 = load i32, i32* @eth_proto_lp_advertise, align 4
  %115 = load %struct.mlx5_ptys_reg*, %struct.mlx5_ptys_reg** %6, align 8
  %116 = getelementptr inbounds %struct.mlx5_ptys_reg, %struct.mlx5_ptys_reg* %115, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 @MLX5_SET(i32 %112, i8* %113, i32 %114, i8* %117)
  br label %119

119:                                              ; preds = %48, %31
  %120 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %121 = load i8*, i8** %10, align 8
  %122 = load i32, i32* %8, align 4
  %123 = load i8*, i8** %9, align 8
  %124 = load i32, i32* %8, align 4
  %125 = load i32, i32* @MLX5_REG_PTYS, align 4
  %126 = load i32, i32* %7, align 4
  %127 = icmp ne i32 %126, 0
  %128 = xor i1 %127, true
  %129 = xor i1 %128, true
  %130 = zext i1 %129 to i32
  %131 = call i32 @mlx5_core_access_reg(%struct.mlx5_core_dev* %120, i8* %121, i32 %122, i8* %123, i32 %124, i32 %125, i32 0, i32 %130)
  store i32 %131, i32* %11, align 4
  %132 = load i32, i32* %11, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %119
  br label %212

135:                                              ; preds = %119
  %136 = load i32, i32* %7, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %211, label %138

138:                                              ; preds = %135
  %139 = load i32, i32* @ptys_reg, align 4
  %140 = load i8*, i8** %9, align 8
  %141 = load i32, i32* @local_port, align 4
  %142 = call i8* @MLX5_GET(i32 %139, i8* %140, i32 %141)
  %143 = load %struct.mlx5_ptys_reg*, %struct.mlx5_ptys_reg** %6, align 8
  %144 = getelementptr inbounds %struct.mlx5_ptys_reg, %struct.mlx5_ptys_reg* %143, i32 0, i32 11
  store i8* %142, i8** %144, align 8
  %145 = load i32, i32* @ptys_reg, align 4
  %146 = load i8*, i8** %9, align 8
  %147 = load i32, i32* @proto_mask, align 4
  %148 = call i8* @MLX5_GET(i32 %145, i8* %146, i32 %147)
  %149 = load %struct.mlx5_ptys_reg*, %struct.mlx5_ptys_reg** %6, align 8
  %150 = getelementptr inbounds %struct.mlx5_ptys_reg, %struct.mlx5_ptys_reg* %149, i32 0, i32 10
  store i8* %148, i8** %150, align 8
  %151 = load i32, i32* @ptys_reg, align 4
  %152 = load i8*, i8** %9, align 8
  %153 = load i32, i32* @eth_proto_capability, align 4
  %154 = call i8* @MLX5_GET(i32 %151, i8* %152, i32 %153)
  %155 = load %struct.mlx5_ptys_reg*, %struct.mlx5_ptys_reg** %6, align 8
  %156 = getelementptr inbounds %struct.mlx5_ptys_reg, %struct.mlx5_ptys_reg* %155, i32 0, i32 9
  store i8* %154, i8** %156, align 8
  %157 = load i32, i32* @ptys_reg, align 4
  %158 = load i8*, i8** %9, align 8
  %159 = load i32, i32* @ib_link_width_capability, align 4
  %160 = call i8* @MLX5_GET(i32 %157, i8* %158, i32 %159)
  %161 = load %struct.mlx5_ptys_reg*, %struct.mlx5_ptys_reg** %6, align 8
  %162 = getelementptr inbounds %struct.mlx5_ptys_reg, %struct.mlx5_ptys_reg* %161, i32 0, i32 8
  store i8* %160, i8** %162, align 8
  %163 = load i32, i32* @ptys_reg, align 4
  %164 = load i8*, i8** %9, align 8
  %165 = load i32, i32* @ib_proto_capability, align 4
  %166 = call i8* @MLX5_GET(i32 %163, i8* %164, i32 %165)
  %167 = load %struct.mlx5_ptys_reg*, %struct.mlx5_ptys_reg** %6, align 8
  %168 = getelementptr inbounds %struct.mlx5_ptys_reg, %struct.mlx5_ptys_reg* %167, i32 0, i32 7
  store i8* %166, i8** %168, align 8
  %169 = load i32, i32* @ptys_reg, align 4
  %170 = load i8*, i8** %9, align 8
  %171 = load i32, i32* @eth_proto_admin, align 4
  %172 = call i8* @MLX5_GET(i32 %169, i8* %170, i32 %171)
  %173 = load %struct.mlx5_ptys_reg*, %struct.mlx5_ptys_reg** %6, align 8
  %174 = getelementptr inbounds %struct.mlx5_ptys_reg, %struct.mlx5_ptys_reg* %173, i32 0, i32 6
  store i8* %172, i8** %174, align 8
  %175 = load i32, i32* @ptys_reg, align 4
  %176 = load i8*, i8** %9, align 8
  %177 = load i32, i32* @ib_link_width_admin, align 4
  %178 = call i8* @MLX5_GET(i32 %175, i8* %176, i32 %177)
  %179 = load %struct.mlx5_ptys_reg*, %struct.mlx5_ptys_reg** %6, align 8
  %180 = getelementptr inbounds %struct.mlx5_ptys_reg, %struct.mlx5_ptys_reg* %179, i32 0, i32 5
  store i8* %178, i8** %180, align 8
  %181 = load i32, i32* @ptys_reg, align 4
  %182 = load i8*, i8** %9, align 8
  %183 = load i32, i32* @ib_proto_admin, align 4
  %184 = call i8* @MLX5_GET(i32 %181, i8* %182, i32 %183)
  %185 = load %struct.mlx5_ptys_reg*, %struct.mlx5_ptys_reg** %6, align 8
  %186 = getelementptr inbounds %struct.mlx5_ptys_reg, %struct.mlx5_ptys_reg* %185, i32 0, i32 4
  store i8* %184, i8** %186, align 8
  %187 = load i32, i32* @ptys_reg, align 4
  %188 = load i8*, i8** %9, align 8
  %189 = load i32, i32* @eth_proto_oper, align 4
  %190 = call i8* @MLX5_GET(i32 %187, i8* %188, i32 %189)
  %191 = load %struct.mlx5_ptys_reg*, %struct.mlx5_ptys_reg** %6, align 8
  %192 = getelementptr inbounds %struct.mlx5_ptys_reg, %struct.mlx5_ptys_reg* %191, i32 0, i32 3
  store i8* %190, i8** %192, align 8
  %193 = load i32, i32* @ptys_reg, align 4
  %194 = load i8*, i8** %9, align 8
  %195 = load i32, i32* @ib_link_width_oper, align 4
  %196 = call i8* @MLX5_GET(i32 %193, i8* %194, i32 %195)
  %197 = load %struct.mlx5_ptys_reg*, %struct.mlx5_ptys_reg** %6, align 8
  %198 = getelementptr inbounds %struct.mlx5_ptys_reg, %struct.mlx5_ptys_reg* %197, i32 0, i32 2
  store i8* %196, i8** %198, align 8
  %199 = load i32, i32* @ptys_reg, align 4
  %200 = load i8*, i8** %9, align 8
  %201 = load i32, i32* @ib_proto_oper, align 4
  %202 = call i8* @MLX5_GET(i32 %199, i8* %200, i32 %201)
  %203 = load %struct.mlx5_ptys_reg*, %struct.mlx5_ptys_reg** %6, align 8
  %204 = getelementptr inbounds %struct.mlx5_ptys_reg, %struct.mlx5_ptys_reg* %203, i32 0, i32 1
  store i8* %202, i8** %204, align 8
  %205 = load i32, i32* @ptys_reg, align 4
  %206 = load i8*, i8** %9, align 8
  %207 = load i32, i32* @eth_proto_lp_advertise, align 4
  %208 = call i8* @MLX5_GET(i32 %205, i8* %206, i32 %207)
  %209 = load %struct.mlx5_ptys_reg*, %struct.mlx5_ptys_reg** %6, align 8
  %210 = getelementptr inbounds %struct.mlx5_ptys_reg, %struct.mlx5_ptys_reg* %209, i32 0, i32 0
  store i8* %208, i8** %210, align 8
  br label %211

211:                                              ; preds = %138, %135
  br label %212

212:                                              ; preds = %211, %134
  %213 = load i8*, i8** %10, align 8
  %214 = call i32 @kvfree(i8* %213)
  %215 = load i8*, i8** %9, align 8
  %216 = call i32 @kvfree(i8* %215)
  %217 = load i32, i32* %11, align 4
  store i32 %217, i32* %4, align 4
  br label %218

218:                                              ; preds = %212, %26, %18
  %219 = load i32, i32* %4, align 4
  ret i32 %219
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local i8* @mlx5_vzalloc(i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @MLX5_SET(i32, i8*, i32, i8*) #1

declare dso_local i32 @mlx5_core_access_reg(%struct.mlx5_core_dev*, i8*, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i8* @MLX5_GET(i32, i8*, i32) #1

declare dso_local i32 @kvfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
