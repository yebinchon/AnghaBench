; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_main.c___set_port_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_main.c___set_port_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_port_info = type { i64, i32, %struct.mlx4_dev* }
%struct.mlx4_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i32*, i32, i32*, i32 }
%struct.mlx4_priv = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@MLX4_MAX_PORTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"Requested port type for port %d is not supported on this HCA\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MLX4_PORT_TYPE_AUTO = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG_DPDP = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG_SENSE_SUPPORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [103 x i8] c"Auto sensing is not supported on this HCA. Set only 'eth' or 'ib' for both ports (should be the same)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_port_info*, i32)* @__set_port_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__set_port_type(%struct.mlx4_port_info* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx4_port_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_dev*, align 8
  %6 = alloca %struct.mlx4_priv*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mlx4_port_info* %0, %struct.mlx4_port_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.mlx4_port_info*, %struct.mlx4_port_info** %3, align 8
  %13 = getelementptr inbounds %struct.mlx4_port_info, %struct.mlx4_port_info* %12, i32 0, i32 2
  %14 = load %struct.mlx4_dev*, %struct.mlx4_dev** %13, align 8
  store %struct.mlx4_dev* %14, %struct.mlx4_dev** %5, align 8
  %15 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %16 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %15)
  store %struct.mlx4_priv* %16, %struct.mlx4_priv** %6, align 8
  %17 = load i32, i32* @MLX4_MAX_PORTS, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %7, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %8, align 8
  %21 = load i32, i32* @MLX4_MAX_PORTS, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %9, align 8
  store i32 0, i32* %11, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %26 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.mlx4_port_info*, %struct.mlx4_port_info** %3, align 8
  %30 = getelementptr inbounds %struct.mlx4_port_info, %struct.mlx4_port_info* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %24, %33
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %2
  %38 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %39 = load %struct.mlx4_port_info*, %struct.mlx4_port_info** %3, align 8
  %40 = getelementptr inbounds %struct.mlx4_port_info, %struct.mlx4_port_info* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %38, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i64 %41)
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %11, align 4
  br label %232

45:                                               ; preds = %2
  %46 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %47 = call i32 @mlx4_stop_sense(%struct.mlx4_dev* %46)
  %48 = load %struct.mlx4_priv*, %struct.mlx4_priv** %6, align 8
  %49 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %48, i32 0, i32 0
  %50 = call i32 @mutex_lock(i32* %49)
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.mlx4_port_info*, %struct.mlx4_port_info** %3, align 8
  %53 = getelementptr inbounds %struct.mlx4_port_info, %struct.mlx4_port_info* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 8
  %54 = load %struct.mlx4_port_info*, %struct.mlx4_port_info** %3, align 8
  %55 = getelementptr inbounds %struct.mlx4_port_info, %struct.mlx4_port_info* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %58 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.mlx4_port_info*, %struct.mlx4_port_info** %3, align 8
  %62 = getelementptr inbounds %struct.mlx4_port_info, %struct.mlx4_port_info* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  store i32 %56, i32* %64, align 4
  store i32 0, i32* %10, align 4
  br label %65

65:                                               ; preds = %128, %45
  %66 = load i32, i32* %10, align 4
  %67 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %68 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %66, %70
  br i1 %71, label %72, label %131

72:                                               ; preds = %65
  %73 = load %struct.mlx4_priv*, %struct.mlx4_priv** %6, align 8
  %74 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %73, i32 0, i32 1
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %72
  %84 = load %struct.mlx4_priv*, %struct.mlx4_priv** %6, align 8
  %85 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %84, i32 0, i32 1
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  br label %103

93:                                               ; preds = %72
  %94 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %95 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %10, align 4
  %99 = add nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %97, i64 %100
  %102 = load i32, i32* %101, align 4
  br label %103

103:                                              ; preds = %93, %83
  %104 = phi i32 [ %92, %83 ], [ %102, %93 ]
  %105 = load i32, i32* %10, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %20, i64 %106
  store i32 %104, i32* %107, align 4
  %108 = load i32, i32* %10, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %20, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @MLX4_PORT_TYPE_AUTO, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %127

114:                                              ; preds = %103
  %115 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %116 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 3
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %10, align 4
  %120 = add nsw i32 %119, 1
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %118, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %10, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %20, i64 %125
  store i32 %123, i32* %126, align 4
  br label %127

127:                                              ; preds = %114, %103
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %10, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %10, align 4
  br label %65

131:                                              ; preds = %65
  %132 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %133 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @MLX4_DEV_CAP_FLAG_DPDP, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %189, label %139

139:                                              ; preds = %131
  %140 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %141 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @MLX4_DEV_CAP_FLAG_SENSE_SUPPORT, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %189, label %147

147:                                              ; preds = %139
  store i32 1, i32* %10, align 4
  br label %148

148:                                              ; preds = %185, %147
  %149 = load i32, i32* %10, align 4
  %150 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %151 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = icmp sle i32 %149, %153
  br i1 %154, label %155, label %188

155:                                              ; preds = %148
  %156 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %157 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 1
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %10, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @MLX4_PORT_TYPE_AUTO, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %184

166:                                              ; preds = %155
  %167 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %168 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 3
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %10, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %176 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 1
  %178 = load i32*, i32** %177, align 8
  %179 = load i32, i32* %10, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  store i32 %174, i32* %181, align 4
  %182 = load i32, i32* @EINVAL, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %11, align 4
  br label %184

184:                                              ; preds = %166, %155
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %10, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %10, align 4
  br label %148

188:                                              ; preds = %148
  br label %189

189:                                              ; preds = %188, %139, %131
  %190 = load i32, i32* %11, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %189
  %193 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %194 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %193, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.1, i64 0, i64 0))
  br label %226

195:                                              ; preds = %189
  %196 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %197 = call i32 @mlx4_do_sense_ports(%struct.mlx4_dev* %196, i32* %23, i32* %20)
  %198 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %199 = call i32 @mlx4_check_port_params(%struct.mlx4_dev* %198, i32* %23)
  store i32 %199, i32* %11, align 4
  %200 = load i32, i32* %11, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %195
  br label %226

203:                                              ; preds = %195
  store i32 0, i32* %10, align 4
  br label %204

204:                                              ; preds = %220, %203
  %205 = load i32, i32* %10, align 4
  %206 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %207 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = icmp slt i32 %205, %209
  br i1 %210, label %211, label %223

211:                                              ; preds = %204
  %212 = load %struct.mlx4_priv*, %struct.mlx4_priv** %6, align 8
  %213 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %212, i32 0, i32 1
  %214 = load %struct.TYPE_4__*, %struct.TYPE_4__** %213, align 8
  %215 = load i32, i32* %10, align 4
  %216 = add nsw i32 %215, 1
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 0
  store i32 0, i32* %219, align 4
  br label %220

220:                                              ; preds = %211
  %221 = load i32, i32* %10, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %10, align 4
  br label %204

223:                                              ; preds = %204
  %224 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %225 = call i32 @mlx4_change_port_types(%struct.mlx4_dev* %224, i32* %23)
  store i32 %225, i32* %11, align 4
  br label %226

226:                                              ; preds = %223, %202, %192
  %227 = load %struct.mlx4_priv*, %struct.mlx4_priv** %6, align 8
  %228 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %227, i32 0, i32 0
  %229 = call i32 @mutex_unlock(i32* %228)
  %230 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %231 = call i32 @mlx4_start_sense(%struct.mlx4_dev* %230)
  br label %232

232:                                              ; preds = %226, %37
  %233 = load i32, i32* %11, align 4
  %234 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %234)
  ret i32 %233
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @mlx4_err(%struct.mlx4_dev*, i8*, ...) #1

declare dso_local i32 @mlx4_stop_sense(%struct.mlx4_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mlx4_do_sense_ports(%struct.mlx4_dev*, i32*, i32*) #1

declare dso_local i32 @mlx4_check_port_params(%struct.mlx4_dev*, i32*) #1

declare dso_local i32 @mlx4_change_port_types(%struct.mlx4_dev*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mlx4_start_sense(%struct.mlx4_dev*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
