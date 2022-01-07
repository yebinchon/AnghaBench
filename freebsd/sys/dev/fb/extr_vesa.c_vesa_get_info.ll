; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_vesa.c_vesa_get_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_vesa.c_vesa_get_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 (%struct.TYPE_11__*, i32, %struct.TYPE_10__*)* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }

@prevvidsw = common dso_local global %struct.TYPE_12__* null, align 8
@vesa_adp = common dso_local global %struct.TYPE_11__* null, align 8
@V_ADP_COLOR = common dso_local global i32 0, align 4
@vesa_vmode = common dso_local global %struct.TYPE_10__* null, align 8
@EOT = common dso_local global i32 0, align 4
@NA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32, %struct.TYPE_10__*)* @vesa_get_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vesa_get_info(%struct.TYPE_11__* %0, i32 %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** @prevvidsw, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = load i64 (%struct.TYPE_11__*, i32, %struct.TYPE_10__*)*, i64 (%struct.TYPE_11__*, i32, %struct.TYPE_10__*)** %10, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %15 = call i64 %11(%struct.TYPE_11__* %12, i32 %13, %struct.TYPE_10__* %14)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %75

18:                                               ; preds = %3
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** @vesa_adp, align 8
  %21 = icmp ne %struct.TYPE_11__* %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 1, i32* %4, align 4
  br label %75

23:                                               ; preds = %18
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** @vesa_adp, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** @vesa_adp, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @V_ADP_COLOR, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @vesa_map_gen_mode_num(i32 %26, i32 %31, i32 %32)
  store i32 %33, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %71, %23
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** @vesa_vmode, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @EOT, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %74

43:                                               ; preds = %34
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** @vesa_vmode, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @NA, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  br label %71

53:                                               ; preds = %43
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** @vesa_vmode, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %53
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** @vesa_vmode, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i64 %66
  %68 = bitcast %struct.TYPE_10__* %63 to i8*
  %69 = bitcast %struct.TYPE_10__* %67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %68, i8* align 4 %69, i64 4, i1 false)
  store i32 0, i32* %4, align 4
  br label %75

70:                                               ; preds = %53
  br label %71

71:                                               ; preds = %70, %52
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %8, align 4
  br label %34

74:                                               ; preds = %34
  store i32 1, i32* %4, align 4
  br label %75

75:                                               ; preds = %74, %62, %22, %17
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @vesa_map_gen_mode_num(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
