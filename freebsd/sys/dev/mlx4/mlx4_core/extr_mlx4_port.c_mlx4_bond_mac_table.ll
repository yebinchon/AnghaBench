; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_port.c_mlx4_bond_mac_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_port.c_mlx4_bond_mac_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_mac_table = type { i64*, i32*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.mlx4_mac_table }

@MLX4_MAX_MAC_NUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"can't duplicate entry %d in mac table\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"failed to set MAC table for port 1 (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"failed to set MAC table for port 2 (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"failed to create mirror MAC tables\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_bond_mac_table(%struct.mlx4_dev* %0) #0 {
  %2 = alloca %struct.mlx4_dev*, align 8
  %3 = alloca %struct.mlx4_mac_table*, align 8
  %4 = alloca %struct.mlx4_mac_table*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %2, align 8
  %9 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %10 = call %struct.TYPE_4__* @mlx4_priv(%struct.mlx4_dev* %9)
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i64 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store %struct.mlx4_mac_table* %14, %struct.mlx4_mac_table** %3, align 8
  %15 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %16 = call %struct.TYPE_4__* @mlx4_priv(%struct.mlx4_dev* %15)
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 2
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store %struct.mlx4_mac_table* %20, %struct.mlx4_mac_table** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %21 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %3, align 8
  %22 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %21, i32 0, i32 2
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %4, align 8
  %25 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %24, i32 0, i32 2
  %26 = call i32 @mutex_lock(i32* %25)
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %72, %1
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @MLX4_MAX_MAC_NUM, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %75

31:                                               ; preds = %27
  %32 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %3, align 8
  %33 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %4, align 8
  %40 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %38, %45
  br i1 %46, label %47, label %71

47:                                               ; preds = %31
  %48 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %3, align 8
  %49 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %47
  %57 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %4, align 8
  %58 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %56
  %66 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_warn(%struct.mlx4_dev* %66, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %5, align 4
  br label %235

71:                                               ; preds = %56, %47, %31
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %6, align 4
  br label %27

75:                                               ; preds = %27
  store i32 0, i32* %6, align 4
  br label %76

76:                                               ; preds = %190, %75
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @MLX4_MAX_MAC_NUM, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %193

80:                                               ; preds = %76
  %81 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %3, align 8
  %82 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %81, i32 0, i32 0
  %83 = load i64*, i64** %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %83, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %118

89:                                               ; preds = %80
  %90 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %4, align 8
  %91 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %90, i32 0, i32 0
  %92 = load i64*, i64** %91, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %92, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %118, label %98

98:                                               ; preds = %89
  %99 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %3, align 8
  %100 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %99, i32 0, i32 0
  %101 = load i64*, i64** %100, align 8
  %102 = load i32, i32* %6, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i64, i64* %101, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %4, align 8
  %107 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %106, i32 0, i32 0
  %108 = load i64*, i64** %107, align 8
  %109 = load i32, i32* %6, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i64, i64* %108, i64 %110
  store i64 %105, i64* %111, align 8
  %112 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %4, align 8
  %113 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  store i32 1, i32* %117, align 4
  store i32 1, i32* %8, align 4
  br label %189

118:                                              ; preds = %89, %80
  %119 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %3, align 8
  %120 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %119, i32 0, i32 0
  %121 = load i64*, i64** %120, align 8
  %122 = load i32, i32* %6, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i64, i64* %121, i64 %123
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %156, label %127

127:                                              ; preds = %118
  %128 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %4, align 8
  %129 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %128, i32 0, i32 0
  %130 = load i64*, i64** %129, align 8
  %131 = load i32, i32* %6, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i64, i64* %130, i64 %132
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %156

136:                                              ; preds = %127
  %137 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %4, align 8
  %138 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %137, i32 0, i32 0
  %139 = load i64*, i64** %138, align 8
  %140 = load i32, i32* %6, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i64, i64* %139, i64 %141
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %3, align 8
  %145 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %144, i32 0, i32 0
  %146 = load i64*, i64** %145, align 8
  %147 = load i32, i32* %6, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i64, i64* %146, i64 %148
  store i64 %143, i64* %149, align 8
  %150 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %3, align 8
  %151 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %6, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  store i32 1, i32* %155, align 4
  store i32 1, i32* %7, align 4
  br label %188

156:                                              ; preds = %127, %118
  %157 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %3, align 8
  %158 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %157, i32 0, i32 0
  %159 = load i64*, i64** %158, align 8
  %160 = load i32, i32* %6, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i64, i64* %159, i64 %161
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %187

165:                                              ; preds = %156
  %166 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %4, align 8
  %167 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %166, i32 0, i32 0
  %168 = load i64*, i64** %167, align 8
  %169 = load i32, i32* %6, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i64, i64* %168, i64 %170
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %187

174:                                              ; preds = %165
  %175 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %3, align 8
  %176 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %175, i32 0, i32 1
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* %6, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  store i32 1, i32* %180, align 4
  %181 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %4, align 8
  %182 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %181, i32 0, i32 1
  %183 = load i32*, i32** %182, align 8
  %184 = load i32, i32* %6, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  store i32 1, i32* %186, align 4
  br label %187

187:                                              ; preds = %174, %165, %156
  br label %188

188:                                              ; preds = %187, %136
  br label %189

189:                                              ; preds = %188, %98
  br label %190

190:                                              ; preds = %189
  %191 = load i32, i32* %6, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %6, align 4
  br label %76

193:                                              ; preds = %76
  %194 = load i32, i32* %7, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %209

196:                                              ; preds = %193
  %197 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %198 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %3, align 8
  %199 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %198, i32 0, i32 0
  %200 = load i64*, i64** %199, align 8
  %201 = call i32 @mlx4_set_port_mac_table(%struct.mlx4_dev* %197, i32 1, i64* %200)
  store i32 %201, i32* %5, align 4
  %202 = load i32, i32* %5, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %208

204:                                              ; preds = %196
  %205 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %206 = load i32, i32* %5, align 4
  %207 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_warn(%struct.mlx4_dev* %205, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %206)
  br label %208

208:                                              ; preds = %204, %196
  br label %209

209:                                              ; preds = %208, %193
  %210 = load i32, i32* %5, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %228, label %212

212:                                              ; preds = %209
  %213 = load i32, i32* %8, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %228

215:                                              ; preds = %212
  %216 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %217 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %4, align 8
  %218 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %217, i32 0, i32 0
  %219 = load i64*, i64** %218, align 8
  %220 = call i32 @mlx4_set_port_mac_table(%struct.mlx4_dev* %216, i32 2, i64* %219)
  store i32 %220, i32* %5, align 4
  %221 = load i32, i32* %5, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %227

223:                                              ; preds = %215
  %224 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %225 = load i32, i32* %5, align 4
  %226 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_warn(%struct.mlx4_dev* %224, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %225)
  br label %227

227:                                              ; preds = %223, %215
  br label %228

228:                                              ; preds = %227, %212, %209
  %229 = load i32, i32* %5, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %234

231:                                              ; preds = %228
  %232 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %233 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_warn(%struct.mlx4_dev* %232, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %234

234:                                              ; preds = %231, %228
  br label %235

235:                                              ; preds = %234, %65
  %236 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %4, align 8
  %237 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %236, i32 0, i32 2
  %238 = call i32 @mutex_unlock(i32* %237)
  %239 = load %struct.mlx4_mac_table*, %struct.mlx4_mac_table** %3, align 8
  %240 = getelementptr inbounds %struct.mlx4_mac_table, %struct.mlx4_mac_table* %239, i32 0, i32 2
  %241 = call i32 @mutex_unlock(i32* %240)
  %242 = load i32, i32* %5, align 4
  ret i32 %242
}

declare dso_local %struct.TYPE_4__* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mlx4_warn(%struct.mlx4_dev*, i8*, ...) #1

declare dso_local i32 @mlx4_set_port_mac_table(%struct.mlx4_dev*, i32, i64*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
