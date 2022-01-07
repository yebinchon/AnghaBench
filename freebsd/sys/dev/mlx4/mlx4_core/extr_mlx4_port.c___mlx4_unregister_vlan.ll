; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_port.c___mlx4_unregister_vlan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_port.c___mlx4_unregister_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_vlan_table = type { i32*, i32, i32, i64*, i64* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.mlx4_vlan_table }

@SINGLE_DEPTH_NESTING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"vlan 0x%x is not in the vlan table\0A\00", align 1
@MLX4_VLAN_REGULAR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Trying to free special vlan index %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"Have %d more references for index %d, no need to modify vlan table\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"Fail to set vlan in port %d during unregister\0A\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"Fail to set vlan in duplicate port %d during unregister\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__mlx4_unregister_vlan(%struct.mlx4_dev* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.mlx4_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mlx4_vlan_table*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.mlx4_vlan_table*, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %13 = call %struct.TYPE_4__* @mlx4_priv(%struct.mlx4_dev* %12)
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = load i64, i64* %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store %struct.mlx4_vlan_table* %18, %struct.mlx4_vlan_table** %7, align 8
  %19 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %20 = call i32 @mlx4_is_mf_bonded(%struct.mlx4_dev* %19)
  store i32 %20, i32* %9, align 4
  %21 = load i64, i64* %5, align 8
  %22 = icmp eq i64 %21, 1
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 2, i32 1
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %10, align 8
  %26 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %27 = call %struct.TYPE_4__* @mlx4_priv(%struct.mlx4_dev* %26)
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = load i64, i64* %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store %struct.mlx4_vlan_table* %32, %struct.mlx4_vlan_table** %11, align 8
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %55

35:                                               ; preds = %3
  %36 = load i64, i64* %5, align 8
  %37 = icmp eq i64 %36, 1
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %7, align 8
  %40 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %39, i32 0, i32 1
  %41 = call i32 @mutex_lock(i32* %40)
  %42 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %11, align 8
  %43 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %42, i32 0, i32 1
  %44 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  %45 = call i32 @mutex_lock_nested(i32* %43, i32 %44)
  br label %54

46:                                               ; preds = %35
  %47 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %11, align 8
  %48 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %47, i32 0, i32 1
  %49 = call i32 @mutex_lock(i32* %48)
  %50 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %7, align 8
  %51 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %50, i32 0, i32 1
  %52 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  %53 = call i32 @mutex_lock_nested(i32* %51, i32 %52)
  br label %54

54:                                               ; preds = %46, %38
  br label %59

55:                                               ; preds = %3
  %56 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %7, align 8
  %57 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %56, i32 0, i32 1
  %58 = call i32 @mutex_lock(i32* %57)
  br label %59

59:                                               ; preds = %55, %54
  %60 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %61 = load i64, i64* %5, align 8
  %62 = load i64, i64* %6, align 8
  %63 = call i64 @mlx4_find_cached_vlan(%struct.mlx4_dev* %60, i64 %61, i64 %62, i32* %8)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %67 = load i64, i64* %6, align 8
  %68 = call i32 @mlx4_warn(%struct.mlx4_dev* %66, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %67)
  br label %189

69:                                               ; preds = %59
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @MLX4_VLAN_REGULAR, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = call i32 @mlx4_warn(%struct.mlx4_dev* %74, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %76)
  br label %189

78:                                               ; preds = %69
  %79 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %7, align 8
  %80 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %79, i32 0, i32 4
  %81 = load i64*, i64** %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, -1
  store i64 %86, i64* %84, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %97, label %88

88:                                               ; preds = %78
  %89 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %7, align 8
  %90 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %124

97:                                               ; preds = %88, %78
  %98 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %99 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %7, align 8
  %100 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %99, i32 0, i32 4
  %101 = load i64*, i64** %100, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i64, i64* %101, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @mlx4_dbg(%struct.mlx4_dev* %98, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0), i64 %105, i32 %106)
  %108 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %7, align 8
  %109 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %108, i32 0, i32 4
  %110 = load i64*, i64** %109, align 8
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i64, i64* %110, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %123, label %116

116:                                              ; preds = %97
  %117 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %11, align 8
  %118 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %8, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  store i32 0, i32* %122, align 4
  br label %123

123:                                              ; preds = %116, %97
  br label %189

124:                                              ; preds = %88
  %125 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %7, align 8
  %126 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %125, i32 0, i32 3
  %127 = load i64*, i64** %126, align 8
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i64, i64* %127, i64 %129
  store i64 0, i64* %130, align 8
  %131 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %132 = load i64, i64* %5, align 8
  %133 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %7, align 8
  %134 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %133, i32 0, i32 3
  %135 = load i64*, i64** %134, align 8
  %136 = call i64 @mlx4_set_port_vlan_table(%struct.mlx4_dev* %131, i64 %132, i64* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %124
  %139 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %140 = load i64, i64* %5, align 8
  %141 = call i32 @mlx4_warn(%struct.mlx4_dev* %139, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i64 %140)
  br label %142

142:                                              ; preds = %138, %124
  %143 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %7, align 8
  %144 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %145, -1
  store i32 %146, i32* %144, align 4
  %147 = load i32, i32* %9, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %188

149:                                              ; preds = %142
  %150 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %11, align 8
  %151 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %8, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  store i32 0, i32* %155, align 4
  %156 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %11, align 8
  %157 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %156, i32 0, i32 4
  %158 = load i64*, i64** %157, align 8
  %159 = load i32, i32* %8, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i64, i64* %158, i64 %160
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %149
  br label %189

165:                                              ; preds = %149
  %166 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %11, align 8
  %167 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %166, i32 0, i32 3
  %168 = load i64*, i64** %167, align 8
  %169 = load i32, i32* %8, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i64, i64* %168, i64 %170
  store i64 0, i64* %171, align 8
  %172 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %173 = load i64, i64* %10, align 8
  %174 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %11, align 8
  %175 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %174, i32 0, i32 3
  %176 = load i64*, i64** %175, align 8
  %177 = call i64 @mlx4_set_port_vlan_table(%struct.mlx4_dev* %172, i64 %173, i64* %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %165
  %180 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %181 = load i64, i64* %10, align 8
  %182 = call i32 @mlx4_warn(%struct.mlx4_dev* %180, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), i64 %181)
  br label %183

183:                                              ; preds = %179, %165
  %184 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %11, align 8
  %185 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = add nsw i32 %186, -1
  store i32 %187, i32* %185, align 4
  br label %188

188:                                              ; preds = %183, %142
  br label %189

189:                                              ; preds = %188, %164, %123, %73, %65
  %190 = load i32, i32* %9, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %210

192:                                              ; preds = %189
  %193 = load i64, i64* %5, align 8
  %194 = icmp eq i64 %193, 2
  br i1 %194, label %195, label %202

195:                                              ; preds = %192
  %196 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %7, align 8
  %197 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %196, i32 0, i32 1
  %198 = call i32 @mutex_unlock(i32* %197)
  %199 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %11, align 8
  %200 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %199, i32 0, i32 1
  %201 = call i32 @mutex_unlock(i32* %200)
  br label %209

202:                                              ; preds = %192
  %203 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %11, align 8
  %204 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %203, i32 0, i32 1
  %205 = call i32 @mutex_unlock(i32* %204)
  %206 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %7, align 8
  %207 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %206, i32 0, i32 1
  %208 = call i32 @mutex_unlock(i32* %207)
  br label %209

209:                                              ; preds = %202, %195
  br label %214

210:                                              ; preds = %189
  %211 = load %struct.mlx4_vlan_table*, %struct.mlx4_vlan_table** %7, align 8
  %212 = getelementptr inbounds %struct.mlx4_vlan_table, %struct.mlx4_vlan_table* %211, i32 0, i32 1
  %213 = call i32 @mutex_unlock(i32* %212)
  br label %214

214:                                              ; preds = %210, %209
  ret void
}

declare dso_local %struct.TYPE_4__* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_is_mf_bonded(%struct.mlx4_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local i64 @mlx4_find_cached_vlan(%struct.mlx4_dev*, i64, i64, i32*) #1

declare dso_local i32 @mlx4_warn(%struct.mlx4_dev*, i8*, i64) #1

declare dso_local i32 @mlx4_dbg(%struct.mlx4_dev*, i8*, i64, i32) #1

declare dso_local i64 @mlx4_set_port_vlan_table(%struct.mlx4_dev*, i64, i64*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
