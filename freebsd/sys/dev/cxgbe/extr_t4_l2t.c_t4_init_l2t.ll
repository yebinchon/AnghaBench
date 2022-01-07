; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_l2t.c_t4_init_l2t.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_l2t.c_t4_init_l2t.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.l2t_data*, %struct.TYPE_4__ }
%struct.l2t_data = type { i32, %struct.l2t_entry*, i32, i32, %struct.l2t_entry* }
%struct.l2t_entry = type { i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@M_CXGBE = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"L2T\00", align 1
@L2T_STATE_UNUSED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"L2T_E\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_init_l2t(%struct.adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.l2t_data*, align 8
  %9 = alloca %struct.l2t_entry*, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.adapter*, %struct.adapter** %4, align 8
  %11 = getelementptr inbounds %struct.adapter, %struct.adapter* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 2
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %3, align 4
  br label %84

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 20
  %23 = add i64 32, %22
  %24 = trunc i64 %23 to i32
  %25 = load i32, i32* @M_CXGBE, align 4
  %26 = load i32, i32* @M_ZERO, align 4
  %27 = load i32, i32* %5, align 4
  %28 = or i32 %26, %27
  %29 = call %struct.l2t_data* @malloc(i32 %24, i32 %25, i32 %28)
  store %struct.l2t_data* %29, %struct.l2t_data** %8, align 8
  %30 = load %struct.l2t_data*, %struct.l2t_data** %8, align 8
  %31 = icmp ne %struct.l2t_data* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %19
  %33 = load i32, i32* @ENOMEM, align 4
  store i32 %33, i32* %3, align 4
  br label %84

34:                                               ; preds = %19
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.l2t_data*, %struct.l2t_data** %8, align 8
  %37 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.l2t_data*, %struct.l2t_data** %8, align 8
  %39 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %38, i32 0, i32 1
  %40 = load %struct.l2t_entry*, %struct.l2t_entry** %39, align 8
  %41 = load %struct.l2t_data*, %struct.l2t_data** %8, align 8
  %42 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %41, i32 0, i32 4
  store %struct.l2t_entry* %40, %struct.l2t_entry** %42, align 8
  %43 = load %struct.l2t_data*, %struct.l2t_data** %8, align 8
  %44 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %43, i32 0, i32 3
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @atomic_store_rel_int(i32* %44, i32 %45)
  %47 = load %struct.l2t_data*, %struct.l2t_data** %8, align 8
  %48 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %47, i32 0, i32 2
  %49 = call i32 @rw_init(i32* %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %50

50:                                               ; preds = %77, %34
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %80

54:                                               ; preds = %50
  %55 = load %struct.l2t_data*, %struct.l2t_data** %8, align 8
  %56 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %55, i32 0, i32 1
  %57 = load %struct.l2t_entry*, %struct.l2t_entry** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %57, i64 %59
  store %struct.l2t_entry* %60, %struct.l2t_entry** %9, align 8
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.l2t_entry*, %struct.l2t_entry** %9, align 8
  %63 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @L2T_STATE_UNUSED, align 4
  %65 = load %struct.l2t_entry*, %struct.l2t_entry** %9, align 8
  %66 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 4
  %67 = load %struct.l2t_entry*, %struct.l2t_entry** %9, align 8
  %68 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %67, i32 0, i32 3
  %69 = load i32, i32* @MTX_DEF, align 4
  %70 = call i32 @mtx_init(i32* %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %69)
  %71 = load %struct.l2t_entry*, %struct.l2t_entry** %9, align 8
  %72 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %71, i32 0, i32 2
  %73 = call i32 @STAILQ_INIT(i32* %72)
  %74 = load %struct.l2t_entry*, %struct.l2t_entry** %9, align 8
  %75 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %74, i32 0, i32 1
  %76 = call i32 @atomic_store_rel_int(i32* %75, i32 0)
  br label %77

77:                                               ; preds = %54
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %6, align 4
  br label %50

80:                                               ; preds = %50
  %81 = load %struct.l2t_data*, %struct.l2t_data** %8, align 8
  %82 = load %struct.adapter*, %struct.adapter** %4, align 8
  %83 = getelementptr inbounds %struct.adapter, %struct.adapter* %82, i32 0, i32 0
  store %struct.l2t_data* %81, %struct.l2t_data** %83, align 8
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %80, %32, %17
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local %struct.l2t_data* @malloc(i32, i32, i32) #1

declare dso_local i32 @atomic_store_rel_int(i32*, i32) #1

declare dso_local i32 @rw_init(i32*, i8*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
